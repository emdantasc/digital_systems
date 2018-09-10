vsim BinBCD
add wave *

force bin_in(0) 0 0ns, 1 5ns -repeat 10ns
force bin_in(1) 0 0ns, 1 10ns -repeat 20ns
force bin_in(2) 0 0ns, 1 20ns -repeat 40ns
force bin_in(3) 0 0ns, 1 40ns -repeat 80ns
force bin_in(4) 0 0ns, 1 80ns -repeat 160ns
force bin_in(5) 0 0ns, 1 160ns -repeat 320ns
force bin_in(6) 0 0ns, 1 320ns -repeat 640ns
force bin_in(7) 0 0ns, 1 640ns -repeat 1280ns
force bin_in(8) 0 0ns, 1 1280ns -repeat 2560ns
force bin_in(9) 0 0ns, 1 2560ns -repeat 5120ns
force bin_in(10) 0 0ns, 1 5120ns -repeat 10240ns
force bin_in(11) 0 0ns, 1 10240ns -repeat 20480ns
force bin_in(12) 0 0ns, 1 20480ns -repeat 40960ns
force bin_in(13) 0 0ns, 1 40960ns -repeat 81920ns
force bin_in(14) 0 0ns, 1 81920ns -repeat 163840ns
force bin_in(15) 0 0ns, 1 163840ns -repeat 327680ns


run 327680ns