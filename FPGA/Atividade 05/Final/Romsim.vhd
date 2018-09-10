library ieee;
use ieee.std_logic_1164.all;

entity ROM is
  port( adress: in std_logic_vector(3 downto 0);
        clk: in std_logic;
        data_out: buffer std_logic_vector(5 downto 0));
end ROM;

architecture behaviour of ROM is
  
begin
  
  process(adress, clk)
  begin
    if(clk'event and clk='1') then
      case adress is
        when "0000" => data_out<="000000";
        when "0001" => data_out<="000010";
        when "0010" => data_out<="000011";
        when "0011" => data_out<="000100";
        when "0100" => data_out<="000101";
        when "0101" => data_out<="000110";
        when "0110" => data_out<="000111";
        when others => data_out<="000001";
      end case;
    else
      data_out<=data_out;
    end if;
  end process;
end behaviour;
    
                  