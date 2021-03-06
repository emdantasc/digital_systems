library ieee;
use ieee.std_logic_1164.all;

entity main_processador is
  port( SW17, clk_27M, Key3: in std_logic;
        SW: in std_logic_vector(7 downto 0);
        Hex0, Hex1, Hex2, Hex3, Hex4, Hex5: out std_logic_vector(6 downto 0));
end main_processador;

architecture arrangment of main_processador is
  
  component processador_machine is
  port(clock_machine, clr_machine: in std_logic;
      ROM_data, in_RAM_data:in std_logic_vector(15 downto 0);
      ROM_address, RAM_address: out std_logic_vector(7 downto 0);
      estado_hex: out std_logic_vector(3 downto 0);
	    out_RAM_data: out std_logic_vector(15 downto 0);
      RAM_write: out std_logic);
  end component;
  
  component DataROM IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
  END component;
  
  component DataRAM IS
	PORT
	(
		address_a		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data_a		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		wren_a		: IN STD_LOGIC  := '0';
		wren_b		: IN STD_LOGIC  := '0';
		q_a		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
  END component;
  
  component BinDisplay is
	port( Bin: in std_logic_vector (15 downto 0);
		    Hex70, Hex71, Hex72, Hex73, Hex74: out std_logic_vector(6 downto 0));
  end component;
  
  component BinTo7Segment is
  port(bin_in: in std_logic_vector(3 downto 0);
      sevseg_out: out std_logic_vector(6 downto 0));
  end component;
  
  component clock_generator is
  generic(clock_in_speed, clock_out_speed: integer);
  port(
    clock_in: in std_logic;
    clock_out: out std_logic);
  end component;
  
  signal address_rom, address_ram: std_logic_vector(7 downto 0);
  signal data_rom, data_ram_in, data_ram_out, ram_to_display: std_logic_vector(15 downto 0);
  signal hex_estado: std_logic_vector(3 downto 0);
  signal write_ram, clk_to_machine, clk_to_ram, clk_10, nkey3: std_logic;
  
begin
  
  clk10: clock_generator
    generic map(clock_in_speed=>27000000, clock_out_speed=>10)
    port map(clock_in=>clk_27M, clock_out=>clk_10);
  
  clk50: clock_generator
    generic map(clock_in_speed=>27000000, clock_out_speed=>50)
    port map(clock_in=>clk_27M, clock_out=>clk_to_ram);
  
  nkey3<= not Key3;
  
  clk_to_machine<=clk_10 and not SW17;
      
  mchn: processador_machine port map(
  clock_machine=>clk_to_machine, 
  clr_machine=>nkey3,
  ROM_data=>data_rom, 
  in_RAM_data=>data_ram_out,
  ROM_address=>address_rom, 
  RAM_address=>address_ram,
  estado_hex=>hex_estado,
  out_RAM_data=>data_ram_in,
  RAM_write=>write_ram);
  
  ROM: DataROM port map(
  address=>address_rom,
  clock=>clk_to_machine,
  q=>data_rom);
  
  RAM: DataRAM port map(
  address_a=>address_ram,
  data_a=>data_ram_in,
  wren_a=>write_ram,
  q_a=>data_ram_out,
  address_b=>SW(7 downto 0),
  data_b=>"0000000000000000",
  wren_b=>'0',
  q_b=>ram_to_display,
  clock=>clk_to_ram);
  
  display: BinDisplay port map(
  Bin=>ram_to_display,
  Hex70=>Hex0, 
  Hex71=>Hex1, 
  Hex72=>Hex2, 
  Hex73=>Hex3, 
  Hex74=>Hex4);
  
  stdsp: BinTo7Segment port map(bin_in=>hex_estado, sevseg_out=>Hex5);
    
end arrangment;