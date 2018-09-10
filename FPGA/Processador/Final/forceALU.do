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

force A_data "00001010" 0ns, "00001010" 10ns, "00001010" 20ns, "11110110" 30ns, "11110110" 40ns, "11110110" 50ns, "01111111" 60ns, "10000000" 70ns, "00001010" 80ns
force B_data "00001001" 0ns, "00001011" 10ns, "00001010" 20ns, "11110101" 30ns, "11110110" 40ns, "11110111" 50ns, "00000011" 60ns, "10000001" 70ns, "11110110" 80ns

force op_code "000" 0ns

run 90ns