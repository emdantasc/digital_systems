library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity processador is
    port(
        RAM_data_in: in std_logic_vector(7 downto 0);
        clk_prc, clr_prc: in std_logic;
        RAM_data_out, address_ram, ALU_out: out std_logic_vector(7 downto 0);
        Flag_out: out std_logic_vector(1 downto 0);
        write_ram: out std_logic
    );
end processador;

architecture arrangment of processador is

    component ALU_async is
        port(
            A_data, B_data: in std_logic_vector(7 downto 0);
            op_code: in std_logic_vector(2 downto 0);
            out_data: buffer std_logic_vector(7 downto 0);
            if_carry, if_zero: out std_logic);
    end component;

    component nbitreg is
        generic(n: natural :=8);
        port(   data_entry: in std_logic_vector (n-1 downto 0);
                load, clk, clear, sh_en, left_right: in std_logic;
                data_out: buffer std_logic_vector(n-1 downto 0));
    end component;

    component nbitshifter is
        generic(n: natural:=8);
        port(
            A_data, B_data: in std_logic_vector(n-1 downto 0);
            out_data: out std_logic_vector(n-1 downto 0);
            start, clk_shift, clr_shift, left_right: in std_logic;
            ready: out std_logic);
    end component;

    component nbitcounter is
        generic(n: natural :=4);
        port(	clock, clear, load, enable, updown:	in std_logic;
			    data_in: in std_logic_vector(n-1 downto 0);
	            out_cont:	buffer std_logic_vector(n-1 downto 0));
    end component;

    --declarações bloco de controle
    type estado is (zero, ft_command, ft_op1, ft_op2, decode, move, ALU_user, shift_process, shift_ready, jump, write_pc, push_retrieve, push_write, pop_retrieve, pop_write, call, return_retrieve, return_write, st_error, halt); -- push, pop,
    signal state: estado:=zero;
    --RAM_data_out address_ram write_ram
    signal op0_data, op1_data, op2_data, pc_data: std_logic_vector(7 downto 0);
    signal ld_op0, ld_op1, ld_op2, ld_pc, clr_op0, clr_op1, clr_op2, clr_pc, en_pc: std_logic;
    -- fim das declarações

    --declarações datapath
    signal write_bank: std_logic_vector(3 downto 0);
    signal smx_banco, op_ALU, smx_data_RAM: std_logic_vector(2 downto 0);
    signal smx_adrs_RAM, smx_ALU, flags: std_logic_vector(1 downto 0);
    signal in_regbank, Ra_bank, Rb_bank, outReg0, outReg1, outReg2, outReg3, ALU_mx_out, out_ALU, out_shift, out_sp, out_tmp, mx_pc: std_logic_vector(7 downto 0);
    signal clear_bank, zero_ALU, carry_ALU, write_flag, clear_flag, clr_shift, start_shift, lr_sign, ready_shift, ld_sp, en_sp, updown_sp, ld_tmp, clr_tmp, smx_pc: std_logic;

