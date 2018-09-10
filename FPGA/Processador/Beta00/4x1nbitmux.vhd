library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity nbitmux4x1 is
    generic(n: natural:=8);
    port(   data_00, data_01, data_10, data_11: in std_logic_vector(n-1 downto 0);
            sel_port: in std_logic_vector(1 downto 0);
            output_data:  out std_logic_vector(n-1 downto 0));
end nbitmux4x1;

architecture arrangment of nbitmux4x1 is

    component nbitmux is
        generic(n: natural :=8);
        port(   A_in, B_in: in std_logic_vector (n-1 downto 0);
                selector: in std_logic;
                S_out: out std_logic_vector(n-1 downto 0));
    end component;

    signal intermux00, intermux01: std_logic_vector(n-1 downto 0);
begin

    mx00: nbitmux 
    generic map(n=>n)
    port map(
        A_in=>data_00,
        B_in=>data_01,
        selector=>sel_port(0),
        S_out=>intermux00);

    mx01: nbitmux 
    generic map(n=>n)
    port map(
        A_in=>data_10,
        B_in=>data_11,
        selector=>sel_port(0),
        S_out=>intermux01);

    mx02: nbitmux 
    generic map(n=>n)
    port map(
        A_in=>intermux00,
        B_in=>intermux01,
        selector=>sel_port(1),
        S_out=>output_data);

end arrangment;