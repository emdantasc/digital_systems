library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity nbitreg is
  generic(n: natural :=8);
  port( data_entry: in std_logic_vector (n-1 downto 0);
        load, clk, clear, sh_en, left_right: in std_logic;
        data_out: buffer std_logic_vector(n-1 downto 0));
end nbitreg;

architecture behaviour of nbitreg is
begin 
  
  process (clk, clear, data_out, sh_en, left_right)
  begin
    
    if(clear='1') then
      zeros: for i in 0 to n-1 loop
        data_out(i)<='0';
      end loop zeros;
    elsif(clk'event and clk='1') then
      if (load='1') then
        data_out<=data_entry;
      elsif(sh_en='1' and left_right='1') then
        shiftleft: for i in n-1 downto 1 loop
          data_out(i)<=data_out(i-1); 
        end loop shiftleft;
        data_out(0)<='0';
      elsif(sh_en='1' and left_right='0') then
        shiftright: for i in n-2 downto 0 loop
          data_out(i)<=data_out(i+1); 
        end loop shiftright;
        data_out(n-1)<='0';
      else
        data_out<=data_out;
      end if;
    else data_out<=data_out;
    end if;    
  end process;
end behaviour;