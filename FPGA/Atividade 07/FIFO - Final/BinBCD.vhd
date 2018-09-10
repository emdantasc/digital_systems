library ieee;
use ieee.std_logic_1164.all;

entity BinBCD is
	port(bin_in: in std_logic_vector(15 downto 0);
		   HEX0, HEX1, HEX2, HEX3, HEX4: out std_logic_vector(3 downto 0));
end BinBCD;

architecture arrange of BinBCD is

	signal OutBox00, OutBox01, OutBox02, OutBox03, OutBox04, OutBox05, OutBox06, OutBox07, OutBox08, OutBox09, OutBox10, OutBox11, OutBox12, OutBox13, OutBox14, OutBox15: std_logic_vector(7 downto 0);

	component binbcdbox is
		port(binb_in: in std_logic_vector(4 downto 0);
			Y: out std_logic_vector(7 downto 0));
	end component;

begin

	Box00: binbcdbox port map(
	binb_in=>bin_in(15 downto 11),
	Y=>OutBox00);

	Box01: binbcdbox port map(
	binb_in(4 downto 2)=> OutBox00(2 downto 0),
	binb_in(1 downto 0)=> bin_in(10 downto 9),
	Y=>OutBox01);

	Box02: binbcdbox port map(
	binb_in(4 downto 2)=> OutBox00(5 downto 3),
	binb_in(1 downto 0)=> OutBox01(4 downto 3),
	Y=>OutBox02);

	Box03: binbcdbox port map(
	binb_in(4 downto 2)=> OutBox01(2 downto 0),
	binb_in(1 downto 0)=> bin_in(8 downto 7),
	Y=>OutBox03);

	Box04: binbcdbox port map(
	binb_in(4 downto 2)=> OutBox02(2 downto 0),
	binb_in(1 downto 0)=> OutBox03(4 downto 3),
	Y=>OutBox04);

	Box05: binbcdbox port map(
	binb_in(4 downto 2)=> OutBox03(2 downto 0),
	binb_in(1 downto 0)=> bin_in(6 downto 5),
	Y=>OutBox05);

	Box06: binbcdbox port map(
	binb_in(4 downto 2)=> OutBox02(5 downto 3),
	binb_in(1 downto 0)=> OutBox04(4 downto 3),
	Y=>OutBox06);

	Box07: binbcdbox port map(
	binb_in(4 downto 2)=> OutBox04(2 downto 0),
	binb_in(1 downto 0)=> OutBox05(4 downto 3),
	Y=>OutBox07);
	
	Box08: binbcdbox port map(
	--binb_in(4)=>'0',
	binb_in(4 downto 2)=> OutBox05(2 downto 0),
	binb_in(1 downto 0)=> bin_in(4 downto 3),
	Y=>OutBox08);

	Box09: binbcdbox port map(
	binb_in(4 downto 2)=> OutBox06(2 downto 0),
	binb_in(1 downto 0)=> OutBox07(4 downto 3),
	Y=>OutBox09);

	Box10: binbcdbox port map(
	binb_in(4 downto 2)=> OutBox07(2 downto 0),
	binb_in(1 downto 0)=> OutBOx08(4 downto 3),
	Y=>OutBox10);

	Box11: binbcdbox port map(
	binb_in(4 downto 2)=> OutBox08(2 downto 0),
	binb_in(1 downto 0)=> bin_in(2 downto 1),
	Y=>OutBox11);

	Box12: binbcdbox port map(
	binb_in(4 downto 2)=> OutBox06(5 downto 3),
	binb_in(1 downto 0)=> OutBox09(4 downto 3),
	Y=>OutBox12);

	Box13: binbcdbox port map(
	binb_in(4 downto 2)=> OutBox09(2 downto 0),
	binb_in(1 downto 0)=> OutBox10(4 downto 3),
	Y=>OutBox13);

	Box14: binbcdbox port map(
	binb_in(4)=> '0',
	binb_in(3 downto 1)=>OutBox10(2 downto 0),
	binb_in(0)=> OutBox11(4),
	Y=>OutBox14);

	Box15: binbcdbox port map(
	binb_in(4)=> '0',
	binb_in(3 downto 1)=> OutBox12(2 downto 0),
	binb_in(0)=>OutBox13(4),
	Y=>OutBox15);

	Hex4(3 downto 1)<=OutBox12(5 downto 3);
	Hex4(0)<=OutBox15(3);

	Hex3(3 downto 1)<=OutBox15(2 downto 0);
	Hex3(0)<=OutBox13(3);

	Hex2(3 downto 1)<=OutBox13(2 downto 0);
	Hex2(0)<=OutBox14(3);
	
	Hex1(3 downto 1)<=OutBox14(2 downto 0);
	Hex1(0)<=OutBox11(3);

	Hex0(3 downto 1)<=OutBox11(2 downto 0);
	Hex0(0)<=bin_in(0);


end arrange;
