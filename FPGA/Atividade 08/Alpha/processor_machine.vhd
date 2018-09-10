library ieee;
use ieee.std_logic_1164.all;

entity processador_machine is
  port(clock_machine, clr_machine: in std_logic;
      ROM_data, RAM_data:in std_logic_vector(15 downto 0);
      ROM_address, RAM_address: out std_logic_vector(7 downto 0);
      RAM_write: out std_logic);
end processador_machine;

architecture arrangment of processador_machine is
  
  component nbitreg is
    generic(n: natural :=8);
    port( data_entry: in std_logic_vector (n-1 downto 0);
          enable, clk, clear: in std_logic;
          data_out: buffer std_logic_vector(n-1 downto 0));
  end component;
  
  component nbitcounter is
    generic(n: natural :=4);
    port(	clock, clear, enable, updown:	in std_logic;
	        out_cont:	buffer std_logic_vector(n-1 downto 0));
  end component;
  
  component nbit16registerbank is
	  generic(n_bank: natural:=16);
	  port(
		  W_address, Ra_address, Rb_address: in std_logic_vector(3 downto 0);
		  W_write, Ra_read, Rb_read, clr_bank, clk_bank: in std_logic;
		  W_data: in std_logic_vector(n_bank-1 downto 0);
		  Ra_data, Rb_data: out std_logic_vector(n_bank-1 downto 0));
  end component;
  
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
  
  type state is (zero, fetch, decode, load, store, add);
  signal estado: state:=zero;
  
  signal pc_ld, ir_ld, write_enable, rega_read, regb_read, sel_mux, clr_pc, clr_ir, clr_banco: std_logic;
  signal rega_address, regb_address, write_address: std_logic_vector(3 downto 0);
  signal out_rega, out_regb, outram, outsum, outmux, outir: std_logic_vector(15 downto 0);
  
 begin
	
	fsm: process(clock_machine, estado, outir)
		begin
			if(clr_machine='1') then estado<=zero;
			elsif(clock_machine'event and clock_machine='1') then
				case estado is
					when zero => estado<=fetch;
					when fetch => estado<=decode;
					when decode =>
						if(outir(15 downto 12)="0000") then estado<=load;
						elsif(outir(15 downto 12)="0001") then estado<=store;
						elsif(outir(15 downto 12)="0010") then estado<=add;
						else estado<=fetch;
						end if;
					when others => estado<=fetch;
				end case;
			else estado<=estado;
			end if;
	end process fsm;
	
	--estado zero
	with estado select clr_banco<=
		'1' when zero,
		'0' when others;
		
	with estado select clr_pc<=
		'1' when zero,
		'0' when others;
	
	with estado select clr_ir<=
		'1' when zero,
		'0' when others;
  --fim do estado zero
  
  --inicio do fetch
  --atualização do pc
	with estado select pc_ld<=
		'1' when fetch,
		'0' when others;
	--carregamento do ir
	with estado select ir_ld<=
		'1' when fetch,
		'0' when others;
	--fim do estado fetch
	
	
	with estado select write_address<=
	 outir(11 downto 8) when load, --carregamento em endereço
	 outir(11 downto 8) when add,  --carregamento da soma
	 "0000" when others;
	
	with estado select write_enable<=
	   '1' when load,  --carregamento em endereço
	   '1' when add,   --carregamento da soma
	   '0' when others;
	
	with estado select RAM_write<=
	   '1' when store, --carregamento do store
	   '0' when others;
	
	with estado select sel_mux<=
		'1' when add, --carregamento da soma
		'0' when others;
	
	with estado select RAM_address<=
	   outir(7 downto 0) when load,
	   outir(7 downto 0) when store,
	   "00000000" when others;
	
	with estado select rega_address<=
	   outir(11 downto 8) when store,
	   outir(7 downto 4) when add,
	   "0000" when others;
	
	with estado select regb_address<=
	   outir(3 downto 0) when add,
	   "0000" when others;
	   
	with estado select rega_read<=
	   '1' when store,
	   '1' when add,
	   '0' when others;
  
  with estado select regb_read<=
	   '1' when add,
	   '0' when others;

--fim do control path

  ir: nbitreg
    generic map(n=>16)
    port map(
      data_entry=>ROM_data,
      enable=>ir_ld,
      clk=>clock_machine, 
      clear=>clr_ir,
      data_out=>outir);
      
  pc: nbitcounter
    generic map(n=>8)
    port map(
      clock=>clock_machine, 
      clear=>clr_pc, 
      enable=>pc_ld, 
      updown=>'0',
      out_cont=>ROM_address);

  
 end arrangment;
