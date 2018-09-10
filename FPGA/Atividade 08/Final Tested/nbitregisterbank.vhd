library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity nbit16registerbank is
	generic(n_bank: natural:=16);
	port(
		W_address, Ra_address, Rb_address: in std_logic_vector(3 downto 0);
		W_write, Ra_read, Rb_read, clr_bank, clk_bank: in std_logic;
		W_data: in std_logic_vector(n_bank-1 downto 0);
		Ra_data, Rb_data: out std_logic_vector(n_bank-1 downto 0));
end nbit16registerbank;

architecture arrange of nbit16registerbank is

	component nbitreg is
		generic(n: natural :=8);
		port( data_entry: in std_logic_vector (n-1 downto 0);
			  enable, clk, clear: in std_logic;
			  data_out: buffer std_logic_vector(n-1 downto 0));
	end component;
	
	type outreg is array (0 to 15) of std_logic_vector(n_bank-1 downto 0);
	signal out_reg: outreg;
	signal adrs_reg, load_reg: std_logic_vector(n_bank-1 downto 0);
	signal outmuxa, outmuxb: std_logic_vector(n_bank-1 downto 0);
	signal zerovec: std_logic_vector(n_bank-1 downto 0);
	
begin

	zerov: for i in 0 to n_bank-1 generate
		zerovec(i)<='0';
	end generate zerov;

	with W_address select adrs_reg<=
		"0000000000000001" when "0000",
		"0000000000000010" when "0001",
		"0000000000000100" when "0010",
		"0000000000001000" when "0011",
		"0000000000010000" when "0100",
		"0000000000100000" when "0101",
		"0000000001000000" when "0110",
		"0000000010000000" when "0111",
		"0000000100000000" when "1000",
		"0000001000000000" when "1001",
		"0000010000000000" when "1010",
		"0000100000000000" when "1011",
		"0001000000000000" when "1100",
		"0010000000000000" when "1101",
		"0100000000000000" when "1110",
		"1000000000000000" when "1111",
		"0000000000000000" when others;
	
	with W_write select load_reg<=
	   adrs_reg when '1',
	   "0000000000000000" when others;

	with Ra_address select outmuxa<=
		out_reg(0) when "0000",
		out_reg(1) when "0001",
		out_reg(2) when "0010",
		out_reg(3) when "0011",
		out_reg(4) when "0100",
		out_reg(5) when "0101",
		out_reg(6) when "0110",
		out_reg(7) when "0111",
		out_reg(8) when "1000",
		out_reg(9) when "1001",
		out_reg(10) when "1010",
		out_reg(11) when "1011",
		out_reg(12) when "1100",
		out_reg(13) when "1101",
		out_reg(14) when "1110",
		out_reg(15) when "1111",
		zerovec when others;
	
	with Rb_address select outmuxb<=
		out_reg(0) when "0000",
		out_reg(1) when "0001",
		out_reg(2) when "0010",
		out_reg(3) when "0011",
		out_reg(4) when "0100",
		out_reg(5) when "0101",
		out_reg(6) when "0110",
		out_reg(7) when "0111",
		out_reg(8) when "1000",
		out_reg(9) when "1001",
		out_reg(10) when "1010",
		out_reg(11) when "1011",
		out_reg(12) when "1100",
		out_reg(13) when "1101",
		out_reg(14) when "1110",
		out_reg(15) when "1111",
		zerovec when others;	
	
	with Ra_read select Ra_data<=
		outmuxa when '1',
		zerovec when others;
	
	with Rb_read select Rb_data<=
		outmuxb when '1',
		zerovec when others;
	
	regfor: for i in 0 to 15 generate
		reg: nbitreg
			generic map(n=>n_bank)
			port map(
				data_entry=>W_data,
				enable=>load_reg(i), 
				clk=>clk_bank, 
				clear=>clr_bank,
				data_out=>out_reg(i));
	end generate regfor;

end arrange;
	