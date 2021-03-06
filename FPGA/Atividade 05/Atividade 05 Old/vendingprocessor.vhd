library ieee;
use ieee.std_logic_1164.all;

entity maquina_processador is
	port(	Key3, Key2, Key1, clock: in std_logic;
	      SW: in std_logic_vector(7 downto 0);
			  Coin: in std_logic_vector(5 downto 0);
			  StateHex: out std_logic_vector(3 downto 0);
			  LEDR0: out std_logic;
			  Tot: out std_logic_vector(7 downto 0)
	);
end maquina_processador;

architecture behaviour of maquina_processador is
		
	type estado is (zero, espere, incremente, compare, libere);
	signal state: estado;
	
	component botaosincrono is 
		port(	Key, clk, reset: in std_logic;
				Key_sincrono: out std_logic
			);
	end component;
	
	component adder is
      generic(n: natural :=8);
      port( A_in, B_in: in std_logic_vector (n-1 downto 0);
            carry_in: in std_logic;
            S_out: out std_logic_vector(n-1 downto 0);
            carry_out: out std_logic);
  end component;
	
	component nbitcompmag is
      generic(n: natural :=8);
      port( A_data, B_data: in std_logic_vector(n-1 downto 0);
            out_gt, out_lt, out_eq: out std_logic);
  end component;
   
  component nbitreg is
      generic(n: natural :=8);
      port( data_entry: in std_logic_vector (n-1 downto 0);
            enable, clk, clear: in std_logic;
            data_out: buffer std_logic_vector(n-1 downto 0));
  end component;
	
  signal outtot, outsum: std_logic_vector(7 downto 0);
  signal clr_n, free_n, outfree, TS_lt, clr_reg, ld_reg: std_logic;
	
begin
  
  --come�o da fsm
		
		clr_n<=not Key3;
		free_n<=not Key1;
		
		
		BS00: botaosincrono port map(
			Key=>free_n,
			clk=>clock,
			reset=>clr_n,
			Key_sincrono=>outfree
		);
	
	
	
		PRC00: process (Key2, TS_lt, clr_n, outfree, clock, state)
		begin
			
			if(clr_n = '1') then state<=zero;
			elsif (clock'event and clock='1') then
				case state is
					when zero=>
						state<=espere;
					when espere=>
						if(Key2='1') then state<=incremente;
						else state<=espere;
						end if;
					when incremente=>
						state<=compare;
					when compare=>
						if(TS_lt='0') then state<=libere;
						else state<=espere;
						end if;
					when libere=>
						if(outfree='1') then state<=zero;
						else state<=libere;
						end if;
				end case;
			else state<=state;
			end if;
		end process PRC00;
		
		with state select LEDR0<=
			'1' when libere,
			'0' when others;
		
		with state select clr_reg<=
			'1' when zero,
			'0' when others;
			
		with state select ld_reg<=
			'1' when incremente,
			'0' when others;
			
		with state select StateHex<=
		  "0000" when zero, --show 0
		  "1110" when espere, --show E
		  "1010" when incremente, --show A
		  "1100" when compare, --show C
		  "1111" when libere,  --show F
		  "1011" when others;
			
	--fim da fsm
	
	--come�o do datapath
	
	sum: adder
    generic map(n=>8)
    port map(
      A_in=>outtot,
      B_in(7 downto 6)=>"00",
      B_in(5 downto 0)=>Coin,
      carry_in=>'0',
      S_out=>outsum);

  regtot: nbitreg
    generic map(n=>8)
    port map(
      data_entry=>outsum,
      enable=>ld_reg,
      clk=>clock,
      clear=>clr_reg,
      data_out=>outtot);

  comp: nbitcompmag
    generic map(n=>8)
    port map(
      A_data=>outtot,
      B_data=>SW,
      out_lt=>TS_lt);

  Tot<=outtot;
		
end behaviour;