vsim main   
add wave *

force SW "11101000" 0ns, "11101001" 550ns, "11101010" 600ns, "11101011" 650ns
force Key3 0 0ns, 1 5ns
force clk27M 0 0ns, 1 1ns -repeat 2ns
        
        

run 1000ns