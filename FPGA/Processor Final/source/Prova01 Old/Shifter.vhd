library ieee;
use ieee.std_logic_1164.all;

entity nbitshifter is
    generic(n: natural:=8);
    port(
        A_data, B_data: in std_logic_vector(n-1 downto 0);
        out_data: out std_logic_vector(n-1 downto 0);
        start, clk_shift, clr_shift, left_right: in std_logic;
        ready: out std_logic
    );
end nbitshifter;

architecture behaviour of nbitshifter is

    component nbitreg is
        generic(n: natural :=8);
        port(   data_entry: in std_logic_vector (n-1 downto 0);
                load, clk, clear, sh_en, left_right: in std_logic;
                data_out: buffer std_logic_vector(n-1 downto 0));
    end component;

    component nbitcounter is
        generic(n: natural :=4);
        port(	clock, clear, load, enable, updown:	in std_logic;
			    data_in: in std_logic_vector(n-1 downto 0);
	            out_cont:	buffer std_logic_vector(n-1 downto 0));
    end component;

    component nbitcompmag is
        generic(n: natural :=8);
        port(   A_data, B_data: in std_logic_vector(n-1 downto 0);
                out_gt, out_lt, out_eq: out std_logic);
    end component;

    type estado is (st_wait, st_charge, st_compare, st_shift, st_finish);
    signal state: estado:=st_wait;

    signal count_zero, ld_count, ld_reg, clr_count, clr_reg, sh_enable, en_count: std_logic:='0';
    signal out_counter: std_logic_vector(7 downto 0);

begin

    shiftmachine: process(clr_shift, clk_shift, state)
    begin
        if(clr_shift='1') then state<=st_wait;
        elsif(clk_shift'event and clk_shift='1') then
            case state is
                when st_wait =>
                    if(start='1') then state<=st_charge;
                    else state<=state;
                    end if;
                when st_charge => 
                    state<=st_compare;
                when st_compare =>
                    if(count_zero='1') then state<=st_finish;
                    else state<=st_shift;
                    end if;
                when st_shift => 
                    state<=st_compare;
                when st_finish => state<=st_wait;
            end case;
        else state<=state;
        end if;
    end process shiftmachine;

    with state select ld_count<=
        '1' when st_charge,
        '0' when others;
    
    with state select ld_reg<=
        '1' when st_charge,
        '0' when others;
    
    with state select en_count<=
        '1' when st_shift,
        '0' when others;
    
    with state select sh_enable<=
        '1' when st_shift,
        '0' when others;
    
    with state select ready<=
        '1' when st_finish,
        '0' when others;
    
    reg_shift: nbitreg
        generic map(n=>8)
        port map(
            data_entry=>A_data,
            load=>ld_reg, 
            clk=>clk_shift, 
            clear=>clr_shift, 
            sh_en=>sh_enable, 
            left_right=>left_right,
            data_out=>out_data
    );

    counter: nbitcounter
        generic map(n=>8)
        port map(
            data_in=>B_data,
            clock=>clk_shift, 
            clear=>clr_shift, 
            load=>ld_count, 
            enable=>en_count, 
            updown=>'1',
            out_cont=>out_counter
    );

    comp: nbitcompmag
        generic map(n=>8)
        port map(
            A_data=>out_counter, 
            B_data=>"00000000",
            out_eq=>count_zero
    );

end behaviour;