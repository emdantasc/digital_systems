vsim BinDisplay
add wave *

force Bin(0) 0 0ns, 1 5ns -repeat 10ns
force Bin(1) 0 0ns, 1 10ns -repeat 20ns
force Bin(2) 0 0ns, 1 20ns -repeat 40ns
force Bin(3) 0 0ns, 1 40ns -repeat 80ns
force Bin(4) 0 0ns, 1 80ns -repeat 160ns
force Bin(5) 0 0ns, 1 160ns -repeat 320ns
force Bin(6) 0 0ns, 1 320ns -repeat 640ns
force Bin(7) 0 0ns, 1 640ns -repeat 1280ns
force Bin(8) 0 0ns, 1 1280ns -repeat 2560ns
force Bin(9) 0 0ns, 1 2560ns -repeat 5120ns
force Bin(10) 0 0ns, 1 5120ns -repeat 10240ns
force Bin(11) 0 0ns, 1 10240ns -repeat 20480ns
force Bin(12) 0 0ns, 1 20480ns -repeat 40960ns
force Bin(13) 0 0ns, 1 40960ns -repeat 81920ns
force Bin(14) 0 0ns, 1 81920ns -repeat 163840ns
force Bin(15) 0 0ns, 1 163840ns -repeat 327680ns


run 327680ns