vsim main_processador
add wave *

force SW17 0 0ns 
force clk_1 0 0ns, 1 10ns -repeat 20ns 
force clk_2 0 0ns, 1 2.5ns -repeat 5ns 
force Key3 0 0ns, 1 5ns
force SW "00000011" 0ns

run 500ns
