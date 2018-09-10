vsim FIFO_machine
add wave *

force wr_switch  0 0ns, 1 10ns, 0 100ns
force rd_switch  0 0ns, 1 110ns
force start 0 0ns, 1 10ns, 0 12ns, 1 110ns, 0 112ns
force clr_fifo 1 0ns, 0 5ns
force clk_maq 0 0ns, 1 1ns -repeat 2ns
force write_data(15 downto 4) "000000000000" 0ns
force write_data(0) 0 0ns, 1 4ns -repeat 8ns
force write_data(1) 0 0ns, 1 8ns -repeat 16ns
force write_data(2) 0 0ns, 1 16ns -repeat 32ns
force write_data(3) 0 0ns, 1 32ns -repeat 64ns

run 250ns