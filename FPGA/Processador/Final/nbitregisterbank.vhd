library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity nbitregisterbank is
	generic(n_bank: natural:=8);
	port(
		W_address, Ra_address, Rb_address: in std_logic_vector(1 downto 0);
		W_write, clr_bank, clk_bank: in std_logic;
		W_data: in std_logic_vector(n_bank-1 downto 0);
		Ra_data, Rb_data: out std_logic_vector(n_bank-1 downto 0));
end nbitregisterbank;

architecture arrange of nbitregisterbank is

	component nbitreg is
  		generic(n: natural :=8);
  		port( 	data_entry: in std_logic_vector (n-1 downto 0);
        		load, clk, clear, sh_en, left_right: in std_logic;
        		data_out: buffer std_logic_vector(n-1 downto 0));
	end component;
	
	type output_register is array (0 to 3) of std_logic_vector(n_bank-1 downto 0);
	signal out_reg: output_register;
	signal write_reg: std_logic_vector(3 downto 0);

begin

	with W_address select write_reg<=
		"0001" when "00",
		"0010" when "01",
		"0100" when "10",
		"1000" when "11",
		"0000" when others;


	
	regA: nbitreg
		generic map(n=>8)
		port map(
			data_entry=>W_data,
			load=>write_reg(0),
			clk=>clk_bank,
			clear=>clr_bank,
			sh_en=>'0',
			left_right=>'0',
			data_out=>out_reg(0)
	);
	
	regB: nbitreg
		generic map(n=>8)
		port map(
			data_entry=>W_data,
			load=>write_reg(1),
			clk=>clk_bank,
			clear=>clr_bank,
			sh_en=>'0',
			left_right=>'0',
			data_out=>out_reg(1)
	);

	regC: nbitreg
		generic map(n=>8)
		port map(
			data_entry=>W_data,
			load=>write_reg(2),
			clk=>clk_bank,
			clear=>clr_bank,
			sh_en=>'0',
			left_right=>'0',
			data_out=>out_reg(2)
	);

	regD: nbitreg
		generic map(n=>8)
		port map(
			data_entry=>W_data,
			load=>write_reg(3),
			clk=>clk_bank,
			clear=>clr_bank,
			sh_en=>'0',
			left_right=>'0',
			data_out=>out_reg(3)
	);

	with Ra_address select Ra_data<=
		out_reg(0) when "00",
		out_reg(1) when "01",
		out_reg(2) when "10",
		out_reg(3) when "11",
		"00000000" when others;

	with Rb_address select Rb_data<=
		out_reg(0) when "00",
		out_reg(1) when "01",
		out_reg(2) when "10",
		out_reg(3) when "11",
		"00000000" when others;

end arrange;
