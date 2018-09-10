library ieee;
use ieee.std_logic_1164.all;

entity ALU_async is
    port(
        A_data, B_data: in std_logic_vector(7 downto 0);
        op_code: in std_logic_vector(2 downto 0);
        out_data: out std_logic_vector(7 downto 0);
        out_carry, out_zero, out_above, out_below, out_equal: out std_logic
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

    component nbitmux is
        generic(n: natural :=8);
        port(   A_in, B_in: in std_logic_vector (n-1 downto 0);
                selector: in std_logic;
                S_out: out std_logic_vector(n-1 downto 0));
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
    signal moduleA, moduleB: std_logic_vector(6 downto 0);
    signal gt_ab, lt_ab, eq_ab, out_carry_sub, eq_one, eq_128m: std_logic;

begin

    --compvectors
    modA: nbitmodule
        generic map(n=>8)
        port map(
            data_in=>A_data,
            data_out=>moduleA
    );

    modb: nbitmodule
        generic map(n=>8)
        port map(
            data_in=>B_data,
            data_out=>moduleB
    );

    compmod: nbitcompmag
        generic map(n=>7)
        port map(
            A_data=>moduleA,
            B_data=>moduleB,
            out_gt=>gt_ab,
            out_lt=>lt_ab,
            out_eq=>eq_ab
    );

    comp128minus: nbitcompmag
        generic map(n=>8)
        port map(
            A_data=>A_data,
            B_data=>"10000000",
            out_eq=>eq_128m
    );
    --end compvectors

    --a1 complement para A e B
    notA<= not A_data;
    notB<= not B_data;
    --end a1 complement

    --adding
    sumab: nbitadder
        generic map(n=>7)
        port map(
            A_in=>A_data(6 downto 0),
            B_in=>B_data(6 downto 0),
            carry_in=>'0',
            S_out=>out_sum(6 downto 0),
            carry_out=>out_carry
    );

    out_sum(7)<='1' when A_data(7)='1' and eq_128m='1' else
                '0' when A_data(7)='0' and B_data(7)='0' else
                '1' when A_data(7)='1' and B_data(7)='1' else
                '0' when A_data(7)='0' and B_data(7)='1' and gt_ab='1' else
                '1' when A_data(7)='0' and B_data(7)='1' and lt_ab='1' else
                '1' when A_data(7)='1' and B_data(7)='0' and gt_ab='1' else
                '0' when A_data(7)='1' and B_data(7)='0' and lt_ab='1' else
                '0' when A_data(7)='0' and B_data(7)='1' and eq_ab='1' else
                '0' when A_data(7)='1' and B_data(7)='0' and eq_ab='1';
    
    --end adding

    --subtracting
    subab: nbitadder
        generic map(n=>7)
        port map(
            A_in=>A_data(6 downto 0),
            B_in=>notB(6 downto 0),
            carry_in=>'1',
            S_out=>out_sub(6 downto 0),
            carry_out=>out_carry_sub
    );

    out_sub(7)<='0' when A_data(7)='0' and B_data(7)='1' else
                '1' when A_data(7)='1' and B_data(7)='0' else
                '0' when A_data(7)='0' and B_data(7)='0' and gt_ab='1' else
                '1' when A_data(7)='0' and B_data(7)='0' and lt_ab='1' else
                '1' when A_data(7)='1' and B_data(7)='1' and gt_ab='1' else
                '0' when A_data(7)='1' and B_data(7)='1' and lt_ab='1' else
                '0' when A_data(7)='0' and B_data(7)='0' and eq_ab='1' else
                '0' when A_data(7)='1' and B_data(7)='1' and eq_ab='1';
    --end subtracting

    --comparing
    out_equal<= '1' when eq_ab='1' and A_data(7)=B_data(7) else
                '0' ;
    
    out_below<= '1' when lt_ab='1' and A_data(7)='0' and B_data(7)='0' else
                '1' when A_data(7)='1' and B_data(7)='0' else
                '1' when gt_ab='1' and A_data(7)='1' and B_data(7)='1' else
                '0' ;
    
    out_above<= '1' when gt_ab='1' and A_data(7)='0' and B_data(7)='0' else
                '1' when A_data(7)='0' and B_data(7)='1' else
                '1' when lt_ab='1' and A_data(7)='1' and B_data(7)='1' else
                '0' ;
    
    --end comparing;

    --logical relations
    comparisons: for i in 7 downto 0 generate
        and_ab(i)<=A_data(i) and B_data(i);
        or_ab(i)<=A_data(i) or B_data(i);
        xor_ab(i)<=A_data(i) xor B_data(i);
    end generate comparisons;
    -- end logical relations

    -- add 1 and remove 1
    aplusplus: nbitadder
        generic map(n=>7)
        port map(
            A_in=>A_data(6 downto 0),
            B_in=>"0000001",
            carry_in=>'0',
            S_out=>a_plus(6 downto 0)
    );

    aminusminus: nbitadder
        generic map(n=>7)
        port map(
            A_in=>A_data(6 downto 0),
            B_in=>"1111111",
            carry_in=>'0',
            S_out=>a_minus(6 downto 0)
    );

    comp1: nbitcompmag
        generic map(n=>7)
        port map(
            A_data=>moduleA,
            B_data=>"0000001",
            out_eq=>eq_one
    );

    a_plus(7)<= '0' when A_data(7)='1' and eq_one='1' else
                A_data(7) ;

    a_minus(7)<= '0' when A_data(7)='0' and eq_one='1' else
                A_data(7) ;
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