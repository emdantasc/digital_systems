vsim processador
add wave *

force SW "11101000" 0ns, "11101001" 550ns, "11101010" 600ns, "11101011" 650ns  
force clk_prc 0 0ns, 1 5ns -repeat 10ns
force clr_prc 0 0ns


run 1000ns