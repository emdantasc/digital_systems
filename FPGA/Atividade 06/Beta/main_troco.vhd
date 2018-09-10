library ieee;
use ieee.std_logic_1164.all;

entity main_troco is
	port(
			Key3, Key2, Key1, clock27M: in std_logic;
			SW: in std_logic_vector(5 downto 0);
			SW_sel: in std_logic_vector(2 downto 0);
			LEDR: out std_logic_vector(6 downto 0);
			LEDG: out std_logic_vector(3 downto 0);
			Hex0, Hex1, Hex2, Hex3, Hex4, Hex5: out std_logic_vector(6 downto 0));
end main_troco;

architecture arrange of main_troco is

	component maquinatroco is 
		port (
			in_key3, in_key2, in_key1, clk_maq, clk_rom: in std_logic;
			Coin: in std_logic_vector(5 downto 0);
			V: in std_logic_vector(15 downto 0);
			LEDG3, LEDG2, LEDR6: out std_logic;
			coin100, coin50, coin25, coin10, coin5, coin1, tot_reg: out std_logic_vector(15 downto 0)
		);
	end component;
	
	component clock_generator is
		generic(clock_in_speed, clock_out_speed: integer);
		port(
			clock_in: in std_logic;
			clock_out: out std_logic);
	end component;
	
	component botaosincrono is 
		port(	Key, clk, reset: in std_logic;
				Key_sincrono: out std_logic);
	end component;
	
	component BinDisplay is
	port( Bin: in std_logic_vector (15 downto 0);
		    Hex70, Hex71, Hex72, Hex73, Hex74: out std_logic_vector(6 downto 0));
	end component;
	
	component nbitcounter is
		generic(n: natural :=4);
		port(	clock, clear, enable, updown:	in std_logic;
				out_cont:	buffer std_logic_vector(n-1 downto 0));
	end component;
	
	component ValueROM IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	END component;
	
	component nbit8x1mux is
		generic(n: natural:=8);
		port(	in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7: in std_logic_vector(n-1 downto 0);
				sel: in std_logic_vector(2 downto 0);
				out_data: out std_logic_vector(n-1 downto 0));
	end component;

	signal Key_2sinc, Key_1sinc, clk20, clk40, Key_3, Key_2, Key_1: std_logic;
	signal coin100_v, coin50_v, coin25_v, coin10_v, coin5_v, coin1_v, tot_reg_v, outrom, outmux: std_logic_vector(15 downto 0);
	signal address_rom: std_logic_vector(3 downto 0);

begin
	
	Key_3<=not Key3;
	Key_2<=not Key2;
	Key_1<=not Key1;

	rom_address: nbitcounter
		generic map(n=>4)
		port map(
		clock=>clk20, 
		clear=>Key_3, 
		enable=>Key_2sinc, 
		updown=>'0',
		out_cont=>address_rom);
		
	clock_20: clock_generator
		generic map(clock_in_speed=>27000000, clock_out_speed=>20)
		port map(clock_in=>clock27M, clock_out=>clk20);
	
	clock_40: clock_generator
		generic map(clock_in_speed=>27000000, clock_out_speed=>40)
		port map(clock_in=>clock27M, clock_out=>clk40);
	
	K2S: botaosincrono port map(
		Key=>Key_2, 
		clk=>clk20, 
		reset=>Key_3,
		Key_sincrono=>Key_2sinc);
		
	K1S: botaosincrono port map(
		Key=>Key_1, 
		clk=>clk20, 
		reset=>Key_3,
		Key_sincrono=>Key_1sinc);
	
	LEDG(0)<=clk20;
	LEDG(1)<=Key_2sinc;
	
	VROM: valueROM port map(
		address=>address_rom,
		clock=>clk40,
		q=>outrom);
	
	MQ: maquinatroco port map(
		in_key3=>Key_3, 
		in_key2=>Key_2sinc, 
		in_key1=>Key_1sinc, 
		clk_maq=>clk20, 
		clk_rom=>clk40,
		Coin=>SW,
		V=>outrom,
		LEDG3=>LEDG(3), 
		LEDG2=>LEDG(2), 
		LEDR6=>LEDR(6),
		coin100=>coin100_v, 
		coin50=>coin50_v, 
		coin25=>coin25_v, 
		coin10=>coin10_v, 
		coin5=>coin5_v, 
		coin1=>coin1_v, 
		tot_reg=>tot_reg_v);
	
	LEDR(5 downto 0)<=SW;
	
	MX81: nbit8x1mux
		generic map(n=>16)
		port map(
		in_0=>outrom, 
		in_1=>tot_reg_v, 
		in_2=>coin100_v, 
		in_3=>coin50_v, 
		in_4=>coin25_v, 
		in_5=>coin10_v, 
		in_6=>coin5_v, 
		in_7=>coin1_v,
		sel=>SW_sel,
		out_data=>outmux);
	
	DSP: BinDisplay port map(
		Bin=>outmux,
		Hex70=>Hex0, 
		Hex71=>Hex1, 
		Hex72=>Hex2, 
		Hex73=>Hex3);
		
	DSP1: BinDisplay port map(
		Bin(15 downto 4)=>"000000000000",
		Bin(3 downto 0)=>address_rom,
		Hex70=>Hex4, 
		Hex71=>Hex5);
		
end arrange;