library ieee;
use ieee.std_logic_1164.all;

entity main_FIFO is
	port( SW: in std_logic_vector(2 downto 0);
			Key3, clk_27: in std_logic;
			LEDR, LEDG: out std_logic_vector(1 downto 0);
			Hex0, Hex1, Hex2, Hex3, Hex4, Hex5: out std_logic_vector(6 downto 0));
end main_FIFO;

architecture arrange of main_FIFO is

	component clock_generator is
		generic(clock_in_speed, clock_out_speed: integer);
		port(
			clock_in: in std_logic;
			clock_out: out std_logic);
	end component;
	
	component BinDisplay is
		port( Bin: in std_logic_vector (15 downto 0);
				Hex70, Hex71, Hex72, Hex73, Hex74: out std_logic_vector(6 downto 0));
	end component;
	
	component nbitmux is
		generic(n: natural :=8);
		port( A_in, B_in: in std_logic_vector (n-1 downto 0);
				selector: in std_logic;
				S_out: out std_logic_vector(n-1 downto 0));
	end component;
	
	component nbitcounter is
		generic(n: natural :=4);
		port(	clock, clear, enable, updown:	in std_logic;
				out_cont:	buffer std_logic_vector(n-1 downto 0));
	end component;

	component Data_ROM IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	END component;
	
	component FIFO_machine is
	port(	wr_switch, rd_switch, clr_fifo, clk_maq: in std_logic;
			write_data: in std_logic_vector(15 downto 0);
			read_data: out std_logic_vector(15 downto 0);
			empty, full, ld_cont_rom: out std_logic);
	end component;
	
	signal out_rom, out_rd_data, out_mx: std_logic_vector(15 downto 0);
	signal address_rom: std_logic_vector(5 downto 0);
	signal ld_address, clk1, clk2: std_logic;
	signal n_key3: std_logic:='1';
	
begin
	
	n_key3<= not Key3;
	
	clk_1: clock_generator
		generic map(clock_in_speed=>27000000, clock_out_speed=>20)
		port map(clock_in=>clk_27, clock_out=>clk1);
	
	clk_2: clock_generator
		generic map(clock_in_speed=>27000000, clock_out_speed=>40)
		port map(clock_in=>clk_27, clock_out=>clk2);
		
	LEDG(1)<=clk2;
	LEDG(0)<=clk1;
	
	mchn: FIFO_machine port map(
		wr_switch=>SW(0), 
		rd_switch=>SW(1), 
		clr_fifo=>n_key3, 
		clk_maq=>clk1,
		write_data=>out_rom,
		read_data=>out_rd_data,
		empty=>LEDR(1),
		full=>LEDR(0),
		ld_cont_rom=>ld_address);
		
	address_count: nbitcounter
		generic map(n=>6)
		port map(
		clock=>clk1,
		clear=>n_key3, 
		enable=>ld_address, 
		updown=>'0',
		out_cont=>address_rom);
	
	ROM: data_ROM port map(
		address=>address_rom,
		clock=>clk2,
		q=>out_rom);
		
	mx_data: nbitmux
		generic map(n=>16)
		port map(
			A_in=>out_rd_data,
			B_in=>out_rom,
			selector=>SW(2),
			S_out=>out_mx);
	
	DSP4: BinDisplay port map(
		Bin=>out_mx,
		Hex70=>Hex0, 
		Hex71=>Hex1, 
		Hex72=>Hex2, 
		Hex73=>Hex3);
	
	DSP2: BinDisplay port map(
		Bin(15 downto 6)=>"0000000000",
		Bin(5 downto 0)=>address_rom,
		Hex70=>Hex4, 
		Hex71=>Hex5);

end arrange;