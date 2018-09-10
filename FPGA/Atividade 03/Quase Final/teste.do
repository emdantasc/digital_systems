vsim botaosincrono
add wave *

force Key 0 0ns, 1 5ns, 0 55ns
force clk 0 0ns, 1 5ns -repeat 10ns
force reset 1 0ns, 0 2ns

run 100ns
