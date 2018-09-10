library ieee;
use ieee.std_logic_1164.all;

entity BinTo7Segment is
  port(bin_in: in std_logic_vector(3 downto 0);
      sevseg_out: out std_logic_vector(6 downto 0));
end BinTo7Segment;

architecture ckt of BinTo7Segment is
  signal sevseg: std_logic_vector(6 downto 0);

begin
  
	with bin_in select sevseg<=
			"0111111" when "0000",
			"0000110" when "0001",
			"1011011" when "0010",
			"1001111" when "0011",
			"1100110" when "0100",
			"1101101" when "0101",
			"1111101" when "0110",
			"0000111" when "0111",
			"1111111" when "1000",
			"1100111" when "1001",
			"1110111" when "1010",
			"1111100" when "1011",
			"0111001" when "1100",
			"1011110" when "1101",
			"1111001" when "1110",
			"1110001" when "1111",
			"0000000" when others;

      sevseg_out<=not sevseg;
end ckt;
