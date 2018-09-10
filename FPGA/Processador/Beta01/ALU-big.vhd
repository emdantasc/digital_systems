library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_signed.all;

entity ALU is 
    port(
        A_data, B_data: in std_logic_vector(7 downto 0);
        code_op: in std_logic_vector(3 downto 0);
        clk_ALU, clr_ALU, att_ALU: in std_logic;
        out_data: out std_logic_vector(7 downto 0);
        ifcarry, ifzero, gt_out, lt_out, eq_out, shift_ready: out std_logic);
end ALU;

    --Códigos de operação
    --0000 adição A+B
    --0001 subtração A-B
    --0010 operação AND
    --0011 operação OR
    --0100 operação XOR
    --0101 Shift-left A_data
    --0110 Shift-right A_data
    --0111 Comparação A==B
    --1000 Incremento A
    --1001 Decremento A
    --1010 Negate A

architecture arrange of ALU is 

    component nbitadder is
        generic(n: natural :=8);
        port(   A_in, B_in: in std_logic_vector (n-1 downto 0);
                carry_in: in std_logic;
                S_out: out std_logic_vector(n-1 downto 0);
                carry_out: out std_logic);
    end component;

    component nbitreg is
        generic(n: natural :=8);
        port(   data_entry: in std_logic_vector (n-1 downto 0);
                enable, clk, clear, shl_en, shr_en: in std_logic;
                data_out: buffer std_logic_vector(n-1 downto 0));
    end component;

    component nbitcompmag is
        generic(n: natural :=8);
        port(   A_data, B_data: in std_logic_vector(n-1 downto 0);
                out_gt, out_lt, out_eq: out std_logic);
    end component;

    component nbitcounter is
        generic(n: natural :=4);
        port(	clock, clear, preset, enable, updown:	in std_logic;
			    data_in: in std_logic_vector(n-1 downto 0);
	            out_cont:	buffer std_logic_vector(n-1 downto 0));
    end component;


    signal notA, notB, out_sum, out_sub, out_and, out_or, out_xor,  out_a_plus, out_a_minus, one, notone, zero, out_shift_reg, shift_count, out_reg_data: std_logic_vector(7 downto 0);
    signal flag_out: std_logic_vector(5 downto 0);
    signal opreg_out: std_logic_vector(3 downto 0);
    signal shift_charge_value, enable_shift_count, shift_to_left, shift_to_right, clr_shift, count_lt_B, case_left, case_right, changeop, carry_sum: std_logic;
    
    type estado is (st_zero, st_wait, st_charge, st_compare, st_shift, st_finish);
    signal state: estado;

        --flag_out(0) -> carry out do somador
        --flag_out(1) -> a==0;
        --flag_out(2) -> out_gt
        --flag_out(3) -> out_lt
        --flag_out(4) -> out_eq
        --flag_out(5) -> shift ready
