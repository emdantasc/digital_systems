library ieee;
use ieee.std_logic_1164.all;

entity register16b is
  port( input_data: in std_logic_vector(15 downto 0);
        load_data, clear, clk_in: in std_logic;
        output_data: buffer std_logic_vector(15 downto 0));
end register16b;

architecture circuit of register16b is

begin
    
    PRC00:  process(load_data, clear, clk_in, output_data)
    begin
          if(clear='0') then output_data<="0000000000000000";
          elsif (clk_in'event and clk_in='1') then 
				if(load_data='1') then output_data<=input_data;
				else output_data<=output_data;
				end if;
          else output_data<=output_data;
          end if;
    end process PRC00;
end circuit; 