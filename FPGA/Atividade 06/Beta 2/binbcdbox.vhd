library ieee;
use ieee.std_logic_1164.all;

entity binbcdbox is
	port(binb_in: in std_logic_vector(4 downto 0);
		Y: out std_logic_vector(7 downto 0));
end binbcdbox;

architecture ckt of binbcdbox is

begin

	with binb_in select Y<=
		"11000000" when "00000",
		"11000001" when "00001",
		"11000010" when "00010",
		"11000011" when "00011",

		"11000100" when "00100",
		"11001000" when "00101",
		"11001001" when "00110",
		"11001010" when "00111",

		"11001011" when "01000",
		"11001100" when "01001",
		"11010000" when "01010",
		"11010001" when "01011",

		"11010010" when "01100",
		"11010011" when "01101",
		"11010100" when "01110",
		"11011000" when "01111",

		"11011001" when "10000",
		"11011010" when "10001",
		"11011011" when "10010",
		"11011100" when "10011",

		"11100000" when "10100",
		"11100001" when "10101",
		"11100010" when "10110",
		"11100011" when "10111",

		"11100100" when "11000",
		"11101000" when "11001",
		"11101001" when "11010",
		"11101010" when "11011",
		
		"11101011" when "11100",
		"11101100" when "11101",
		"11110000" when "11110",
		"11110001" when "11111",

		"00000000" when others;
end ckt;