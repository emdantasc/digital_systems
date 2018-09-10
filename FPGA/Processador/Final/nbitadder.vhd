library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity nbitadder is
  generic(n: natural :=8);
  port( A_in, B_in: in std_logic_vector (n-1 downto 0);
        carry_in: in std_logic;
        S_out: out std_logic_vector(n-1 downto 0);
        carry_out: out std_logic);
end nbitadder;

architecture behaviour of nbitadder is
  
signal inter_carry: std_logic_vector(n downto 0);

begin
  
    inter_carry(0)<= carry_in;
    carry_out<=inter_carry(n);
    
    sum: for i in 0 to n-1 generate
      S_out(i)<=A_in(i) xor B_in(i) xor inter_carry(i);
	  inter_carry(i+1)<=(A_in(i) and B_in(i)) or (A_in(i) and inter_carry(i)) or (B_in(i) and inter_carry(i));
	  end generate sum;

end behaviour;
    
    
    