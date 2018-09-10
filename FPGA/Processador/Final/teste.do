vsim processador
add wave *

force clk_prc 0 0ns, 1 5ns -repeat 10ns
force clr_prc 0 0ns
force clk_ram 1 0ns, 0 5ns -repeat 10ns


run 600ns