begin

    -- datapath fetch

    rg_op0: nbitreg
        generic map(n=>8)
        port map(
            data_entry=>RAM_data_in,
            load=>ld_op0,
            clk=>clk_prc,
            clear=>clr_op0,
            sh_en=>'0',
            left_right=>'0',
            data_out=>op0_data);

    rg_op1: nbitreg
        generic map(n=>8)
        port map(
            data_entry=>RAM_data_in,
            load=>ld_op1,
            clk=>clk_prc,
            clear=>clr_op1,
            sh_en=>'0',
            left_right=>'0',
            data_out=>op1_data);

    rg_op2: nbitreg
        generic map(n=>8)
        port map(
            data_entry=>RAM_data_in,
            load=>ld_op2,
            clk=>clk_prc,
            clear=>clr_op2,
            sh_en=>'0',
            left_right=>'0',
            data_out=>op2_data);

    pc: nbitcounter
        generic map(n=>8)
        port map(
            clock=>clk_prc,
            clear=>clr_pc,
            load=>ld_pc,
            enable=>en_pc,
            updown=>'0',
            data_in=>mx_pc,
            out_cont=>pc_data);
    
    with smx_pc select mx_pc<=
        op1_data when '0',
        RAM_data_in when '1',
        pc_data when others;

    smx_pc<= '1' when state=return_retrieve or state=return_write else '0';

    --end datapath fetch

    -- atribuições dos sinais de controle

    ld_op0<= '1' when state=ft_command else '0';
    ld_op1<= '1' when state=ft_op1 else '0';
    ld_op2<= '1' when state=ft_op2 else '0';
    
    
    clr_op0<='1' when state=zero else '0';
    clr_op1<='1' when state=zero or state=ft_command else '0';
    clr_op2<='1' when state=zero or state=ft_command else '0';
    clr_pc<='1' when state=zero else '0';

    en_pc<='1' when state=ft_command or state=ft_op1 or state=ft_op2 else '0';

    -- end atribuiçao

    --datapath dados

    reg0: nbitreg
        generic map(n=>8)
        port map(
            data_entry=>in_regbank,
            load=>write_bank(0),
            clk=>clk_prc,
            clear=>clear_bank,
            sh_en=>'0',
            left_right=>'0',
            data_out=>outReg0);
    
    reg1: nbitreg
        generic map(n=>8)
        port map(
            data_entry=>in_regbank,
            load=>write_bank(1),
            clk=>clk_prc,
            clear=>clear_bank,
            sh_en=>'0',
            left_right=>'0',
            data_out=>outReg1);

    reg2: nbitreg
        generic map(n=>8)
        port map(
            data_entry=>in_regbank,
            load=>write_bank(2),
            clk=>clk_prc,
            clear=>clear_bank,
            sh_en=>'0',
            left_right=>'0',
            data_out=>outReg2);

    reg3: nbitreg
        generic map(n=>8)
        port map(
            data_entry=>in_regbank,
            load=>write_bank(3),
            clk=>clk_prc,
            clear=>clear_bank,
            sh_en=>'0',
            left_right=>'0',
            data_out=>outReg3);
    
    

    with op1_data select Ra_bank<=
        outReg0 when "00000000",
        outReg1 when "00000001",
        outReg2 when "00000010",
        outReg3 when "00000011",
        "00000000" when others;
    
    with op2_data select Rb_bank<=
        outReg0 when "00000000",
        outReg1 when "00000001",
        outReg2 when "00000010",
        outReg3 when "00000011",
        "00000000" when others;

    with smx_banco select in_regbank<=
        Rb_bank when "000",
        RAM_data_in when "001",
        op2_data when "010",
        out_ALU when "011",
        out_shift when "100",
        "00000000" when others;

    smx_banco<= "000" when state=move and op0_data="00000000" else
                "001" when state=move and op0_data="00000001" else
                "001" when state=pop_write and op0_data="00100100" else
                "010" when state=move and op0_data="00000010" else
                "011" when state=ALU_user and ((op0_data>="00000101" and op0_data<="00010011") or (op0_data>="00011101" and op0_data<="00011111")) else
                "100" when state=shift_ready and op0_data>="00010100" and op0_data<="00011001" else
                "000";

    write_bank<=    "0001" when state=move and (op0_data>="00000000" and op0_data<="00000010") and op1_data="00000000" else
                    "0001" when state=ALU_user and ((op0_data>="00000101" and op0_data<="00010011") or (op0_data>="00011101" and op0_data<="00011111")) and op1_data="00000000" else
                    "0001" when state=shift_ready and op0_data>="00010100" and op0_data<="00011001" and op1_data="00000000" else
                    "0001" when state=pop_write and op0_data="00100100" and op1_data="00000000" else
                    "0010" when state=move and (op0_data>="00000000" and op0_data<="00000010") and op1_data="00000001" else
                    "0010" when state=ALU_user and ((op0_data>="00000101" and op0_data<="00010011") or (op0_data>="00011101" and op0_data<="00011111")) and op1_data="00000001" else
                    "0010" when state=shift_ready and op0_data>="00010100" and op0_data<="00011001" and op1_data="00000001" else
                    "0010" when state=pop_write and op0_data="00100100" and op1_data="00000001" else
                    "0100" when state=move and (op0_data>="00000000" and op0_data<="00000010") and op1_data="00000010" else
                    "0100" when state=ALU_user and ((op0_data>="00000101" and op0_data<="00010011") or (op0_data>="00011101" and op0_data<="00011111")) and op1_data="00000010" else
                    "0100" when state=shift_ready and op0_data>="00010100" and op0_data<="00011001" and op1_data="00000010" else
                    "0100" when state=pop_write and op0_data="00100100" and op1_data="00000010" else
                    "1000" when state=move and (op0_data>="00000000" and op0_data<="00000010") and op1_data="00000011" else
                    "1000" when state=ALU_user and ((op0_data>="00000101" and op0_data<="00010011") or (op0_data>="00011101" and op0_data<="00011111")) and op1_data="00000011" else
                    "1000" when state=shift_ready and op0_data>="00010100" and op0_data<="00011001" and op1_data="00000011" else
                    "1000" when state=pop_write and op0_data="00100100" and op1_data="00000011" else
                    "0000";

    clear_bank<= '1' when state=zero else '0';

    ALU: ALU_async port map(
        A_data=>Ra_bank,
        B_data=>ALU_mx_out,
        op_code=>op_ALU,
        out_data=>out_ALU,
        if_carry=>carry_ALU,
        if_zero=>zero_ALU);
    
    ALU_out<=out_ALU;

    flagreg: nbitreg
        generic map(n=>2)
        port map(
            data_entry(1)=>carry_ALU,
            data_entry(0)=>zero_ALU,
            load=>write_flag,
            clk=>clk_prc,
            clear=>clear_flag,
            sh_en=>'0',
            left_right=>'0',
            data_out=>flags);
    
    Flag_out<=flags;

            --flag(0)==zero
            --flag(1)==carry
    
    write_flag<= '1' when state=ALU_user else '0';
    clear_flag<= '1' when state=zero else '0';

    ld_pc<= '1' when state=jump and op0_data="00100101" else
            '1' when state=jump and op0_data="00100110" and flags(1)='1' else --if carry
            '1' when state=jump and op0_data="00100111" and flags(1)='0' else --if not carry
            '1' when state=jump and op0_data="00101000" and flags(0)='1' else --if zero
            '1' when state=jump and op0_data="00101001" and flags(0)='0' else --if not zero
            '1' when state=jump and op0_data="00101010" and flags(1)='0' and flags(0)='0' else --if above
            '1' when state=jump and op0_data="00101011" and flags(1)='0' and flags(0)='0' else --if not below or equal
            '1' when state=jump and op0_data="00101100" and flags(1)='0' else --if above and equal
            '1' when state=jump and op0_data="00101101" and flags(1)='0' else --if not below
            '1' when state=jump and op0_data="00101110" and flags(1)='1' else --if below
            '1' when state=jump and op0_data="00101111" and flags(1)='1' else --if not above and equal
            '1' when state=jump and op0_data="00110000" and (flags(1)='1' or flags(0)='1') else --if not below and equal
            '1' when state=jump and op0_data="00110001" and (flags(1)='1' or flags(0)='1') else --if not above
            '1' when state=jump and op0_data="00110010" and flags(0)='1' else -- if equal
            '1' when state=jump and op0_data="00110011" and flags(0)='0' else -- if not equal
            '1' when state=call and op0_data="00100000" else
            '1' when state=return_write else
            '0';     

    op_ALU<=    "000" when op0_data="00000101" or op0_data="00000110" or op0_data="00000111" else
                "001" when op0_data="00011010" or op0_data="00011011" or op0_data="00011100" else
                "001" when op0_data="00001000" or op0_data="00001001" or op0_data="00001010" else
                "010" when op0_data="00001011" or op0_data="00001100" or op0_data="00001101" else
                "011" when op0_data="00001110" or op0_data="00001111" or op0_data="00010000" else
                "100" when op0_data="00010001" or op0_data="00010010" or op0_data="00010011" else
                "101" when op0_data="00011101" else
                "110" when op0_data="00011110" else
                "111" when op0_data="00011111" else
                "000";
    
    with smx_ALU select ALU_mx_out<=
        Rb_bank when "00",
        RAM_data_in when "01",
        op2_data when "10",
        "00000000" when others;
    
    smx_ALU<=   "00" when op0_data="00000101" or op0_data="00001000" or op0_data="00001011" or op0_data="00001110" or op0_data="00010001" or op0_data="00011010" or op0_data="00010100" or op0_data="00010111" else
                "01" when op0_data="00000110" or op0_data="00001001" or op0_data="00001100" or op0_data="00001111" or op0_data="00010010" or op0_data="00011011" or op0_data="00010101" or op0_data="00011000" else
                "10" when op0_data="00000111" or op0_data="00001010" or op0_data="00001101" or op0_data="00010000" or op0_data="00010011" or op0_data="00011100" or op0_data="00010110" or op0_data="00011001" else
                "11";
    
    start_shift<= '1' when state=shift_process else '0';
    clr_shift<= '1' when state=zero else '0';
    lr_sign<=   '1' when op0_data>="00010100" and op0_data<="00010110" else
                '0' when op0_data>="00010111" and op0_data<="00011001" else
                '0';
    
    shft:nbitshifter 
        generic map(n=>8)
        port map(
            A_data=>Ra_bank,
            B_data=>ALU_mx_out,
            out_data=>out_shift,
            start=>start_shift, 
            clk_shift=>clk_prc, 
            clr_shift=>clr_shift, 
            left_right=>lr_sign,
            ready=>ready_shift);
    
    SP: nbitcounter
        generic map(n=>8)
        port map(
            clock=>clk_prc, 
            clear=>'0', 
            load=>ld_sp, 
            enable=>en_sp, 
            updown=>updown_sp,
            data_in=>"11100111",
            out_cont=>out_sp);


    ld_sp<='1' when state=zero else '0';
    en_sp<='1' when state=push_write or state=pop_retrieve or state=call or state=return_retrieve else '0';
    updown_sp<='1' when state=push_write or state=call else '0';

    TMP: nbitreg
        generic map(n=>8)
        port map(
            data_entry=>RAM_data_in,
            load=>ld_tmp,
            clk=>clk_prc,
            clear=>clr_tmp,
            sh_en=>'0',
            left_right=>'0',
            data_out=>out_tmp);
    
    ld_tmp<='1' when state=push_retrieve and op0_data="00100010" else '0';
    clr_tmp<='1' when state=ft_command else '0';

    --end datapath

    --start fsm

    fsm: process(clk_prc, op0_data, clr_prc, RAM_data_in)
    begin
        if(clr_prc='1') then state<=zero;
        elsif(clk_prc'event and clk_prc='1') then
            case state is
                when zero=> state<=ft_command;
                when ft_command=> 
                    if(RAM_data_in>="00000000" and RAM_data_in<="00110011") then state<=ft_op1;
                    elsif(RAM_data_in>"00110011" and RAM_data_in<="00110101") then state<=decode;
                    else state<=st_error;
                    end if;
                when ft_op1=>
                    if(op0_data>="00000000" and op0_data<="00011100") then state<=ft_op2;
                    elsif(op0_data>="00011101" and op0_data<="00110011") then state<=decode;
                    else state<= st_error;
                    end if;
                when ft_op2=>
                    if(op0_data>="00000000" and op0_data<="00011100") then state<=decode;
                    else state<=st_error;
                    end if;
                when decode=>
                    if(op0_data>="00000000" and op0_data<="00000100") then state<=move;
                    elsif((op0_data>="00000101" and op0_data<="00010011") or (op0_data>="00011010" and op0_data<="00011111")) then state<=ALU_user;
                    elsif(op0_data>="00010100" and op0_data<="00011001") then state<=shift_process;
                    elsif(op0_data="00100010") then state<=push_retrieve;
                    elsif(op0_data="00100001" or op0_data="00100011") then state<=push_write;
                    elsif(op0_data="00100100") then state<=pop_retrieve;
                    elsif(op0_data>="00100101" and op0_data<="00110011") then state<=jump;
                    elsif(op0_data="00100000") then state<=call;
                    elsif(op0_data="00110100") then state<=return_retrieve;
                    elsif(op0_data="00110101") then state<=halt;
                    else state<=st_error;
                    end if;
                when move=> state<=ft_command;
                when ALU_user=> state<=ft_command;
                when shift_process=> 
                    if(ready_shift='1') then state<= shift_ready;
                    else state<=shift_process;
                    end if;
                when shift_ready=> state<=ft_command;
                when jump=> 
                    if(ld_pc='1') then state<=write_pc;
                    else state<=ft_command;
                    end if;
                when push_retrieve=> state<=push_write;
                when push_write=> state<=ft_command;
                when pop_retrieve=> state<=pop_write;
                when pop_write=> state<=ft_command;
                when write_pc=> state<=ft_command;
                when call=> state<=ft_command;
                when return_retrieve=> state<=return_write;
                when return_write=> state<=write_pc;
                when halt=> state<=halt;
                when st_error=> state<=state;
            end case;
        else state<=state;
        end if;
    end process fsm;

    --end fsm

    --ram for testing

    with smx_adrs_RAM select address_ram<=
        pc_data when "00",
        op1_data when "01",
        op2_data when "10",
        out_sp when "11",
        "00000000" when others;

    with smx_data_RAM select RAM_data_out<=
        Rb_bank when "000",
        op1_data when "001",
        op2_data when "010",
        Ra_bank when "011",
        out_tmp when "100",
        pc_data when "101",
        "00000000" when others;
    
    smx_adrs_RAM<=  "00" when state=ft_command or state=ft_op1 or state=ft_op2 else
                    "01" when state=move and (op0_data="00000011" or op0_data="00000100") else
                    "10" when state=move and op0_data="00000001" else
                    "10" when state=ALU_user and (op0_data="00000110" or op0_data="00001001" or op0_data="00001100" or op0_data="00001111" or op0_data="00010010" or op0_data="00011011") else
                    "10" when state=shift_process and (op0_data="00010101" or op0_data="00011000") else
                    "01" when state=push_retrieve else
                    "11" when state=push_write or state=pop_write or state=call or state=return_retrieve or state=return_write else
                    "00";
    
    smx_data_RAM<=  "000" when state=move and op0_data="00000011" else
                    "010" when state=move and op0_data="00000100" else
                    "011" when state=push_write and op0_data="00100001" else
                    "100" when state=push_write and op0_data="00100010" else
                    "001" when state=push_write and op0_data="00100011" else
                    "101" when state=call else
                    "000";

    write_ram<= '1' when state=move and (op0_data="00000011" or op0_data="00000100") else
                '1' when state=push_write else
                '1' when state=call else
                '0';
    -- end ram

end arrangment;