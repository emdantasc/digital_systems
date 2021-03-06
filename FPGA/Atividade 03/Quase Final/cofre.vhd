library ieee;
use ieee.std_logic_1164.all;

entity cofre is
   port(Key0, Key1, Key2, Key3, SW0, SW1, clk1: in std_logic;
        LDR0, LDR1: out std_logic;
        BCD: out std_logic_vector(3 downto 0));
end cofre;

architecture construction of cofre is
  
  component botaosincrono is 
  port(Key, clk, reset: in std_logic;
        Key_sincrono: out std_logic);
  end component;
  
  type insert is (inicio, insert1, insert2, insert3, insert4, insert5, sucesso, error);
  signal state: insert;
  
  signal k0, k1, k2, k3, ks0, ks1, ks2, ks3: std_logic;

begin
    
    k0<=not Key0;
    k1<=not Key1;
    k2<=not Key2;
    k3<=not Key3;
    
    BS0: botaosincrono port map(
    Key=>k0,
    clk=>clk1,
    reset=>SW1,
    Key_sincrono=>ks0);

    BS1: botaosincrono port map(
    Key=>k1,
    clk=>clk1,
    reset=>SW1,
    Key_sincrono=>ks1);
    
    BS2: botaosincrono port map(
    Key=>k2,
    clk=>clk1,
    reset=>SW1,
    Key_sincrono=>ks2);
    
    BS3: botaosincrono port map(
    Key=>k3,
    clk=>clk1,
    reset=>SW1,
    Key_sincrono=>ks3);  
  
    prc00: process(clk1, SW1)
    begin
      
        if(SW1='1') then state<=inicio;
        elsif (clk1'event and clk1='1') then
            case state is
					when inicio=>
						if (ks3='1' and ks2='0' and ks1='0' and ks0='0') then state<=insert1;
						else state<=inicio;
						end if;
					when insert1=>
						if (ks3='1' and ks2='0' and ks1='0' and ks0='0') then state<=inicio;
						elsif (ks0='0' and ks1='1' and ks2='0' and ks3='0') then state<=insert2;
						elsif (ks0='0' and ks1='0' and ks2='0' and ks3='0') then state<=insert1;
						else state<=error;
						end if; 
					when insert2=>
						if (ks3='1' and ks2='0' and ks1='0' and ks0='0') then state<=inicio;
						elsif (ks0='1' and ks1='0' and ks2='0' and ks3='0') then state<=insert3;
						elsif (ks0='0' and ks1='0' and ks2='0' and ks3='0') then state<=insert2;
						else state<=error;
						end if; 
					when insert3=>
						if (ks3='1' and ks2='0' and ks1='0' and ks0='0') then state<=inicio;
						elsif (ks0='0' and ks1='0' and ks2='1' and ks3='0') then state<=insert4;
						elsif (ks0='0' and ks1='0' and ks2='0' and ks3='0') then state<=insert3;
						else state<=error;
						end if;                 
					when insert4=>
						if (ks3='1' and ks2='0' and ks1='0' and ks0='0') then state<=inicio;
						elsif (ks0='0' and ks1='0' and ks2='1' and ks3='0') then state<=insert5;
						elsif (ks0='0' and ks1='0' and ks2='0' and ks3='0') then state<=insert4;
						else state<=error;
						end if;   
					when insert5=>
						if (ks3='1' and ks2='0' and ks1='0' and ks0='0') then state<=inicio;
						elsif (ks0='0' and ks1='1' and ks2='0' and ks3='0') then state<=sucesso;
						elsif (ks0='0' and ks1='0' and ks2='0' and ks3='0') then state<=insert5;
						else state<=error;
						end if;
					when error=>
						if (ks3='1' and ks2='0' and ks1='0' and ks0='0') then state<=inicio;
						else state<=error;
						end if;
					when sucesso=>
                if(SW0='1') then state<=inicio;
                else state<=sucesso;
                end if;
          end case;
      end if;
  end process prc00;
  
  with state select BCD<=
      "1111" when inicio,
      "0001" when insert1,
      "0010" when insert2,
      "0011" when insert3,
      "0100" when insert4, 
      "0101" when insert5,
      "1010" when sucesso,
		"1110" when error;
  
  with state select LDR0<=
      '1' when sucesso,
      '0' when others;
  
  LDR1<=clk1;
   
end construction;        
        
