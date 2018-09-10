vsim BinTo7Segment
add wave *

force bin_in(0) 0 0ns, 1 5ns -repeat 10ns
force bin_in(1) 0 0ns, 1 10ns -repeat 20ns
force bin_in(2) 0 0ns, 1 20ns -repeat 40ns
force bin_in(3) 0 0ns, 1 40ns -repeat 80ns

run 80ns
