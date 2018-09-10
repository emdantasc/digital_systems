library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity nbit8x1mux is
	generic(n: natural:=8);
	port(	in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7: in std_logic_vector(n-1 downto 0);
			sel: in std_logic_vector(2 downto 0);
			out_data: out std_logic_vector(n-1 downto 0));
end nbit8x1mux;

architecture behv of nbit8x1mux is

	component nbitmux is
		generic(n: natural :=8);
		port( A_in, B_in: in std_logic_vector (n-1 downto 0);
				selector: in std_logic;
				S_out: out std_logic_vector(n-1 downto 0));
	end component;
	
	signal out_01, out_02, out_03, out_04, out_11, out_12: std_logic_vector(n-1 downto 0);
	
begin
	
	mx00: nbitmux
		generic map(n=>16)
		port map(
		A_in=>in_0,
		B_in=>in_1,
		selector=>sel(0),
		S_out=>out_01);
		
	mx01: nbitmux
		generic map(n=>16)
		port map(
		A_in=>in_2,
		B_in=>in_3,
		selector=>sel(0),
		S_out=>out_02);
	
	mx02: nbitmux
		generic map(n=>16)
		port map(
		A_in=>in_4,
		B_in=>in_5,
		selector=>sel(0),
		S_out=>out_03);
		
	mx03: nbitmux
		generic map(n=>16)
		port map(
		A_in=>in_6,
		B_in=>in_7,
		selector=>sel(0),
		S_out=>out_04);
	
	mx04: nbitmux
		generic map(n=>16)
		port map(
		A_in=>out_01,
		B_in=>out_02,
		selector=>sel(1),
		S_out=>out_11);
	
	mx05: nbitmux
		generic map(n=>16)
		port map(
		A_in=>out_03,
		B_in=>out_04,
		selector=>sel(1),
		S_out=>out_12);
	
	mx06: nbitmux
		generic map(n=>16)
		port map(
		A_in=>out_11,
		B_in=>out_12,
		selector=>sel(2),
		S_out=>out_data);
		
end behv;