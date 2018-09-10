library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity nbitreg is
  generic(n: natural :=8);
  port( data_entry: in std_logic_vector (n-1 downto 0);
        enable, clk, clear: in std_logic;
        data_out: buffer std_logic_vector(n-1 downto 0));
end nbitreg;

architecture behaviour of nbitreg is
begin 
  
  process (clk, clear, data_out)
  begin
    
    if(clear='1') then
      zeros: for i in 0 to n-1 loop
        data_out(i)<='0';
      end loop zeros;
    elsif(clk'event and clk='1') then
      if (enable='1') then
        data_out<=data_entry;
      else  
        data_out<=data_out;
      end if;
    else
      data_out<=data_out;
    end if;    
  end process;
end behaviour;