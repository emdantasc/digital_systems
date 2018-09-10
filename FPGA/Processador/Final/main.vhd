library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity main_processador is
    port(
        SW: in std_logic_vector(7 downto 0);
        Key3, clk27M: in std_logic;
        Hex0, Hex1: out std_logic_vector(6 downto 0);
        LEDR: out std_logic_vector(7 downto 0);
        LEDRF: out std_logic_vector(1 downto 0);
        LEDG: out std_logic
    );
end main_processador;

architecture arrange of main_processador is

    component processador is
    port(
        RAM_data_in: in std_logic_vector(7 downto 0);
        clk_prc, clr_prc: in std_logic;
        RAM_data_out, address_ram, ALU_out: out std_logic_vector(7 downto 0);
        Flag_out: out std_logic_vector(1 downto 0);
        write_ram: out std_logic
    );
    end component;

    component clock_generator is
        generic(clock_in_speed, clock_out_speed: integer);
        port(
            clock_in: in std_logic;
            clock_out: out std_logic);
    end component;

    component RAM IS
	PORT
	(
		address_a		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data_a		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren_a		: IN STD_LOGIC  := '0';
		wren_b		: IN STD_LOGIC  := '0';
		q_a		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
    END component;

    component BinTo7Segment is
        port(bin_in: in std_logic_vector(3 downto 0);
            sevseg_out: out std_logic_vector(6 downto 0));
    end component;

    signal inter_ram_data_in, inter_ram_data_out, inter_ram_address, check_ram: std_logic_vector(7 downto 0);
    signal clock_prc, clock_ram, inter_write_ram, nkey3: std_logic;

begin

    nkey3<=not Key3;

    prc: processador port map(
        RAM_data_in=>inter_ram_data_out,
        clk_prc=>clock_prc,
        clr_prc=>nkey3,
        RAM_data_out=>inter_ram_data_in,
        address_ram=>inter_ram_address,
        ALU_out=>LEDR,
        Flag_out=>LEDRF,
        write_ram=>inter_write_ram
    );

    RAM_data: RAM port map(
        address_a=>inter_ram_address,
		address_b=>SW,
		clock=>clock_ram,
		data_a=>inter_ram_data_in,
		data_b=>"00000000",
		wren_a=>inter_write_ram,
		wren_b=>'0',
		q_a=>inter_ram_data_out,
		q_b=>check_ram
    );

    clkgen: clock_generator
        generic map(clock_in_speed=>27000000, clock_out_speed=>10)
        port map(
            clock_in=>clk27M,
            clock_out=>clock_prc
    );

    clock_ram<= not clock_prc;

    bin0: BinTo7Segment port map(
        bin_in=>check_ram(3 downto 0),
        sevseg_out=>Hex0
    );

    bin1: BinTo7Segment port map(
        bin_in=>check_ram(7 downto 4),
        sevseg_out=>Hex1
    );

end arrange;