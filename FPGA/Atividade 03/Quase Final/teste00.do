vsim cofre_main
add wave *

force Key_0 1 0ns, 0 16ns, 1 22ns
force Key_1 1 0ns, 0 10ns, 1 14ns, 0 38ns, 1 42ns
force Key_2 1 0ns, 0 20ns, 1 24ns, 0 28ns, 1 34ns
force Key_3 1 0ns, 0 3ns, 1 7ns
force SW_0 0 0ns, 1 50ns, 0 55ns
force SW_1 1 0ns, 0 2ns

force clk2 0 0ns, 1 2ns -repeat 4ns


run 60ns