begin 

    --negate A e B
    notA<=not A_data;
    notB<=not B_data;

    --vetor 1
    onecreate: for i in 7 downto 1 generate
        one(i)<='0';
        zero(i)<='0';
    end generate onecreate;

    one(0)<='1';
    zero(0)<='0';
    notone<= not one;

    --soma ab
    sumab: nbitadder
        generic map(n=>8)
        port map(
            A_in=>A_data,
            B_in=>B_data,
            carry_in=>'0',
            S_out=>out_sum,
            carry_out=>carry_sum
    );

    with code_op select flag_out(0)<=
        carry_sum when "0000",
        '0' when others;
    
    --subtração ab
    subab: nbitadder
        generic map(n=>8)
        port map(
            A_in=>A_data,
            B_in=>notB,
            carry_in=>'1',
            S_out=>out_sub
    );

    --incremento
    aplusplus: nbitadder
        generic map(n=>8)
        port map(
            A_in=>A_data,
            B_in=>one,
            carry_in=>'0',
            S_out=>out_a_plus
    );

    --decremento
    aminusminus: nbitadder
        generic map(n=>8)
        port map(
            A_in=>A_data,
            B_in=>notone,
            carry_in=>'1',
            S_out=>out_a_minus
    );

    --relações lógicas
    logicals: for i in 7 downto 0 generate
        out_and(i)<=A_data(i) and B_data(i);
        out_or(i)<=A_data(i) or B_data(i);
        out_xor(i)<=A_data(i) xor B_data(i);
    end generate logicals;

    --flags comparação
    compab: nbitcompmag
        generic map(n=>8)
        port map(
            A_data=>A_data, 
            B_data=>B_data,
            out_gt=>flag_out(2), 
            out_lt=>flag_out(3), 
            out_eq=>flag_out(4)
    );

    compzero: nbitcompmag
        generic map(n=>8)
        port map(
            A_data=>out_reg_data, 
            B_data=>zero,
            out_eq=>flag_out(1)
    );
    
    --shifters

    --definir fsm

    
    shiftmachine: process(clr_ALU, clk_ALU, case_left, case_right, changeop)
    begin
        if(clr_ALU='1' or (changeop'event and changeop='0')) then state<=st_zero;
        elsif(clk_ALU'event and clk_ALU='1') then
            case state is
                when st_zero => state<=st_wait;
                when st_wait =>
                    if(case_left='1' or case_right='1') then state<=st_charge;
                    else state<=state;
                    end if;
                when st_charge => state<=st_compare;
                when st_compare =>
                    if(count_lt_B='0') then state<=st_finish;
                    else state<=st_shift;
                    end if;
                when st_shift => state<=st_compare;
                when st_finish =>
                    if(changeop='0') then state<=st_zero;
                    else state<=state;
                    end if;
            end case;
        else state<=state;
        end if;
    end process shiftmachine;

    opreg: nbitreg
        generic map(n=>4)
        port map(
            data_entry=>code_op,
            enable=>att_ALU, 
            clk=>clk_ALU, 
            clear=>clr_ALU, 
            shl_en=>'0', 
            shr_en=>'0',
            data_out=>opreg_out
    );

    compop: nbitcompmag
        generic map(n=>4)
        port map(
            A_data=>opreg_out, 
            B_data=>code_op,
           out_eq=>changeop
    );

    shiftcount: nbitcounter
        generic map(n=>8)
        port map(
            clock=>clk_ALU, 
            clear=>clr_shift, 
            preset=>'0', 
            enable=>enable_shift_count, 
            updown=>'0',
            data_in=>"00000000",
            out_cont=>shift_count
    );

    compcountB: nbitcompmag
        generic map(n=>8)
        port map(
            A_data=>shift_count, 
            B_data=>B_data,
           out_lt=>count_lt_B
    );

    shiftreg: nbitreg
        generic map(n=>8)
        port map(
            data_entry=>A_data,
            enable=>shift_charge_value, 
            clk=>clk_ALU, 
            clear=>clr_shift, 
            shl_en=>shift_to_left, 
            shr_en=>shift_to_right,
            data_out=>out_shift_reg
    );

    with state select enable_shift_count<=
        '1' when st_shift,
        '0' when others;
    
    with state select shift_charge_value<=
        '1' when st_charge,
        '0' when others;
    
    with code_op select case_left<=
        '1' when "0101",
        '0' when others;
    
    with code_op select case_right<=
        '1' when "0110",
        '0' when others;
        
    shift_to_left<= '1' when case_left='1' and state=st_shift else '0';
    shift_to_right<= '1' when case_right='1' and state=st_shift else '0';

    with state select flag_out(5)<=
        '1' when st_finish,
        '0' when others;
    
    with state select clr_shift<=
        '1' when st_zero,
        '0' when others;

    --end shifters

    --output registers

    flag_register: nbitreg
        generic map(n=>5)
        port map(
            data_entry=>flag_out(4 downto 0),
            enable=>att_ALU, 
            clk=>clk_ALU, 
            clear=>clr_ALU, 
            shl_en=>'0', 
            shr_en=>'0',
            data_out(0)=>ifcarry,
            data_out(1)=>ifzero,
            data_out(2)=>gt_out,
            data_out(3)=>lt_out,
            data_out(4)=>eq_out
    );
    
    sflag_register: nbitreg
        generic map(n=>1)
        port map(
            data_entry(0)=>flag_out(5),
            enable=>att_ALU, 
            clk=>clk_ALU, 
            clear=>clr_shift, 
            shl_en=>'0', 
            shr_en=>'0',
            data_out(0)=>shift_ready
    );

    with code_op select out_reg_data<=
        out_sum when "0000",
        out_sub when "0001",
        out_and when "0010",
        out_or when "0011",
        out_xor when "0100",
        out_shift_reg when "0101",
        out_shift_reg when "0110",
        A_data when "0111",
        out_a_plus when "1000",
        out_a_minus when "1001",
        notA when "1010",
        "00000000" when others;

    data_register: nbitreg
        generic map(n=>8)
        port map(
            data_entry=>out_reg_data,
            enable=>att_ALU,
            clk=>clk_ALU,
            clear=>clr_ALU,
            shl_en=>'0',
            shr_en=>'1',
            data_out=>out_data
    );

end arrange;