vsim maquinatroco
add wave *

force in_key3 1 0ns, 0 5ns
force in_key2 0 0ns, 1 12ns, 0 16ns
force in_key1 0 0ns
force clk_maq 0 0ns, 1 2ns -repeat 4ns
force clk_rom 0 0ns, 1 1ns -repeat 2ns

force Coin "111111" 0ns, "011111" 300ns, "001111" 600ns, "000111" 900ns, "000011" 1100ns
force V "0000110010001011" 0ns

run 1200ns
