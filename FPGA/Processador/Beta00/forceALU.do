vsim ALU
add wave *

force A_data "01110000" 0ns, "11110000" 20ns, "00001111" 100ns, "00001111" 220ns
force B_data "00001111" 0ns, "11110000" 20ns, "00000011" 100ns, "00001111" 220ns
force code_op "0000" 0ns, "0001" 20ns, "0010" 40ns, "0011" 60ns, "0100" 80ns, "0101" 100ns, "0110" 160ns, "0111" 220ns, "1000" 240ns, "1001" 260ns, "1010" 280ns, "1011" 300ns
force clk_ALU 0 0ns, 1 2.5ns -repeat 5ns
force clr_ALU 1 0ns, 0 5ns
force att_ALU 0 0ns, 1 5ns

run 350ns

vsim ALU
add wave *

force A_data "01111111" 0ns, "00000001" 20ns, "00010100" 40ns, "00010100" 60ns, "00010101" 80ns, "00010101" 100ns, "00011111" 120ns, "00001111" 140ns
force B_data "00010100" 0ns, "00000011" 20ns, "11101100" 40ns, "11011101" 60ns, "00010100" 80ns, "00010100" 100ns, "00011111" 120ns, "00001110" 140ns
force code_op "0000" 0ns
force clk_ALU 0 0ns, 1 2.5ns -repeat 5ns
force clr_ALU 1 0ns, 0 5ns
force att_ALU 0 0ns, 1 5ns

run 350ns

vsim nbitmodule
add wave *

force data_in "00001111" 0ns, "10001111" 10ns

run 20ns