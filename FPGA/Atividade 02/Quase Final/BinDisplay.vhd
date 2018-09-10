library ieee;
use ieee.std_logic_1164.all;

entity BinDisplay is
	port(Bin: in std_logic_vector (15 downto 0);
		Hex70, Hex71, Hex72, Hex73, Hex74: out std_logic_vector(6 downto 0));
end BinDisplay;

architecture arrange of BinDisplay is

	component BinBCD is
	port(bin_in: in std_logic_vector(15 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4: out std_logic_vector(3 downto 0));
	end component;

	component BinTo7Segment is
  	port(bin_in: in std_logic_vector(3 downto 0);
      		sevseg_out: out std_logic_vector(6 downto 0));
	end component;

	signal HexB0, HexB1, HexB2, HexB3, HexB4: std_logic_vector(3 downto 0);

begin

	BBCD: BinBCD port map(
	bin_in=>Bin,
	HEX0=>HexB0,
	HEX1=>HexB1,
	HEX2=>HexB2,
	HEX3=>HexB3,
	HEX4=>HexB4);

	Hex00: BinTo7Segment port map(
	bin_in=>HexB0,
	sevseg_out=>Hex70);

	Hex01: BinTo7Segment port map(
	bin_in=>HexB1,
	sevseg_out=>Hex71);

	Hex02: BinTo7Segment port map(
	bin_in=>HexB2,
	sevseg_out=>Hex72);

	Hex03: BinTo7Segment port map(
	bin_in=>HexB3,
	sevseg_out=>Hex73);

	Hex04: BinTo7Segment port map(
	bin_in=>HexB4,
	sevseg_out=>Hex74);

end arrange;