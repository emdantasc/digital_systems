library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity main is
    port(
        SW: in std_logic_vector(7 downto 0);
        Key3, clk27M: in std_logic;
        Hex0, Hex1: out std_logic_vector(6 downto 0);
        LEDR: out std_logic_vector(7 downto 0);
        LEDRF: out std_logic_vector(1 downto 0);
        LEDG: out std_logic
    );
end main;

architecture arrange of main is

    component processador is
    port(
        SW:  in std_logic_vector(7 downto 0);
        clk_prc, clr_prc: in std_logic;
        data_out_prc, ALU_out_prc: out std_logic_vector(7 downto 0);
        Flag_out: out std_logic_vector(1 downto 0)
    );
    end component;

    component clock_generator is
        generic(clock_in_speed, clock_out_speed: integer);
        port(
            clock_in: in std_logic;
            clock_out: out std_logic);
    end component;

    component BinTo7Segment is
        port(bin_in: in std_logic_vector(3 downto 0);
            sevseg_out: out std_logic_vector(6 downto 0));
    end component;

    signal check_prc: std_logic_vector(7 downto 0);
    signal clock_prc, nkey3: std_logic;

begin

    nkey3<=not Key3;

    proc: processador port map(
        SW=>SW,
        clk_prc=>clock_prc, 
        clr_prc=>nkey3,
        data_out_prc=>check_prc,
        ALU_out_prc=>LEDR,
        Flag_out=>LEDRF
    );

    clkgen: clock_generator
      generic map(clock_in_speed=>27000000, clock_out_speed=>10)
      port map(
                clock_in=>clk27M,
                clock_out=>clock_prc
    );
    
    --clock_prc<=clk27M;
	LEDG<=clock_prc;

    bin0: BinTo7Segment port map(
        bin_in=>check_prc(3 downto 0),
        sevseg_out=>Hex0
    );

    bin1: BinTo7Segment port map(
        bin_in=>check_prc(7 downto 4),
        sevseg_out=>Hex1
    );

end arrange;