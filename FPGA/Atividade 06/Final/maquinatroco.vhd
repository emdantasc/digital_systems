library ieee;
use ieee.std_logic_1164.all;

entity maquinatroco is 
	port (
		in_key3, in_key2, in_key1, clk_maq, clk_rom: in std_logic;
		Coin: in std_logic_vector(5 downto 0);
		V: in std_logic_vector(15 downto 0);
		LEDG3, LEDG2, LEDG4: out std_logic;
		coin100, coin50, coin25, coin10, coin5, coin1, tot_reg: out std_logic_vector(15 downto 0)
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
	
	component CoinROM IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	END component;
	
	signal outsum, outtemp, outmux, outrom, n_outrom: std_logic_vector(15 downto 0);
	signal coin_100, coin_50, coin_25, coin_10, coin_5, coin_1: std_logic_vector(15 downto 0);
	signal out_banco: std_logic_vector(5 downto 0);
	signal ld_coin: std_logic_vector (5 downto 0);
	signal address_rom: std_logic_vector(2 downto 0);
	signal ld_temp, clr_temp, ld_contr, clr_contr, clr_coin ,temp_lt_rom, iomux, teste, if_zero, if_erro, address_lt_6, ld_banco, clr_banco, eq_banco, show_v: std_logic;

	type estado is (zero, espere, copie_to_temp, compare, opere, atualize_rom, carregabanco,erro, carregue, libere);
	signal state: estado;
	
begin

--inicio da fsm

	fsm: process(clk_maq, in_key3, in_key2, in_key1, teste, if_zero, if_erro, state)
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
					when copie_to_temp => state<=carregabanco;
					when carregabanco => state<=compare;
					when compare =>
						if(eq_banco='0') then state<=carregabanco;
						elsif(if_erro='1') then state<=erro;
						elsif(if_zero='1') then state<=libere;
						elsif(if_zero='0' and teste='1') then state<=opere;
						elsif(if_zero='0' and teste='0') then state<=atualize_rom;
						else state<=compare;
						end if;
					when erro =>
					  if(eq_banco='0') then state<=carregabanco;
					  else state<=erro;
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
		'1' when carregabanco,
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
		'1' when carregabanco,
		'0' when others;
		
	with state select LEDG4<=
		'1' when libere,
		'0' when others;
	
	with state select clr_coin<=
	  '1' when copie_to_temp,
	  '0' when others;
	
	with state select ld_banco<= 
	 '1' when carregabanco,
	 '0' when others;
	 
	with state select clr_banco<=
	 '1' when zero,
	 '0' when others;
	 
	with state select show_v<=
	 '1' when libere,
	 '0' when others;
		
-- fim da fsm

  regbanco: nbitreg
    generic map(n=>6)
    port map(
    data_entry=>Coin,
		enable=>ld_banco,
		clk=>clk_maq, 
		clear=>clr_banco,
		data_out=>out_banco);
		
	compbanco: nbitcompmag
		generic map(n=>6)
		port map(
		A_data=>out_banco,
		B_data=>Coin,
		out_eq=>eq_banco);
	
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
		
	tot_reg<=outtemp;
		
	n_outrom<=not outrom;
	
	temsum: nbitadder
		generic map(n=>16)
		port map(
		A_in=>outtemp,
		B_in=>n_outrom,
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
		
	rom: coinROM port map(
		address=>address_rom,
		clock=>clk_rom,
		q=>outrom);
		
	comptemp: nbitcompmag
		generic map(n=>16)
		port map(
		A_data=>outtemp,
		B_data=>outrom,
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
		
	tstsign: process (out_banco, address_rom, temp_lt_rom)
		begin
			if(out_banco(5)='1' and address_rom="000" and temp_lt_rom='0') then teste<='1';
			elsif(out_banco(4)='1' and address_rom="001" and temp_lt_rom='0') then teste<='1';
			elsif(out_banco(3)='1' and address_rom="010" and temp_lt_rom='0') then teste<='1';
			elsif(out_banco(2)='1' and address_rom="011" and temp_lt_rom='0') then teste<='1';
			elsif(out_banco(1)='1' and address_rom="100" and temp_lt_rom='0') then teste<='1';
			elsif(out_banco(0)='1' and address_rom="101" and temp_lt_rom='0') then teste<='1';
			else teste<='0';
			end if;
	end process tstsign;
	
	ldcount: process(address_rom, ld_temp)
	   begin
	      if(address_rom = "000" and ld_temp='1') then ld_coin<="100000";
	      elsif(address_rom = "001" and ld_temp='1') then ld_coin<="010000";
	      elsif(address_rom = "010" and ld_temp='1') then ld_coin<="001000";
	      elsif(address_rom = "011" and ld_temp='1') then ld_coin<="000100";
	      elsif(address_rom = "100" and ld_temp='1') then ld_coin<="000010";
	      elsif(address_rom = "101" and ld_temp='1') then ld_coin<="000001";
	      else ld_coin<="000000";
	      end if;
	 end process ldcount;
	
	cont100: nbitcounter
	  generic map(n=>16)
		port map(
		clock=>clk_maq,
		clear=>clr_coin, 
		enable=>ld_coin(5), 
		updown=>'0',
		out_cont=>coin_100);
  
  cont50: nbitcounter
	  generic map(n=>16)
		port map(
		clock=>clk_maq,
		clear=>clr_coin, 
		enable=>ld_coin(4), 
		updown=>'0',
		out_cont=>coin_50);
		
	cont25: nbitcounter
	  generic map(n=>16)
		port map(
		clock=>clk_maq,
		clear=>clr_coin, 
		enable=>ld_coin(3), 
		updown=>'0',
		out_cont=>coin_25);

  cont10: nbitcounter
	  generic map(n=>16)
		port map(
		clock=>clk_maq,
		clear=>clr_coin, 
		enable=>ld_coin(2), 
		updown=>'0',
		out_cont=>coin_10);
  
  cont5: nbitcounter
	  generic map(n=>16)
		port map(
		clock=>clk_maq,
		clear=>clr_coin, 
		enable=>ld_coin(1), 
		updown=>'0',
		out_cont=>coin_5);
		
	cont1: nbitcounter
	  generic map(n=>16)
		port map(
		clock=>clk_maq,
		clear=>clr_coin, 
		enable=>ld_coin(0), 
		updown=>'0',
		out_cont=>coin_1);
		
	show100: nbitmux
		generic map(n=>16)
		port map(
		A_in=>"0000000000000000",
		B_in=>coin_100,
		selector=>show_v,
		S_out=>coin100);

  show50: nbitmux
		generic map(n=>16)
		port map(
		A_in=>"0000000000000000",
		B_in=>coin_50,
		selector=>show_v,
		S_out=>coin50);
		
	show25: nbitmux
		generic map(n=>16)
		port map(
		A_in=>"0000000000000000",
		B_in=>coin_25,
		selector=>show_v,
		S_out=>coin25);
		
	show10: nbitmux
		generic map(n=>16)
		port map(
		A_in=>"0000000000000000",
		B_in=>coin_10,
		selector=>show_v,
		S_out=>coin10);
		
	show5: nbitmux
		generic map(n=>16)
		port map(
		A_in=>"0000000000000000",
		B_in=>coin_5,
		selector=>show_v,
		S_out=>coin5);
		
	show1: nbitmux
		generic map(n=>16)
		port map(
		A_in=>"0000000000000000",
		B_in=>coin_1,
		selector=>show_v,
		S_out=>coin1);  
	    	
end arrangment;