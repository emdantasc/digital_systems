library ieee;
use ieee.std_logic_1164.all;

entity main_vmachine is
  port( SW_value: in std_logic_vector(7 downto 0);
        Key_3, Key_2, Key_1, clock_27M, switch: in std_logic;
        tot_Hex0, tot_Hex1, tot_Hex2, rom_Hex0, rom_Hex1, state_Hex: out std_logic_vector(6 downto 0);
        LEDR_0, LEDR_1: out std_logic);
end main_vmachine;

architecture arrangment of main_vmachine is
  
  component botaosincrono is 
      port( Key, clk, reset: in std_logic;
            Key_sincrono: out std_logic);
  end component;
  
  component nbitcounter is
     generic(n: natural :=4);
     port(	clock, clear, enable, updown:	in std_logic;
	         out_cont:	buffer std_logic_vector(n-1 downto 0));
  end component;
  
	component ROM_coin is
	port(
			address: in std_logic_vector(3 DOWNTO 0);
			clock	: in std_logic;
			q: out std_logic_vector(5 DOWNTO 0));
	end component;
  
	component clock_generator is
	generic(clock_in_speed, clock_out_speed: integer);
	port(
			clock_in: in std_logic;
			clock_out: out std_logic);
	end component;
  
  component maquina_processador is
	   port(	Key3, Key2, Key1, clock: in std_logic;
	         SW: in std_logic_vector(7 downto 0);
			     Coin: in std_logic_vector(5 downto 0);
			     LEDR0: out std_logic;
			     StateHex: out std_logic_vector(3 downto 0);
			     Tot: out std_logic_vector(7 downto 0));
  end component;
  
  component BinDisplay is
	   port( Bin: in std_logic_vector (15 downto 0);
		       Hex70, Hex71, Hex72, Hex73, Hex74: out std_logic_vector(6 downto 0));
  end component;
  
  component BinTo7Segment is
      port( bin_in: in std_logic_vector(3 downto 0);
            sevseg_out: out std_logic_vector(6 downto 0));
  end component;
  
  component nbitmux is
  generic(n: natural :=8);
  port( A_in, B_in: in std_logic_vector (n-1 downto 0);
        selector: in std_logic;
        S_out: out std_logic_vector(n-1 downto 0));
  end component;
    
  signal clk1, clk2, nkey2, nkey3, sinckey2: std_logic;
  signal adress_rom, state: std_logic_vector(3 downto 0);
  signal coin_rom: std_logic_vector(5 downto 0);
  signal out_total, out_mux: std_logic_vector(7 downto 0);

begin 
  
  CLK_1: clock_generator
    generic map(clock_in_speed=>27000000, clock_out_speed=>50)
    port map(
    clock_in=>clock_27M,
    clock_out=>clk1);
  
  CLK_2: clock_generator
    generic map(clock_in_speed=>27000000, clock_out_speed=>100)
    port map(
    clock_in=>clock_27M,
    clock_out=>clk2);

  nkey2<=not Key_2;
  nkey3<=not Key_3;
  
  sinc: botaosincrono port map(
  Key=>nkey2, 
  clk=>clk1, 
  reset=>nkey3,
  Key_sincrono=>sinckey2
  );
  
  LEDR_1<=sinckey2;
  
  mchn: maquina_processador port map(
  Key3=>Key_3,
  Key2=>sinckey2,
  Key1=>Key_1,
  clock=>clk1,
  SW=>SW_value,
  Coin=>coin_rom,
  LEDR0=>LEDR_0,
  StateHex=>state,
  Tot=>out_total);
  
  adrs: nbitcounter
    generic map(n=>4)
    port map(
    clock=>clk1,
    clear=>nkey3,
    enable=>sinckey2,
    updown=>'0',
    out_cont=>adress_rom);
    
  coinrom: ROM_coin port map(
  address=>adress_rom,
  clock=>clk2,
  q=>coin_rom);
  
  mx: nbitmux
  generic map(n=>8)
  port map(
  A_in=>out_total,
  B_in=>SW_value,
  selector=>switch,
  S_out=>out_mux);
  
  Disp_Tot: BinDisplay port map(
  Bin(15 downto 8)=>"00000000",
  Bin(7 downto 0)=>out_mux,
  Hex70=>tot_Hex0, 
  Hex71=>tot_Hex1, 
  Hex72=>tot_Hex2);
  
  Disp_ROM: BinDisplay port map(
  Bin(15 downto 6)=>"0000000000",
  Bin(5 downto 0)=>coin_rom,
  Hex70=>rom_Hex0, 
  Hex71=>rom_Hex1);
  
  DispState: BinTo7Segment port map(
  bin_in=>state,
  sevseg_out=>state_Hex);
  
end arrangment;
  
  