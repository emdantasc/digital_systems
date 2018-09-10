library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ALU_async is
    port(
        A_data, B_data: in std_logic_vector(7 downto 0);
        op_code: in std_logic_vector(2 downto 0);
        out_data: buffer std_logic_vector(7 downto 0);
        if_carry, if_zero: out std_logic
    );
end ALU_async;

    --opcoding
    --000 adição A+B done
    --001 subtração A-B done
    --010 operação AND done
    --011 operação OR done
    --100 operação XOR done
    --101 Incremento A done
    --110 Decremento A done
    --111 Negate A done

architecture arrangment of ALU_async is

    component nbitadder is
        generic(n: natural :=8);
        port(   A_in, B_in: in std_logic_vector (n-1 downto 0);
                carry_in: in std_logic;
                S_out: out std_logic_vector(n-1 downto 0);
                carry_out: out std_logic);
    end component;

    component nbitcompmag is
        generic(n: natural :=8);
        port(   A_data, B_data: in std_logic_vector(n-1 downto 0);
                out_gt, out_lt, out_eq: out std_logic);
    end component;

    component nbitmodule is
        generic(n: natural:=8);
        port(   data_in: in std_logic_vector(n-1 downto 0);
                data_out: out std_logic_vector(n-2 downto 0)
        );
    end component;

    signal out_sum, out_sub, and_ab, or_ab, xor_ab, a_plus, a_minus, notA, notB: std_logic_vector(7 downto 0);
    signal out_eq_zero, out_eq_zero1: std_logic;
    signal signals: std_logic_vector(3 downto 0);

begin

    --a1 complement para A e B
    notA<= not A_data;
    notB<= not B_data;
    --end a1 complement

    --adding
    sumab: nbitadder
        generic map(n=>8)
        port map(
            A_in=>A_data,
            B_in=>B_data,
            carry_in=>'0',
            S_out=>out_sum
    );

    --subtracting
    subab: nbitadder
        generic map(n=>8)
        port map(
            A_in=>A_data,
            B_in=>notB,
            carry_in=>'1',
            S_out=>out_sub
    );
    
    --flags if
    compzero: nbitcompmag
        generic map(n=>8)
        port map(
                A_data=>out_data,
                B_data=>"00000000",
                out_eq=>out_eq_zero
    );

    compzerosub: nbitcompmag
    generic map(n=>8)
    port map(
            A_data=>out_sub,
            B_data=>"00000000",
            out_eq=>out_eq_zero1
    );
    

    signals(3)<=A_data(7);
    signals(2)<=B_data(7);
    signals(1)<=out_sum(7);
    signals(0)<=out_sub(7);

    with signals select if_carry<=
        '0' when "0000",
        '1' when "0001",
        '1' when "0010",
        '1' when "0011",
        '0' when "0100",
        '1' when "0101",
        '0' when "0110",
        '1' when "0111",
        '1' when "1000",
        '1' when "1001",
        '1' when "1010",
        '1' when "1011",
        '1' when "1100",
        '1' when "1101",
        '0' when "1110",
        '1' when "1111",
        '0' when others;

    if_zero<= '1' when out_eq_zero='1' or out_eq_zero1='1' else '0';
                

    --logical relations
    comparisons: for i in 7 downto 0 generate
        and_ab(i)<=A_data(i) and B_data(i);
        or_ab(i)<=A_data(i) or B_data(i);
        xor_ab(i)<=A_data(i) xor B_data(i);
    end generate comparisons;
    -- end logical relations

    -- add 1 and remove 1
    aplusplus: nbitadder
        generic map(n=>8)
        port map(
            A_in=>A_data,
            B_in=>"00000001",
            carry_in=>'0',
            S_out=>a_plus
    );

    aminusminus: nbitadder
        generic map(n=>8)
        port map(
            A_in=>A_data,
            B_in=>"11111111",
            carry_in=>'0',
            S_out=>a_minus
    );

    --end add1 remove1

    with op_code select out_data <=
        out_sum when "000",
        out_sub when "001",
        and_ab when "010",
        or_ab when "011",
        xor_ab when "100",
        a_plus when "101",
        a_minus when "110",
        notA when "111",
        "00000000" when others;

end arrangment;