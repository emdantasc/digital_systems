vsim processador_machine
add wave *

force clock_machine 0 0ns, 1 5ns -repeat 10ns
force clr_machine 1 0ns, 0 5ns
force ROM_data "0000000000000011" 10ns, "0000000100000001" 30ns, "0010001000000001" 50ns, "0001001000000001" 80ns 
force in_RAM_data "0000000000000011" 0ns


run 150ns


vsim nbit16registerbank
add wave *

force W_address "0000" 10ns, "0001" 20ns, "0010" 30ns
force Ra_address "0000" 40ns, "0010" 60ns, "0001" 80ns
force Rb_address "0010" 40ns, "0001" 60ns, "0000" 80ns
force W_data "0000000000000001" 0ns, "0000000000000010" 10ns, "0000000000000011" 20ns
force W_write 0 0ns, 1 5ns, 0 7ns, 1 12ns, 0 16ns, 1 22ns, 0 24ns 
force Ra_read 0 0ns, 1 40ns force 
force Rb_read 0 0ns, 1 40ns
force clr_bank 1 0ns, 0 5ns 
force clk_bank 0 0ns, 1 1ns -repeat 2ns

run 100ns