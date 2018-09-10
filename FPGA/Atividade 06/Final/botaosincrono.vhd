library ieee;
use ieee.std_logic_1164.all;

entity botaosincrono is 
  port(Key, clk, reset: in std_logic;
        Key_sincrono: out std_logic);
end botaosincrono;

architecture mde of botaosincrono is
  
    type st is (caso_a, caso_b, caso_c);
    signal estado: st;

begin

    prc1: process (clk, reset)
    begin
        
        if(reset='1') then
          estado<=caso_a;
        elsif (clk'event and clk='1') then
          case estado is
            when caso_a=>
                if Key='0' then estado<=caso_a;
                else estado<=caso_b;
                end if;
            when caso_b=>
                if Key='0' then estado<=caso_a;
                else estado<=caso_c;
                end if;
            when caso_c=>
                if Key='0' then estado<=caso_a;
                else estado<=caso_c;
                end if;
          end case;
        end if;
    end process prc1;

    with estado select Key_sincrono<=
          '1' when caso_b,
          '0' when others;
          
    
end mde;
            
    
          