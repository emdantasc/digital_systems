library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_signed.all;

entity nbitmodule is
    generic(n: natural:=8);
    port(   data_in: in std_logic_vector(n-1 downto 0);
            data_out: out std_logic_vector(n-2 downto 0)
    );
end nbitmodule;

architecture arrange of nbitmodule is 

component nbitmux is
    generic(n: natural :=8);
    port( A_in, B_in: in std_logic_vector (n-1 downto 0);
          selector: in std_logic;
          S_out: out std_logic_vector(n-1 downto 0));
end component;

component nbitadder is
    generic(n: natural :=8);
    port( A_in, B_in: in std_logic_vector (n-1 downto 0);
          carry_in: in std_logic;
          S_out: out std_logic_vector(n-1 downto 0);
          carry_out: out std_logic);
end component;

signal not_data_in, out_sum, zeros: std_logic_vector(n-2 downto 0);

begin
    zero: for i in n-2 downto 0 generate
        zeros(i)<='0';
    end generate zero;


    not_data_in<=not data_in(n-2 downto 0);

    A2: nbitadder
        generic map(n=>n-1)
        port map(
            A_in=>not_data_in,
            B_in=>zeros,
            carry_in=>'1',
            S_out=>out_sum
    );

    mx: nbitmux
        generic map(n=>n-1)
        port map(
            A_in=>data_in(n-2 downto 0),
            B_in=>out_sum,
            selector=>data_in(n-1),
            S_out=>data_out
    );

end arrange;