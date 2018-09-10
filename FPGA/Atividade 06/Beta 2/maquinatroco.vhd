library ieee;
use ieee.std_logic_1164.all;

entity maquinatroco is 
	port (
		in_key3, in_key2, in_key1, clk_maq, clk_rom: in std_logic;
		Coin: in std_logic_vector(5 downto 0);
		V: in std_logic_vector(15 downto 0);
		LEDG3, LEDG2, LEDR0: out std_logic;
		coin100, coin50, coin25, coin10, coin5, coin1: out std_logic_vector(15 downto 0)
	);
end maquinatroco;
	
architecture arrangment of maquinatroco is
	
	component nbitadder is
		generic(n: natural :=8);
		port( 	A_in, B_in: in std_logic_vector (n-1 downto 0);
				carry_in: in std_logic;
				S_out: out std_logic_vector(n-1 downto 0);
				carry_out: out std_logic);
	end component;

	component nbitcompmag is
		generic(n: natural :=8);
		port( A_data, B_data: in std_logic_vector(n-1 downto 0);
			  out_gt, out_lt, out_eq: out std_logic);
	end component;

	component nbitcounter is
		generic(n: natural :=4);
		port(	clock, clear, enable, updown:	in std_logic;
				out_cont:	buffer std_logic_vector(n-1 downto 0));
	end component;

	component nbitmux is
	generic(n: natural :=8);
	port( A_in, B_in: in std_logic_vector (n-1 downto 0);
		  selector: in std_logic;
		  S_out: out std_logic_vector(n-1 downto 0));
	end component;

	component nbitreg is
		generic(n: natural :=8);
		port( data_entry: in std_logic_vector (n-1 downto 0);
			  enable, clk, clear: in std_logic;
			  data_out: buffer std_logic_vector(n-1 downto 0));
	end component;
	
	component simrom is
	port(	address: in std_logic_vector(2 downto 0);
			clock: in std_logic;
			output_rom: buffer std_logic_vector (7 downto 0)
	);
	end component;
	
	signal outsum, outtemp, outmux, outrom15, n_outrom15: std_logic_vector(15 downto 0);
	signal outrom: std_logic_vector(7 downto 0);
	signal address_rom: std_logic_vector(2 downto 0);
	signal ld_temp, clr_temp, ld_contr, clr_contr, temp_lt_rom, iomux, teste, if_zero, if_erro, address_lt_6: std_logic;

	type estado is (zero, espere, copie_to_temp, compare, opere, atualize_rom, erro, carregue, libere);
	signal state: estado;
	
begin

--inicio da fsm

	fsm: process(clk_maq, in_key3, in_key2, in_key1, teste, if_zero, if_erro)
		begin
			if (in_key3='1') then
				state<=zero;
			elsif (clk_maq'event and clk_maq='1') then
				case state is
					when zero => state<=espere;
					when espere =>
						if (in_key2='1') then state<=copie_to_temp;
						else state<=espere;
						end if;
					when copie_to_temp => state<=compare;
					when compare =>
						if(if_erro='1') then state<=erro;
						elsif(if_erro='0' and if_zero='1') then state<=libere;
						elsif(if_erro='0' and if_zero='0' and teste='1') then state<=opere;
						elsif(if_erro='0' and if_zero='0' and teste='0') then state<=atualize_rom;
						else state<=compare;
						end if;
					when opere => state<=carregue;
					when atualize_rom => state<=carregue;
					when carregue => state<=compare;
					when libere =>
						if(in_key1 ='1') then state<=zero;
						else state<=libere;
						end if;
					when others => state<=state;
					end case;
			else 
				state<=state;
			end if;
	end process fsm;
	
	with state select ld_temp<=
		'1' when copie_to_temp,
		'1' when opere,
		'0' when others;
	
	with state select iomux<=
		'0' when copie_to_temp,
		'0' when espere,
		'1' when others;
		
	with state select clr_temp<=
		'1' when zero,
		'0' when others;
		
	with state select ld_contr<=
		'1' when atualize_rom,
		'0' when others;
	
	with state select clr_contr<=
		'1' when zero,
		'0' when others;
		
	with state select LEDG3<=
		'1' when erro,
		'0' when others;
	
	with state select LEDG2<=
		'1' when copie_to_temp, 
		'1' when compare, 
		'1' when opere, 
		'1' when atualize_rom,
		'1' when carregue,
		'0' when others;
		
	with state select LEDR0<=
		'1' when libere,
		'0' when others;
		
-- fim da fsm
	
	tempmux: nbitmux
		generic map(n=>16)
		port map(
		A_in=> V,
		B_in=>outsum,
		selector=>iomux,
		S_out=>outmux);
		
	tempreg: nbitreg
		generic map(n=>16)
		port map(
		data_entry=>outmux,
		enable=>ld_temp,
		clk=>clk_maq, 
		clear=>clr_temp,
		data_out=>outtemp);
		
	outrom15(15 downto 8)<="00000000";
	outrom15(7 downto 0)<=outrom;
	n_outrom15<=not outrom15;
	
	temsum: nbitadder
		generic map(n=>16)
		port map(
		A_in=>outtemp,
		B_in=>n_outrom15,
		carry_in=>'1',
		S_out=>outsum);
		
	romadrs: nbitcounter
		generic map(n=>3)
		port map(
		clock=>clk_maq,
		clear=>clr_contr, 
		enable=>ld_contr, 
		updown=>'0',
		out_cont=>address_rom);
		
	rom: simrom port map(
		address=>address_rom,
		clock=>clk_rom,
		output_rom=>outrom);
		
	comptemp: nbitcompmag
		generic map(n=>16)
		port map(
		A_data=>outtemp, 
		B_data(15 downto 8)=>"00000000",
		B_data(7 downto 0)=>outrom,
		out_lt=>temp_lt_rom);
	
	compadrs: nbitcompmag
		generic map(n=>3)
		port map(
		A_data=>address_rom,
		B_data=>"110",
		out_lt=>address_lt_6);
		
		if_erro<=not address_lt_6;
	
	compzero: nbitcompmag
		generic map(n=>16)
		port map(
		A_data=>outtemp,
		B_data=>"0000000000000000",
		out_eq=>if_zero);
		
	tstsign: process (Coin, address_rom, temp_lt_rom)
		begin
			if(Coin(5)='1' and address_rom="000" and temp_lt_rom='0') then teste<='1';
			elsif(Coin(4)='1' and address_rom="001" and temp_lt_rom='0') then teste<='1';
			elsif(Coin(3)='1' and address_rom="010" and temp_lt_rom='0') then teste<='1';
			elsif(Coin(2)='1' and address_rom="011" and temp_lt_rom='0') then teste<='1';
			elsif(Coin(1)='1' and address_rom="100" and temp_lt_rom='0') then teste<='1';
			elsif(Coin(0)='1' and address_rom="101" and temp_lt_rom='0') then teste<='1';
			else teste<='0';
			end if;
	end process tstsign;
	
end arrangment;

	
	