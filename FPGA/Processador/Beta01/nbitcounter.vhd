library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity nbitcounter is
generic(n: natural :=4);
port(	clock, clear, preset, enable, updown:	in std_logic;
			data_in: in std_logic_vector(n-1 downto 0);
	    out_cont:	buffer std_logic_vector(n-1 downto 0));
end nbitcounter;


architecture behv of nbitcounter is		 	  
	
begin


		process(clock, enable, clear, out_cont)
    begin
	     	if clear = '1' then
 	        lp1: for i in 0 to n-1 loop
 	          out_cont(i)<='0';
 	        end loop lp1;
				elsif(preset='1') then out_cont<=data_in;
	     	elsif (clock='1' and clock'event) then
					if enable = '1' then
	          if updown='0' then
	             out_cont<=out_cont+'1';
	          else
	             out_cont<=out_cont-'1';
	          end if;
	        else
	          out_cont<=out_cont;
	        end if;
	     	else out_cont<=out_cont;
	     	end if;
		end process;	

end behv;
