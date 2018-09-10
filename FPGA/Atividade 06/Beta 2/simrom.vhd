library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity simrom is
	port(	address: in std_logic_vector(2 downto 0);
			clock: in std_logic;
			output_rom: buffer std_logic_vector (7 downto 0)
	);
end simrom;

architecture bhv of simrom is

begin

	process (address, clock)
		begin
			
			if(clock'event and clock='1') then
				case address is 
					when "000" => output_rom<="01100100"; --value 100
					when "001" => output_rom<="00110010"; --value 50
					when "010" => output_rom<="00011001"; --value 25
					when "011" => output_rom<="00001010"; --value 10
					when "100" => output_rom<="00000101"; --value 5
					when "101" => output_rom<="00000001"; --value 1
					when others => output_rom<="00000000";
				end case;
			else
				output_rom<=output_rom;
			end if;
	end process;
end bhv;
		