vsim ALU
add wave *

force A_data "11110000" 0ns, "11110000" 20ns, "00001111" 100ns, "00001111" 220ns
force B_data "00001111" 0ns, "11110000" 20ns, "00000011" 100ns, "00001111" 220ns
force code_op "0000" 0ns, "0001" 20ns, "0010" 40ns, "0011" 60ns, "0100" 80ns, "0101" 100ns, "0110" 160ns, "0111" 220ns, "1000" 240ns, "1001" 260ns, "1010" 280ns, "1011" 300ns
force clk_ALU 0 0ns, 1 2.5ns -repeat 5ns
force clr_ALU 1 0ns, 0 5ns
force att_ALU 0 0ns, 1 5ns

run 350ns


vsim ALU_async
add wave *

force A_data(0) 0 0ns, 1 1ns -repeat 2ns
force A_data(1) 0 0ns, 1 2ns -repeat 4ns
force A_data(2) 0 0ns, 1 4ns -repeat 8ns
force A_data(3) 0 0ns, 1 8ns -repeat 16ns
force A_data(4) 0 0ns, 1 16ns -repeat 32ns
force A_data(5) 0 0ns, 1 32ns -repeat 64ns
force A_data(6) 0 0ns, 1 64ns -repeat 128ns
force A_data(7) 0 0ns, 1 128ns -repeat 256ns

force B_data "00000001" 0ns

force op_code "001" 0ns

run 300ns