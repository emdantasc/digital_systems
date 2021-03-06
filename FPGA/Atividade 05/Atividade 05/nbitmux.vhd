library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity nbitmux is
  generic(n: natural :=8);
  port( A_in, B_in: in std_logic_vector (n-1 downto 0);
        selector: in std_logic;
        S_out: out std_logic_vector(n-1 downto 0));
end nbitmux;

architecture circuit of nbitmux is
  
begin
  
  mx: for i in 0 to n-1 generate
    S_out(i)<=(A_in(i) and not selector) or (B_in(i) and selector);
  end generate mx;

end circuit; 
    