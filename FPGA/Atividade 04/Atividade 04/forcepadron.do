vsim queue
add wave *

force data "00000000000000" 0ns, "00000000000001" 5ns, "00000000000010" 15ns, "00000000000011" 25ns, "00000000000100" 35ns
force address "000" 10ns, "001" 20ns, "010" 30ns, "011" 40ns, "100" 50ns, "101" 60ns, "110" 70ns, "111" 80ns
force load_reg 0 0ns, 1 5 ns -repeat 10ns
force clear_reg 1 0ns, 0 90ns, 1 100ns
force clock_reg 0 0ns, 1 5ns -repeat 10ns

run 100ns