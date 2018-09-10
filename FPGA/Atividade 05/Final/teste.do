vsim main_vmachine
add wave *

force Key_3 0 0ns, 1 10ns, 0 120ns, 1 125ns
force Key_2 1 0ns, 0 8ns -repeat 16ns
force Key_1 1 0ns, 0 160ns, 1 164ns
force clock_1 0 0ns, 1 2ns -repeat 4ns
force clock_2 0 0ns, 1 1ns -repeat 2ns
force SW_value "00001000" 0ns


run 300ns


vsim nbitcounter
add wave *

force clock 0 0ns, 1 2ns -repeat 4ns
force clear 1 0ns, 0 5ns
force enable 0 0ns, 1 10ns, 0 30ns
force updown 0 0ns

run 50ns


vsim CLK_Div
add wave *

force clk_in 0 0ps, 1 1ps -repeat 2ps

run 1ns