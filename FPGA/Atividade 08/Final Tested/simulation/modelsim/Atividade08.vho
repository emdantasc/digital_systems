-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "08/29/2017 10:42:48"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main_processador IS
    PORT (
	SW17 : IN std_logic;
	clk_27M : IN std_logic;
	Key3 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	LEDG : OUT std_logic_vector(1 DOWNTO 0);
	Hex0 : OUT std_logic_vector(6 DOWNTO 0);
	Hex1 : OUT std_logic_vector(6 DOWNTO 0);
	Hex2 : OUT std_logic_vector(6 DOWNTO 0);
	Hex3 : OUT std_logic_vector(6 DOWNTO 0);
	Hex4 : OUT std_logic_vector(6 DOWNTO 0);
	Hex5 : OUT std_logic_vector(6 DOWNTO 0);
	Hex6 : OUT std_logic_vector(6 DOWNTO 0);
	Hex7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END main_processador;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Hex7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW17	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_27M	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Key3	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF main_processador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW17 : std_logic;
SIGNAL ww_clk_27M : std_logic;
SIGNAL ww_Key3 : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Hex7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk50|clock_signal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_to_machine~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mchn|estado.zero~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_27M~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Key3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50|Add0~0_combout\ : std_logic;
SIGNAL \clk50|Add0~4_combout\ : std_logic;
SIGNAL \clk50|Add0~12_combout\ : std_logic;
SIGNAL \clk50|Add0~30_combout\ : std_logic;
SIGNAL \clk50|Add0~32_combout\ : std_logic;
SIGNAL \clk10|Add0~0_combout\ : std_logic;
SIGNAL \clk10|Add0~2_combout\ : std_logic;
SIGNAL \clk10|Add0~6_combout\ : std_logic;
SIGNAL \clk10|Add0~10_combout\ : std_logic;
SIGNAL \clk10|Add0~34_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux2~2_combout\ : std_logic;
SIGNAL \clk50|Equal0~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~12_combout\ : std_logic;
SIGNAL \clk10|Equal0~0_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~22_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~23_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[3]~43_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[3]~44_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[3]~45_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[3]~46_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[3]~47_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[3]~48_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[3]~49_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[3]~50_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[3]~51_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[3]~52_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[3]~53_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[6]~76_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[6]~83_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[6]~84_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[7]~94_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[7]~97_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~12_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[9]~109_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[9]~110_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[9]~111_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[9]~112_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[9]~113_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[9]~114_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[9]~115_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[9]~116_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[9]~117_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[9]~118_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[9]~119_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[10]~124_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[10]~125_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[10]~127_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[10]~128_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[11]~131_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[11]~132_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[11]~133_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[11]~134_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[11]~138_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[12]~144_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[12]~145_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[12]~146_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[12]~147_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[12]~148_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[12]~149_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[12]~152_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~12_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[13]~155_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[13]~156_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[13]~157_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[13]~158_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[13]~159_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[14]~164_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[14]~165_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[14]~166_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~12_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~20_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~39_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~40_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[15]~179_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[15]~180_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[9]~51_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux4~2_combout\ : std_logic;
SIGNAL \Key3~combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:11:reg|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:15:reg|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:3:reg|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:15:reg|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:10:reg|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:14:reg|data_out[15]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:3:reg|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:12:reg|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:13:reg|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:11:reg|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:5:reg|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \SW17~combout\ : std_logic;
SIGNAL \clk10|counter~3_combout\ : std_logic;
SIGNAL \clk10|Add0~1\ : std_logic;
SIGNAL \clk10|Add0~3\ : std_logic;
SIGNAL \clk10|Add0~4_combout\ : std_logic;
SIGNAL \clk10|Add0~5\ : std_logic;
SIGNAL \clk10|Add0~7\ : std_logic;
SIGNAL \clk10|Add0~8_combout\ : std_logic;
SIGNAL \clk10|counter~0_combout\ : std_logic;
SIGNAL \clk10|Add0~9\ : std_logic;
SIGNAL \clk10|Add0~11\ : std_logic;
SIGNAL \clk10|Add0~12_combout\ : std_logic;
SIGNAL \clk10|counter~2_combout\ : std_logic;
SIGNAL \clk10|Add0~13\ : std_logic;
SIGNAL \clk10|Add0~15\ : std_logic;
SIGNAL \clk10|Add0~16_combout\ : std_logic;
SIGNAL \clk10|counter~4_combout\ : std_logic;
SIGNAL \clk10|Add0~17\ : std_logic;
SIGNAL \clk10|Add0~18_combout\ : std_logic;
SIGNAL \clk10|Add0~19\ : std_logic;
SIGNAL \clk10|Add0~20_combout\ : std_logic;
SIGNAL \clk10|Add0~21\ : std_logic;
SIGNAL \clk10|Add0~22_combout\ : std_logic;
SIGNAL \clk10|counter~5_combout\ : std_logic;
SIGNAL \clk10|Add0~23\ : std_logic;
SIGNAL \clk10|Add0~25\ : std_logic;
SIGNAL \clk10|Add0~26_combout\ : std_logic;
SIGNAL \clk10|Add0~27\ : std_logic;
SIGNAL \clk10|Add0~29\ : std_logic;
SIGNAL \clk10|Add0~31\ : std_logic;
SIGNAL \clk10|Add0~33\ : std_logic;
SIGNAL \clk10|Add0~35\ : std_logic;
SIGNAL \clk10|Add0~36_combout\ : std_logic;
SIGNAL \clk10|counter~8_combout\ : std_logic;
SIGNAL \clk10|Add0~37\ : std_logic;
SIGNAL \clk10|Add0~39\ : std_logic;
SIGNAL \clk10|Add0~40_combout\ : std_logic;
SIGNAL \clk10|counter~9_combout\ : std_logic;
SIGNAL \clk10|Add0~41\ : std_logic;
SIGNAL \clk10|Add0~42_combout\ : std_logic;
SIGNAL \clk10|Add0~38_combout\ : std_logic;
SIGNAL \clk10|Add0~32_combout\ : std_logic;
SIGNAL \clk10|Equal0~5_combout\ : std_logic;
SIGNAL \clk10|Equal0~6_combout\ : std_logic;
SIGNAL \clk10|Add0~30_combout\ : std_logic;
SIGNAL \clk10|counter~7_combout\ : std_logic;
SIGNAL \clk10|Add0~28_combout\ : std_logic;
SIGNAL \clk10|Add0~24_combout\ : std_logic;
SIGNAL \clk10|counter~6_combout\ : std_logic;
SIGNAL \clk10|Equal0~3_combout\ : std_logic;
SIGNAL \clk10|Equal0~2_combout\ : std_logic;
SIGNAL \clk10|counter~1_combout\ : std_logic;
SIGNAL \clk10|Add0~14_combout\ : std_logic;
SIGNAL \clk10|Equal0~1_combout\ : std_logic;
SIGNAL \clk10|Equal0~4_combout\ : std_logic;
SIGNAL \clk10|clock_signal~0_combout\ : std_logic;
SIGNAL \clk10|clock_signal~regout\ : std_logic;
SIGNAL \clk_to_machine~combout\ : std_logic;
SIGNAL \clk_27M~combout\ : std_logic;
SIGNAL \clk_27M~clkctrl_outclk\ : std_logic;
SIGNAL \clk50|Add0~29\ : std_logic;
SIGNAL \clk50|Add0~31\ : std_logic;
SIGNAL \clk50|Add0~33\ : std_logic;
SIGNAL \clk50|Add0~34_combout\ : std_logic;
SIGNAL \clk50|Add0~35\ : std_logic;
SIGNAL \clk50|Add0~36_combout\ : std_logic;
SIGNAL \clk50|counter~0_combout\ : std_logic;
SIGNAL \clk50|Add0~37\ : std_logic;
SIGNAL \clk50|Add0~38_combout\ : std_logic;
SIGNAL \clk50|Equal0~0_combout\ : std_logic;
SIGNAL \clk50|counter~1_combout\ : std_logic;
SIGNAL \clk50|Add0~1\ : std_logic;
SIGNAL \clk50|Add0~2_combout\ : std_logic;
SIGNAL \clk50|Add0~3\ : std_logic;
SIGNAL \clk50|Add0~5\ : std_logic;
SIGNAL \clk50|Add0~6_combout\ : std_logic;
SIGNAL \clk50|Add0~7\ : std_logic;
SIGNAL \clk50|Add0~8_combout\ : std_logic;
SIGNAL \clk50|counter~2_combout\ : std_logic;
SIGNAL \clk50|Add0~9\ : std_logic;
SIGNAL \clk50|Add0~10_combout\ : std_logic;
SIGNAL \clk50|counter~3_combout\ : std_logic;
SIGNAL \clk50|Add0~11\ : std_logic;
SIGNAL \clk50|Add0~13\ : std_logic;
SIGNAL \clk50|Add0~14_combout\ : std_logic;
SIGNAL \clk50|counter~4_combout\ : std_logic;
SIGNAL \clk50|Add0~15\ : std_logic;
SIGNAL \clk50|Add0~16_combout\ : std_logic;
SIGNAL \clk50|Add0~17\ : std_logic;
SIGNAL \clk50|Add0~19\ : std_logic;
SIGNAL \clk50|Add0~21\ : std_logic;
SIGNAL \clk50|Add0~22_combout\ : std_logic;
SIGNAL \clk50|counter~7_combout\ : std_logic;
SIGNAL \clk50|Add0~23\ : std_logic;
SIGNAL \clk50|Add0~25\ : std_logic;
SIGNAL \clk50|Add0~27\ : std_logic;
SIGNAL \clk50|Add0~28_combout\ : std_logic;
SIGNAL \clk50|Add0~24_combout\ : std_logic;
SIGNAL \clk50|counter~8_combout\ : std_logic;
SIGNAL \clk50|Add0~26_combout\ : std_logic;
SIGNAL \clk50|Equal0~4_combout\ : std_logic;
SIGNAL \clk50|Add0~20_combout\ : std_logic;
SIGNAL \clk50|counter~6_combout\ : std_logic;
SIGNAL \clk50|Add0~18_combout\ : std_logic;
SIGNAL \clk50|counter~5_combout\ : std_logic;
SIGNAL \clk50|Equal0~3_combout\ : std_logic;
SIGNAL \clk50|Equal0~1_combout\ : std_logic;
SIGNAL \clk50|Equal0~5_combout\ : std_logic;
SIGNAL \clk50|clock_signal~0_combout\ : std_logic;
SIGNAL \clk50|clock_signal~regout\ : std_logic;
SIGNAL \clk50|clock_signal~clkctrl_outclk\ : std_logic;
SIGNAL \clk_to_machine~clkctrl_outclk\ : std_logic;
SIGNAL \mchn|pc|out_cont[0]~21_combout\ : std_logic;
SIGNAL \mchn|estado.zero~feeder_combout\ : std_logic;
SIGNAL \Key3~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \Key3~clkctrl_outclk\ : std_logic;
SIGNAL \mchn|estado.zero~regout\ : std_logic;
SIGNAL \mchn|estado.zero~clkctrl_outclk\ : std_logic;
SIGNAL \mchn|pc|out_cont[1]~7_combout\ : std_logic;
SIGNAL \mchn|pc|out_cont[1]~8\ : std_logic;
SIGNAL \mchn|pc|out_cont[2]~9_combout\ : std_logic;
SIGNAL \mchn|pc|out_cont[2]~10\ : std_logic;
SIGNAL \mchn|pc|out_cont[3]~11_combout\ : std_logic;
SIGNAL \mchn|pc|out_cont[3]~12\ : std_logic;
SIGNAL \mchn|pc|out_cont[4]~13_combout\ : std_logic;
SIGNAL \mchn|pc|out_cont[4]~14\ : std_logic;
SIGNAL \mchn|pc|out_cont[5]~15_combout\ : std_logic;
SIGNAL \mchn|pc|out_cont[5]~16\ : std_logic;
SIGNAL \mchn|pc|out_cont[6]~17_combout\ : std_logic;
SIGNAL \mchn|pc|out_cont[6]~18\ : std_logic;
SIGNAL \mchn|pc|out_cont[7]~19_combout\ : std_logic;
SIGNAL \mchn|ir|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \mchn|Selector0~0_combout\ : std_logic;
SIGNAL \mchn|Selector0~1_combout\ : std_logic;
SIGNAL \mchn|estado.fetch~regout\ : std_logic;
SIGNAL \mchn|ir|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \mchn|estado~10_combout\ : std_logic;
SIGNAL \mchn|estado~12_combout\ : std_logic;
SIGNAL \mchn|estado.store~regout\ : std_logic;
SIGNAL \mchn|bnk|regfor:10:reg|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \mchn|estado.decode~regout\ : std_logic;
SIGNAL \mchn|estado~13_combout\ : std_logic;
SIGNAL \mchn|estado~14_combout\ : std_logic;
SIGNAL \mchn|estado.add~feeder_combout\ : std_logic;
SIGNAL \mchn|estado.add~regout\ : std_logic;
SIGNAL \mchn|estado~11_combout\ : std_logic;
SIGNAL \mchn|estado.load~regout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~51_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~184_combout\ : std_logic;
SIGNAL \mchn|regb_address[2]~0_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~186_combout\ : std_logic;
SIGNAL \mchn|regb_address[3]~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~3_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:14:reg|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~187_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~4_combout\ : std_logic;
SIGNAL \mchn|ir|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \mchn|regb_address[0]~2_combout\ : std_logic;
SIGNAL \mchn|bnk|load_reg[0]~5_combout\ : std_logic;
SIGNAL \mchn|bnk|load_reg[0]~14_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:4:reg|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~189_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~5_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:12:reg|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~190_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~182_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~181_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~180_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~192_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:3:reg|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~193_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~10_combout\ : std_logic;
SIGNAL \mchn|RAM_address[0]~0_combout\ : std_logic;
SIGNAL \mchn|RAM_address[1]~1_combout\ : std_logic;
SIGNAL \mchn|RAM_address[2]~2_combout\ : std_logic;
SIGNAL \mchn|RAM_address[3]~3_combout\ : std_logic;
SIGNAL \mchn|ir|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \mchn|RAM_address[4]~4_combout\ : std_logic;
SIGNAL \mchn|RAM_address[5]~5_combout\ : std_logic;
SIGNAL \mchn|RAM_address[6]~6_combout\ : std_logic;
SIGNAL \mchn|RAM_address[7]~7_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \mchn|Selector3~0_combout\ : std_logic;
SIGNAL \mchn|Selector4~0_combout\ : std_logic;
SIGNAL \mchn|Selector2~0_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:8:reg|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~188_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~16_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:13:reg|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~183_combout\ : std_logic;
SIGNAL \mchn|Selector1~0_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~13_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:9:reg|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~185_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:10:reg|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~12_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~20_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~22_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~23_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~26_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~27_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~191_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~24_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~25_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~28_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~29_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~30_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[0]~31_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~29_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~30_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~24_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~25_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~26_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~27_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~28_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~31_combout\ : std_logic;
SIGNAL \mchn|ALU|S_out[1]~0_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~19_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:10:reg|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:8:reg|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~12_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:2:reg|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:1:reg|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~20_combout\ : std_logic;
SIGNAL \mchn|regb_address[1]~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[2]~32_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[2]~33_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[2]~39_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[2]~40_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[2]~36_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[2]~37_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[2]~34_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[2]~35_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[2]~38_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[2]~41_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[2]~42_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux15~194_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[1]~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[1]~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[1]~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[1]~12_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[1]~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[1]~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[1]~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[1]~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[1]~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[1]~20_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[1]~21_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry~0_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[2]~1_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[3]~2_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:1:reg|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~12_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:7:reg|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:3:reg|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~20_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[3]~45_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[4]~61_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[4]~62_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:4:reg|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[4]~54_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[4]~55_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[4]~58_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[4]~59_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:11:reg|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[4]~56_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[4]~57_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[4]~60_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[4]~63_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~11_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:7:reg|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~12_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~20_combout\ : std_logic;
SIGNAL \mchn|WideNor5~combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[4]~3_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[4]~46_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[5]~65_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[5]~66_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[5]~69_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[5]~70_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:1:reg|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[5]~67_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[5]~68_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[5]~71_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:11:reg|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[5]~72_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[5]~73_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[5]~74_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[4]~64_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[5]~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~12_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~20_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[5]~47_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[6]~77_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[6]~80_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[6]~81_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:6:reg|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[6]~78_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[6]~79_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[6]~82_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[6]~85_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~17_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:13:reg|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:14:reg|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~12_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~20_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[6]~48_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:14:reg|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~17_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:7:reg|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:15:reg|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~20_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[7]~91_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[7]~92_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[7]~89_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[7]~90_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[7]~93_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[7]~95_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:9:reg|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[7]~87_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:5:reg|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[7]~88_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[7]~96_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[7]~49_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[8]~105_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[8]~106_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:2:reg|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[8]~102_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[8]~103_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[8]~100_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:11:reg|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[8]~101_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[8]~104_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:7:reg|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[8]~98_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[8]~99_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[8]~107_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~12_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~20_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[6]~86_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[5]~75_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[6]~5_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[7]~6_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[8]~7_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[8]~50_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:10:reg|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:14:reg|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~17_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:5:reg|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:9:reg|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~12_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~20_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[10]~120_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[10]~121_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[10]~122_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[10]~123_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[10]~126_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[10]~129_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[10]~130_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:10:reg|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~12_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:7:reg|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~18_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:15:reg|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~16_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:9:reg|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~20_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[8]~108_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[9]~8_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[10]~9_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[11]~10_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[11]~53_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:14:reg|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[12]~150_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[12]~142_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[12]~143_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[12]~151_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[11]~135_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[11]~136_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[11]~137_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:7:reg|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:15:reg|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[11]~139_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[11]~140_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[11]~141_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[12]~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[13]~153_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:6:reg|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[13]~154_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:11:reg|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[13]~160_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[13]~161_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[13]~162_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:8:reg|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~20_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[13]~12_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[13]~163_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~12_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:9:reg|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~15_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:4:reg|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~20_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[14]~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~36_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~37_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~34_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~35_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~38_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:9:reg|data_out[15]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~32_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~33_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~41_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[15]~182_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:15:reg|data_out[15]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[15]~183_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[15]~175_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[15]~176_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[15]~177_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[15]~178_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[15]~181_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[15]~184_combout\ : std_logic;
SIGNAL \mchn|ALU|S_out[15]~1_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:3:reg|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[14]~168_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[14]~169_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:5:reg|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:7:reg|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[14]~167_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[14]~170_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:14:reg|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[14]~171_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[14]~172_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[14]~173_combout\ : std_logic;
SIGNAL \mchn|bnk|Rb_data[14]~174_combout\ : std_logic;
SIGNAL \mchn|ALU|inter_carry[15]~14_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[15]~42_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~19_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~20_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~13_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:1:reg|data_out[15]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~14_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~18_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[15]~21_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[15]~15_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[14]~41_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[14]~56_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~4_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:4:reg|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux17~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[14]~14_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[13]~40_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[13]~55_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:7:reg|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~9_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:1:reg|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux18~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[13]~13_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[12]~39_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[12]~54_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:4:reg|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:0:reg|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux19~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[12]~12_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[11]~38_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux20~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[11]~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~11_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~12_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~13_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~14_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:2:reg|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~15_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~16_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~17_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~20_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[10]~52_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[10]~37_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:11:reg|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~6_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:13:reg|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux21~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[10]~10_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[9]~36_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux22~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[9]~9_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[8]~35_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:13:reg|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~7_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:3:reg|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux23~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[8]~8_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[7]~34_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux24~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[7]~7_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[6]~33_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~2_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:4:reg|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux25~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[6]~6_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[5]~32_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:6:reg|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux26~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[5]~5_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[4]~31_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:9:reg|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~2_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:0:reg|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux27~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[4]~4_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[3]~30_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:12:reg|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~8_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:15:reg|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~9_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:4:reg|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux28~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[3]~3_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[2]~44_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[2]~29_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux29~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[2]~2_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[1]~43_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:7:reg|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~1_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~9_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:2:reg|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~5_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:1:reg|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Mux30~10_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[1]~1_combout\ : std_logic;
SIGNAL \mchn|mxdata|S_out[0]~28_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~9_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~10_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~2_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~3_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~4_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~5_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~6_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~7_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~8_combout\ : std_logic;
SIGNAL \mchn|bnk|Ra_data[0]~11_combout\ : std_logic;
SIGNAL \mchn|out_RAM_data[0]~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|Hex00|Mux6~0_combout\ : std_logic;
SIGNAL \displayram|Hex00|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|Hex00|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|Hex00|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|Hex00|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|Hex00|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|Hex00|Mux0~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux2~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux2~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box05|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux2~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box03|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box01|Mux2~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux2~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux0~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux2~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box08|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box11|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box14|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box14|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box14|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|Hex01|Mux6~0_combout\ : std_logic;
SIGNAL \displayram|Hex01|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|Hex01|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|Hex01|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|Hex01|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|Hex01|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|Hex01|Mux0~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux2~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box10|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux2~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box07|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux2~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box00|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux2~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux0~3_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box02|Mux0~9_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box14|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|Hex02|Mux6~0_combout\ : std_logic;
SIGNAL \displayram|Hex02|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|Hex02|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|Hex02|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|Hex02|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|Hex02|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|Hex02|Mux0~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux2~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux0~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box09|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box12|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box04|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box06|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box12|Mux3~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box12|Mux3~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box12|Mux5~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box12|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box12|Mux5~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box12|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box12|Mux4~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box12|Mux4~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box15|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box15|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux2~1_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box13|Mux2~2_combout\ : std_logic;
SIGNAL \displayram|BBCD|Box15|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|Hex03|Mux6~0_combout\ : std_logic;
SIGNAL \displayram|Hex03|Mux5~0_combout\ : std_logic;
SIGNAL \displayram|Hex03|Mux4~0_combout\ : std_logic;
SIGNAL \displayram|Hex03|Mux3~0_combout\ : std_logic;
SIGNAL \displayram|Hex03|Mux2~0_combout\ : std_logic;
SIGNAL \displayram|Hex03|Mux1~0_combout\ : std_logic;
SIGNAL \displayram|Hex03|Mux0~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux5~3_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux5~2_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux5~4_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux3~1_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux4~3_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux4~4_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux3~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux3~2_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux4~1_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux4~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux4~2_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux5~1_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux5~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux5~2_combout\ : std_logic;
SIGNAL \displayromaddress|Hex00|Mux6~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex00|Mux5~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex00|Mux4~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex00|Mux3~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex00|Mux2~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex00|Mux1~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex00|Mux0~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box05|Mux2~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux3~3_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux3~2_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux3~4_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux1~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux1~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box14|Mux5~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box14|Mux4~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux2~1_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux2~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box11|Mux2~2_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box14|Mux3~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex01|Mux6~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex01|Mux5~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex01|Mux4~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex01|Mux3~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex01|Mux2~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex01|Mux1~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex01|Mux0~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box05|Mux3~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box05|Mux5~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box05|Mux4~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux2~1_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux2~0_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box08|Mux2~2_combout\ : std_logic;
SIGNAL \displayromaddress|Hex02|Mux6~4_combout\ : std_logic;
SIGNAL \displayromaddress|Hex02|Mux4~7_combout\ : std_logic;
SIGNAL \displayromaddress|Hex02|Mux4~13_combout\ : std_logic;
SIGNAL \displayromaddress|BBCD|Box14|Mux2~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex02|Mux1~7_combout\ : std_logic;
SIGNAL \displayromaddress|Hex02|Mux1~16_combout\ : std_logic;
SIGNAL \mchn|WideOr0~combout\ : std_logic;
SIGNAL \mchn|WideOr2~combout\ : std_logic;
SIGNAL \stdsp|Mux6~0_combout\ : std_logic;
SIGNAL \stdsp|Mux5~0_combout\ : std_logic;
SIGNAL \stdsp|Mux4~0_combout\ : std_logic;
SIGNAL \stdsp|Mux3~0_combout\ : std_logic;
SIGNAL \stdsp|Mux1~0_combout\ : std_logic;
SIGNAL \stdsp|Mux0~0_combout\ : std_logic;
SIGNAL \mchn|bnk|regfor:0:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:1:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:2:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:3:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:4:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:5:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:6:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:7:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:8:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:9:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:10:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:11:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:12:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:13:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:14:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|bnk|regfor:15:reg|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk10|counter\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \clk50|counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \mchn|ir|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mchn|pc|out_cont\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stdsp|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex01|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \displayromaddress|Hex00|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \displayram|Hex03|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \displayram|Hex02|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \displayram|Hex01|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \displayram|Hex00|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Key3~clkctrl_outclk\ : std_logic;
SIGNAL \mchn|ALT_INV_estado.zero~clkctrl_outclk\ : std_logic;
SIGNAL \displayromaddress|Hex02|ALT_INV_Mux4~13_combout\ : std_logic;
SIGNAL \displayromaddress|Hex02|ALT_INV_Mux6~4_combout\ : std_logic;

BEGIN

ww_SW17 <= SW17;
ww_clk_27M <= clk_27M;
ww_Key3 <= Key3;
ww_SW <= SW;
LEDG <= ww_LEDG;
Hex0 <= ww_Hex0;
Hex1 <= ww_Hex1;
Hex2 <= ww_Hex2;
Hex3 <= ww_Hex3;
Hex4 <= ww_Hex4;
Hex5 <= ww_Hex5;
Hex6 <= ww_Hex6;
Hex7 <= ww_Hex7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\mchn|out_RAM_data[15]~15_combout\ & \mchn|out_RAM_data[14]~14_combout\ & \mchn|out_RAM_data[13]~13_combout\ & \mchn|out_RAM_data[12]~12_combout\ & 
\mchn|out_RAM_data[11]~11_combout\ & \mchn|out_RAM_data[10]~10_combout\ & \mchn|out_RAM_data[9]~9_combout\ & \mchn|out_RAM_data[8]~8_combout\ & \mchn|out_RAM_data[7]~7_combout\ & \mchn|out_RAM_data[6]~6_combout\ & \mchn|out_RAM_data[5]~5_combout\ & 
\mchn|out_RAM_data[4]~4_combout\ & \mchn|out_RAM_data[3]~3_combout\ & \mchn|out_RAM_data[2]~2_combout\ & \mchn|out_RAM_data[1]~1_combout\ & \mchn|out_RAM_data[0]~0_combout\);

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mchn|RAM_address[7]~7_combout\ & \mchn|RAM_address[6]~6_combout\ & \mchn|RAM_address[5]~5_combout\ & \mchn|RAM_address[4]~4_combout\ & \mchn|RAM_address[3]~3_combout\ & 
\mchn|RAM_address[2]~2_combout\ & \mchn|RAM_address[1]~1_combout\ & \mchn|RAM_address[0]~0_combout\);

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\SW~combout\(7) & \SW~combout\(6) & \SW~combout\(5) & \SW~combout\(4) & \SW~combout\(3) & \SW~combout\(2) & \SW~combout\(1) & \SW~combout\(0));

\RAM|altsyncram_component|auto_generated|q_a\(0) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RAM|altsyncram_component|auto_generated|q_a\(1) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RAM|altsyncram_component|auto_generated|q_a\(2) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\RAM|altsyncram_component|auto_generated|q_a\(3) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\RAM|altsyncram_component|auto_generated|q_a\(4) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\RAM|altsyncram_component|auto_generated|q_a\(5) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\RAM|altsyncram_component|auto_generated|q_a\(6) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\RAM|altsyncram_component|auto_generated|q_a\(7) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\RAM|altsyncram_component|auto_generated|q_a\(8) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\RAM|altsyncram_component|auto_generated|q_a\(9) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\RAM|altsyncram_component|auto_generated|q_a\(10) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\RAM|altsyncram_component|auto_generated|q_a\(11) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\RAM|altsyncram_component|auto_generated|q_a\(12) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\RAM|altsyncram_component|auto_generated|q_a\(13) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\RAM|altsyncram_component|auto_generated|q_a\(14) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\RAM|altsyncram_component|auto_generated|q_a\(15) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\RAM|altsyncram_component|auto_generated|q_b\(0) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\RAM|altsyncram_component|auto_generated|q_b\(1) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\RAM|altsyncram_component|auto_generated|q_b\(2) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\RAM|altsyncram_component|auto_generated|q_b\(3) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\RAM|altsyncram_component|auto_generated|q_b\(4) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\RAM|altsyncram_component|auto_generated|q_b\(5) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\RAM|altsyncram_component|auto_generated|q_b\(6) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\RAM|altsyncram_component|auto_generated|q_b\(7) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\RAM|altsyncram_component|auto_generated|q_b\(8) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\RAM|altsyncram_component|auto_generated|q_b\(9) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\RAM|altsyncram_component|auto_generated|q_b\(10) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\RAM|altsyncram_component|auto_generated|q_b\(11) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\RAM|altsyncram_component|auto_generated|q_b\(12) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\RAM|altsyncram_component|auto_generated|q_b\(13) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\RAM|altsyncram_component|auto_generated|q_b\(14) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\RAM|altsyncram_component|auto_generated|q_b\(15) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mchn|pc|out_cont\(7) & \mchn|pc|out_cont\(6) & \mchn|pc|out_cont\(5) & \mchn|pc|out_cont\(4) & \mchn|pc|out_cont\(3) & \mchn|pc|out_cont\(2) & \mchn|pc|out_cont\(1) & 
\mchn|pc|out_cont\(0));

\ROM|altsyncram_component|auto_generated|q_a\(0) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ROM|altsyncram_component|auto_generated|q_a\(1) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ROM|altsyncram_component|auto_generated|q_a\(2) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ROM|altsyncram_component|auto_generated|q_a\(3) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ROM|altsyncram_component|auto_generated|q_a\(4) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ROM|altsyncram_component|auto_generated|q_a\(5) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ROM|altsyncram_component|auto_generated|q_a\(6) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ROM|altsyncram_component|auto_generated|q_a\(7) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ROM|altsyncram_component|auto_generated|q_a\(8) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\ROM|altsyncram_component|auto_generated|q_a\(9) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\ROM|altsyncram_component|auto_generated|q_a\(10) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\ROM|altsyncram_component|auto_generated|q_a\(11) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\ROM|altsyncram_component|auto_generated|q_a\(12) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\ROM|altsyncram_component|auto_generated|q_a\(13) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\ROM|altsyncram_component|auto_generated|q_a\(14) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\ROM|altsyncram_component|auto_generated|q_a\(15) <= \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\clk50|clock_signal~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk50|clock_signal~regout\);

\clk_to_machine~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_to_machine~combout\);

\mchn|estado.zero~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \mchn|estado.zero~regout\);

\clk_27M~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_27M~combout\);

\Key3~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Key3~clk_delay_ctrl_clkout\);
\stdsp|ALT_INV_Mux0~0_combout\ <= NOT \stdsp|Mux0~0_combout\;
\displayromaddress|Hex01|ALT_INV_Mux0~0_combout\ <= NOT \displayromaddress|Hex01|Mux0~0_combout\;
\displayromaddress|Hex00|ALT_INV_Mux0~0_combout\ <= NOT \displayromaddress|Hex00|Mux0~0_combout\;
\displayram|Hex03|ALT_INV_Mux0~0_combout\ <= NOT \displayram|Hex03|Mux0~0_combout\;
\displayram|Hex02|ALT_INV_Mux0~0_combout\ <= NOT \displayram|Hex02|Mux0~0_combout\;
\displayram|Hex01|ALT_INV_Mux0~0_combout\ <= NOT \displayram|Hex01|Mux0~0_combout\;
\displayram|Hex00|ALT_INV_Mux0~0_combout\ <= NOT \displayram|Hex00|Mux0~0_combout\;
\ALT_INV_Key3~clkctrl_outclk\ <= NOT \Key3~clkctrl_outclk\;
\mchn|ALT_INV_estado.zero~clkctrl_outclk\ <= NOT \mchn|estado.zero~clkctrl_outclk\;
\displayromaddress|Hex02|ALT_INV_Mux4~13_combout\ <= NOT \displayromaddress|Hex02|Mux4~13_combout\;
\displayromaddress|Hex02|ALT_INV_Mux6~4_combout\ <= NOT \displayromaddress|Hex02|Mux6~4_combout\;

-- Location: M4K_X26_Y27
\RAM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000700060005000400230019000A0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "DataRAM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataRAM:RAM|altsyncram:altsyncram_component|altsyncram_v492:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 16,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \mchn|estado.store~regout\,
	portbrewe => GND,
	clk0 => \clk50|clock_signal~clkctrl_outclk\,
	portadatain => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X35_Y4_N12
\clk50|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~0_combout\ = \clk50|counter\(0) $ (VCC)
-- \clk50|Add0~1\ = CARRY(\clk50|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk50|counter\(0),
	datad => VCC,
	combout => \clk50|Add0~0_combout\,
	cout => \clk50|Add0~1\);

-- Location: LCCOMB_X35_Y4_N16
\clk50|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~4_combout\ = (\clk50|counter\(2) & (\clk50|Add0~3\ $ (GND))) # (!\clk50|counter\(2) & (!\clk50|Add0~3\ & VCC))
-- \clk50|Add0~5\ = CARRY((\clk50|counter\(2) & !\clk50|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(2),
	datad => VCC,
	cin => \clk50|Add0~3\,
	combout => \clk50|Add0~4_combout\,
	cout => \clk50|Add0~5\);

-- Location: LCCOMB_X35_Y4_N24
\clk50|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~12_combout\ = (\clk50|counter\(6) & (\clk50|Add0~11\ $ (GND))) # (!\clk50|counter\(6) & (!\clk50|Add0~11\ & VCC))
-- \clk50|Add0~13\ = CARRY((\clk50|counter\(6) & !\clk50|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(6),
	datad => VCC,
	cin => \clk50|Add0~11\,
	combout => \clk50|Add0~12_combout\,
	cout => \clk50|Add0~13\);

-- Location: LCCOMB_X35_Y3_N10
\clk50|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~30_combout\ = (\clk50|counter\(15) & (!\clk50|Add0~29\)) # (!\clk50|counter\(15) & ((\clk50|Add0~29\) # (GND)))
-- \clk50|Add0~31\ = CARRY((!\clk50|Add0~29\) # (!\clk50|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(15),
	datad => VCC,
	cin => \clk50|Add0~29\,
	combout => \clk50|Add0~30_combout\,
	cout => \clk50|Add0~31\);

-- Location: LCCOMB_X35_Y3_N12
\clk50|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~32_combout\ = (\clk50|counter\(16) & (\clk50|Add0~31\ $ (GND))) # (!\clk50|counter\(16) & (!\clk50|Add0~31\ & VCC))
-- \clk50|Add0~33\ = CARRY((\clk50|counter\(16) & !\clk50|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(16),
	datad => VCC,
	cin => \clk50|Add0~31\,
	combout => \clk50|Add0~32_combout\,
	cout => \clk50|Add0~33\);

-- Location: LCCOMB_X21_Y13_N10
\clk10|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~0_combout\ = \clk10|counter\(0) $ (VCC)
-- \clk10|Add0~1\ = CARRY(\clk10|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk10|counter\(0),
	datad => VCC,
	combout => \clk10|Add0~0_combout\,
	cout => \clk10|Add0~1\);

-- Location: LCCOMB_X21_Y13_N12
\clk10|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~2_combout\ = (\clk10|counter\(1) & (!\clk10|Add0~1\)) # (!\clk10|counter\(1) & ((\clk10|Add0~1\) # (GND)))
-- \clk10|Add0~3\ = CARRY((!\clk10|Add0~1\) # (!\clk10|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(1),
	datad => VCC,
	cin => \clk10|Add0~1\,
	combout => \clk10|Add0~2_combout\,
	cout => \clk10|Add0~3\);

-- Location: LCCOMB_X21_Y13_N16
\clk10|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~6_combout\ = (\clk10|counter\(3) & (!\clk10|Add0~5\)) # (!\clk10|counter\(3) & ((\clk10|Add0~5\) # (GND)))
-- \clk10|Add0~7\ = CARRY((!\clk10|Add0~5\) # (!\clk10|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(3),
	datad => VCC,
	cin => \clk10|Add0~5\,
	combout => \clk10|Add0~6_combout\,
	cout => \clk10|Add0~7\);

-- Location: LCCOMB_X21_Y13_N20
\clk10|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~10_combout\ = (\clk10|counter\(5) & (!\clk10|Add0~9\)) # (!\clk10|counter\(5) & ((\clk10|Add0~9\) # (GND)))
-- \clk10|Add0~11\ = CARRY((!\clk10|Add0~9\) # (!\clk10|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(5),
	datad => VCC,
	cin => \clk10|Add0~9\,
	combout => \clk10|Add0~10_combout\,
	cout => \clk10|Add0~11\);

-- Location: LCCOMB_X21_Y12_N12
\clk10|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~34_combout\ = (\clk10|counter\(17) & (!\clk10|Add0~33\)) # (!\clk10|counter\(17) & ((\clk10|Add0~33\) # (GND)))
-- \clk10|Add0~35\ = CARRY((!\clk10|Add0~33\) # (!\clk10|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(17),
	datad => VCC,
	cin => \clk10|Add0~33\,
	combout => \clk10|Add0~34_combout\,
	cout => \clk10|Add0~35\);

-- Location: LCCOMB_X30_Y21_N12
\displayram|BBCD|Box01|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux5~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(9) & (\displayram|BBCD|Box00|Mux5~2_combout\ $ (((\RAM|altsyncram_component|auto_generated|q_b\(10)) # (!\displayram|BBCD|Box00|Mux4~2_combout\))))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(9) & ((\RAM|altsyncram_component|auto_generated|q_b\(10) & (!\displayram|BBCD|Box00|Mux4~2_combout\ & \displayram|BBCD|Box00|Mux5~2_combout\)) # (!\RAM|altsyncram_component|auto_generated|q_b\(10) & 
-- (\displayram|BBCD|Box00|Mux4~2_combout\ & !\displayram|BBCD|Box00|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(9),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(10),
	datac => \displayram|BBCD|Box00|Mux4~2_combout\,
	datad => \displayram|BBCD|Box00|Mux5~2_combout\,
	combout => \displayram|BBCD|Box01|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y21_N12
\displayram|BBCD|Box03|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux5~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(7) & (\displayram|BBCD|Box01|Mux5~2_combout\ $ (((\RAM|altsyncram_component|auto_generated|q_b\(8)) # (!\displayram|BBCD|Box01|Mux4~2_combout\))))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(7) & ((\displayram|BBCD|Box01|Mux4~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(8) & !\displayram|BBCD|Box01|Mux5~2_combout\)) # (!\displayram|BBCD|Box01|Mux4~2_combout\ & 
-- (\RAM|altsyncram_component|auto_generated|q_b\(8) & \displayram|BBCD|Box01|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box01|Mux4~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(7),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(8),
	datad => \displayram|BBCD|Box01|Mux5~2_combout\,
	combout => \displayram|BBCD|Box03|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y21_N6
\displayram|BBCD|Box03|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux4~0_combout\ = (\displayram|BBCD|Box01|Mux5~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(8) & ((\RAM|altsyncram_component|auto_generated|q_b\(7)) # (\displayram|BBCD|Box01|Mux3~2_combout\)))) # 
-- (!\displayram|BBCD|Box01|Mux5~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(8) $ (((\RAM|altsyncram_component|auto_generated|q_b\(7) & \displayram|BBCD|Box01|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box01|Mux5~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(7),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(8),
	datad => \displayram|BBCD|Box01|Mux3~2_combout\,
	combout => \displayram|BBCD|Box03|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y19_N12
\displayram|BBCD|Box05|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux5~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(5) & (\displayram|BBCD|Box03|Mux5~2_combout\ $ (((\RAM|altsyncram_component|auto_generated|q_b\(6)) # (!\displayram|BBCD|Box03|Mux4~2_combout\))))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(5) & ((\RAM|altsyncram_component|auto_generated|q_b\(6) & (!\displayram|BBCD|Box03|Mux4~2_combout\ & \displayram|BBCD|Box03|Mux5~2_combout\)) # (!\RAM|altsyncram_component|auto_generated|q_b\(6) & 
-- (\displayram|BBCD|Box03|Mux4~2_combout\ & !\displayram|BBCD|Box03|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(6),
	datab => \displayram|BBCD|Box03|Mux4~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(5),
	datad => \displayram|BBCD|Box03|Mux5~2_combout\,
	combout => \displayram|BBCD|Box05|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y19_N6
\displayram|BBCD|Box05|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux4~0_combout\ = (\displayram|BBCD|Box03|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(6) $ (((\RAM|altsyncram_component|auto_generated|q_b\(5) & !\displayram|BBCD|Box03|Mux5~2_combout\))))) # 
-- (!\displayram|BBCD|Box03|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(6) & ((\RAM|altsyncram_component|auto_generated|q_b\(5)) # (!\displayram|BBCD|Box03|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(6),
	datab => \displayram|BBCD|Box03|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(5),
	datad => \displayram|BBCD|Box03|Mux5~2_combout\,
	combout => \displayram|BBCD|Box05|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y19_N24
\displayram|BBCD|Box05|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux4~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(6) & (((\displayram|BBCD|Box03|Mux5~2_combout\) # (!\RAM|altsyncram_component|auto_generated|q_b\(5))) # (!\displayram|BBCD|Box03|Mux3~2_combout\))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(6) & ((\displayram|BBCD|Box03|Mux3~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(5)) # (!\displayram|BBCD|Box03|Mux5~2_combout\))) # (!\displayram|BBCD|Box03|Mux3~2_combout\ & 
-- (\RAM|altsyncram_component|auto_generated|q_b\(5) & !\displayram|BBCD|Box03|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(6),
	datab => \displayram|BBCD|Box03|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(5),
	datad => \displayram|BBCD|Box03|Mux5~2_combout\,
	combout => \displayram|BBCD|Box05|Mux4~1_combout\);

-- Location: LCCOMB_X29_Y19_N14
\displayram|BBCD|Box05|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux4~2_combout\ = (\displayram|BBCD|Box03|Mux4~2_combout\ & ((!\displayram|BBCD|Box05|Mux4~1_combout\))) # (!\displayram|BBCD|Box03|Mux4~2_combout\ & (\displayram|BBCD|Box05|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux4~0_combout\,
	datab => \displayram|BBCD|Box03|Mux4~2_combout\,
	datac => \displayram|BBCD|Box05|Mux4~1_combout\,
	combout => \displayram|BBCD|Box05|Mux4~2_combout\);

-- Location: LCCOMB_X30_Y21_N6
\displayram|BBCD|Box01|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux2~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(10) & (\displayram|BBCD|Box00|Mux5~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(9)) # (!\displayram|BBCD|Box00|Mux4~2_combout\)))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(10) & ((\displayram|BBCD|Box00|Mux4~2_combout\ & ((!\displayram|BBCD|Box00|Mux5~2_combout\))) # (!\displayram|BBCD|Box00|Mux4~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(9) & 
-- \displayram|BBCD|Box00|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(9),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(10),
	datac => \displayram|BBCD|Box00|Mux4~2_combout\,
	datad => \displayram|BBCD|Box00|Mux5~2_combout\,
	combout => \displayram|BBCD|Box01|Mux2~0_combout\);

-- Location: LCCOMB_X34_Y16_N28
\displayram|BBCD|Box02|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux3~0_combout\ = (\displayram|BBCD|Box00|Mux0~0_combout\ & ((\displayram|BBCD|Box01|Mux1~0_combout\ & (!\displayram|BBCD|Box01|Mux2~2_combout\ & \displayram|BBCD|Box00|Mux2~2_combout\)) # (!\displayram|BBCD|Box01|Mux1~0_combout\ & 
-- (\displayram|BBCD|Box01|Mux2~2_combout\ & !\displayram|BBCD|Box00|Mux2~2_combout\)))) # (!\displayram|BBCD|Box00|Mux0~0_combout\ & (!\displayram|BBCD|Box01|Mux1~0_combout\ & (\displayram|BBCD|Box01|Mux2~2_combout\ $ 
-- (!\displayram|BBCD|Box00|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux0~0_combout\,
	datab => \displayram|BBCD|Box01|Mux1~0_combout\,
	datac => \displayram|BBCD|Box01|Mux2~2_combout\,
	datad => \displayram|BBCD|Box00|Mux2~2_combout\,
	combout => \displayram|BBCD|Box02|Mux3~0_combout\);

-- Location: LCCOMB_X34_Y16_N2
\displayram|BBCD|Box02|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux3~1_combout\ = (\displayram|BBCD|Box00|Mux0~0_combout\ & (!\displayram|BBCD|Box01|Mux1~0_combout\ & (!\displayram|BBCD|Box01|Mux2~2_combout\ & \displayram|BBCD|Box00|Mux2~2_combout\))) # (!\displayram|BBCD|Box00|Mux0~0_combout\ & 
-- (\displayram|BBCD|Box01|Mux1~0_combout\ & (\displayram|BBCD|Box01|Mux2~2_combout\ & !\displayram|BBCD|Box00|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux0~0_combout\,
	datab => \displayram|BBCD|Box01|Mux1~0_combout\,
	datac => \displayram|BBCD|Box01|Mux2~2_combout\,
	datad => \displayram|BBCD|Box00|Mux2~2_combout\,
	combout => \displayram|BBCD|Box02|Mux3~1_combout\);

-- Location: LCCOMB_X34_Y16_N12
\displayram|BBCD|Box02|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux3~2_combout\ = (\displayram|BBCD|Box00|Mux1~0_combout\ & ((\displayram|BBCD|Box02|Mux3~0_combout\))) # (!\displayram|BBCD|Box00|Mux1~0_combout\ & (\displayram|BBCD|Box02|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux1~0_combout\,
	datab => \displayram|BBCD|Box02|Mux3~1_combout\,
	datad => \displayram|BBCD|Box02|Mux3~0_combout\,
	combout => \displayram|BBCD|Box02|Mux3~2_combout\);

-- Location: LCCOMB_X37_Y12_N12
\displayram|BBCD|Box07|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux5~0_combout\ = (\displayram|BBCD|Box05|Mux2~2_combout\ & (\displayram|BBCD|Box04|Mux5~2_combout\ $ (((\displayram|BBCD|Box05|Mux1~0_combout\) # (!\displayram|BBCD|Box04|Mux4~2_combout\))))) # 
-- (!\displayram|BBCD|Box05|Mux2~2_combout\ & ((\displayram|BBCD|Box04|Mux4~2_combout\ & (!\displayram|BBCD|Box05|Mux1~0_combout\ & !\displayram|BBCD|Box04|Mux5~2_combout\)) # (!\displayram|BBCD|Box04|Mux4~2_combout\ & (\displayram|BBCD|Box05|Mux1~0_combout\ 
-- & \displayram|BBCD|Box04|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux4~2_combout\,
	datab => \displayram|BBCD|Box05|Mux2~2_combout\,
	datac => \displayram|BBCD|Box05|Mux1~0_combout\,
	datad => \displayram|BBCD|Box04|Mux5~2_combout\,
	combout => \displayram|BBCD|Box07|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y12_N28
\displayram|BBCD|Box07|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux3~0_combout\ = (\displayram|BBCD|Box04|Mux3~2_combout\ & (!\displayram|BBCD|Box05|Mux1~0_combout\ & (\displayram|BBCD|Box05|Mux2~2_combout\ $ (!\displayram|BBCD|Box04|Mux5~2_combout\)))) # (!\displayram|BBCD|Box04|Mux3~2_combout\ 
-- & ((\displayram|BBCD|Box05|Mux2~2_combout\ & (!\displayram|BBCD|Box05|Mux1~0_combout\ & !\displayram|BBCD|Box04|Mux5~2_combout\)) # (!\displayram|BBCD|Box05|Mux2~2_combout\ & (\displayram|BBCD|Box05|Mux1~0_combout\ & 
-- \displayram|BBCD|Box04|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux3~2_combout\,
	datab => \displayram|BBCD|Box05|Mux2~2_combout\,
	datac => \displayram|BBCD|Box05|Mux1~0_combout\,
	datad => \displayram|BBCD|Box04|Mux5~2_combout\,
	combout => \displayram|BBCD|Box07|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y12_N22
\displayram|BBCD|Box07|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux3~1_combout\ = (\displayram|BBCD|Box04|Mux3~2_combout\ & (\displayram|BBCD|Box05|Mux2~2_combout\ & (\displayram|BBCD|Box05|Mux1~0_combout\ & !\displayram|BBCD|Box04|Mux5~2_combout\))) # (!\displayram|BBCD|Box04|Mux3~2_combout\ & 
-- (!\displayram|BBCD|Box05|Mux2~2_combout\ & (!\displayram|BBCD|Box05|Mux1~0_combout\ & \displayram|BBCD|Box04|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux3~2_combout\,
	datab => \displayram|BBCD|Box05|Mux2~2_combout\,
	datac => \displayram|BBCD|Box05|Mux1~0_combout\,
	datad => \displayram|BBCD|Box04|Mux5~2_combout\,
	combout => \displayram|BBCD|Box07|Mux3~1_combout\);

-- Location: LCCOMB_X37_Y12_N4
\displayram|BBCD|Box07|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux3~2_combout\ = (\displayram|BBCD|Box04|Mux4~2_combout\ & ((\displayram|BBCD|Box07|Mux3~0_combout\))) # (!\displayram|BBCD|Box04|Mux4~2_combout\ & (\displayram|BBCD|Box07|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box07|Mux3~1_combout\,
	datac => \displayram|BBCD|Box04|Mux4~2_combout\,
	datad => \displayram|BBCD|Box07|Mux3~0_combout\,
	combout => \displayram|BBCD|Box07|Mux3~2_combout\);

-- Location: LCCOMB_X45_Y12_N28
\displayram|BBCD|Box10|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux3~0_combout\ = (\displayram|BBCD|Box07|Mux3~2_combout\ & (!\displayram|BBCD|Box08|Mux1~0_combout\ & (\displayram|BBCD|Box08|Mux2~2_combout\ $ (!\displayram|BBCD|Box07|Mux5~2_combout\)))) # (!\displayram|BBCD|Box07|Mux3~2_combout\ 
-- & ((\displayram|BBCD|Box08|Mux2~2_combout\ & (!\displayram|BBCD|Box07|Mux5~2_combout\ & !\displayram|BBCD|Box08|Mux1~0_combout\)) # (!\displayram|BBCD|Box08|Mux2~2_combout\ & (\displayram|BBCD|Box07|Mux5~2_combout\ & 
-- \displayram|BBCD|Box08|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box07|Mux3~2_combout\,
	datab => \displayram|BBCD|Box08|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux5~2_combout\,
	datad => \displayram|BBCD|Box08|Mux1~0_combout\,
	combout => \displayram|BBCD|Box10|Mux3~0_combout\);

-- Location: LCCOMB_X45_Y12_N6
\displayram|BBCD|Box10|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux3~1_combout\ = (\displayram|BBCD|Box07|Mux3~2_combout\ & (\displayram|BBCD|Box08|Mux2~2_combout\ & (!\displayram|BBCD|Box07|Mux5~2_combout\ & \displayram|BBCD|Box08|Mux1~0_combout\))) # (!\displayram|BBCD|Box07|Mux3~2_combout\ & 
-- (!\displayram|BBCD|Box08|Mux2~2_combout\ & (\displayram|BBCD|Box07|Mux5~2_combout\ & !\displayram|BBCD|Box08|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box07|Mux3~2_combout\,
	datab => \displayram|BBCD|Box08|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux5~2_combout\,
	datad => \displayram|BBCD|Box08|Mux1~0_combout\,
	combout => \displayram|BBCD|Box10|Mux3~1_combout\);

-- Location: LCCOMB_X45_Y12_N16
\displayram|BBCD|Box10|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux3~2_combout\ = (\displayram|BBCD|Box07|Mux4~2_combout\ & ((\displayram|BBCD|Box10|Mux3~0_combout\))) # (!\displayram|BBCD|Box07|Mux4~2_combout\ & (\displayram|BBCD|Box10|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box10|Mux3~1_combout\,
	datab => \displayram|BBCD|Box07|Mux4~2_combout\,
	datad => \displayram|BBCD|Box10|Mux3~0_combout\,
	combout => \displayram|BBCD|Box10|Mux3~2_combout\);

-- Location: LCCOMB_X46_Y12_N20
\displayram|BBCD|Box06|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux5~0_combout\ = (\displayram|BBCD|Box02|Mux2~2_combout\ & ((\displayram|BBCD|Box04|Mux1~0_combout\ & (!\displayram|BBCD|Box02|Mux1~0_combout\ & !\displayram|BBCD|Box04|Mux2~2_combout\)) # (!\displayram|BBCD|Box04|Mux1~0_combout\ & 
-- (\displayram|BBCD|Box02|Mux1~0_combout\ & \displayram|BBCD|Box04|Mux2~2_combout\)))) # (!\displayram|BBCD|Box02|Mux2~2_combout\ & (\displayram|BBCD|Box04|Mux2~2_combout\ $ (((!\displayram|BBCD|Box04|Mux1~0_combout\ & 
-- \displayram|BBCD|Box02|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux1~0_combout\,
	datab => \displayram|BBCD|Box02|Mux2~2_combout\,
	datac => \displayram|BBCD|Box02|Mux1~0_combout\,
	datad => \displayram|BBCD|Box04|Mux2~2_combout\,
	combout => \displayram|BBCD|Box06|Mux5~0_combout\);

-- Location: LCCOMB_X46_Y12_N16
\displayram|BBCD|Box06|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux4~1_combout\ = (\displayram|BBCD|Box04|Mux1~0_combout\ & ((\displayram|BBCD|Box02|Mux2~2_combout\) # ((\displayram|BBCD|Box02|Mux0~9_combout\) # (!\displayram|BBCD|Box04|Mux2~2_combout\)))) # 
-- (!\displayram|BBCD|Box04|Mux1~0_combout\ & ((\displayram|BBCD|Box02|Mux2~2_combout\ & (!\displayram|BBCD|Box02|Mux0~9_combout\ & \displayram|BBCD|Box04|Mux2~2_combout\)) # (!\displayram|BBCD|Box02|Mux2~2_combout\ & 
-- ((\displayram|BBCD|Box04|Mux2~2_combout\) # (!\displayram|BBCD|Box02|Mux0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux1~0_combout\,
	datab => \displayram|BBCD|Box02|Mux2~2_combout\,
	datac => \displayram|BBCD|Box02|Mux0~9_combout\,
	datad => \displayram|BBCD|Box04|Mux2~2_combout\,
	combout => \displayram|BBCD|Box06|Mux4~1_combout\);

-- Location: LCCOMB_X49_Y12_N28
\displayram|BBCD|Box09|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux3~0_combout\ = (\displayram|BBCD|Box06|Mux3~2_combout\ & (!\displayram|BBCD|Box07|Mux1~0_combout\ & (\displayram|BBCD|Box07|Mux2~2_combout\ $ (!\displayram|BBCD|Box06|Mux5~2_combout\)))) # (!\displayram|BBCD|Box06|Mux3~2_combout\ 
-- & ((\displayram|BBCD|Box07|Mux2~2_combout\ & (!\displayram|BBCD|Box07|Mux1~0_combout\ & !\displayram|BBCD|Box06|Mux5~2_combout\)) # (!\displayram|BBCD|Box07|Mux2~2_combout\ & (\displayram|BBCD|Box07|Mux1~0_combout\ & 
-- \displayram|BBCD|Box06|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux3~2_combout\,
	datab => \displayram|BBCD|Box07|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux1~0_combout\,
	datad => \displayram|BBCD|Box06|Mux5~2_combout\,
	combout => \displayram|BBCD|Box09|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y12_N22
\displayram|BBCD|Box09|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux3~1_combout\ = (\displayram|BBCD|Box06|Mux3~2_combout\ & (\displayram|BBCD|Box07|Mux2~2_combout\ & (\displayram|BBCD|Box07|Mux1~0_combout\ & !\displayram|BBCD|Box06|Mux5~2_combout\))) # (!\displayram|BBCD|Box06|Mux3~2_combout\ & 
-- (!\displayram|BBCD|Box07|Mux2~2_combout\ & (!\displayram|BBCD|Box07|Mux1~0_combout\ & \displayram|BBCD|Box06|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux3~2_combout\,
	datab => \displayram|BBCD|Box07|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux1~0_combout\,
	datad => \displayram|BBCD|Box06|Mux5~2_combout\,
	combout => \displayram|BBCD|Box09|Mux3~1_combout\);

-- Location: LCCOMB_X49_Y12_N0
\displayram|BBCD|Box09|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux3~2_combout\ = (\displayram|BBCD|Box06|Mux4~2_combout\ & ((\displayram|BBCD|Box09|Mux3~0_combout\))) # (!\displayram|BBCD|Box06|Mux4~2_combout\ & (\displayram|BBCD|Box09|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux4~2_combout\,
	datab => \displayram|BBCD|Box09|Mux3~1_combout\,
	datad => \displayram|BBCD|Box09|Mux3~0_combout\,
	combout => \displayram|BBCD|Box09|Mux3~2_combout\);

-- Location: LCCOMB_X60_Y12_N20
\displayram|BBCD|Box13|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux3~0_combout\ = (\displayram|BBCD|Box09|Mux3~2_combout\ & (!\displayram|BBCD|Box10|Mux1~0_combout\ & (\displayram|BBCD|Box10|Mux2~2_combout\ $ (!\displayram|BBCD|Box09|Mux5~2_combout\)))) # (!\displayram|BBCD|Box09|Mux3~2_combout\ 
-- & ((\displayram|BBCD|Box10|Mux2~2_combout\ & (!\displayram|BBCD|Box10|Mux1~0_combout\ & !\displayram|BBCD|Box09|Mux5~2_combout\)) # (!\displayram|BBCD|Box10|Mux2~2_combout\ & (\displayram|BBCD|Box10|Mux1~0_combout\ & 
-- \displayram|BBCD|Box09|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux3~2_combout\,
	datab => \displayram|BBCD|Box10|Mux2~2_combout\,
	datac => \displayram|BBCD|Box10|Mux1~0_combout\,
	datad => \displayram|BBCD|Box09|Mux5~2_combout\,
	combout => \displayram|BBCD|Box13|Mux3~0_combout\);

-- Location: LCCOMB_X60_Y12_N4
\displayram|BBCD|Box13|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux1~0_combout\ = (\displayram|BBCD|Box09|Mux3~2_combout\ & ((\displayram|BBCD|Box09|Mux4~2_combout\ & (\displayram|BBCD|Box10|Mux1~0_combout\ & \displayram|BBCD|Box09|Mux5~2_combout\)) # (!\displayram|BBCD|Box09|Mux4~2_combout\ & 
-- ((!\displayram|BBCD|Box09|Mux5~2_combout\))))) # (!\displayram|BBCD|Box09|Mux3~2_combout\ & (\displayram|BBCD|Box09|Mux4~2_combout\ & ((\displayram|BBCD|Box10|Mux1~0_combout\) # (\displayram|BBCD|Box09|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux3~2_combout\,
	datab => \displayram|BBCD|Box10|Mux1~0_combout\,
	datac => \displayram|BBCD|Box09|Mux4~2_combout\,
	datad => \displayram|BBCD|Box09|Mux5~2_combout\,
	combout => \displayram|BBCD|Box13|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y12_N26
\displayram|BBCD|Box09|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux2~0_combout\ = (\displayram|BBCD|Box06|Mux4~2_combout\ & ((\displayram|BBCD|Box07|Mux1~0_combout\ & (\displayram|BBCD|Box07|Mux2~2_combout\ & \displayram|BBCD|Box06|Mux5~2_combout\)) # (!\displayram|BBCD|Box07|Mux1~0_combout\ & 
-- ((!\displayram|BBCD|Box06|Mux5~2_combout\))))) # (!\displayram|BBCD|Box06|Mux4~2_combout\ & (\displayram|BBCD|Box06|Mux5~2_combout\ & ((\displayram|BBCD|Box07|Mux2~2_combout\) # (\displayram|BBCD|Box07|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux4~2_combout\,
	datab => \displayram|BBCD|Box07|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux1~0_combout\,
	datad => \displayram|BBCD|Box06|Mux5~2_combout\,
	combout => \displayram|BBCD|Box09|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y12_N16
\displayram|BBCD|Box09|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux2~1_combout\ = (\displayram|BBCD|Box06|Mux4~2_combout\ & ((\displayram|BBCD|Box07|Mux1~0_combout\ & ((\displayram|BBCD|Box06|Mux5~2_combout\))) # (!\displayram|BBCD|Box07|Mux1~0_combout\ & (!\displayram|BBCD|Box07|Mux2~2_combout\ 
-- & !\displayram|BBCD|Box06|Mux5~2_combout\)))) # (!\displayram|BBCD|Box06|Mux4~2_combout\ & (((\displayram|BBCD|Box06|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux4~2_combout\,
	datab => \displayram|BBCD|Box07|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux1~0_combout\,
	datad => \displayram|BBCD|Box06|Mux5~2_combout\,
	combout => \displayram|BBCD|Box09|Mux2~1_combout\);

-- Location: LCCOMB_X49_Y12_N14
\displayram|BBCD|Box09|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux2~2_combout\ = (\displayram|BBCD|Box06|Mux3~2_combout\ & (!\displayram|BBCD|Box09|Mux2~1_combout\)) # (!\displayram|BBCD|Box06|Mux3~2_combout\ & ((\displayram|BBCD|Box09|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux2~1_combout\,
	datab => \displayram|BBCD|Box09|Mux2~0_combout\,
	datac => \displayram|BBCD|Box06|Mux3~2_combout\,
	combout => \displayram|BBCD|Box09|Mux2~2_combout\);

-- Location: LCFF_X35_Y3_N13
\clk50|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(16));

-- Location: LCFF_X35_Y4_N17
\clk50|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(2));

-- Location: LCFF_X35_Y4_N25
\clk50|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(6));

-- Location: LCCOMB_X34_Y4_N16
\clk50|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Equal0~2_combout\ = (\clk50|counter\(5) & (!\clk50|counter\(6) & (\clk50|counter\(4) & \clk50|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(5),
	datab => \clk50|counter\(6),
	datac => \clk50|counter\(4),
	datad => \clk50|counter\(7),
	combout => \clk50|Equal0~2_combout\);

-- Location: LCFF_X35_Y3_N11
\clk50|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(15));

-- Location: LCFF_X29_Y30_N25
\mchn|bnk|regfor:3:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:3:reg|data_out[1]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(1));

-- Location: LCFF_X30_Y31_N23
\mchn|bnk|regfor:12:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:12:reg|data_out[1]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(1));

-- Location: LCFF_X31_Y29_N7
\mchn|bnk|regfor:10:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[3]~30_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(3));

-- Location: LCCOMB_X30_Y25_N18
\mchn|bnk|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~1_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:9:reg|data_out\(3))) # (!\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:8:reg|data_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|regfor:9:reg|data_out\(3),
	datac => \mchn|bnk|regfor:8:reg|data_out\(3),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux28~1_combout\);

-- Location: LCFF_X29_Y25_N25
\mchn|bnk|regfor:11:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:11:reg|data_out[3]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(3));

-- Location: LCCOMB_X30_Y25_N12
\mchn|bnk|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~2_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux28~1_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(3)))) # (!\mchn|bnk|Mux28~1_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(3))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(3),
	datab => \mchn|bnk|regfor:11:reg|data_out\(3),
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|bnk|Mux28~1_combout\,
	combout => \mchn|bnk|Mux28~2_combout\);

-- Location: LCFF_X31_Y31_N25
\mchn|bnk|regfor:6:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[3]~30_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(3));

-- Location: LCFF_X28_Y25_N13
\mchn|bnk|regfor:13:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[3]~30_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(3));

-- Location: LCFF_X30_Y27_N17
\mchn|bnk|regfor:5:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[5]~32_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(5));

-- Location: LCFF_X30_Y26_N25
\mchn|bnk|regfor:13:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[5]~32_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(5));

-- Location: LCCOMB_X31_Y28_N24
\mchn|bnk|Mux26~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~8_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:13:reg|data_out\(5))) # (!\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:12:reg|data_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(5),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|regfor:12:reg|data_out\(5),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux26~8_combout\);

-- Location: LCFF_X29_Y25_N31
\mchn|bnk|regfor:15:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:15:reg|data_out[5]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(5));

-- Location: LCCOMB_X31_Y28_N6
\mchn|bnk|Mux26~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~9_combout\ = (\mchn|bnk|Mux26~8_combout\ & (((\mchn|bnk|regfor:15:reg|data_out\(5))) # (!\mchn|ir|data_out\(9)))) # (!\mchn|bnk|Mux26~8_combout\ & (\mchn|ir|data_out\(9) & (\mchn|bnk|regfor:14:reg|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux26~8_combout\,
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|regfor:14:reg|data_out\(5),
	datad => \mchn|bnk|regfor:15:reg|data_out\(5),
	combout => \mchn|bnk|Mux26~9_combout\);

-- Location: LCFF_X27_Y28_N25
\mchn|bnk|regfor:1:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[6]~33_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(6));

-- Location: LCFF_X29_Y24_N9
\mchn|bnk|regfor:3:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:3:reg|data_out[6]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(6));

-- Location: LCFF_X25_Y26_N11
\mchn|bnk|regfor:15:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:15:reg|data_out[6]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(6));

-- Location: LCFF_X27_Y30_N17
\mchn|bnk|regfor:8:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[7]~34_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(7));

-- Location: LCCOMB_X27_Y30_N16
\mchn|bnk|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~1_combout\ = (\mchn|ir|data_out\(9) & (\mchn|ir|data_out\(8))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:9:reg|data_out\(7)))) # (!\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:8:reg|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:8:reg|data_out\(7),
	datad => \mchn|bnk|regfor:9:reg|data_out\(7),
	combout => \mchn|bnk|Mux24~1_combout\);

-- Location: LCFF_X27_Y29_N13
\mchn|bnk|regfor:6:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[7]~34_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(7));

-- Location: LCFF_X30_Y29_N13
\mchn|bnk|regfor:13:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[7]~34_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(7));

-- Location: LCCOMB_X31_Y28_N0
\mchn|bnk|Mux24~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~8_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|regfor:14:reg|data_out\(7)) # ((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|regfor:12:reg|data_out\(7) & !\mchn|ir|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|regfor:14:reg|data_out\(7),
	datac => \mchn|bnk|regfor:12:reg|data_out\(7),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux24~8_combout\);

-- Location: LCCOMB_X30_Y29_N16
\mchn|bnk|Mux24~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~9_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux24~8_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(7)))) # (!\mchn|bnk|Mux24~8_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(7))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Mux24~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(7),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:15:reg|data_out\(7),
	datad => \mchn|bnk|Mux24~8_combout\,
	combout => \mchn|bnk|Mux24~9_combout\);

-- Location: LCCOMB_X27_Y25_N26
\mchn|bnk|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~1_combout\ = (\mchn|ir|data_out\(10) & (((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11) & (\mchn|bnk|regfor:9:reg|data_out\(8))) # (!\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:1:reg|data_out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(8),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|regfor:1:reg|data_out\(8),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux23~1_combout\);

-- Location: LCFF_X25_Y25_N25
\mchn|bnk|regfor:10:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:10:reg|data_out[8]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(8));

-- Location: LCFF_X24_Y29_N29
\mchn|bnk|regfor:15:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(10));

-- Location: LCCOMB_X28_Y29_N12
\mchn|bnk|Mux20~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~8_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|regfor:14:reg|data_out\(11)) # ((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|regfor:12:reg|data_out\(11) & !\mchn|ir|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(11),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|regfor:12:reg|data_out\(11),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux20~8_combout\);

-- Location: LCFF_X28_Y25_N27
\mchn|bnk|regfor:13:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:13:reg|data_out[12]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(12));

-- Location: LCFF_X24_Y27_N19
\mchn|bnk|regfor:6:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[12]~54_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(12));

-- Location: LCFF_X28_Y30_N13
\mchn|bnk|regfor:11:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:11:reg|data_out[12]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(12));

-- Location: LCFF_X29_Y30_N5
\mchn|bnk|regfor:3:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[12]~54_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(12));

-- Location: LCCOMB_X29_Y30_N4
\mchn|bnk|Mux19~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~8_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:11:reg|data_out\(12)) # ((\mchn|ir|data_out\(10))))) # (!\mchn|ir|data_out\(11) & (((\mchn|bnk|regfor:3:reg|data_out\(12) & !\mchn|ir|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:11:reg|data_out\(12),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:3:reg|data_out\(12),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux19~8_combout\);

-- Location: LCCOMB_X31_Y27_N10
\mchn|bnk|Mux19~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~9_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux19~8_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(12))) # (!\mchn|bnk|Mux19~8_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(12)))))) # (!\mchn|ir|data_out\(10) & 
-- (((\mchn|bnk|Mux19~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(12),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|regfor:7:reg|data_out\(12),
	datad => \mchn|bnk|Mux19~8_combout\,
	combout => \mchn|bnk|Mux19~9_combout\);

-- Location: LCFF_X23_Y27_N9
\mchn|bnk|regfor:5:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:5:reg|data_out[13]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(13));

-- Location: LCFF_X28_Y31_N25
\mchn|bnk|regfor:0:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[13]~55_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(13));

-- Location: LCFF_X28_Y27_N1
\mchn|bnk|regfor:14:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[13]~55_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(13));

-- Location: LCFF_X24_Y27_N9
\mchn|bnk|regfor:6:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[14]~56_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(14));

-- Location: LCFF_X27_Y26_N15
\mchn|bnk|regfor:10:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[14]~56_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(14));

-- Location: LCFF_X24_Y27_N27
\mchn|bnk|regfor:2:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[14]~56_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(14));

-- Location: LCCOMB_X24_Y27_N26
\mchn|bnk|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~1_combout\ = (\mchn|ir|data_out\(10) & (((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11) & (\mchn|bnk|regfor:10:reg|data_out\(14))) # (!\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:2:reg|data_out\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(14),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|regfor:2:reg|data_out\(14),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux17~1_combout\);

-- Location: LCCOMB_X24_Y27_N8
\mchn|bnk|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~2_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux17~1_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(14))) # (!\mchn|bnk|Mux17~1_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(14)))))) # (!\mchn|ir|data_out\(10) & 
-- (((\mchn|bnk|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(14),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|regfor:6:reg|data_out\(14),
	datad => \mchn|bnk|Mux17~1_combout\,
	combout => \mchn|bnk|Mux17~2_combout\);

-- Location: LCFF_X28_Y27_N3
\mchn|bnk|regfor:15:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[14]~56_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(14));

-- Location: LCCOMB_X27_Y27_N20
\mchn|bnk|Ra_data[15]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~12_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:9:reg|data_out\(15))) # (!\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:8:reg|data_out\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(15),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|regfor:8:reg|data_out\(15),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Ra_data[15]~12_combout\);

-- Location: LCFF_X25_Y29_N27
\mchn|bnk|regfor:14:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:14:reg|data_out[15]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(15));

-- Location: LCFF_X21_Y13_N17
\clk10|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(3));

-- Location: LCFF_X21_Y13_N13
\clk10|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(1));

-- Location: LCCOMB_X22_Y13_N16
\clk10|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Equal0~0_combout\ = (!\clk10|counter\(1) & (!\clk10|counter\(3) & (\clk10|counter\(4) & !\clk10|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(1),
	datab => \clk10|counter\(3),
	datac => \clk10|counter\(4),
	datad => \clk10|counter\(2),
	combout => \clk10|Equal0~0_combout\);

-- Location: LCFF_X21_Y12_N13
\clk10|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(17));

-- Location: LCCOMB_X29_Y28_N28
\mchn|bnk|Ra_data[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~22_combout\ = (\mchn|Selector3~0_combout\ & (((\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & ((\mchn|Selector4~0_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(0)))) # (!\mchn|Selector4~0_combout\ & 
-- (\mchn|bnk|regfor:4:reg|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|regfor:4:reg|data_out\(0),
	datac => \mchn|bnk|regfor:5:reg|data_out\(0),
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Ra_data[0]~22_combout\);

-- Location: LCCOMB_X29_Y28_N26
\mchn|bnk|Ra_data[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~23_combout\ = (\mchn|bnk|Ra_data[0]~22_combout\ & (((\mchn|bnk|regfor:7:reg|data_out\(0)) # (!\mchn|Selector3~0_combout\)))) # (!\mchn|bnk|Ra_data[0]~22_combout\ & (\mchn|bnk|regfor:6:reg|data_out\(0) & 
-- ((\mchn|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(0),
	datab => \mchn|bnk|Ra_data[0]~22_combout\,
	datac => \mchn|bnk|regfor:7:reg|data_out\(0),
	datad => \mchn|Selector3~0_combout\,
	combout => \mchn|bnk|Ra_data[0]~23_combout\);

-- Location: LCCOMB_X29_Y30_N28
\mchn|bnk|Mux30~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~18_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(1)))) # (!\mchn|Selector2~0_combout\ & 
-- (\mchn|bnk|regfor:3:reg|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(1),
	datab => \mchn|bnk|regfor:7:reg|data_out\(1),
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux30~18_combout\);

-- Location: LCCOMB_X29_Y30_N6
\mchn|bnk|Mux30~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~19_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux30~18_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(1))) # (!\mchn|bnk|Mux30~18_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(1)))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux30~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(1),
	datab => \mchn|bnk|regfor:11:reg|data_out\(1),
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|bnk|Mux30~18_combout\,
	combout => \mchn|bnk|Mux30~19_combout\);

-- Location: LCCOMB_X27_Y28_N12
\mchn|bnk|Rb_data[3]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[3]~43_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(3)) # ((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|regfor:1:reg|data_out\(3) & 
-- !\mchn|regb_address[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(3),
	datab => \mchn|bnk|regfor:1:reg|data_out\(3),
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[3]~43_combout\);

-- Location: LCCOMB_X28_Y25_N12
\mchn|bnk|Rb_data[3]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[3]~44_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[3]~43_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(3)))) # (!\mchn|bnk|Rb_data[3]~43_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(3))))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|Rb_data[3]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|bnk|regfor:5:reg|data_out\(3),
	datac => \mchn|bnk|regfor:13:reg|data_out\(3),
	datad => \mchn|bnk|Rb_data[3]~43_combout\,
	combout => \mchn|bnk|Rb_data[3]~44_combout\);

-- Location: LCCOMB_X31_Y29_N12
\mchn|bnk|Rb_data[3]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[3]~45_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(3)) # ((\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & (((!\mchn|regb_address[3]~1_combout\ & 
-- \mchn|bnk|regfor:2:reg|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|bnk|regfor:6:reg|data_out\(3),
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|bnk|regfor:2:reg|data_out\(3),
	combout => \mchn|bnk|Rb_data[3]~45_combout\);

-- Location: LCCOMB_X31_Y29_N6
\mchn|bnk|Rb_data[3]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[3]~46_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[3]~45_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(3))) # (!\mchn|bnk|Rb_data[3]~45_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(3)))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[3]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|bnk|regfor:14:reg|data_out\(3),
	datac => \mchn|bnk|regfor:10:reg|data_out\(3),
	datad => \mchn|bnk|Rb_data[3]~45_combout\,
	combout => \mchn|bnk|Rb_data[3]~46_combout\);

-- Location: LCCOMB_X31_Y29_N22
\mchn|bnk|Rb_data[3]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[3]~47_combout\ = (\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|regfor:4:reg|data_out\(3)) # (\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(3) & 
-- ((!\mchn|regb_address[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(3),
	datab => \mchn|bnk|regfor:4:reg|data_out\(3),
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[3]~47_combout\);

-- Location: LCCOMB_X31_Y29_N16
\mchn|bnk|Rb_data[3]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[3]~48_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[3]~47_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(3)))) # (!\mchn|bnk|Rb_data[3]~47_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(3))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[3]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|bnk|regfor:8:reg|data_out\(3),
	datac => \mchn|bnk|regfor:12:reg|data_out\(3),
	datad => \mchn|bnk|Rb_data[3]~47_combout\,
	combout => \mchn|bnk|Rb_data[3]~48_combout\);

-- Location: LCCOMB_X31_Y29_N18
\mchn|bnk|Rb_data[3]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[3]~49_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|Rb_data[3]~46_combout\)) # 
-- (!\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[3]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[3]~46_combout\,
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|Rb_data[3]~48_combout\,
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[3]~49_combout\);

-- Location: LCCOMB_X29_Y25_N28
\mchn|bnk|Rb_data[3]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[3]~50_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(3)) # ((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|regfor:3:reg|data_out\(3) & 
-- !\mchn|regb_address[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:11:reg|data_out\(3),
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|regfor:3:reg|data_out\(3),
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[3]~50_combout\);

-- Location: LCCOMB_X29_Y25_N6
\mchn|bnk|Rb_data[3]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[3]~51_combout\ = (\mchn|bnk|Rb_data[3]~50_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(3)) # ((!\mchn|regb_address[2]~0_combout\)))) # (!\mchn|bnk|Rb_data[3]~50_combout\ & (((\mchn|bnk|regfor:7:reg|data_out\(3) & 
-- \mchn|regb_address[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(3),
	datab => \mchn|bnk|Rb_data[3]~50_combout\,
	datac => \mchn|bnk|regfor:7:reg|data_out\(3),
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[3]~51_combout\);

-- Location: LCCOMB_X27_Y26_N24
\mchn|bnk|Rb_data[3]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[3]~52_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[3]~49_combout\ & (\mchn|bnk|Rb_data[3]~51_combout\)) # (!\mchn|bnk|Rb_data[3]~49_combout\ & ((\mchn|bnk|Rb_data[3]~44_combout\))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[3]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[3]~51_combout\,
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|Rb_data[3]~44_combout\,
	datad => \mchn|bnk|Rb_data[3]~49_combout\,
	combout => \mchn|bnk|Rb_data[3]~52_combout\);

-- Location: LCCOMB_X27_Y26_N6
\mchn|bnk|Rb_data[3]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[3]~53_combout\ = (\mchn|bnk|Rb_data[3]~52_combout\ & \mchn|estado.add~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|bnk|Rb_data[3]~52_combout\,
	datad => \mchn|estado.add~regout\,
	combout => \mchn|bnk|Rb_data[3]~53_combout\);

-- Location: LCCOMB_X30_Y26_N30
\mchn|bnk|Mux26~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~13_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(5))) # (!\mchn|Selector2~0_combout\ & 
-- ((\mchn|bnk|regfor:1:reg|data_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:5:reg|data_out\(5),
	datac => \mchn|bnk|regfor:1:reg|data_out\(5),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux26~13_combout\);

-- Location: LCCOMB_X30_Y26_N24
\mchn|bnk|Mux26~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~14_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux26~13_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(5)))) # (!\mchn|bnk|Mux26~13_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(5))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux26~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:9:reg|data_out\(5),
	datac => \mchn|bnk|regfor:13:reg|data_out\(5),
	datad => \mchn|bnk|Mux26~13_combout\,
	combout => \mchn|bnk|Mux26~14_combout\);

-- Location: LCCOMB_X29_Y30_N18
\mchn|bnk|Mux26~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~18_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(5)))) # (!\mchn|Selector2~0_combout\ & 
-- (\mchn|bnk|regfor:3:reg|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(5),
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|bnk|regfor:7:reg|data_out\(5),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux26~18_combout\);

-- Location: LCCOMB_X29_Y25_N4
\mchn|bnk|Mux26~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~19_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux26~18_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(5))) # (!\mchn|bnk|Mux26~18_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(5)))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux26~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(5),
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|bnk|regfor:11:reg|data_out\(5),
	datad => \mchn|bnk|Mux26~18_combout\,
	combout => \mchn|bnk|Mux26~19_combout\);

-- Location: LCCOMB_X24_Y26_N6
\mchn|bnk|Rb_data[6]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[6]~76_combout\ = (\mchn|regb_address[1]~3_combout\ & (((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(6))) # 
-- (!\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|regfor:8:reg|data_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(6),
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|regfor:8:reg|data_out\(6),
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[6]~76_combout\);

-- Location: LCCOMB_X25_Y28_N2
\mchn|bnk|Rb_data[6]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[6]~83_combout\ = (\mchn|regb_address[0]~2_combout\ & (\mchn|regb_address[1]~3_combout\)) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(6)))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|regfor:12:reg|data_out\(6),
	datad => \mchn|bnk|regfor:14:reg|data_out\(6),
	combout => \mchn|bnk|Rb_data[6]~83_combout\);

-- Location: LCCOMB_X25_Y26_N12
\mchn|bnk|Rb_data[6]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[6]~84_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[6]~83_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(6))) # (!\mchn|bnk|Rb_data[6]~83_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(6)))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[6]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(6),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|Rb_data[6]~83_combout\,
	datad => \mchn|bnk|regfor:13:reg|data_out\(6),
	combout => \mchn|bnk|Rb_data[6]~84_combout\);

-- Location: LCCOMB_X28_Y28_N8
\mchn|bnk|Mux25~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~13_combout\ = (\mchn|Selector3~0_combout\ & (((\mchn|bnk|regfor:6:reg|data_out\(6)) # (\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(6) & ((!\mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(6),
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|bnk|regfor:6:reg|data_out\(6),
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux25~13_combout\);

-- Location: LCCOMB_X27_Y31_N8
\mchn|bnk|Rb_data[7]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[7]~94_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(7)) # ((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|regfor:3:reg|data_out\(7) & 
-- !\mchn|regb_address[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:11:reg|data_out\(7),
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|regfor:3:reg|data_out\(7),
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[7]~94_combout\);

-- Location: LCCOMB_X27_Y29_N26
\mchn|bnk|Rb_data[7]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[7]~97_combout\ = (\mchn|estado.add~regout\ & \mchn|bnk|Rb_data[7]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Rb_data[7]~96_combout\,
	combout => \mchn|bnk|Rb_data[7]~97_combout\);

-- Location: LCCOMB_X27_Y32_N22
\mchn|bnk|Mux24~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~11_combout\ = (\mchn|Selector2~0_combout\ & (((\mchn|Selector1~0_combout\)))) # (!\mchn|Selector2~0_combout\ & ((\mchn|Selector1~0_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(7))) # (!\mchn|Selector1~0_combout\ & 
-- ((\mchn|bnk|regfor:1:reg|data_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector2~0_combout\,
	datab => \mchn|bnk|regfor:9:reg|data_out\(7),
	datac => \mchn|bnk|regfor:1:reg|data_out\(7),
	datad => \mchn|Selector1~0_combout\,
	combout => \mchn|bnk|Mux24~11_combout\);

-- Location: LCCOMB_X27_Y32_N28
\mchn|bnk|Mux24~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~12_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|Mux24~11_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(7))) # (!\mchn|bnk|Mux24~11_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(7)))))) # (!\mchn|Selector2~0_combout\ & 
-- (((\mchn|bnk|Mux24~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(7),
	datab => \mchn|bnk|regfor:5:reg|data_out\(7),
	datac => \mchn|Selector2~0_combout\,
	datad => \mchn|bnk|Mux24~11_combout\,
	combout => \mchn|bnk|Mux24~12_combout\);

-- Location: LCCOMB_X27_Y29_N12
\mchn|bnk|Mux24~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~13_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(7)))) # (!\mchn|Selector2~0_combout\ & 
-- (\mchn|bnk|regfor:2:reg|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:2:reg|data_out\(7),
	datac => \mchn|bnk|regfor:6:reg|data_out\(7),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux24~13_combout\);

-- Location: LCCOMB_X27_Y29_N2
\mchn|bnk|Mux24~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~15_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & ((\mchn|bnk|regfor:4:reg|data_out\(7)))) # (!\mchn|Selector2~0_combout\ & 
-- (\mchn|bnk|regfor:0:reg|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(7),
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|bnk|regfor:4:reg|data_out\(7),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux24~15_combout\);

-- Location: LCCOMB_X27_Y29_N10
\mchn|bnk|Mux24~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~16_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux24~15_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(7))) # (!\mchn|bnk|Mux24~15_combout\ & ((\mchn|bnk|regfor:8:reg|data_out\(7)))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux24~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:12:reg|data_out\(7),
	datac => \mchn|bnk|regfor:8:reg|data_out\(7),
	datad => \mchn|bnk|Mux24~15_combout\,
	combout => \mchn|bnk|Mux24~16_combout\);

-- Location: LCCOMB_X25_Y25_N26
\mchn|bnk|Mux23~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~13_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(8))) # (!\mchn|Selector3~0_combout\ & 
-- ((\mchn|bnk|regfor:8:reg|data_out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(8),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|regfor:8:reg|data_out\(8),
	datad => \mchn|Selector3~0_combout\,
	combout => \mchn|bnk|Mux23~13_combout\);

-- Location: LCCOMB_X25_Y25_N28
\mchn|bnk|Mux23~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~14_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux23~13_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(8)))) # (!\mchn|bnk|Mux23~13_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(8))))) # (!\mchn|Selector4~0_combout\ & 
-- (((\mchn|bnk|Mux23~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(8),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|regfor:11:reg|data_out\(8),
	datad => \mchn|bnk|Mux23~13_combout\,
	combout => \mchn|bnk|Mux23~14_combout\);

-- Location: LCCOMB_X24_Y28_N24
\mchn|bnk|Mux23~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~15_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|Selector4~0_combout\) # ((\mchn|bnk|regfor:2:reg|data_out\(8))))) # (!\mchn|Selector3~0_combout\ & (!\mchn|Selector4~0_combout\ & ((\mchn|bnk|regfor:0:reg|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|regfor:2:reg|data_out\(8),
	datad => \mchn|bnk|regfor:0:reg|data_out\(8),
	combout => \mchn|bnk|Mux23~15_combout\);

-- Location: LCCOMB_X24_Y28_N10
\mchn|bnk|Mux23~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~16_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux23~15_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(8))) # (!\mchn|bnk|Mux23~15_combout\ & ((\mchn|bnk|regfor:1:reg|data_out\(8)))))) # (!\mchn|Selector4~0_combout\ & 
-- (((\mchn|bnk|Mux23~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(8),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|Mux23~15_combout\,
	datad => \mchn|bnk|regfor:1:reg|data_out\(8),
	combout => \mchn|bnk|Mux23~16_combout\);

-- Location: LCCOMB_X25_Y25_N10
\mchn|bnk|Mux23~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~17_combout\ = (\mchn|Selector2~0_combout\ & (((\mchn|Selector1~0_combout\)))) # (!\mchn|Selector2~0_combout\ & ((\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux23~14_combout\))) # (!\mchn|Selector1~0_combout\ & 
-- (\mchn|bnk|Mux23~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux23~16_combout\,
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|bnk|Mux23~14_combout\,
	combout => \mchn|bnk|Mux23~17_combout\);

-- Location: LCCOMB_X27_Y31_N26
\mchn|bnk|Rb_data[9]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[9]~109_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(9)) # ((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|regfor:2:reg|data_out\(9) & 
-- !\mchn|regb_address[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(9),
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|regfor:2:reg|data_out\(9),
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[9]~109_combout\);

-- Location: LCCOMB_X24_Y28_N12
\mchn|bnk|Rb_data[9]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[9]~110_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[9]~109_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(9))) # (!\mchn|bnk|Rb_data[9]~109_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(9)))))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|Rb_data[9]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(9),
	datab => \mchn|bnk|regfor:6:reg|data_out\(9),
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|bnk|Rb_data[9]~109_combout\,
	combout => \mchn|bnk|Rb_data[9]~110_combout\);

-- Location: LCCOMB_X28_Y26_N16
\mchn|bnk|Rb_data[9]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[9]~111_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(9)) # ((\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & (((!\mchn|regb_address[3]~1_combout\ & 
-- \mchn|bnk|regfor:1:reg|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(9),
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|bnk|regfor:1:reg|data_out\(9),
	combout => \mchn|bnk|Rb_data[9]~111_combout\);

-- Location: LCCOMB_X28_Y25_N6
\mchn|bnk|Rb_data[9]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[9]~112_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[9]~111_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(9))) # (!\mchn|bnk|Rb_data[9]~111_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(9)))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[9]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(9),
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|Rb_data[9]~111_combout\,
	datad => \mchn|bnk|regfor:9:reg|data_out\(9),
	combout => \mchn|bnk|Rb_data[9]~112_combout\);

-- Location: LCCOMB_X28_Y31_N20
\mchn|bnk|Rb_data[9]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[9]~113_combout\ = (\mchn|regb_address[2]~0_combout\ & (((\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & ((\mchn|regb_address[3]~1_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(9))) # 
-- (!\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:0:reg|data_out\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|bnk|regfor:8:reg|data_out\(9),
	datac => \mchn|bnk|regfor:0:reg|data_out\(9),
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[9]~113_combout\);

-- Location: LCCOMB_X31_Y28_N10
\mchn|bnk|Rb_data[9]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[9]~114_combout\ = (\mchn|bnk|Rb_data[9]~113_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(9)) # ((!\mchn|regb_address[2]~0_combout\)))) # (!\mchn|bnk|Rb_data[9]~113_combout\ & (((\mchn|regb_address[2]~0_combout\ & 
-- \mchn|bnk|regfor:4:reg|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:12:reg|data_out\(9),
	datab => \mchn|bnk|Rb_data[9]~113_combout\,
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|bnk|regfor:4:reg|data_out\(9),
	combout => \mchn|bnk|Rb_data[9]~114_combout\);

-- Location: LCCOMB_X28_Y28_N6
\mchn|bnk|Rb_data[9]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[9]~115_combout\ = (\mchn|regb_address[1]~3_combout\ & (\mchn|regb_address[0]~2_combout\)) # (!\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[9]~112_combout\))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|Rb_data[9]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|Rb_data[9]~114_combout\,
	datad => \mchn|bnk|Rb_data[9]~112_combout\,
	combout => \mchn|bnk|Rb_data[9]~115_combout\);

-- Location: LCCOMB_X27_Y28_N26
\mchn|bnk|Rb_data[9]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[9]~116_combout\ = (\mchn|regb_address[3]~1_combout\ & (((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & ((\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(9)))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|bnk|regfor:3:reg|data_out\(9),
	datac => \mchn|bnk|regfor:7:reg|data_out\(9),
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[9]~116_combout\);

-- Location: LCCOMB_X27_Y28_N20
\mchn|bnk|Rb_data[9]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[9]~117_combout\ = (\mchn|bnk|Rb_data[9]~116_combout\ & (((\mchn|bnk|regfor:15:reg|data_out\(9)) # (!\mchn|regb_address[3]~1_combout\)))) # (!\mchn|bnk|Rb_data[9]~116_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(9) & 
-- ((\mchn|regb_address[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:11:reg|data_out\(9),
	datab => \mchn|bnk|Rb_data[9]~116_combout\,
	datac => \mchn|bnk|regfor:15:reg|data_out\(9),
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[9]~117_combout\);

-- Location: LCCOMB_X24_Y28_N6
\mchn|bnk|Rb_data[9]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[9]~118_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[9]~115_combout\ & ((\mchn|bnk|Rb_data[9]~117_combout\))) # (!\mchn|bnk|Rb_data[9]~115_combout\ & (\mchn|bnk|Rb_data[9]~110_combout\)))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|Rb_data[9]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[9]~110_combout\,
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|Rb_data[9]~117_combout\,
	datad => \mchn|bnk|Rb_data[9]~115_combout\,
	combout => \mchn|bnk|Rb_data[9]~118_combout\);

-- Location: LCCOMB_X27_Y28_N24
\mchn|bnk|Rb_data[9]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[9]~119_combout\ = (\mchn|estado.add~regout\ & \mchn|bnk|Rb_data[9]~118_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Rb_data[9]~118_combout\,
	combout => \mchn|bnk|Rb_data[9]~119_combout\);

-- Location: LCCOMB_X24_Y26_N16
\mchn|bnk|Rb_data[10]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[10]~124_combout\ = (\mchn|regb_address[1]~3_combout\ & (((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|regfor:1:reg|data_out\(10))) # 
-- (!\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|regfor:0:reg|data_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:1:reg|data_out\(10),
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|regfor:0:reg|data_out\(10),
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[10]~124_combout\);

-- Location: LCCOMB_X24_Y26_N30
\mchn|bnk|Rb_data[10]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[10]~125_combout\ = (\mchn|bnk|Rb_data[10]~124_combout\ & ((\mchn|bnk|regfor:3:reg|data_out\(10)) # ((!\mchn|regb_address[1]~3_combout\)))) # (!\mchn|bnk|Rb_data[10]~124_combout\ & (((\mchn|bnk|regfor:2:reg|data_out\(10) & 
-- \mchn|regb_address[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(10),
	datab => \mchn|bnk|regfor:2:reg|data_out\(10),
	datac => \mchn|bnk|Rb_data[10]~124_combout\,
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[10]~125_combout\);

-- Location: LCCOMB_X24_Y25_N12
\mchn|bnk|Rb_data[10]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[10]~127_combout\ = (\mchn|regb_address[1]~3_combout\ & (((\mchn|regb_address[0]~2_combout\) # (\mchn|bnk|regfor:14:reg|data_out\(10))))) # (!\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(10) & 
-- (!\mchn|regb_address[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|regfor:12:reg|data_out\(10),
	datac => \mchn|regb_address[0]~2_combout\,
	datad => \mchn|bnk|regfor:14:reg|data_out\(10),
	combout => \mchn|bnk|Rb_data[10]~127_combout\);

-- Location: LCCOMB_X24_Y25_N10
\mchn|bnk|Rb_data[10]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[10]~128_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[10]~127_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(10)))) # (!\mchn|bnk|Rb_data[10]~127_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(10))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[10]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|bnk|regfor:13:reg|data_out\(10),
	datac => \mchn|bnk|regfor:15:reg|data_out\(10),
	datad => \mchn|bnk|Rb_data[10]~127_combout\,
	combout => \mchn|bnk|Rb_data[10]~128_combout\);

-- Location: LCCOMB_X24_Y25_N24
\mchn|bnk|Mux21~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~18_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(10))) # (!\mchn|Selector3~0_combout\ & 
-- ((\mchn|bnk|regfor:12:reg|data_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|bnk|regfor:14:reg|data_out\(10),
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|regfor:12:reg|data_out\(10),
	combout => \mchn|bnk|Mux21~18_combout\);

-- Location: LCCOMB_X24_Y25_N18
\mchn|bnk|Mux21~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~19_combout\ = (\mchn|bnk|Mux21~18_combout\ & (((\mchn|bnk|regfor:15:reg|data_out\(10)) # (!\mchn|Selector4~0_combout\)))) # (!\mchn|bnk|Mux21~18_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(10) & ((\mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux21~18_combout\,
	datab => \mchn|bnk|regfor:13:reg|data_out\(10),
	datac => \mchn|bnk|regfor:15:reg|data_out\(10),
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux21~19_combout\);

-- Location: LCCOMB_X24_Y29_N10
\mchn|bnk|Mux20~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~18_combout\ = (\mchn|Selector2~0_combout\ & (((\mchn|Selector1~0_combout\)))) # (!\mchn|Selector2~0_combout\ & ((\mchn|Selector1~0_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(11))) # (!\mchn|Selector1~0_combout\ & 
-- ((\mchn|bnk|regfor:3:reg|data_out\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector2~0_combout\,
	datab => \mchn|bnk|regfor:11:reg|data_out\(11),
	datac => \mchn|bnk|regfor:3:reg|data_out\(11),
	datad => \mchn|Selector1~0_combout\,
	combout => \mchn|bnk|Mux20~18_combout\);

-- Location: LCCOMB_X24_Y29_N8
\mchn|bnk|Mux20~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~19_combout\ = (\mchn|bnk|Mux20~18_combout\ & (((\mchn|bnk|regfor:15:reg|data_out\(11))) # (!\mchn|Selector2~0_combout\))) # (!\mchn|bnk|Mux20~18_combout\ & (\mchn|Selector2~0_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux20~18_combout\,
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|bnk|regfor:15:reg|data_out\(11),
	datad => \mchn|bnk|regfor:7:reg|data_out\(11),
	combout => \mchn|bnk|Mux20~19_combout\);

-- Location: LCCOMB_X23_Y27_N10
\mchn|bnk|Rb_data[11]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[11]~131_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(11)) # ((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & (((!\mchn|regb_address[2]~0_combout\ & 
-- \mchn|bnk|regfor:1:reg|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|bnk|regfor:9:reg|data_out\(11),
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|bnk|regfor:1:reg|data_out\(11),
	combout => \mchn|bnk|Rb_data[11]~131_combout\);

-- Location: LCCOMB_X23_Y27_N0
\mchn|bnk|Rb_data[11]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[11]~132_combout\ = (\mchn|bnk|Rb_data[11]~131_combout\ & (((\mchn|bnk|regfor:13:reg|data_out\(11))) # (!\mchn|regb_address[2]~0_combout\))) # (!\mchn|bnk|Rb_data[11]~131_combout\ & (\mchn|regb_address[2]~0_combout\ & 
-- ((\mchn|bnk|regfor:5:reg|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[11]~131_combout\,
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|bnk|regfor:13:reg|data_out\(11),
	datad => \mchn|bnk|regfor:5:reg|data_out\(11),
	combout => \mchn|bnk|Rb_data[11]~132_combout\);

-- Location: LCCOMB_X27_Y31_N0
\mchn|bnk|Rb_data[11]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[11]~133_combout\ = (\mchn|regb_address[3]~1_combout\ & (((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & ((\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|regfor:6:reg|data_out\(11))) # 
-- (!\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(11),
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|regfor:2:reg|data_out\(11),
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[11]~133_combout\);

-- Location: LCCOMB_X23_Y27_N30
\mchn|bnk|Rb_data[11]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[11]~134_combout\ = (\mchn|bnk|Rb_data[11]~133_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(11)) # ((!\mchn|regb_address[3]~1_combout\)))) # (!\mchn|bnk|Rb_data[11]~133_combout\ & (((\mchn|regb_address[3]~1_combout\ & 
-- \mchn|bnk|regfor:10:reg|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(11),
	datab => \mchn|bnk|Rb_data[11]~133_combout\,
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|bnk|regfor:10:reg|data_out\(11),
	combout => \mchn|bnk|Rb_data[11]~134_combout\);

-- Location: LCCOMB_X24_Y29_N6
\mchn|bnk|Rb_data[11]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[11]~138_combout\ = (\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|regfor:11:reg|data_out\(11)) # (\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(11) & 
-- ((!\mchn|regb_address[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(11),
	datab => \mchn|bnk|regfor:11:reg|data_out\(11),
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[11]~138_combout\);

-- Location: LCCOMB_X28_Y30_N4
\mchn|bnk|Rb_data[12]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[12]~144_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(12)) # ((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|regfor:8:reg|data_out\(12) & 
-- !\mchn|regb_address[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(12),
	datab => \mchn|bnk|regfor:8:reg|data_out\(12),
	datac => \mchn|regb_address[1]~3_combout\,
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[12]~144_combout\);

-- Location: LCCOMB_X28_Y30_N22
\mchn|bnk|Rb_data[12]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[12]~145_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[12]~144_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(12))) # (!\mchn|bnk|Rb_data[12]~144_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(12)))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[12]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:11:reg|data_out\(12),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|Rb_data[12]~144_combout\,
	datad => \mchn|bnk|regfor:9:reg|data_out\(12),
	combout => \mchn|bnk|Rb_data[12]~145_combout\);

-- Location: LCCOMB_X29_Y24_N24
\mchn|bnk|Rb_data[12]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[12]~146_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(12)))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(12),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|regb_address[1]~3_combout\,
	datad => \mchn|bnk|regfor:2:reg|data_out\(12),
	combout => \mchn|bnk|Rb_data[12]~146_combout\);

-- Location: LCCOMB_X29_Y24_N2
\mchn|bnk|Rb_data[12]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[12]~147_combout\ = (\mchn|bnk|Rb_data[12]~146_combout\ & ((\mchn|bnk|regfor:3:reg|data_out\(12)) # ((!\mchn|regb_address[0]~2_combout\)))) # (!\mchn|bnk|Rb_data[12]~146_combout\ & (((\mchn|bnk|regfor:1:reg|data_out\(12) & 
-- \mchn|regb_address[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[12]~146_combout\,
	datab => \mchn|bnk|regfor:3:reg|data_out\(12),
	datac => \mchn|bnk|regfor:1:reg|data_out\(12),
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[12]~147_combout\);

-- Location: LCCOMB_X29_Y30_N16
\mchn|bnk|Rb_data[12]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[12]~148_combout\ = (\mchn|regb_address[2]~0_combout\ & (((\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & ((\mchn|regb_address[3]~1_combout\ & (\mchn|bnk|Rb_data[12]~145_combout\)) # 
-- (!\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[12]~147_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[12]~145_combout\,
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|bnk|Rb_data[12]~147_combout\,
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[12]~148_combout\);

-- Location: LCCOMB_X28_Y27_N24
\mchn|bnk|Rb_data[12]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[12]~149_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|regfor:13:reg|data_out\(12)) # (\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(12) & 
-- ((!\mchn|regb_address[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|bnk|regfor:12:reg|data_out\(12),
	datac => \mchn|bnk|regfor:13:reg|data_out\(12),
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[12]~149_combout\);

-- Location: LCCOMB_X28_Y27_N2
\mchn|bnk|Rb_data[12]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[12]~152_combout\ = (\mchn|estado.add~regout\ & \mchn|bnk|Rb_data[12]~151_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Rb_data[12]~151_combout\,
	combout => \mchn|bnk|Rb_data[12]~152_combout\);

-- Location: LCCOMB_X28_Y28_N4
\mchn|bnk|Mux19~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~11_combout\ = (\mchn|Selector3~0_combout\ & (((\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & ((\mchn|Selector4~0_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(12))) # (!\mchn|Selector4~0_combout\ & 
-- ((\mchn|bnk|regfor:4:reg|data_out\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|regfor:5:reg|data_out\(12),
	datac => \mchn|bnk|regfor:4:reg|data_out\(12),
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux19~11_combout\);

-- Location: LCCOMB_X28_Y28_N14
\mchn|bnk|Mux19~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~12_combout\ = (\mchn|bnk|Mux19~11_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(12)) # ((!\mchn|Selector3~0_combout\)))) # (!\mchn|bnk|Mux19~11_combout\ & (((\mchn|Selector3~0_combout\ & \mchn|bnk|regfor:6:reg|data_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(12),
	datab => \mchn|bnk|Mux19~11_combout\,
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|regfor:6:reg|data_out\(12),
	combout => \mchn|bnk|Mux19~12_combout\);

-- Location: LCCOMB_X29_Y24_N4
\mchn|bnk|Mux19~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~15_combout\ = (\mchn|Selector4~0_combout\ & (\mchn|Selector3~0_combout\)) # (!\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\ & (\mchn|bnk|regfor:2:reg|data_out\(12))) # (!\mchn|Selector3~0_combout\ & 
-- ((\mchn|bnk|regfor:0:reg|data_out\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|bnk|regfor:2:reg|data_out\(12),
	datad => \mchn|bnk|regfor:0:reg|data_out\(12),
	combout => \mchn|bnk|Mux19~15_combout\);

-- Location: LCCOMB_X29_Y24_N10
\mchn|bnk|Mux19~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~16_combout\ = (\mchn|bnk|Mux19~15_combout\ & (((\mchn|bnk|regfor:3:reg|data_out\(12)) # (!\mchn|Selector4~0_combout\)))) # (!\mchn|bnk|Mux19~15_combout\ & (\mchn|bnk|regfor:1:reg|data_out\(12) & ((\mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:1:reg|data_out\(12),
	datab => \mchn|bnk|regfor:3:reg|data_out\(12),
	datac => \mchn|bnk|Mux19~15_combout\,
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux19~16_combout\);

-- Location: LCCOMB_X28_Y29_N22
\mchn|bnk|Mux19~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~18_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\) # ((\mchn|bnk|regfor:13:reg|data_out\(12))))) # (!\mchn|Selector4~0_combout\ & (!\mchn|Selector3~0_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|bnk|regfor:12:reg|data_out\(12),
	datad => \mchn|bnk|regfor:13:reg|data_out\(12),
	combout => \mchn|bnk|Mux19~18_combout\);

-- Location: LCCOMB_X23_Y27_N12
\mchn|bnk|Rb_data[13]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[13]~155_combout\ = (\mchn|regb_address[3]~1_combout\ & (((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & ((\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(13))) # 
-- (!\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:1:reg|data_out\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(13),
	datab => \mchn|bnk|regfor:1:reg|data_out\(13),
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[13]~155_combout\);

-- Location: LCCOMB_X23_Y27_N14
\mchn|bnk|Rb_data[13]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[13]~156_combout\ = (\mchn|bnk|Rb_data[13]~155_combout\ & (((\mchn|bnk|regfor:13:reg|data_out\(13)) # (!\mchn|regb_address[3]~1_combout\)))) # (!\mchn|bnk|Rb_data[13]~155_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(13) & 
-- (\mchn|regb_address[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[13]~155_combout\,
	datab => \mchn|bnk|regfor:9:reg|data_out\(13),
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|bnk|regfor:13:reg|data_out\(13),
	combout => \mchn|bnk|Rb_data[13]~156_combout\);

-- Location: LCCOMB_X28_Y31_N24
\mchn|bnk|Rb_data[13]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[13]~157_combout\ = (\mchn|regb_address[2]~0_combout\ & (((\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & ((\mchn|regb_address[3]~1_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(13))) # 
-- (!\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:0:reg|data_out\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:8:reg|data_out\(13),
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|bnk|regfor:0:reg|data_out\(13),
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[13]~157_combout\);

-- Location: LCCOMB_X28_Y30_N20
\mchn|bnk|Rb_data[13]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[13]~158_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[13]~157_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(13)))) # (!\mchn|bnk|Rb_data[13]~157_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(13))))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|Rb_data[13]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(13),
	datab => \mchn|bnk|regfor:12:reg|data_out\(13),
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|bnk|Rb_data[13]~157_combout\,
	combout => \mchn|bnk|Rb_data[13]~158_combout\);

-- Location: LCCOMB_X24_Y27_N12
\mchn|bnk|Rb_data[13]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[13]~159_combout\ = (\mchn|regb_address[1]~3_combout\ & (((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|Rb_data[13]~156_combout\)) # 
-- (!\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[13]~158_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[13]~156_combout\,
	datab => \mchn|bnk|Rb_data[13]~158_combout\,
	datac => \mchn|regb_address[1]~3_combout\,
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[13]~159_combout\);

-- Location: LCCOMB_X23_Y27_N16
\mchn|bnk|Mux18~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~13_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(13)) # ((\mchn|Selector1~0_combout\)))) # (!\mchn|Selector2~0_combout\ & (((!\mchn|Selector1~0_combout\ & \mchn|bnk|regfor:1:reg|data_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(13),
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|bnk|regfor:1:reg|data_out\(13),
	combout => \mchn|bnk|Mux18~13_combout\);

-- Location: LCCOMB_X27_Y25_N28
\mchn|bnk|Rb_data[14]~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[14]~164_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\) # ((\mchn|bnk|regfor:9:reg|data_out\(14))))) # (!\mchn|regb_address[0]~2_combout\ & (!\mchn|regb_address[1]~3_combout\ & 
-- ((\mchn|bnk|regfor:8:reg|data_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|regfor:9:reg|data_out\(14),
	datad => \mchn|bnk|regfor:8:reg|data_out\(14),
	combout => \mchn|bnk|Rb_data[14]~164_combout\);

-- Location: LCCOMB_X27_Y25_N14
\mchn|bnk|Rb_data[14]~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[14]~165_combout\ = (\mchn|bnk|Rb_data[14]~164_combout\ & (((\mchn|bnk|regfor:11:reg|data_out\(14))) # (!\mchn|regb_address[1]~3_combout\))) # (!\mchn|bnk|Rb_data[14]~164_combout\ & (\mchn|regb_address[1]~3_combout\ & 
-- ((\mchn|bnk|regfor:10:reg|data_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[14]~164_combout\,
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|regfor:11:reg|data_out\(14),
	datad => \mchn|bnk|regfor:10:reg|data_out\(14),
	combout => \mchn|bnk|Rb_data[14]~165_combout\);

-- Location: LCCOMB_X25_Y28_N8
\mchn|bnk|Rb_data[14]~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[14]~166_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(14)) # ((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|regfor:4:reg|data_out\(14) & 
-- !\mchn|regb_address[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(14),
	datab => \mchn|bnk|regfor:4:reg|data_out\(14),
	datac => \mchn|regb_address[1]~3_combout\,
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[14]~166_combout\);

-- Location: LCCOMB_X27_Y25_N22
\mchn|bnk|Mux17~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~11_combout\ = (\mchn|Selector3~0_combout\ & (((\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & ((\mchn|Selector4~0_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(14))) # (!\mchn|Selector4~0_combout\ & 
-- ((\mchn|bnk|regfor:8:reg|data_out\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|regfor:9:reg|data_out\(14),
	datac => \mchn|Selector4~0_combout\,
	datad => \mchn|bnk|regfor:8:reg|data_out\(14),
	combout => \mchn|bnk|Mux17~11_combout\);

-- Location: LCCOMB_X27_Y25_N4
\mchn|bnk|Mux17~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~12_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux17~11_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(14))) # (!\mchn|bnk|Mux17~11_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(14)))))) # (!\mchn|Selector3~0_combout\ & 
-- (\mchn|bnk|Mux17~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|Mux17~11_combout\,
	datac => \mchn|bnk|regfor:11:reg|data_out\(14),
	datad => \mchn|bnk|regfor:10:reg|data_out\(14),
	combout => \mchn|bnk|Mux17~12_combout\);

-- Location: LCCOMB_X25_Y28_N22
\mchn|bnk|Mux17~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~13_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(14)))) # (!\mchn|Selector3~0_combout\ & 
-- (\mchn|bnk|regfor:4:reg|data_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|bnk|regfor:4:reg|data_out\(14),
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|regfor:6:reg|data_out\(14),
	combout => \mchn|bnk|Mux17~13_combout\);

-- Location: LCCOMB_X29_Y28_N6
\mchn|bnk|Mux17~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~14_combout\ = (\mchn|bnk|Mux17~13_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(14)) # ((!\mchn|Selector4~0_combout\)))) # (!\mchn|bnk|Mux17~13_combout\ & (((\mchn|bnk|regfor:5:reg|data_out\(14) & \mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux17~13_combout\,
	datab => \mchn|bnk|regfor:7:reg|data_out\(14),
	datac => \mchn|bnk|regfor:5:reg|data_out\(14),
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux17~14_combout\);

-- Location: LCCOMB_X24_Y25_N14
\mchn|bnk|Mux17~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~15_combout\ = (\mchn|Selector3~0_combout\ & (((\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & ((\mchn|Selector4~0_combout\ & ((\mchn|bnk|regfor:1:reg|data_out\(14)))) # (!\mchn|Selector4~0_combout\ & 
-- (\mchn|bnk|regfor:0:reg|data_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(14),
	datab => \mchn|bnk|regfor:1:reg|data_out\(14),
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux17~15_combout\);

-- Location: LCCOMB_X27_Y25_N2
\mchn|bnk|Mux17~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~16_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux17~15_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(14))) # (!\mchn|bnk|Mux17~15_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(14)))))) # (!\mchn|Selector3~0_combout\ & 
-- (((\mchn|bnk|Mux17~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|regfor:3:reg|data_out\(14),
	datac => \mchn|bnk|Mux17~15_combout\,
	datad => \mchn|bnk|regfor:2:reg|data_out\(14),
	combout => \mchn|bnk|Mux17~16_combout\);

-- Location: LCCOMB_X27_Y25_N16
\mchn|bnk|Mux17~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~17_combout\ = (\mchn|Selector1~0_combout\ & (\mchn|Selector2~0_combout\)) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & (\mchn|bnk|Mux17~14_combout\)) # (!\mchn|Selector2~0_combout\ & ((\mchn|bnk|Mux17~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|bnk|Mux17~14_combout\,
	datad => \mchn|bnk|Mux17~16_combout\,
	combout => \mchn|bnk|Mux17~17_combout\);

-- Location: LCCOMB_X30_Y24_N6
\mchn|bnk|Mux17~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~18_combout\ = (\mchn|Selector3~0_combout\ & (((\mchn|bnk|regfor:14:reg|data_out\(14)) # (\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(14) & ((!\mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:12:reg|data_out\(14),
	datab => \mchn|bnk|regfor:14:reg|data_out\(14),
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux17~18_combout\);

-- Location: LCCOMB_X27_Y24_N10
\mchn|bnk|Mux17~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~19_combout\ = (\mchn|bnk|Mux17~18_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(14)) # ((!\mchn|Selector4~0_combout\)))) # (!\mchn|bnk|Mux17~18_combout\ & (((\mchn|bnk|regfor:13:reg|data_out\(14) & \mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(14),
	datab => \mchn|bnk|regfor:13:reg|data_out\(14),
	datac => \mchn|bnk|Mux17~18_combout\,
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux17~19_combout\);

-- Location: LCCOMB_X27_Y25_N6
\mchn|bnk|Mux17~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~20_combout\ = (\mchn|bnk|Mux17~17_combout\ & ((\mchn|bnk|Mux17~19_combout\) # ((!\mchn|Selector1~0_combout\)))) # (!\mchn|bnk|Mux17~17_combout\ & (((\mchn|bnk|Mux17~12_combout\ & \mchn|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux17~19_combout\,
	datab => \mchn|bnk|Mux17~12_combout\,
	datac => \mchn|bnk|Mux17~17_combout\,
	datad => \mchn|Selector1~0_combout\,
	combout => \mchn|bnk|Mux17~20_combout\);

-- Location: LCCOMB_X28_Y24_N28
\mchn|bnk|Ra_data[15]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~39_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(15)) # ((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & (((\mchn|bnk|regfor:3:reg|data_out\(15) & !\mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:11:reg|data_out\(15),
	datab => \mchn|bnk|regfor:3:reg|data_out\(15),
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Ra_data[15]~39_combout\);

-- Location: LCCOMB_X28_Y24_N10
\mchn|bnk|Ra_data[15]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~40_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|Ra_data[15]~39_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(15)))) # (!\mchn|bnk|Ra_data[15]~39_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(15))))) # 
-- (!\mchn|Selector2~0_combout\ & (((\mchn|bnk|Ra_data[15]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector2~0_combout\,
	datab => \mchn|bnk|regfor:7:reg|data_out\(15),
	datac => \mchn|bnk|regfor:15:reg|data_out\(15),
	datad => \mchn|bnk|Ra_data[15]~39_combout\,
	combout => \mchn|bnk|Ra_data[15]~40_combout\);

-- Location: LCCOMB_X24_Y27_N30
\mchn|bnk|Rb_data[15]~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[15]~179_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(15)))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(15),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|regb_address[1]~3_combout\,
	datad => \mchn|bnk|regfor:2:reg|data_out\(15),
	combout => \mchn|bnk|Rb_data[15]~179_combout\);

-- Location: LCCOMB_X28_Y24_N16
\mchn|bnk|Rb_data[15]~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[15]~180_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[15]~179_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(15))) # (!\mchn|bnk|Rb_data[15]~179_combout\ & ((\mchn|bnk|regfor:1:reg|data_out\(15)))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[15]~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|bnk|regfor:3:reg|data_out\(15),
	datac => \mchn|bnk|Rb_data[15]~179_combout\,
	datad => \mchn|bnk|regfor:1:reg|data_out\(15),
	combout => \mchn|bnk|Rb_data[15]~180_combout\);

-- Location: LCCOMB_X27_Y28_N6
\mchn|mxdata|S_out[9]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[9]~51_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[9]~118_combout\ $ (\mchn|bnk|Mux22~20_combout\ $ (\mchn|ALU|inter_carry[9]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[9]~118_combout\,
	datab => \mchn|bnk|Mux22~20_combout\,
	datac => \mchn|estado.add~regout\,
	datad => \mchn|ALU|inter_carry[9]~8_combout\,
	combout => \mchn|mxdata|S_out[9]~51_combout\);

-- Location: LCCOMB_X16_Y25_N8
\displayromaddress|BBCD|Box08|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux4~2_combout\ = (\mchn|pc|out_cont\(6) & (!\mchn|pc|out_cont\(4) & ((\mchn|pc|out_cont\(5)) # (!\mchn|pc|out_cont\(3))))) # (!\mchn|pc|out_cont\(6) & (\mchn|pc|out_cont\(4) & ((\mchn|pc|out_cont\(3)) # 
-- (!\mchn|pc|out_cont\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(5),
	datab => \mchn|pc|out_cont\(6),
	datac => \mchn|pc|out_cont\(3),
	datad => \mchn|pc|out_cont\(4),
	combout => \displayromaddress|BBCD|Box08|Mux4~2_combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Key3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Key3,
	combout => \Key3~combout\);

-- Location: LCCOMB_X29_Y25_N24
\mchn|bnk|regfor:11:reg|data_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:11:reg|data_out[3]~feeder_combout\ = \mchn|mxdata|S_out[3]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[3]~30_combout\,
	combout => \mchn|bnk|regfor:11:reg|data_out[3]~feeder_combout\);

-- Location: LCCOMB_X29_Y25_N30
\mchn|bnk|regfor:15:reg|data_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:15:reg|data_out[5]~feeder_combout\ = \mchn|mxdata|S_out[5]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[5]~32_combout\,
	combout => \mchn|bnk|regfor:15:reg|data_out[5]~feeder_combout\);

-- Location: LCCOMB_X29_Y24_N8
\mchn|bnk|regfor:3:reg|data_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:3:reg|data_out[6]~feeder_combout\ = \mchn|mxdata|S_out[6]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[6]~33_combout\,
	combout => \mchn|bnk|regfor:3:reg|data_out[6]~feeder_combout\);

-- Location: LCCOMB_X25_Y26_N10
\mchn|bnk|regfor:15:reg|data_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:15:reg|data_out[6]~feeder_combout\ = \mchn|mxdata|S_out[6]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[6]~33_combout\,
	combout => \mchn|bnk|regfor:15:reg|data_out[6]~feeder_combout\);

-- Location: LCCOMB_X25_Y25_N24
\mchn|bnk|regfor:10:reg|data_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:10:reg|data_out[8]~feeder_combout\ = \mchn|mxdata|S_out[8]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[8]~35_combout\,
	combout => \mchn|bnk|regfor:10:reg|data_out[8]~feeder_combout\);

-- Location: LCCOMB_X25_Y29_N26
\mchn|bnk|regfor:14:reg|data_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:14:reg|data_out[15]~feeder_combout\ = \mchn|mxdata|S_out[15]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[15]~42_combout\,
	combout => \mchn|bnk|regfor:14:reg|data_out[15]~feeder_combout\);

-- Location: LCCOMB_X29_Y30_N24
\mchn|bnk|regfor:3:reg|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:3:reg|data_out[1]~feeder_combout\ = \mchn|mxdata|S_out[1]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[1]~43_combout\,
	combout => \mchn|bnk|regfor:3:reg|data_out[1]~feeder_combout\);

-- Location: LCCOMB_X30_Y31_N22
\mchn|bnk|regfor:12:reg|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:12:reg|data_out[1]~feeder_combout\ = \mchn|mxdata|S_out[1]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[1]~43_combout\,
	combout => \mchn|bnk|regfor:12:reg|data_out[1]~feeder_combout\);

-- Location: LCCOMB_X28_Y25_N26
\mchn|bnk|regfor:13:reg|data_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:13:reg|data_out[12]~feeder_combout\ = \mchn|mxdata|S_out[12]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[12]~54_combout\,
	combout => \mchn|bnk|regfor:13:reg|data_out[12]~feeder_combout\);

-- Location: LCCOMB_X28_Y30_N12
\mchn|bnk|regfor:11:reg|data_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:11:reg|data_out[12]~feeder_combout\ = \mchn|mxdata|S_out[12]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[12]~54_combout\,
	combout => \mchn|bnk|regfor:11:reg|data_out[12]~feeder_combout\);

-- Location: LCCOMB_X23_Y27_N8
\mchn|bnk|regfor:5:reg|data_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:5:reg|data_out[13]~feeder_combout\ = \mchn|mxdata|S_out[13]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[13]~55_combout\,
	combout => \mchn|bnk|regfor:5:reg|data_out[13]~feeder_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW17~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW17,
	combout => \SW17~combout\);

-- Location: LCCOMB_X21_Y13_N2
\clk10|counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|counter~3_combout\ = (\clk10|Add0~0_combout\ & ((!\clk10|Equal0~4_combout\) # (!\clk10|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|Add0~0_combout\,
	datac => \clk10|Equal0~6_combout\,
	datad => \clk10|Equal0~4_combout\,
	combout => \clk10|counter~3_combout\);

-- Location: LCFF_X21_Y13_N3
\clk10|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(0));

-- Location: LCCOMB_X21_Y13_N14
\clk10|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~4_combout\ = (\clk10|counter\(2) & (\clk10|Add0~3\ $ (GND))) # (!\clk10|counter\(2) & (!\clk10|Add0~3\ & VCC))
-- \clk10|Add0~5\ = CARRY((\clk10|counter\(2) & !\clk10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk10|counter\(2),
	datad => VCC,
	cin => \clk10|Add0~3\,
	combout => \clk10|Add0~4_combout\,
	cout => \clk10|Add0~5\);

-- Location: LCFF_X21_Y13_N15
\clk10|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(2));

-- Location: LCCOMB_X21_Y13_N18
\clk10|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~8_combout\ = (\clk10|counter\(4) & (\clk10|Add0~7\ $ (GND))) # (!\clk10|counter\(4) & (!\clk10|Add0~7\ & VCC))
-- \clk10|Add0~9\ = CARRY((\clk10|counter\(4) & !\clk10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk10|counter\(4),
	datad => VCC,
	cin => \clk10|Add0~7\,
	combout => \clk10|Add0~8_combout\,
	cout => \clk10|Add0~9\);

-- Location: LCCOMB_X21_Y13_N4
\clk10|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|counter~0_combout\ = (\clk10|Add0~8_combout\ & ((!\clk10|Equal0~4_combout\) # (!\clk10|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk10|Add0~8_combout\,
	datac => \clk10|Equal0~6_combout\,
	datad => \clk10|Equal0~4_combout\,
	combout => \clk10|counter~0_combout\);

-- Location: LCFF_X21_Y13_N5
\clk10|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(4));

-- Location: LCCOMB_X21_Y13_N22
\clk10|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~12_combout\ = (\clk10|counter\(6) & (\clk10|Add0~11\ $ (GND))) # (!\clk10|counter\(6) & (!\clk10|Add0~11\ & VCC))
-- \clk10|Add0~13\ = CARRY((\clk10|counter\(6) & !\clk10|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk10|counter\(6),
	datad => VCC,
	cin => \clk10|Add0~11\,
	combout => \clk10|Add0~12_combout\,
	cout => \clk10|Add0~13\);

-- Location: LCCOMB_X21_Y13_N0
\clk10|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|counter~2_combout\ = (\clk10|Add0~12_combout\ & ((!\clk10|Equal0~4_combout\) # (!\clk10|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk10|Add0~12_combout\,
	datac => \clk10|Equal0~6_combout\,
	datad => \clk10|Equal0~4_combout\,
	combout => \clk10|counter~2_combout\);

-- Location: LCFF_X21_Y13_N1
\clk10|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(6));

-- Location: LCCOMB_X21_Y13_N24
\clk10|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~14_combout\ = (\clk10|counter\(7) & (!\clk10|Add0~13\)) # (!\clk10|counter\(7) & ((\clk10|Add0~13\) # (GND)))
-- \clk10|Add0~15\ = CARRY((!\clk10|Add0~13\) # (!\clk10|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(7),
	datad => VCC,
	cin => \clk10|Add0~13\,
	combout => \clk10|Add0~14_combout\,
	cout => \clk10|Add0~15\);

-- Location: LCCOMB_X21_Y13_N26
\clk10|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~16_combout\ = (\clk10|counter\(8) & (\clk10|Add0~15\ $ (GND))) # (!\clk10|counter\(8) & (!\clk10|Add0~15\ & VCC))
-- \clk10|Add0~17\ = CARRY((\clk10|counter\(8) & !\clk10|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk10|counter\(8),
	datad => VCC,
	cin => \clk10|Add0~15\,
	combout => \clk10|Add0~16_combout\,
	cout => \clk10|Add0~17\);

-- Location: LCCOMB_X21_Y13_N8
\clk10|counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|counter~4_combout\ = (\clk10|Add0~16_combout\ & ((!\clk10|Equal0~4_combout\) # (!\clk10|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk10|Add0~16_combout\,
	datac => \clk10|Equal0~6_combout\,
	datad => \clk10|Equal0~4_combout\,
	combout => \clk10|counter~4_combout\);

-- Location: LCFF_X21_Y13_N9
\clk10|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(8));

-- Location: LCCOMB_X21_Y13_N28
\clk10|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~18_combout\ = (\clk10|counter\(9) & (!\clk10|Add0~17\)) # (!\clk10|counter\(9) & ((\clk10|Add0~17\) # (GND)))
-- \clk10|Add0~19\ = CARRY((!\clk10|Add0~17\) # (!\clk10|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk10|counter\(9),
	datad => VCC,
	cin => \clk10|Add0~17\,
	combout => \clk10|Add0~18_combout\,
	cout => \clk10|Add0~19\);

-- Location: LCFF_X21_Y13_N29
\clk10|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(9));

-- Location: LCCOMB_X21_Y13_N30
\clk10|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~20_combout\ = (\clk10|counter\(10) & (\clk10|Add0~19\ $ (GND))) # (!\clk10|counter\(10) & (!\clk10|Add0~19\ & VCC))
-- \clk10|Add0~21\ = CARRY((\clk10|counter\(10) & !\clk10|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk10|counter\(10),
	datad => VCC,
	cin => \clk10|Add0~19\,
	combout => \clk10|Add0~20_combout\,
	cout => \clk10|Add0~21\);

-- Location: LCFF_X21_Y13_N31
\clk10|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(10));

-- Location: LCCOMB_X21_Y12_N0
\clk10|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~22_combout\ = (\clk10|counter\(11) & (!\clk10|Add0~21\)) # (!\clk10|counter\(11) & ((\clk10|Add0~21\) # (GND)))
-- \clk10|Add0~23\ = CARRY((!\clk10|Add0~21\) # (!\clk10|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk10|counter\(11),
	datad => VCC,
	cin => \clk10|Add0~21\,
	combout => \clk10|Add0~22_combout\,
	cout => \clk10|Add0~23\);

-- Location: LCCOMB_X21_Y12_N22
\clk10|counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|counter~5_combout\ = (\clk10|Add0~22_combout\ & ((!\clk10|Equal0~6_combout\) # (!\clk10|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk10|Equal0~4_combout\,
	datac => \clk10|Equal0~6_combout\,
	datad => \clk10|Add0~22_combout\,
	combout => \clk10|counter~5_combout\);

-- Location: LCFF_X21_Y12_N23
\clk10|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(11));

-- Location: LCCOMB_X21_Y12_N2
\clk10|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~24_combout\ = (\clk10|counter\(12) & (\clk10|Add0~23\ $ (GND))) # (!\clk10|counter\(12) & (!\clk10|Add0~23\ & VCC))
-- \clk10|Add0~25\ = CARRY((\clk10|counter\(12) & !\clk10|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(12),
	datad => VCC,
	cin => \clk10|Add0~23\,
	combout => \clk10|Add0~24_combout\,
	cout => \clk10|Add0~25\);

-- Location: LCCOMB_X21_Y12_N4
\clk10|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~26_combout\ = (\clk10|counter\(13) & (!\clk10|Add0~25\)) # (!\clk10|counter\(13) & ((\clk10|Add0~25\) # (GND)))
-- \clk10|Add0~27\ = CARRY((!\clk10|Add0~25\) # (!\clk10|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk10|counter\(13),
	datad => VCC,
	cin => \clk10|Add0~25\,
	combout => \clk10|Add0~26_combout\,
	cout => \clk10|Add0~27\);

-- Location: LCFF_X21_Y12_N5
\clk10|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(13));

-- Location: LCCOMB_X21_Y12_N6
\clk10|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~28_combout\ = (\clk10|counter\(14) & (\clk10|Add0~27\ $ (GND))) # (!\clk10|counter\(14) & (!\clk10|Add0~27\ & VCC))
-- \clk10|Add0~29\ = CARRY((\clk10|counter\(14) & !\clk10|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(14),
	datad => VCC,
	cin => \clk10|Add0~27\,
	combout => \clk10|Add0~28_combout\,
	cout => \clk10|Add0~29\);

-- Location: LCCOMB_X21_Y12_N8
\clk10|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~30_combout\ = (\clk10|counter\(15) & (!\clk10|Add0~29\)) # (!\clk10|counter\(15) & ((\clk10|Add0~29\) # (GND)))
-- \clk10|Add0~31\ = CARRY((!\clk10|Add0~29\) # (!\clk10|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk10|counter\(15),
	datad => VCC,
	cin => \clk10|Add0~29\,
	combout => \clk10|Add0~30_combout\,
	cout => \clk10|Add0~31\);

-- Location: LCCOMB_X21_Y12_N10
\clk10|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~32_combout\ = (\clk10|counter\(16) & (\clk10|Add0~31\ $ (GND))) # (!\clk10|counter\(16) & (!\clk10|Add0~31\ & VCC))
-- \clk10|Add0~33\ = CARRY((\clk10|counter\(16) & !\clk10|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(16),
	datad => VCC,
	cin => \clk10|Add0~31\,
	combout => \clk10|Add0~32_combout\,
	cout => \clk10|Add0~33\);

-- Location: LCCOMB_X21_Y12_N14
\clk10|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~36_combout\ = (\clk10|counter\(18) & (\clk10|Add0~35\ $ (GND))) # (!\clk10|counter\(18) & (!\clk10|Add0~35\ & VCC))
-- \clk10|Add0~37\ = CARRY((\clk10|counter\(18) & !\clk10|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk10|counter\(18),
	datad => VCC,
	cin => \clk10|Add0~35\,
	combout => \clk10|Add0~36_combout\,
	cout => \clk10|Add0~37\);

-- Location: LCCOMB_X21_Y12_N28
\clk10|counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|counter~8_combout\ = (\clk10|Add0~36_combout\ & ((!\clk10|Equal0~4_combout\) # (!\clk10|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk10|Equal0~6_combout\,
	datac => \clk10|Add0~36_combout\,
	datad => \clk10|Equal0~4_combout\,
	combout => \clk10|counter~8_combout\);

-- Location: LCFF_X21_Y12_N29
\clk10|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(18));

-- Location: LCCOMB_X21_Y12_N16
\clk10|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~38_combout\ = (\clk10|counter\(19) & (!\clk10|Add0~37\)) # (!\clk10|counter\(19) & ((\clk10|Add0~37\) # (GND)))
-- \clk10|Add0~39\ = CARRY((!\clk10|Add0~37\) # (!\clk10|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(19),
	datad => VCC,
	cin => \clk10|Add0~37\,
	combout => \clk10|Add0~38_combout\,
	cout => \clk10|Add0~39\);

-- Location: LCCOMB_X21_Y12_N18
\clk10|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~40_combout\ = (\clk10|counter\(20) & (\clk10|Add0~39\ $ (GND))) # (!\clk10|counter\(20) & (!\clk10|Add0~39\ & VCC))
-- \clk10|Add0~41\ = CARRY((\clk10|counter\(20) & !\clk10|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk10|counter\(20),
	datad => VCC,
	cin => \clk10|Add0~39\,
	combout => \clk10|Add0~40_combout\,
	cout => \clk10|Add0~41\);

-- Location: LCCOMB_X21_Y12_N30
\clk10|counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|counter~9_combout\ = (\clk10|Add0~40_combout\ & ((!\clk10|Equal0~6_combout\) # (!\clk10|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk10|Equal0~4_combout\,
	datac => \clk10|Equal0~6_combout\,
	datad => \clk10|Add0~40_combout\,
	combout => \clk10|counter~9_combout\);

-- Location: LCFF_X21_Y12_N31
\clk10|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(20));

-- Location: LCCOMB_X21_Y12_N20
\clk10|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Add0~42_combout\ = \clk10|Add0~41\ $ (\clk10|counter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk10|counter\(21),
	cin => \clk10|Add0~41\,
	combout => \clk10|Add0~42_combout\);

-- Location: LCFF_X21_Y12_N21
\clk10|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(21));

-- Location: LCFF_X21_Y12_N17
\clk10|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(19));

-- Location: LCFF_X21_Y12_N11
\clk10|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(16));

-- Location: LCCOMB_X22_Y12_N18
\clk10|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Equal0~5_combout\ = (!\clk10|counter\(17) & (!\clk10|counter\(19) & (\clk10|counter\(18) & !\clk10|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(17),
	datab => \clk10|counter\(19),
	datac => \clk10|counter\(18),
	datad => \clk10|counter\(16),
	combout => \clk10|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y12_N0
\clk10|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Equal0~6_combout\ = (\clk10|counter\(20) & (!\clk10|counter\(21) & \clk10|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(20),
	datac => \clk10|counter\(21),
	datad => \clk10|Equal0~5_combout\,
	combout => \clk10|Equal0~6_combout\);

-- Location: LCCOMB_X21_Y12_N26
\clk10|counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|counter~7_combout\ = (\clk10|Add0~30_combout\ & ((!\clk10|Equal0~4_combout\) # (!\clk10|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk10|Equal0~6_combout\,
	datac => \clk10|Add0~30_combout\,
	datad => \clk10|Equal0~4_combout\,
	combout => \clk10|counter~7_combout\);

-- Location: LCFF_X21_Y12_N27
\clk10|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(15));

-- Location: LCFF_X21_Y12_N7
\clk10|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(14));

-- Location: LCCOMB_X21_Y12_N24
\clk10|counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|counter~6_combout\ = (\clk10|Add0~24_combout\ & ((!\clk10|Equal0~6_combout\) # (!\clk10|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk10|Equal0~4_combout\,
	datac => \clk10|Equal0~6_combout\,
	datad => \clk10|Add0~24_combout\,
	combout => \clk10|counter~6_combout\);

-- Location: LCFF_X21_Y12_N25
\clk10|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(12));

-- Location: LCCOMB_X22_Y12_N8
\clk10|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Equal0~3_combout\ = (!\clk10|counter\(13) & (\clk10|counter\(15) & (!\clk10|counter\(14) & \clk10|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(13),
	datab => \clk10|counter\(15),
	datac => \clk10|counter\(14),
	datad => \clk10|counter\(12),
	combout => \clk10|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y12_N16
\clk10|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Equal0~2_combout\ = (!\clk10|counter\(9) & (\clk10|counter\(11) & (!\clk10|counter\(10) & \clk10|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(9),
	datab => \clk10|counter\(11),
	datac => \clk10|counter\(10),
	datad => \clk10|counter\(8),
	combout => \clk10|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y13_N6
\clk10|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|counter~1_combout\ = (\clk10|Add0~10_combout\ & ((!\clk10|Equal0~4_combout\) # (!\clk10|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|Add0~10_combout\,
	datac => \clk10|Equal0~6_combout\,
	datad => \clk10|Equal0~4_combout\,
	combout => \clk10|counter~1_combout\);

-- Location: LCFF_X21_Y13_N7
\clk10|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(5));

-- Location: LCFF_X21_Y13_N25
\clk10|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk10|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|counter\(7));

-- Location: LCCOMB_X22_Y13_N26
\clk10|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Equal0~1_combout\ = (!\clk10|counter\(0) & (\clk10|counter\(5) & (\clk10|counter\(6) & !\clk10|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|counter\(0),
	datab => \clk10|counter\(5),
	datac => \clk10|counter\(6),
	datad => \clk10|counter\(7),
	combout => \clk10|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y12_N22
\clk10|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|Equal0~4_combout\ = (\clk10|Equal0~0_combout\ & (\clk10|Equal0~3_combout\ & (\clk10|Equal0~2_combout\ & \clk10|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk10|Equal0~0_combout\,
	datab => \clk10|Equal0~3_combout\,
	datac => \clk10|Equal0~2_combout\,
	datad => \clk10|Equal0~1_combout\,
	combout => \clk10|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y12_N12
\clk10|clock_signal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk10|clock_signal~0_combout\ = \clk10|clock_signal~regout\ $ (((\clk10|Equal0~4_combout\ & \clk10|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk10|Equal0~4_combout\,
	datac => \clk10|clock_signal~regout\,
	datad => \clk10|Equal0~6_combout\,
	combout => \clk10|clock_signal~0_combout\);

-- Location: LCFF_X22_Y12_N13
\clk10|clock_signal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~combout\,
	datain => \clk10|clock_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk10|clock_signal~regout\);

-- Location: LCCOMB_X22_Y12_N10
clk_to_machine : cycloneii_lcell_comb
-- Equation(s):
-- \clk_to_machine~combout\ = LCELL((!\SW17~combout\ & \clk10|clock_signal~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~combout\,
	datad => \clk10|clock_signal~regout\,
	combout => \clk_to_machine~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_27M~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_27M,
	combout => \clk_27M~combout\);

-- Location: CLKCTRL_G11
\clk_27M~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_27M~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_27M~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y3_N8
\clk50|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~28_combout\ = (\clk50|counter\(14) & (\clk50|Add0~27\ $ (GND))) # (!\clk50|counter\(14) & (!\clk50|Add0~27\ & VCC))
-- \clk50|Add0~29\ = CARRY((\clk50|counter\(14) & !\clk50|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk50|counter\(14),
	datad => VCC,
	cin => \clk50|Add0~27\,
	combout => \clk50|Add0~28_combout\,
	cout => \clk50|Add0~29\);

-- Location: LCCOMB_X35_Y3_N14
\clk50|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~34_combout\ = (\clk50|counter\(17) & (!\clk50|Add0~33\)) # (!\clk50|counter\(17) & ((\clk50|Add0~33\) # (GND)))
-- \clk50|Add0~35\ = CARRY((!\clk50|Add0~33\) # (!\clk50|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk50|counter\(17),
	datad => VCC,
	cin => \clk50|Add0~33\,
	combout => \clk50|Add0~34_combout\,
	cout => \clk50|Add0~35\);

-- Location: LCFF_X35_Y3_N15
\clk50|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(17));

-- Location: LCCOMB_X35_Y3_N16
\clk50|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~36_combout\ = (\clk50|counter\(18) & (\clk50|Add0~35\ $ (GND))) # (!\clk50|counter\(18) & (!\clk50|Add0~35\ & VCC))
-- \clk50|Add0~37\ = CARRY((\clk50|counter\(18) & !\clk50|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk50|counter\(18),
	datad => VCC,
	cin => \clk50|Add0~35\,
	combout => \clk50|Add0~36_combout\,
	cout => \clk50|Add0~37\);

-- Location: LCCOMB_X35_Y3_N28
\clk50|counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|counter~0_combout\ = (\clk50|Add0~36_combout\ & ((!\clk50|Equal0~5_combout\) # (!\clk50|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk50|Equal0~0_combout\,
	datac => \clk50|Add0~36_combout\,
	datad => \clk50|Equal0~5_combout\,
	combout => \clk50|counter~0_combout\);

-- Location: LCFF_X35_Y3_N29
\clk50|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(18));

-- Location: LCCOMB_X35_Y3_N18
\clk50|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~38_combout\ = \clk50|Add0~37\ $ (\clk50|counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk50|counter\(19),
	cin => \clk50|Add0~37\,
	combout => \clk50|Add0~38_combout\);

-- Location: LCFF_X35_Y3_N19
\clk50|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(19));

-- Location: LCCOMB_X35_Y3_N30
\clk50|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Equal0~0_combout\ = (!\clk50|counter\(16) & (!\clk50|counter\(19) & (!\clk50|counter\(17) & \clk50|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(16),
	datab => \clk50|counter\(19),
	datac => \clk50|counter\(17),
	datad => \clk50|counter\(18),
	combout => \clk50|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y4_N0
\clk50|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|counter~1_combout\ = (\clk50|Add0~0_combout\ & ((!\clk50|Equal0~5_combout\) # (!\clk50|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|Add0~0_combout\,
	datac => \clk50|Equal0~0_combout\,
	datad => \clk50|Equal0~5_combout\,
	combout => \clk50|counter~1_combout\);

-- Location: LCFF_X35_Y4_N1
\clk50|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(0));

-- Location: LCCOMB_X35_Y4_N14
\clk50|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~2_combout\ = (\clk50|counter\(1) & (!\clk50|Add0~1\)) # (!\clk50|counter\(1) & ((\clk50|Add0~1\) # (GND)))
-- \clk50|Add0~3\ = CARRY((!\clk50|Add0~1\) # (!\clk50|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk50|counter\(1),
	datad => VCC,
	cin => \clk50|Add0~1\,
	combout => \clk50|Add0~2_combout\,
	cout => \clk50|Add0~3\);

-- Location: LCFF_X35_Y4_N15
\clk50|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(1));

-- Location: LCCOMB_X35_Y4_N18
\clk50|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~6_combout\ = (\clk50|counter\(3) & (!\clk50|Add0~5\)) # (!\clk50|counter\(3) & ((\clk50|Add0~5\) # (GND)))
-- \clk50|Add0~7\ = CARRY((!\clk50|Add0~5\) # (!\clk50|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk50|counter\(3),
	datad => VCC,
	cin => \clk50|Add0~5\,
	combout => \clk50|Add0~6_combout\,
	cout => \clk50|Add0~7\);

-- Location: LCFF_X35_Y4_N19
\clk50|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(3));

-- Location: LCCOMB_X35_Y4_N20
\clk50|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~8_combout\ = (\clk50|counter\(4) & (\clk50|Add0~7\ $ (GND))) # (!\clk50|counter\(4) & (!\clk50|Add0~7\ & VCC))
-- \clk50|Add0~9\ = CARRY((\clk50|counter\(4) & !\clk50|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk50|counter\(4),
	datad => VCC,
	cin => \clk50|Add0~7\,
	combout => \clk50|Add0~8_combout\,
	cout => \clk50|Add0~9\);

-- Location: LCCOMB_X35_Y4_N8
\clk50|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|counter~2_combout\ = (\clk50|Add0~8_combout\ & ((!\clk50|Equal0~5_combout\) # (!\clk50|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk50|Equal0~0_combout\,
	datac => \clk50|Add0~8_combout\,
	datad => \clk50|Equal0~5_combout\,
	combout => \clk50|counter~2_combout\);

-- Location: LCFF_X35_Y4_N9
\clk50|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(4));

-- Location: LCCOMB_X35_Y4_N22
\clk50|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~10_combout\ = (\clk50|counter\(5) & (!\clk50|Add0~9\)) # (!\clk50|counter\(5) & ((\clk50|Add0~9\) # (GND)))
-- \clk50|Add0~11\ = CARRY((!\clk50|Add0~9\) # (!\clk50|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk50|counter\(5),
	datad => VCC,
	cin => \clk50|Add0~9\,
	combout => \clk50|Add0~10_combout\,
	cout => \clk50|Add0~11\);

-- Location: LCCOMB_X35_Y4_N2
\clk50|counter~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|counter~3_combout\ = (\clk50|Add0~10_combout\ & ((!\clk50|Equal0~5_combout\) # (!\clk50|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk50|Add0~10_combout\,
	datac => \clk50|Equal0~0_combout\,
	datad => \clk50|Equal0~5_combout\,
	combout => \clk50|counter~3_combout\);

-- Location: LCFF_X35_Y4_N3
\clk50|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(5));

-- Location: LCCOMB_X35_Y4_N26
\clk50|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~14_combout\ = (\clk50|counter\(7) & (!\clk50|Add0~13\)) # (!\clk50|counter\(7) & ((\clk50|Add0~13\) # (GND)))
-- \clk50|Add0~15\ = CARRY((!\clk50|Add0~13\) # (!\clk50|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk50|counter\(7),
	datad => VCC,
	cin => \clk50|Add0~13\,
	combout => \clk50|Add0~14_combout\,
	cout => \clk50|Add0~15\);

-- Location: LCCOMB_X35_Y4_N4
\clk50|counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|counter~4_combout\ = (\clk50|Add0~14_combout\ & ((!\clk50|Equal0~5_combout\) # (!\clk50|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk50|Add0~14_combout\,
	datac => \clk50|Equal0~0_combout\,
	datad => \clk50|Equal0~5_combout\,
	combout => \clk50|counter~4_combout\);

-- Location: LCFF_X35_Y4_N5
\clk50|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(7));

-- Location: LCCOMB_X35_Y4_N28
\clk50|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~16_combout\ = (\clk50|counter\(8) & (\clk50|Add0~15\ $ (GND))) # (!\clk50|counter\(8) & (!\clk50|Add0~15\ & VCC))
-- \clk50|Add0~17\ = CARRY((\clk50|counter\(8) & !\clk50|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk50|counter\(8),
	datad => VCC,
	cin => \clk50|Add0~15\,
	combout => \clk50|Add0~16_combout\,
	cout => \clk50|Add0~17\);

-- Location: LCFF_X35_Y4_N29
\clk50|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(8));

-- Location: LCCOMB_X35_Y4_N30
\clk50|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~18_combout\ = (\clk50|counter\(9) & (!\clk50|Add0~17\)) # (!\clk50|counter\(9) & ((\clk50|Add0~17\) # (GND)))
-- \clk50|Add0~19\ = CARRY((!\clk50|Add0~17\) # (!\clk50|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(9),
	datad => VCC,
	cin => \clk50|Add0~17\,
	combout => \clk50|Add0~18_combout\,
	cout => \clk50|Add0~19\);

-- Location: LCCOMB_X35_Y3_N0
\clk50|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~20_combout\ = (\clk50|counter\(10) & (\clk50|Add0~19\ $ (GND))) # (!\clk50|counter\(10) & (!\clk50|Add0~19\ & VCC))
-- \clk50|Add0~21\ = CARRY((\clk50|counter\(10) & !\clk50|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(10),
	datad => VCC,
	cin => \clk50|Add0~19\,
	combout => \clk50|Add0~20_combout\,
	cout => \clk50|Add0~21\);

-- Location: LCCOMB_X35_Y3_N2
\clk50|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~22_combout\ = (\clk50|counter\(11) & (!\clk50|Add0~21\)) # (!\clk50|counter\(11) & ((\clk50|Add0~21\) # (GND)))
-- \clk50|Add0~23\ = CARRY((!\clk50|Add0~21\) # (!\clk50|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk50|counter\(11),
	datad => VCC,
	cin => \clk50|Add0~21\,
	combout => \clk50|Add0~22_combout\,
	cout => \clk50|Add0~23\);

-- Location: LCCOMB_X35_Y3_N26
\clk50|counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|counter~7_combout\ = (\clk50|Add0~22_combout\ & ((!\clk50|Equal0~0_combout\) # (!\clk50|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|Equal0~5_combout\,
	datab => \clk50|Equal0~0_combout\,
	datad => \clk50|Add0~22_combout\,
	combout => \clk50|counter~7_combout\);

-- Location: LCFF_X35_Y3_N27
\clk50|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(11));

-- Location: LCCOMB_X35_Y3_N4
\clk50|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~24_combout\ = (\clk50|counter\(12) & (\clk50|Add0~23\ $ (GND))) # (!\clk50|counter\(12) & (!\clk50|Add0~23\ & VCC))
-- \clk50|Add0~25\ = CARRY((\clk50|counter\(12) & !\clk50|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(12),
	datad => VCC,
	cin => \clk50|Add0~23\,
	combout => \clk50|Add0~24_combout\,
	cout => \clk50|Add0~25\);

-- Location: LCCOMB_X35_Y3_N6
\clk50|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Add0~26_combout\ = (\clk50|counter\(13) & (!\clk50|Add0~25\)) # (!\clk50|counter\(13) & ((\clk50|Add0~25\) # (GND)))
-- \clk50|Add0~27\ = CARRY((!\clk50|Add0~25\) # (!\clk50|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(13),
	datad => VCC,
	cin => \clk50|Add0~25\,
	combout => \clk50|Add0~26_combout\,
	cout => \clk50|Add0~27\);

-- Location: LCFF_X35_Y3_N9
\clk50|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(14));

-- Location: LCCOMB_X35_Y3_N20
\clk50|counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|counter~8_combout\ = (\clk50|Add0~24_combout\ & ((!\clk50|Equal0~5_combout\) # (!\clk50|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk50|Equal0~0_combout\,
	datac => \clk50|Add0~24_combout\,
	datad => \clk50|Equal0~5_combout\,
	combout => \clk50|counter~8_combout\);

-- Location: LCFF_X35_Y3_N21
\clk50|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(12));

-- Location: LCFF_X35_Y3_N7
\clk50|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(13));

-- Location: LCCOMB_X35_Y3_N22
\clk50|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Equal0~4_combout\ = (!\clk50|counter\(15) & (!\clk50|counter\(14) & (\clk50|counter\(12) & !\clk50|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(15),
	datab => \clk50|counter\(14),
	datac => \clk50|counter\(12),
	datad => \clk50|counter\(13),
	combout => \clk50|Equal0~4_combout\);

-- Location: LCCOMB_X35_Y3_N24
\clk50|counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|counter~6_combout\ = (\clk50|Add0~20_combout\ & ((!\clk50|Equal0~0_combout\) # (!\clk50|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|Equal0~5_combout\,
	datab => \clk50|Equal0~0_combout\,
	datad => \clk50|Add0~20_combout\,
	combout => \clk50|counter~6_combout\);

-- Location: LCFF_X35_Y3_N25
\clk50|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(10));

-- Location: LCCOMB_X35_Y4_N6
\clk50|counter~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|counter~5_combout\ = (\clk50|Add0~18_combout\ & ((!\clk50|Equal0~5_combout\) # (!\clk50|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk50|Add0~18_combout\,
	datac => \clk50|Equal0~0_combout\,
	datad => \clk50|Equal0~5_combout\,
	combout => \clk50|counter~5_combout\);

-- Location: LCFF_X35_Y4_N7
\clk50|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|counter\(9));

-- Location: LCCOMB_X34_Y3_N8
\clk50|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Equal0~3_combout\ = (\clk50|counter\(11) & (\clk50|counter\(10) & (!\clk50|counter\(8) & \clk50|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(11),
	datab => \clk50|counter\(10),
	datac => \clk50|counter\(8),
	datad => \clk50|counter\(9),
	combout => \clk50|Equal0~3_combout\);

-- Location: LCCOMB_X35_Y4_N10
\clk50|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Equal0~1_combout\ = (!\clk50|counter\(2) & (!\clk50|counter\(0) & (!\clk50|counter\(1) & !\clk50|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|counter\(2),
	datab => \clk50|counter\(0),
	datac => \clk50|counter\(1),
	datad => \clk50|counter\(3),
	combout => \clk50|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y3_N14
\clk50|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|Equal0~5_combout\ = (\clk50|Equal0~2_combout\ & (\clk50|Equal0~4_combout\ & (\clk50|Equal0~3_combout\ & \clk50|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk50|Equal0~2_combout\,
	datab => \clk50|Equal0~4_combout\,
	datac => \clk50|Equal0~3_combout\,
	datad => \clk50|Equal0~1_combout\,
	combout => \clk50|Equal0~5_combout\);

-- Location: LCCOMB_X34_Y3_N24
\clk50|clock_signal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clk50|clock_signal~0_combout\ = \clk50|clock_signal~regout\ $ (((\clk50|Equal0~5_combout\ & \clk50|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk50|Equal0~5_combout\,
	datac => \clk50|clock_signal~regout\,
	datad => \clk50|Equal0~0_combout\,
	combout => \clk50|clock_signal~0_combout\);

-- Location: LCFF_X34_Y3_N25
\clk50|clock_signal\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_27M~clkctrl_outclk\,
	datain => \clk50|clock_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk50|clock_signal~regout\);

-- Location: CLKCTRL_G13
\clk50|clock_signal~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50|clock_signal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50|clock_signal~clkctrl_outclk\);

-- Location: CLKCTRL_G14
\clk_to_machine~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_to_machine~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_to_machine~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y25_N4
\mchn|pc|out_cont[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|pc|out_cont[0]~21_combout\ = !\mchn|pc|out_cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|pc|out_cont\(0),
	combout => \mchn|pc|out_cont[0]~21_combout\);

-- Location: LCCOMB_X30_Y35_N0
\mchn|estado.zero~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|estado.zero~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mchn|estado.zero~feeder_combout\);

-- Location: CLKDELAYCTRL_G7
\Key3~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \Key3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \Key3~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
\Key3~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Key3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Key3~clkctrl_outclk\);

-- Location: LCFF_X30_Y35_N1
\mchn|estado.zero\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|estado.zero~feeder_combout\,
	aclr => \ALT_INV_Key3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|estado.zero~regout\);

-- Location: CLKCTRL_G10
\mchn|estado.zero~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mchn|estado.zero~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mchn|estado.zero~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y25_N16
\mchn|pc|out_cont[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|pc|out_cont[1]~7_combout\ = (\mchn|pc|out_cont\(1) & (\mchn|pc|out_cont\(0) $ (VCC))) # (!\mchn|pc|out_cont\(1) & (\mchn|pc|out_cont\(0) & VCC))
-- \mchn|pc|out_cont[1]~8\ = CARRY((\mchn|pc|out_cont\(1) & \mchn|pc|out_cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(1),
	datab => \mchn|pc|out_cont\(0),
	datad => VCC,
	combout => \mchn|pc|out_cont[1]~7_combout\,
	cout => \mchn|pc|out_cont[1]~8\);

-- Location: LCFF_X16_Y25_N17
\mchn|pc|out_cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|pc|out_cont[1]~7_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|pc|out_cont\(1));

-- Location: LCCOMB_X16_Y25_N18
\mchn|pc|out_cont[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|pc|out_cont[2]~9_combout\ = (\mchn|pc|out_cont\(2) & (!\mchn|pc|out_cont[1]~8\)) # (!\mchn|pc|out_cont\(2) & ((\mchn|pc|out_cont[1]~8\) # (GND)))
-- \mchn|pc|out_cont[2]~10\ = CARRY((!\mchn|pc|out_cont[1]~8\) # (!\mchn|pc|out_cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mchn|pc|out_cont\(2),
	datad => VCC,
	cin => \mchn|pc|out_cont[1]~8\,
	combout => \mchn|pc|out_cont[2]~9_combout\,
	cout => \mchn|pc|out_cont[2]~10\);

-- Location: LCFF_X16_Y25_N19
\mchn|pc|out_cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|pc|out_cont[2]~9_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|pc|out_cont\(2));

-- Location: LCCOMB_X16_Y25_N20
\mchn|pc|out_cont[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|pc|out_cont[3]~11_combout\ = (\mchn|pc|out_cont\(3) & (\mchn|pc|out_cont[2]~10\ $ (GND))) # (!\mchn|pc|out_cont\(3) & (!\mchn|pc|out_cont[2]~10\ & VCC))
-- \mchn|pc|out_cont[3]~12\ = CARRY((\mchn|pc|out_cont\(3) & !\mchn|pc|out_cont[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(3),
	datad => VCC,
	cin => \mchn|pc|out_cont[2]~10\,
	combout => \mchn|pc|out_cont[3]~11_combout\,
	cout => \mchn|pc|out_cont[3]~12\);

-- Location: LCFF_X16_Y25_N21
\mchn|pc|out_cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|pc|out_cont[3]~11_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|pc|out_cont\(3));

-- Location: LCCOMB_X16_Y25_N22
\mchn|pc|out_cont[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|pc|out_cont[4]~13_combout\ = (\mchn|pc|out_cont\(4) & (!\mchn|pc|out_cont[3]~12\)) # (!\mchn|pc|out_cont\(4) & ((\mchn|pc|out_cont[3]~12\) # (GND)))
-- \mchn|pc|out_cont[4]~14\ = CARRY((!\mchn|pc|out_cont[3]~12\) # (!\mchn|pc|out_cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mchn|pc|out_cont\(4),
	datad => VCC,
	cin => \mchn|pc|out_cont[3]~12\,
	combout => \mchn|pc|out_cont[4]~13_combout\,
	cout => \mchn|pc|out_cont[4]~14\);

-- Location: LCFF_X16_Y25_N23
\mchn|pc|out_cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|pc|out_cont[4]~13_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|pc|out_cont\(4));

-- Location: LCCOMB_X16_Y25_N24
\mchn|pc|out_cont[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|pc|out_cont[5]~15_combout\ = (\mchn|pc|out_cont\(5) & (\mchn|pc|out_cont[4]~14\ $ (GND))) # (!\mchn|pc|out_cont\(5) & (!\mchn|pc|out_cont[4]~14\ & VCC))
-- \mchn|pc|out_cont[5]~16\ = CARRY((\mchn|pc|out_cont\(5) & !\mchn|pc|out_cont[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(5),
	datad => VCC,
	cin => \mchn|pc|out_cont[4]~14\,
	combout => \mchn|pc|out_cont[5]~15_combout\,
	cout => \mchn|pc|out_cont[5]~16\);

-- Location: LCFF_X16_Y25_N25
\mchn|pc|out_cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|pc|out_cont[5]~15_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|pc|out_cont\(5));

-- Location: LCCOMB_X16_Y25_N26
\mchn|pc|out_cont[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|pc|out_cont[6]~17_combout\ = (\mchn|pc|out_cont\(6) & (!\mchn|pc|out_cont[5]~16\)) # (!\mchn|pc|out_cont\(6) & ((\mchn|pc|out_cont[5]~16\) # (GND)))
-- \mchn|pc|out_cont[6]~18\ = CARRY((!\mchn|pc|out_cont[5]~16\) # (!\mchn|pc|out_cont\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mchn|pc|out_cont\(6),
	datad => VCC,
	cin => \mchn|pc|out_cont[5]~16\,
	combout => \mchn|pc|out_cont[6]~17_combout\,
	cout => \mchn|pc|out_cont[6]~18\);

-- Location: LCFF_X16_Y25_N27
\mchn|pc|out_cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|pc|out_cont[6]~17_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|pc|out_cont\(6));

-- Location: LCCOMB_X16_Y25_N28
\mchn|pc|out_cont[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|pc|out_cont[7]~19_combout\ = \mchn|pc|out_cont\(7) $ (!\mchn|pc|out_cont[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(7),
	cin => \mchn|pc|out_cont[6]~18\,
	combout => \mchn|pc|out_cont[7]~19_combout\);

-- Location: LCFF_X16_Y25_N29
\mchn|pc|out_cont[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|pc|out_cont[7]~19_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|pc|out_cont\(7));

-- Location: M4K_X26_Y28
\ROM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001405130424122301020301020001",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "DataROM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataROM:ROM|altsyncram:altsyncram_component|altsyncram_2v71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk_to_machine~clkctrl_outclk\,
	portaaddr => \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X29_Y31_N3
\mchn|ir|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \ROM|altsyncram_component|auto_generated|q_a\(15),
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(15));

-- Location: LCCOMB_X29_Y31_N20
\mchn|ir|data_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ir|data_out[14]~feeder_combout\ = \ROM|altsyncram_component|auto_generated|q_a\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ROM|altsyncram_component|auto_generated|q_a\(14),
	combout => \mchn|ir|data_out[14]~feeder_combout\);

-- Location: LCFF_X29_Y31_N21
\mchn|ir|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|ir|data_out[14]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(14));

-- Location: LCCOMB_X30_Y35_N2
\mchn|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|Selector0~0_combout\ = (\mchn|ir|data_out\(15)) # ((\mchn|ir|data_out\(14)) # ((\mchn|ir|data_out\(13) & \mchn|ir|data_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(13),
	datab => \mchn|ir|data_out\(12),
	datac => \mchn|ir|data_out\(15),
	datad => \mchn|ir|data_out\(14),
	combout => \mchn|Selector0~0_combout\);

-- Location: LCCOMB_X30_Y35_N24
\mchn|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|Selector0~1_combout\ = ((\mchn|estado.decode~regout\ & ((\mchn|Selector0~0_combout\))) # (!\mchn|estado.decode~regout\ & (!\mchn|estado.fetch~regout\))) # (!\mchn|estado.zero~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.decode~regout\,
	datab => \mchn|estado.zero~regout\,
	datac => \mchn|estado.fetch~regout\,
	datad => \mchn|Selector0~0_combout\,
	combout => \mchn|Selector0~1_combout\);

-- Location: LCFF_X30_Y35_N25
\mchn|estado.fetch\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|Selector0~1_combout\,
	aclr => \ALT_INV_Key3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|estado.fetch~regout\);

-- Location: LCFF_X16_Y25_N5
\mchn|pc|out_cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|pc|out_cont[0]~21_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|pc|out_cont\(0));

-- Location: LCCOMB_X29_Y31_N4
\mchn|ir|data_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ir|data_out[12]~feeder_combout\ = \ROM|altsyncram_component|auto_generated|q_a\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ROM|altsyncram_component|auto_generated|q_a\(12),
	combout => \mchn|ir|data_out[12]~feeder_combout\);

-- Location: LCFF_X29_Y31_N5
\mchn|ir|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|ir|data_out[12]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(12));

-- Location: LCFF_X29_Y31_N9
\mchn|ir|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \ROM|altsyncram_component|auto_generated|q_a\(13),
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(13));

-- Location: LCCOMB_X29_Y31_N26
\mchn|estado~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|estado~10_combout\ = (\mchn|estado.decode~regout\ & (!\mchn|ir|data_out\(14) & (!\mchn|ir|data_out\(13) & !\mchn|ir|data_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.decode~regout\,
	datab => \mchn|ir|data_out\(14),
	datac => \mchn|ir|data_out\(13),
	datad => \mchn|ir|data_out\(15),
	combout => \mchn|estado~10_combout\);

-- Location: LCCOMB_X29_Y31_N30
\mchn|estado~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|estado~12_combout\ = (\mchn|ir|data_out\(12) & \mchn|estado~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|ir|data_out\(12),
	datad => \mchn|estado~10_combout\,
	combout => \mchn|estado~12_combout\);

-- Location: LCFF_X29_Y31_N31
\mchn|estado.store\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|estado~12_combout\,
	aclr => \ALT_INV_Key3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|estado.store~regout\);

-- Location: LCCOMB_X31_Y29_N0
\mchn|bnk|regfor:10:reg|data_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:10:reg|data_out[0]~feeder_combout\ = \mchn|mxdata|S_out[0]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[0]~28_combout\,
	combout => \mchn|bnk|regfor:10:reg|data_out[0]~feeder_combout\);

-- Location: LCFF_X28_Y31_N5
\mchn|ir|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \ROM|altsyncram_component|auto_generated|q_a\(8),
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(8));

-- Location: LCFF_X30_Y35_N7
\mchn|estado.decode\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|estado.fetch~regout\,
	aclr => \ALT_INV_Key3~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|estado.decode~regout\);

-- Location: LCCOMB_X30_Y35_N28
\mchn|estado~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|estado~13_combout\ = (\mchn|ir|data_out\(13) & (!\mchn|ir|data_out\(15) & (!\mchn|ir|data_out\(14) & \mchn|estado.decode~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(13),
	datab => \mchn|ir|data_out\(15),
	datac => \mchn|ir|data_out\(14),
	datad => \mchn|estado.decode~regout\,
	combout => \mchn|estado~13_combout\);

-- Location: LCCOMB_X30_Y35_N26
\mchn|estado~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|estado~14_combout\ = (!\mchn|ir|data_out\(12) & \mchn|estado~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(12),
	datad => \mchn|estado~13_combout\,
	combout => \mchn|estado~14_combout\);

-- Location: LCCOMB_X29_Y31_N0
\mchn|estado.add~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|estado.add~feeder_combout\ = \mchn|estado~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|estado~14_combout\,
	combout => \mchn|estado.add~feeder_combout\);

-- Location: LCFF_X29_Y31_N1
\mchn|estado.add\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|estado.add~feeder_combout\,
	aclr => \ALT_INV_Key3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|estado.add~regout\);

-- Location: LCCOMB_X29_Y31_N16
\mchn|estado~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|estado~11_combout\ = (!\mchn|ir|data_out\(12) & \mchn|estado~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|ir|data_out\(12),
	datad => \mchn|estado~10_combout\,
	combout => \mchn|estado~11_combout\);

-- Location: LCFF_X29_Y31_N17
\mchn|estado.load\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|estado~11_combout\,
	aclr => \ALT_INV_Key3~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|estado.load~regout\);

-- Location: LCCOMB_X30_Y28_N0
\mchn|bnk|Mux15~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~51_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|estado.add~regout\) # (\mchn|estado.load~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|estado.add~regout\,
	datad => \mchn|estado.load~regout\,
	combout => \mchn|bnk|Mux15~51_combout\);

-- Location: LCFF_X30_Y28_N11
\mchn|ir|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \ROM|altsyncram_component|auto_generated|q_a\(11),
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(11));

-- Location: LCCOMB_X29_Y27_N28
\mchn|bnk|Mux15~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~184_combout\ = (!\mchn|ir|data_out\(10) & (!\mchn|ir|data_out\(8) & (\mchn|bnk|Mux15~51_combout\ & \mchn|ir|data_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|Mux15~51_combout\,
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux15~184_combout\);

-- Location: LCFF_X31_Y29_N1
\mchn|bnk|regfor:10:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:10:reg|data_out[0]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(0));

-- Location: LCFF_X28_Y31_N29
\mchn|ir|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \ROM|altsyncram_component|auto_generated|q_a\(2),
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(2));

-- Location: LCCOMB_X28_Y31_N28
\mchn|regb_address[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|regb_address[2]~0_combout\ = (\mchn|ir|data_out\(2) & \mchn|estado.add~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|ir|data_out\(2),
	datad => \mchn|estado.add~regout\,
	combout => \mchn|regb_address[2]~0_combout\);

-- Location: LCFF_X30_Y28_N21
\mchn|ir|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \ROM|altsyncram_component|auto_generated|q_a\(10),
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(10));

-- Location: LCCOMB_X30_Y29_N6
\mchn|bnk|Mux15~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~186_combout\ = (!\mchn|ir|data_out\(11) & (\mchn|bnk|Mux15~51_combout\ & (!\mchn|ir|data_out\(8) & !\mchn|ir|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|Mux15~51_combout\,
	datac => \mchn|ir|data_out\(8),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux15~186_combout\);

-- Location: LCFF_X31_Y30_N11
\mchn|bnk|regfor:2:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[0]~28_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(0));

-- Location: LCFF_X28_Y31_N19
\mchn|ir|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \ROM|altsyncram_component|auto_generated|q_a\(3),
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(3));

-- Location: LCCOMB_X28_Y31_N18
\mchn|regb_address[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|regb_address[3]~1_combout\ = (\mchn|estado.add~regout\ & \mchn|ir|data_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mchn|estado.add~regout\,
	datac => \mchn|ir|data_out\(3),
	combout => \mchn|regb_address[3]~1_combout\);

-- Location: LCCOMB_X31_Y30_N10
\mchn|bnk|Rb_data[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~3_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(0)) # ((\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|regfor:2:reg|data_out\(0) & 
-- !\mchn|regb_address[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(0),
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|bnk|regfor:2:reg|data_out\(0),
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[0]~3_combout\);

-- Location: LCCOMB_X29_Y26_N16
\mchn|bnk|regfor:14:reg|data_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:14:reg|data_out[0]~feeder_combout\ = \mchn|mxdata|S_out[0]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[0]~28_combout\,
	combout => \mchn|bnk|regfor:14:reg|data_out[0]~feeder_combout\);

-- Location: LCCOMB_X31_Y27_N6
\mchn|bnk|Mux15~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~187_combout\ = (\mchn|ir|data_out\(11) & (\mchn|ir|data_out\(10) & (\mchn|bnk|Mux15~51_combout\ & !\mchn|ir|data_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|Mux15~51_combout\,
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux15~187_combout\);

-- Location: LCFF_X29_Y26_N17
\mchn|bnk|regfor:14:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:14:reg|data_out[0]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(0));

-- Location: LCCOMB_X31_Y30_N0
\mchn|bnk|Rb_data[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~4_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[0]~3_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(0)))) # (!\mchn|bnk|Rb_data[0]~3_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(0))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|bnk|regfor:10:reg|data_out\(0),
	datac => \mchn|bnk|Rb_data[0]~3_combout\,
	datad => \mchn|bnk|regfor:14:reg|data_out\(0),
	combout => \mchn|bnk|Rb_data[0]~4_combout\);

-- Location: LCCOMB_X29_Y31_N12
\mchn|ir|data_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ir|data_out[0]~feeder_combout\ = \ROM|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ROM|altsyncram_component|auto_generated|q_a\(0),
	combout => \mchn|ir|data_out[0]~feeder_combout\);

-- Location: LCFF_X29_Y31_N13
\mchn|ir|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|ir|data_out[0]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(0));

-- Location: LCCOMB_X29_Y31_N2
\mchn|regb_address[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|regb_address[0]~2_combout\ = (\mchn|estado.add~regout\ & \mchn|ir|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mchn|estado.add~regout\,
	datad => \mchn|ir|data_out\(0),
	combout => \mchn|regb_address[0]~2_combout\);

-- Location: LCCOMB_X30_Y28_N18
\mchn|bnk|load_reg[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|load_reg[0]~5_combout\ = (!\mchn|ir|data_out\(9) & ((\mchn|estado.add~regout\) # (\mchn|estado.load~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|estado.add~regout\,
	datad => \mchn|estado.load~regout\,
	combout => \mchn|bnk|load_reg[0]~5_combout\);

-- Location: LCCOMB_X31_Y27_N26
\mchn|bnk|load_reg[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|load_reg[0]~14_combout\ = (!\mchn|ir|data_out\(8) & (!\mchn|ir|data_out\(10) & (\mchn|bnk|load_reg[0]~5_combout\ & !\mchn|ir|data_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|load_reg[0]~5_combout\,
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|load_reg[0]~14_combout\);

-- Location: LCFF_X31_Y31_N13
\mchn|bnk|regfor:0:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[0]~28_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(0));

-- Location: LCCOMB_X28_Y28_N24
\mchn|bnk|regfor:4:reg|data_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:4:reg|data_out[0]~feeder_combout\ = \mchn|mxdata|S_out[0]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[0]~28_combout\,
	combout => \mchn|bnk|regfor:4:reg|data_out[0]~feeder_combout\);

-- Location: LCCOMB_X31_Y26_N26
\mchn|bnk|Mux15~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~189_combout\ = (\mchn|bnk|load_reg[0]~5_combout\ & (!\mchn|ir|data_out\(11) & (!\mchn|ir|data_out\(8) & \mchn|ir|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|load_reg[0]~5_combout\,
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|ir|data_out\(8),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux15~189_combout\);

-- Location: LCFF_X28_Y28_N25
\mchn|bnk|regfor:4:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:4:reg|data_out[0]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(0));

-- Location: LCCOMB_X30_Y30_N28
\mchn|bnk|Rb_data[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~5_combout\ = (\mchn|regb_address[3]~1_combout\ & (((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & ((\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:4:reg|data_out\(0)))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|bnk|regfor:0:reg|data_out\(0),
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|bnk|regfor:4:reg|data_out\(0),
	combout => \mchn|bnk|Rb_data[0]~5_combout\);

-- Location: LCCOMB_X29_Y26_N14
\mchn|bnk|regfor:12:reg|data_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:12:reg|data_out[0]~feeder_combout\ = \mchn|mxdata|S_out[0]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[0]~28_combout\,
	combout => \mchn|bnk|regfor:12:reg|data_out[0]~feeder_combout\);

-- Location: LCCOMB_X31_Y27_N24
\mchn|bnk|Mux15~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~190_combout\ = (!\mchn|ir|data_out\(8) & (\mchn|ir|data_out\(10) & (\mchn|bnk|load_reg[0]~5_combout\ & \mchn|ir|data_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|load_reg[0]~5_combout\,
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux15~190_combout\);

-- Location: LCFF_X29_Y26_N15
\mchn|bnk|regfor:12:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:12:reg|data_out[0]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(0));

-- Location: LCCOMB_X31_Y30_N30
\mchn|bnk|Rb_data[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~6_combout\ = (\mchn|bnk|Rb_data[0]~5_combout\ & (((\mchn|bnk|regfor:12:reg|data_out\(0)) # (!\mchn|regb_address[3]~1_combout\)))) # (!\mchn|bnk|Rb_data[0]~5_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(0) & 
-- ((\mchn|regb_address[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:8:reg|data_out\(0),
	datab => \mchn|bnk|Rb_data[0]~5_combout\,
	datac => \mchn|bnk|regfor:12:reg|data_out\(0),
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[0]~6_combout\);

-- Location: LCCOMB_X30_Y30_N2
\mchn|bnk|Rb_data[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~7_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[0]~4_combout\) # ((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & (((!\mchn|regb_address[0]~2_combout\ & 
-- \mchn|bnk|Rb_data[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|Rb_data[0]~4_combout\,
	datac => \mchn|regb_address[0]~2_combout\,
	datad => \mchn|bnk|Rb_data[0]~6_combout\,
	combout => \mchn|bnk|Rb_data[0]~7_combout\);

-- Location: LCCOMB_X31_Y27_N8
\mchn|bnk|Mux15~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~182_combout\ = (\mchn|ir|data_out\(8) & (!\mchn|ir|data_out\(10) & (\mchn|bnk|load_reg[0]~5_combout\ & !\mchn|ir|data_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|load_reg[0]~5_combout\,
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux15~182_combout\);

-- Location: LCFF_X29_Y29_N9
\mchn|bnk|regfor:1:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[0]~28_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(0));

-- Location: LCCOMB_X30_Y25_N28
\mchn|bnk|Mux15~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~181_combout\ = (\mchn|ir|data_out\(8) & (\mchn|ir|data_out\(11) & (\mchn|bnk|load_reg[0]~5_combout\ & !\mchn|ir|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|load_reg[0]~5_combout\,
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux15~181_combout\);

-- Location: LCFF_X30_Y30_N9
\mchn|bnk|regfor:9:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[0]~28_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(0));

-- Location: LCCOMB_X30_Y30_N8
\mchn|bnk|Rb_data[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~1_combout\ = (\mchn|regb_address[2]~0_combout\ & (((\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & ((\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(0)))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (\mchn|bnk|regfor:1:reg|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|bnk|regfor:1:reg|data_out\(0),
	datac => \mchn|bnk|regfor:9:reg|data_out\(0),
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[0]~1_combout\);

-- Location: LCCOMB_X31_Y26_N28
\mchn|bnk|Mux15~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~180_combout\ = (\mchn|bnk|load_reg[0]~5_combout\ & (!\mchn|ir|data_out\(11) & (\mchn|ir|data_out\(8) & \mchn|ir|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|load_reg[0]~5_combout\,
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|ir|data_out\(8),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux15~180_combout\);

-- Location: LCFF_X29_Y28_N9
\mchn|bnk|regfor:5:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[0]~28_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(0));

-- Location: LCCOMB_X31_Y30_N14
\mchn|bnk|Rb_data[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~2_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[0]~1_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(0))) # (!\mchn|bnk|Rb_data[0]~1_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(0)))))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|Rb_data[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(0),
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|bnk|Rb_data[0]~1_combout\,
	datad => \mchn|bnk|regfor:5:reg|data_out\(0),
	combout => \mchn|bnk|Rb_data[0]~2_combout\);

-- Location: LCCOMB_X30_Y27_N2
\mchn|bnk|Mux15~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~192_combout\ = (!\mchn|ir|data_out\(10) & (\mchn|bnk|Mux15~51_combout\ & (\mchn|ir|data_out\(8) & \mchn|ir|data_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|Mux15~51_combout\,
	datac => \mchn|ir|data_out\(8),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux15~192_combout\);

-- Location: LCFF_X30_Y30_N5
\mchn|bnk|regfor:11:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[0]~28_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(0));

-- Location: LCCOMB_X30_Y31_N12
\mchn|bnk|regfor:3:reg|data_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:3:reg|data_out[0]~feeder_combout\ = \mchn|mxdata|S_out[0]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[0]~28_combout\,
	combout => \mchn|bnk|regfor:3:reg|data_out[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y28_N20
\mchn|bnk|Mux15~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~193_combout\ = (!\mchn|ir|data_out\(11) & (\mchn|ir|data_out\(8) & (!\mchn|ir|data_out\(10) & \mchn|bnk|Mux15~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|ir|data_out\(10),
	datad => \mchn|bnk|Mux15~51_combout\,
	combout => \mchn|bnk|Mux15~193_combout\);

-- Location: LCFF_X30_Y31_N13
\mchn|bnk|regfor:3:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:3:reg|data_out[0]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(0));

-- Location: LCCOMB_X31_Y30_N24
\mchn|bnk|Rb_data[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~8_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|regb_address[2]~0_combout\) # ((\mchn|bnk|regfor:11:reg|data_out\(0))))) # (!\mchn|regb_address[3]~1_combout\ & (!\mchn|regb_address[2]~0_combout\ & 
-- ((\mchn|bnk|regfor:3:reg|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|bnk|regfor:11:reg|data_out\(0),
	datad => \mchn|bnk|regfor:3:reg|data_out\(0),
	combout => \mchn|bnk|Rb_data[0]~8_combout\);

-- Location: LCCOMB_X31_Y30_N6
\mchn|bnk|Rb_data[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~9_combout\ = (\mchn|bnk|Rb_data[0]~8_combout\ & (((\mchn|bnk|regfor:15:reg|data_out\(0)) # (!\mchn|regb_address[2]~0_combout\)))) # (!\mchn|bnk|Rb_data[0]~8_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(0) & 
-- ((\mchn|regb_address[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(0),
	datab => \mchn|bnk|regfor:15:reg|data_out\(0),
	datac => \mchn|bnk|Rb_data[0]~8_combout\,
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[0]~9_combout\);

-- Location: LCCOMB_X30_Y30_N12
\mchn|bnk|Rb_data[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~10_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[0]~7_combout\ & ((\mchn|bnk|Rb_data[0]~9_combout\))) # (!\mchn|bnk|Rb_data[0]~7_combout\ & (\mchn|bnk|Rb_data[0]~2_combout\)))) # (!\mchn|regb_address[0]~2_combout\ 
-- & (\mchn|bnk|Rb_data[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|bnk|Rb_data[0]~7_combout\,
	datac => \mchn|bnk|Rb_data[0]~2_combout\,
	datad => \mchn|bnk|Rb_data[0]~9_combout\,
	combout => \mchn|bnk|Rb_data[0]~10_combout\);

-- Location: LCCOMB_X29_Y31_N22
\mchn|RAM_address[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|RAM_address[0]~0_combout\ = (\mchn|ir|data_out\(0) & ((\mchn|estado.load~regout\) # (\mchn|estado.store~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.load~regout\,
	datac => \mchn|ir|data_out\(0),
	datad => \mchn|estado.store~regout\,
	combout => \mchn|RAM_address[0]~0_combout\);

-- Location: LCFF_X29_Y31_N29
\mchn|ir|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \ROM|altsyncram_component|auto_generated|q_a\(1),
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(1));

-- Location: LCCOMB_X29_Y31_N6
\mchn|RAM_address[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|RAM_address[1]~1_combout\ = (\mchn|ir|data_out\(1) & ((\mchn|estado.load~regout\) # (\mchn|estado.store~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.load~regout\,
	datab => \mchn|ir|data_out\(1),
	datad => \mchn|estado.store~regout\,
	combout => \mchn|RAM_address[1]~1_combout\);

-- Location: LCCOMB_X30_Y29_N12
\mchn|RAM_address[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|RAM_address[2]~2_combout\ = (\mchn|ir|data_out\(2) & ((\mchn|estado.load~regout\) # (\mchn|estado.store~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.load~regout\,
	datab => \mchn|ir|data_out\(2),
	datad => \mchn|estado.store~regout\,
	combout => \mchn|RAM_address[2]~2_combout\);

-- Location: LCCOMB_X30_Y29_N26
\mchn|RAM_address[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|RAM_address[3]~3_combout\ = (\mchn|ir|data_out\(3) & ((\mchn|estado.load~regout\) # (\mchn|estado.store~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.load~regout\,
	datab => \mchn|ir|data_out\(3),
	datad => \mchn|estado.store~regout\,
	combout => \mchn|RAM_address[3]~3_combout\);

-- Location: LCCOMB_X28_Y31_N8
\mchn|ir|data_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ir|data_out[4]~feeder_combout\ = \ROM|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ROM|altsyncram_component|auto_generated|q_a\(4),
	combout => \mchn|ir|data_out[4]~feeder_combout\);

-- Location: LCFF_X28_Y31_N9
\mchn|ir|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|ir|data_out[4]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(4));

-- Location: LCCOMB_X29_Y31_N24
\mchn|RAM_address[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|RAM_address[4]~4_combout\ = (\mchn|ir|data_out\(4) & ((\mchn|estado.load~regout\) # (\mchn|estado.store~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.load~regout\,
	datab => \mchn|ir|data_out\(4),
	datad => \mchn|estado.store~regout\,
	combout => \mchn|RAM_address[4]~4_combout\);

-- Location: LCFF_X28_Y31_N11
\mchn|ir|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \ROM|altsyncram_component|auto_generated|q_a\(5),
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(5));

-- Location: LCCOMB_X29_Y31_N14
\mchn|RAM_address[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|RAM_address[5]~5_combout\ = (\mchn|ir|data_out\(5) & ((\mchn|estado.load~regout\) # (\mchn|estado.store~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.load~regout\,
	datab => \mchn|estado.store~regout\,
	datac => \mchn|ir|data_out\(5),
	combout => \mchn|RAM_address[5]~5_combout\);

-- Location: LCCOMB_X30_Y27_N16
\mchn|RAM_address[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|RAM_address[6]~6_combout\ = (\mchn|ir|data_out\(6) & ((\mchn|estado.store~regout\) # (\mchn|estado.load~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(6),
	datab => \mchn|estado.store~regout\,
	datad => \mchn|estado.load~regout\,
	combout => \mchn|RAM_address[6]~6_combout\);

-- Location: LCFF_X30_Y28_N19
\mchn|ir|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \ROM|altsyncram_component|auto_generated|q_a\(7),
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(7));

-- Location: LCCOMB_X30_Y29_N0
\mchn|RAM_address[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|RAM_address[7]~7_combout\ = (\mchn|ir|data_out\(7) & ((\mchn|estado.store~regout\) # (\mchn|estado.load~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.store~regout\,
	datab => \mchn|ir|data_out\(7),
	datad => \mchn|estado.load~regout\,
	combout => \mchn|RAM_address[7]~7_combout\);

-- Location: LCCOMB_X25_Y27_N4
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCCOMB_X28_Y31_N10
\mchn|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|Selector3~0_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|estado.store~regout\) # ((\mchn|ir|data_out\(5) & \mchn|estado.add~regout\)))) # (!\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(5) & \mchn|estado.add~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|estado.store~regout\,
	datac => \mchn|ir|data_out\(5),
	datad => \mchn|estado.add~regout\,
	combout => \mchn|Selector3~0_combout\);

-- Location: LCCOMB_X28_Y31_N12
\mchn|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|Selector4~0_combout\ = (\mchn|ir|data_out\(4) & ((\mchn|estado.add~regout\) # ((\mchn|ir|data_out\(8) & \mchn|estado.store~regout\)))) # (!\mchn|ir|data_out\(4) & (\mchn|ir|data_out\(8) & ((\mchn|estado.store~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(4),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|estado.add~regout\,
	datad => \mchn|estado.store~regout\,
	combout => \mchn|Selector4~0_combout\);

-- Location: LCFF_X30_Y28_N1
\mchn|ir|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \ROM|altsyncram_component|auto_generated|q_a\(6),
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(6));

-- Location: LCCOMB_X30_Y28_N14
\mchn|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|Selector2~0_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|estado.store~regout\) # ((\mchn|ir|data_out\(6) & \mchn|estado.add~regout\)))) # (!\mchn|ir|data_out\(10) & (\mchn|ir|data_out\(6) & (\mchn|estado.add~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|ir|data_out\(6),
	datac => \mchn|estado.add~regout\,
	datad => \mchn|estado.store~regout\,
	combout => \mchn|Selector2~0_combout\);

-- Location: LCFF_X28_Y28_N31
\mchn|bnk|regfor:4:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[1]~43_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(1));

-- Location: LCFF_X28_Y31_N17
\mchn|bnk|regfor:0:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[1]~43_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(1));

-- Location: LCCOMB_X27_Y30_N22
\mchn|bnk|regfor:8:reg|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:8:reg|data_out[1]~feeder_combout\ = \mchn|mxdata|S_out[1]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[1]~43_combout\,
	combout => \mchn|bnk|regfor:8:reg|data_out[1]~feeder_combout\);

-- Location: LCCOMB_X30_Y25_N14
\mchn|bnk|Mux15~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~188_combout\ = (!\mchn|ir|data_out\(8) & (\mchn|ir|data_out\(11) & (\mchn|bnk|load_reg[0]~5_combout\ & !\mchn|ir|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|load_reg[0]~5_combout\,
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux15~188_combout\);

-- Location: LCFF_X27_Y30_N23
\mchn|bnk|regfor:8:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:8:reg|data_out[1]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(1));

-- Location: LCCOMB_X30_Y28_N6
\mchn|bnk|Mux30~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~15_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|Selector2~0_combout\) # (\mchn|bnk|regfor:8:reg|data_out\(1))))) # (!\mchn|Selector1~0_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(1) & (!\mchn|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:0:reg|data_out\(1),
	datac => \mchn|Selector2~0_combout\,
	datad => \mchn|bnk|regfor:8:reg|data_out\(1),
	combout => \mchn|bnk|Mux30~15_combout\);

-- Location: LCCOMB_X28_Y28_N30
\mchn|bnk|Mux30~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~16_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|Mux30~15_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(1))) # (!\mchn|bnk|Mux30~15_combout\ & ((\mchn|bnk|regfor:4:reg|data_out\(1)))))) # (!\mchn|Selector2~0_combout\ & 
-- (((\mchn|bnk|Mux30~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:12:reg|data_out\(1),
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|bnk|regfor:4:reg|data_out\(1),
	datad => \mchn|bnk|Mux30~15_combout\,
	combout => \mchn|bnk|Mux30~16_combout\);

-- Location: LCCOMB_X28_Y25_N22
\mchn|bnk|regfor:13:reg|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:13:reg|data_out[1]~feeder_combout\ = \mchn|mxdata|S_out[1]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[1]~43_combout\,
	combout => \mchn|bnk|regfor:13:reg|data_out[1]~feeder_combout\);

-- Location: LCCOMB_X30_Y27_N28
\mchn|bnk|Mux15~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~183_combout\ = (\mchn|ir|data_out\(10) & (\mchn|bnk|load_reg[0]~5_combout\ & (\mchn|ir|data_out\(8) & \mchn|ir|data_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|load_reg[0]~5_combout\,
	datac => \mchn|ir|data_out\(8),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux15~183_combout\);

-- Location: LCFF_X28_Y25_N23
\mchn|bnk|regfor:13:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:13:reg|data_out[1]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(1));

-- Location: LCFF_X29_Y28_N1
\mchn|bnk|regfor:5:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[1]~43_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(1));

-- Location: LCCOMB_X30_Y28_N24
\mchn|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|Selector1~0_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|estado.store~regout\) # ((\mchn|ir|data_out\(7) & \mchn|estado.add~regout\)))) # (!\mchn|ir|data_out\(11) & (\mchn|ir|data_out\(7) & (\mchn|estado.add~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|ir|data_out\(7),
	datac => \mchn|estado.add~regout\,
	datad => \mchn|estado.store~regout\,
	combout => \mchn|Selector1~0_combout\);

-- Location: LCCOMB_X29_Y28_N0
\mchn|bnk|Mux30~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~13_combout\ = (\mchn|Selector2~0_combout\ & (((\mchn|bnk|regfor:5:reg|data_out\(1)) # (\mchn|Selector1~0_combout\)))) # (!\mchn|Selector2~0_combout\ & (\mchn|bnk|regfor:1:reg|data_out\(1) & ((!\mchn|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:1:reg|data_out\(1),
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|bnk|regfor:5:reg|data_out\(1),
	datad => \mchn|Selector1~0_combout\,
	combout => \mchn|bnk|Mux30~13_combout\);

-- Location: LCCOMB_X28_Y25_N28
\mchn|bnk|regfor:9:reg|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:9:reg|data_out[1]~feeder_combout\ = \mchn|mxdata|S_out[1]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[1]~43_combout\,
	combout => \mchn|bnk|regfor:9:reg|data_out[1]~feeder_combout\);

-- Location: LCFF_X28_Y25_N29
\mchn|bnk|regfor:9:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:9:reg|data_out[1]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(1));

-- Location: LCCOMB_X28_Y25_N0
\mchn|bnk|Mux30~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~14_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux30~13_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(1))) # (!\mchn|bnk|Mux30~13_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(1)))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux30~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:13:reg|data_out\(1),
	datac => \mchn|bnk|Mux30~13_combout\,
	datad => \mchn|bnk|regfor:9:reg|data_out\(1),
	combout => \mchn|bnk|Mux30~14_combout\);

-- Location: LCCOMB_X28_Y26_N4
\mchn|bnk|Mux30~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~17_combout\ = (\mchn|Selector3~0_combout\ & (\mchn|Selector4~0_combout\)) # (!\mchn|Selector3~0_combout\ & ((\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux30~14_combout\))) # (!\mchn|Selector4~0_combout\ & (\mchn|bnk|Mux30~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|Mux30~16_combout\,
	datad => \mchn|bnk|Mux30~14_combout\,
	combout => \mchn|bnk|Mux30~17_combout\);

-- Location: LCCOMB_X29_Y27_N18
\mchn|bnk|Mux15~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~185_combout\ = (\mchn|ir|data_out\(10) & (!\mchn|ir|data_out\(8) & (\mchn|bnk|Mux15~51_combout\ & !\mchn|ir|data_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|Mux15~51_combout\,
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux15~185_combout\);

-- Location: LCFF_X29_Y29_N29
\mchn|bnk|regfor:6:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[1]~43_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(1));

-- Location: LCCOMB_X27_Y30_N0
\mchn|bnk|regfor:10:reg|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:10:reg|data_out[1]~feeder_combout\ = \mchn|mxdata|S_out[1]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[1]~43_combout\,
	combout => \mchn|bnk|regfor:10:reg|data_out[1]~feeder_combout\);

-- Location: LCFF_X27_Y30_N1
\mchn|bnk|regfor:10:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:10:reg|data_out[1]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(1));

-- Location: LCCOMB_X29_Y29_N20
\mchn|bnk|Mux30~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~11_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|bnk|regfor:10:reg|data_out\(1)) # (\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & (\mchn|bnk|regfor:2:reg|data_out\(1) & ((!\mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:2:reg|data_out\(1),
	datab => \mchn|bnk|regfor:10:reg|data_out\(1),
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux30~11_combout\);

-- Location: LCCOMB_X29_Y29_N2
\mchn|bnk|Mux30~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~12_combout\ = (\mchn|bnk|Mux30~11_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(1)) # ((!\mchn|Selector2~0_combout\)))) # (!\mchn|bnk|Mux30~11_combout\ & (((\mchn|bnk|regfor:6:reg|data_out\(1) & \mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(1),
	datab => \mchn|bnk|regfor:6:reg|data_out\(1),
	datac => \mchn|bnk|Mux30~11_combout\,
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux30~12_combout\);

-- Location: LCCOMB_X28_Y26_N22
\mchn|bnk|Mux30~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~20_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux30~17_combout\ & (\mchn|bnk|Mux30~19_combout\)) # (!\mchn|bnk|Mux30~17_combout\ & ((\mchn|bnk|Mux30~12_combout\))))) # (!\mchn|Selector3~0_combout\ & 
-- (((\mchn|bnk|Mux30~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux30~19_combout\,
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|bnk|Mux30~17_combout\,
	datad => \mchn|bnk|Mux30~12_combout\,
	combout => \mchn|bnk|Mux30~20_combout\);

-- Location: LCFF_X28_Y30_N25
\mchn|bnk|regfor:8:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[0]~28_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(0));

-- Location: LCCOMB_X30_Y30_N14
\mchn|bnk|Rb_data[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~22_combout\ = (\mchn|ir|data_out\(1) & (((\mchn|ir|data_out\(0))))) # (!\mchn|ir|data_out\(1) & ((\mchn|ir|data_out\(0) & (\mchn|bnk|regfor:9:reg|data_out\(0))) # (!\mchn|ir|data_out\(0) & ((\mchn|bnk|regfor:8:reg|data_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(1),
	datab => \mchn|bnk|regfor:9:reg|data_out\(0),
	datac => \mchn|bnk|regfor:8:reg|data_out\(0),
	datad => \mchn|ir|data_out\(0),
	combout => \mchn|bnk|Rb_data[0]~22_combout\);

-- Location: LCCOMB_X31_Y29_N14
\mchn|bnk|Rb_data[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~23_combout\ = (\mchn|ir|data_out\(1) & ((\mchn|bnk|Rb_data[0]~22_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(0)))) # (!\mchn|bnk|Rb_data[0]~22_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(0))))) # (!\mchn|ir|data_out\(1) & 
-- (((\mchn|bnk|Rb_data[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(0),
	datab => \mchn|ir|data_out\(1),
	datac => \mchn|bnk|Rb_data[0]~22_combout\,
	datad => \mchn|bnk|regfor:11:reg|data_out\(0),
	combout => \mchn|bnk|Rb_data[0]~23_combout\);

-- Location: LCCOMB_X30_Y31_N28
\mchn|bnk|Rb_data[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~26_combout\ = (\mchn|ir|data_out\(0) & (((\mchn|ir|data_out\(1)) # (\mchn|bnk|regfor:1:reg|data_out\(0))))) # (!\mchn|ir|data_out\(0) & (\mchn|bnk|regfor:0:reg|data_out\(0) & (!\mchn|ir|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(0),
	datab => \mchn|bnk|regfor:0:reg|data_out\(0),
	datac => \mchn|ir|data_out\(1),
	datad => \mchn|bnk|regfor:1:reg|data_out\(0),
	combout => \mchn|bnk|Rb_data[0]~26_combout\);

-- Location: LCCOMB_X30_Y31_N6
\mchn|bnk|Rb_data[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~27_combout\ = (\mchn|ir|data_out\(1) & ((\mchn|bnk|Rb_data[0]~26_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(0))) # (!\mchn|bnk|Rb_data[0]~26_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(0)))))) # (!\mchn|ir|data_out\(1) & 
-- (((\mchn|bnk|Rb_data[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(1),
	datab => \mchn|bnk|regfor:3:reg|data_out\(0),
	datac => \mchn|bnk|regfor:2:reg|data_out\(0),
	datad => \mchn|bnk|Rb_data[0]~26_combout\,
	combout => \mchn|bnk|Rb_data[0]~27_combout\);

-- Location: LCCOMB_X31_Y27_N14
\mchn|bnk|Mux15~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~191_combout\ = (!\mchn|ir|data_out\(11) & (\mchn|ir|data_out\(10) & (\mchn|bnk|Mux15~51_combout\ & \mchn|ir|data_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|Mux15~51_combout\,
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux15~191_combout\);

-- Location: LCFF_X29_Y28_N27
\mchn|bnk|regfor:7:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[0]~28_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(0));

-- Location: LCFF_X29_Y29_N11
\mchn|bnk|regfor:6:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[0]~28_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(0));

-- Location: LCCOMB_X28_Y28_N18
\mchn|bnk|Rb_data[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~24_combout\ = (\mchn|ir|data_out\(1) & (((\mchn|ir|data_out\(0)) # (\mchn|bnk|regfor:6:reg|data_out\(0))))) # (!\mchn|ir|data_out\(1) & (\mchn|bnk|regfor:4:reg|data_out\(0) & (!\mchn|ir|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(0),
	datab => \mchn|ir|data_out\(1),
	datac => \mchn|ir|data_out\(0),
	datad => \mchn|bnk|regfor:6:reg|data_out\(0),
	combout => \mchn|bnk|Rb_data[0]~24_combout\);

-- Location: LCCOMB_X29_Y28_N8
\mchn|bnk|Rb_data[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~25_combout\ = (\mchn|ir|data_out\(0) & ((\mchn|bnk|Rb_data[0]~24_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(0))) # (!\mchn|bnk|Rb_data[0]~24_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(0)))))) # (!\mchn|ir|data_out\(0) & 
-- (((\mchn|bnk|Rb_data[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(0),
	datab => \mchn|bnk|regfor:7:reg|data_out\(0),
	datac => \mchn|bnk|regfor:5:reg|data_out\(0),
	datad => \mchn|bnk|Rb_data[0]~24_combout\,
	combout => \mchn|bnk|Rb_data[0]~25_combout\);

-- Location: LCCOMB_X30_Y29_N14
\mchn|bnk|Rb_data[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~28_combout\ = (\mchn|ir|data_out\(3) & (\mchn|ir|data_out\(2))) # (!\mchn|ir|data_out\(3) & ((\mchn|ir|data_out\(2) & ((\mchn|bnk|Rb_data[0]~25_combout\))) # (!\mchn|ir|data_out\(2) & (\mchn|bnk|Rb_data[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(3),
	datab => \mchn|ir|data_out\(2),
	datac => \mchn|bnk|Rb_data[0]~27_combout\,
	datad => \mchn|bnk|Rb_data[0]~25_combout\,
	combout => \mchn|bnk|Rb_data[0]~28_combout\);

-- Location: LCFF_X30_Y26_N5
\mchn|bnk|regfor:13:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[0]~28_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(0));

-- Location: LCCOMB_X29_Y26_N2
\mchn|bnk|Rb_data[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~29_combout\ = (\mchn|ir|data_out\(1) & ((\mchn|bnk|regfor:14:reg|data_out\(0)) # ((\mchn|ir|data_out\(0))))) # (!\mchn|ir|data_out\(1) & (((\mchn|bnk|regfor:12:reg|data_out\(0) & !\mchn|ir|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(0),
	datab => \mchn|bnk|regfor:12:reg|data_out\(0),
	datac => \mchn|ir|data_out\(1),
	datad => \mchn|ir|data_out\(0),
	combout => \mchn|bnk|Rb_data[0]~29_combout\);

-- Location: LCCOMB_X30_Y26_N10
\mchn|bnk|Rb_data[0]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~30_combout\ = (\mchn|ir|data_out\(0) & ((\mchn|bnk|Rb_data[0]~29_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(0)))) # (!\mchn|bnk|Rb_data[0]~29_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(0))))) # (!\mchn|ir|data_out\(0) & 
-- (((\mchn|bnk|Rb_data[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(0),
	datab => \mchn|bnk|regfor:13:reg|data_out\(0),
	datac => \mchn|bnk|regfor:15:reg|data_out\(0),
	datad => \mchn|bnk|Rb_data[0]~29_combout\,
	combout => \mchn|bnk|Rb_data[0]~30_combout\);

-- Location: LCCOMB_X30_Y29_N8
\mchn|bnk|Rb_data[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[0]~31_combout\ = (\mchn|ir|data_out\(3) & ((\mchn|bnk|Rb_data[0]~28_combout\ & ((\mchn|bnk|Rb_data[0]~30_combout\))) # (!\mchn|bnk|Rb_data[0]~28_combout\ & (\mchn|bnk|Rb_data[0]~23_combout\)))) # (!\mchn|ir|data_out\(3) & 
-- (((\mchn|bnk|Rb_data[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(3),
	datab => \mchn|bnk|Rb_data[0]~23_combout\,
	datac => \mchn|bnk|Rb_data[0]~28_combout\,
	datad => \mchn|bnk|Rb_data[0]~30_combout\,
	combout => \mchn|bnk|Rb_data[0]~31_combout\);

-- Location: LCCOMB_X30_Y26_N4
\mchn|bnk|Ra_data[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~29_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|bnk|regfor:13:reg|data_out\(0)) # (\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(0) & ((!\mchn|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:12:reg|data_out\(0),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|regfor:13:reg|data_out\(0),
	datad => \mchn|Selector3~0_combout\,
	combout => \mchn|bnk|Ra_data[0]~29_combout\);

-- Location: LCCOMB_X29_Y26_N24
\mchn|bnk|Ra_data[0]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~30_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Ra_data[0]~29_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(0)))) # (!\mchn|bnk|Ra_data[0]~29_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(0))))) # (!\mchn|Selector3~0_combout\ 
-- & (((\mchn|bnk|Ra_data[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(0),
	datab => \mchn|bnk|regfor:15:reg|data_out\(0),
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|Ra_data[0]~29_combout\,
	combout => \mchn|bnk|Ra_data[0]~30_combout\);

-- Location: LCCOMB_X28_Y30_N24
\mchn|bnk|Ra_data[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~24_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(0)) # ((\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & (((\mchn|bnk|regfor:8:reg|data_out\(0) & !\mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(0),
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|bnk|regfor:8:reg|data_out\(0),
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Ra_data[0]~24_combout\);

-- Location: LCCOMB_X30_Y30_N24
\mchn|bnk|Ra_data[0]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~25_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Ra_data[0]~24_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(0))) # (!\mchn|bnk|Ra_data[0]~24_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(0)))))) # (!\mchn|Selector4~0_combout\ 
-- & (((\mchn|bnk|Ra_data[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|bnk|regfor:11:reg|data_out\(0),
	datac => \mchn|bnk|regfor:9:reg|data_out\(0),
	datad => \mchn|bnk|Ra_data[0]~24_combout\,
	combout => \mchn|bnk|Ra_data[0]~25_combout\);

-- Location: LCCOMB_X30_Y29_N4
\mchn|bnk|Ra_data[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~26_combout\ = (\mchn|Selector3~0_combout\ & (((\mchn|bnk|regfor:2:reg|data_out\(0)) # (\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(0) & ((!\mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(0),
	datab => \mchn|bnk|regfor:2:reg|data_out\(0),
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Ra_data[0]~26_combout\);

-- Location: LCCOMB_X29_Y29_N0
\mchn|bnk|Ra_data[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~27_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Ra_data[0]~26_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(0))) # (!\mchn|bnk|Ra_data[0]~26_combout\ & ((\mchn|bnk|regfor:1:reg|data_out\(0)))))) # (!\mchn|Selector4~0_combout\ & 
-- (((\mchn|bnk|Ra_data[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(0),
	datab => \mchn|bnk|regfor:1:reg|data_out\(0),
	datac => \mchn|Selector4~0_combout\,
	datad => \mchn|bnk|Ra_data[0]~26_combout\,
	combout => \mchn|bnk|Ra_data[0]~27_combout\);

-- Location: LCCOMB_X30_Y30_N26
\mchn|bnk|Ra_data[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~28_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\) # ((\mchn|bnk|Ra_data[0]~25_combout\)))) # (!\mchn|Selector1~0_combout\ & (!\mchn|Selector2~0_combout\ & ((\mchn|bnk|Ra_data[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|bnk|Ra_data[0]~25_combout\,
	datad => \mchn|bnk|Ra_data[0]~27_combout\,
	combout => \mchn|bnk|Ra_data[0]~28_combout\);

-- Location: LCCOMB_X29_Y26_N22
\mchn|bnk|Ra_data[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~31_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|Ra_data[0]~28_combout\ & ((\mchn|bnk|Ra_data[0]~30_combout\))) # (!\mchn|bnk|Ra_data[0]~28_combout\ & (\mchn|bnk|Ra_data[0]~23_combout\)))) # (!\mchn|Selector2~0_combout\ & 
-- (((\mchn|bnk|Ra_data[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Ra_data[0]~23_combout\,
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|bnk|Ra_data[0]~30_combout\,
	datad => \mchn|bnk|Ra_data[0]~28_combout\,
	combout => \mchn|bnk|Ra_data[0]~31_combout\);

-- Location: LCCOMB_X29_Y26_N28
\mchn|ALU|S_out[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|S_out[1]~0_combout\ = \mchn|bnk|Mux30~20_combout\ $ (((\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[0]~31_combout\ & \mchn|bnk|Ra_data[0]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datab => \mchn|bnk|Mux30~20_combout\,
	datac => \mchn|bnk|Rb_data[0]~31_combout\,
	datad => \mchn|bnk|Ra_data[0]~31_combout\,
	combout => \mchn|ALU|S_out[1]~0_combout\);

-- Location: LCFF_X28_Y25_N31
\mchn|bnk|regfor:13:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[2]~29_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(2));

-- Location: LCFF_X29_Y26_N27
\mchn|bnk|regfor:12:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[2]~29_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(2));

-- Location: LCFF_X29_Y26_N9
\mchn|bnk|regfor:14:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[2]~29_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(2));

-- Location: LCCOMB_X29_Y26_N12
\mchn|bnk|Mux29~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~18_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(2)))) # (!\mchn|Selector3~0_combout\ & 
-- (\mchn|bnk|regfor:12:reg|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|bnk|regfor:12:reg|data_out\(2),
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|regfor:14:reg|data_out\(2),
	combout => \mchn|bnk|Mux29~18_combout\);

-- Location: LCCOMB_X29_Y26_N10
\mchn|bnk|Mux29~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~19_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux29~18_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(2))) # (!\mchn|bnk|Mux29~18_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(2)))))) # (!\mchn|Selector4~0_combout\ & 
-- (((\mchn|bnk|Mux29~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|bnk|regfor:15:reg|data_out\(2),
	datac => \mchn|bnk|regfor:13:reg|data_out\(2),
	datad => \mchn|bnk|Mux29~18_combout\,
	combout => \mchn|bnk|Mux29~19_combout\);

-- Location: LCCOMB_X29_Y24_N0
\mchn|bnk|regfor:10:reg|data_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:10:reg|data_out[2]~feeder_combout\ = \mchn|mxdata|S_out[2]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[2]~29_combout\,
	combout => \mchn|bnk|regfor:10:reg|data_out[2]~feeder_combout\);

-- Location: LCFF_X29_Y24_N1
\mchn|bnk|regfor:10:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:10:reg|data_out[2]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(2));

-- Location: LCFF_X29_Y25_N17
\mchn|bnk|regfor:11:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[2]~29_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(2));

-- Location: LCCOMB_X28_Y26_N8
\mchn|bnk|regfor:8:reg|data_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:8:reg|data_out[2]~feeder_combout\ = \mchn|mxdata|S_out[2]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[2]~29_combout\,
	combout => \mchn|bnk|regfor:8:reg|data_out[2]~feeder_combout\);

-- Location: LCFF_X28_Y26_N9
\mchn|bnk|regfor:8:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:8:reg|data_out[2]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(2));

-- Location: LCFF_X28_Y25_N25
\mchn|bnk|regfor:9:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[2]~29_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(2));

-- Location: LCCOMB_X29_Y24_N28
\mchn|bnk|Mux29~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~11_combout\ = (\mchn|Selector3~0_combout\ & (((\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & ((\mchn|Selector4~0_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(2)))) # (!\mchn|Selector4~0_combout\ & 
-- (\mchn|bnk|regfor:8:reg|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|regfor:8:reg|data_out\(2),
	datac => \mchn|bnk|regfor:9:reg|data_out\(2),
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux29~11_combout\);

-- Location: LCCOMB_X29_Y24_N18
\mchn|bnk|Mux29~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~12_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux29~11_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(2)))) # (!\mchn|bnk|Mux29~11_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(2))))) # (!\mchn|Selector3~0_combout\ & 
-- (((\mchn|bnk|Mux29~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|regfor:10:reg|data_out\(2),
	datac => \mchn|bnk|regfor:11:reg|data_out\(2),
	datad => \mchn|bnk|Mux29~11_combout\,
	combout => \mchn|bnk|Mux29~12_combout\);

-- Location: LCCOMB_X24_Y27_N0
\mchn|bnk|regfor:2:reg|data_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:2:reg|data_out[2]~feeder_combout\ = \mchn|mxdata|S_out[2]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[2]~29_combout\,
	combout => \mchn|bnk|regfor:2:reg|data_out[2]~feeder_combout\);

-- Location: LCFF_X24_Y27_N1
\mchn|bnk|regfor:2:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:2:reg|data_out[2]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(2));

-- Location: LCFF_X28_Y28_N1
\mchn|bnk|regfor:0:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[2]~29_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(2));

-- Location: LCCOMB_X27_Y28_N28
\mchn|bnk|regfor:1:reg|data_out[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:1:reg|data_out[2]~feeder_combout\ = \mchn|mxdata|S_out[2]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[2]~29_combout\,
	combout => \mchn|bnk|regfor:1:reg|data_out[2]~feeder_combout\);

-- Location: LCFF_X27_Y28_N29
\mchn|bnk|regfor:1:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:1:reg|data_out[2]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(2));

-- Location: LCCOMB_X28_Y28_N16
\mchn|bnk|Mux29~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~15_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|Selector3~0_combout\) # (\mchn|bnk|regfor:1:reg|data_out\(2))))) # (!\mchn|Selector4~0_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(2) & (!\mchn|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|bnk|regfor:0:reg|data_out\(2),
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|regfor:1:reg|data_out\(2),
	combout => \mchn|bnk|Mux29~15_combout\);

-- Location: LCCOMB_X29_Y25_N18
\mchn|bnk|Mux29~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~16_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux29~15_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(2))) # (!\mchn|bnk|Mux29~15_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(2)))))) # (!\mchn|Selector3~0_combout\ & 
-- (((\mchn|bnk|Mux29~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(2),
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|bnk|regfor:2:reg|data_out\(2),
	datad => \mchn|bnk|Mux29~15_combout\,
	combout => \mchn|bnk|Mux29~16_combout\);

-- Location: LCFF_X29_Y28_N17
\mchn|bnk|regfor:7:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[2]~29_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(2));

-- Location: LCFF_X24_Y28_N3
\mchn|bnk|regfor:4:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[2]~29_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(2));

-- Location: LCCOMB_X24_Y28_N22
\mchn|bnk|Mux29~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~13_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\ & (\mchn|bnk|regfor:6:reg|data_out\(2))) # (!\mchn|Selector3~0_combout\ & 
-- ((\mchn|bnk|regfor:4:reg|data_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(2),
	datab => \mchn|bnk|regfor:4:reg|data_out\(2),
	datac => \mchn|Selector4~0_combout\,
	datad => \mchn|Selector3~0_combout\,
	combout => \mchn|bnk|Mux29~13_combout\);

-- Location: LCCOMB_X29_Y28_N30
\mchn|bnk|Mux29~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~14_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux29~13_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(2)))) # (!\mchn|bnk|Mux29~13_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(2))))) # (!\mchn|Selector4~0_combout\ & 
-- (((\mchn|bnk|Mux29~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(2),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|regfor:7:reg|data_out\(2),
	datad => \mchn|bnk|Mux29~13_combout\,
	combout => \mchn|bnk|Mux29~14_combout\);

-- Location: LCCOMB_X28_Y26_N12
\mchn|bnk|Mux29~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~17_combout\ = (\mchn|Selector2~0_combout\ & (((\mchn|Selector1~0_combout\) # (\mchn|bnk|Mux29~14_combout\)))) # (!\mchn|Selector2~0_combout\ & (\mchn|bnk|Mux29~16_combout\ & (!\mchn|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector2~0_combout\,
	datab => \mchn|bnk|Mux29~16_combout\,
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|bnk|Mux29~14_combout\,
	combout => \mchn|bnk|Mux29~17_combout\);

-- Location: LCCOMB_X28_Y26_N14
\mchn|bnk|Mux29~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~20_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux29~17_combout\ & (\mchn|bnk|Mux29~19_combout\)) # (!\mchn|bnk|Mux29~17_combout\ & ((\mchn|bnk|Mux29~12_combout\))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux29~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|Mux29~19_combout\,
	datac => \mchn|bnk|Mux29~12_combout\,
	datad => \mchn|bnk|Mux29~17_combout\,
	combout => \mchn|bnk|Mux29~20_combout\);

-- Location: LCCOMB_X28_Y27_N4
\mchn|regb_address[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|regb_address[1]~3_combout\ = (\mchn|estado.add~regout\ & \mchn|ir|data_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|estado.add~regout\,
	datad => \mchn|ir|data_out\(1),
	combout => \mchn|regb_address[1]~3_combout\);

-- Location: LCCOMB_X28_Y25_N18
\mchn|bnk|Rb_data[2]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[2]~32_combout\ = (\mchn|regb_address[1]~3_combout\ & (((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(2)))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:8:reg|data_out\(2),
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|regfor:9:reg|data_out\(2),
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[2]~32_combout\);

-- Location: LCCOMB_X28_Y25_N16
\mchn|bnk|Rb_data[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[2]~33_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[2]~32_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(2)))) # (!\mchn|bnk|Rb_data[2]~32_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(2))))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|Rb_data[2]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(2),
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|regfor:11:reg|data_out\(2),
	datad => \mchn|bnk|Rb_data[2]~32_combout\,
	combout => \mchn|bnk|Rb_data[2]~33_combout\);

-- Location: LCCOMB_X29_Y26_N26
\mchn|bnk|Rb_data[2]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[2]~39_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(2)) # ((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|regfor:12:reg|data_out\(2) & 
-- !\mchn|regb_address[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|regfor:14:reg|data_out\(2),
	datac => \mchn|bnk|regfor:12:reg|data_out\(2),
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[2]~39_combout\);

-- Location: LCCOMB_X29_Y25_N12
\mchn|bnk|Rb_data[2]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[2]~40_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[2]~39_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(2)))) # (!\mchn|bnk|Rb_data[2]~39_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(2))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[2]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(2),
	datab => \mchn|bnk|regfor:15:reg|data_out\(2),
	datac => \mchn|regb_address[0]~2_combout\,
	datad => \mchn|bnk|Rb_data[2]~39_combout\,
	combout => \mchn|bnk|Rb_data[2]~40_combout\);

-- Location: LCCOMB_X28_Y28_N0
\mchn|bnk|Rb_data[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[2]~36_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|regfor:1:reg|data_out\(2)) # ((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|regfor:0:reg|data_out\(2) & 
-- !\mchn|regb_address[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|bnk|regfor:1:reg|data_out\(2),
	datac => \mchn|bnk|regfor:0:reg|data_out\(2),
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[2]~36_combout\);

-- Location: LCCOMB_X24_Y27_N16
\mchn|bnk|Rb_data[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[2]~37_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[2]~36_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(2))) # (!\mchn|bnk|Rb_data[2]~36_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(2)))))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|Rb_data[2]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(2),
	datab => \mchn|bnk|regfor:2:reg|data_out\(2),
	datac => \mchn|regb_address[1]~3_combout\,
	datad => \mchn|bnk|Rb_data[2]~36_combout\,
	combout => \mchn|bnk|Rb_data[2]~37_combout\);

-- Location: LCCOMB_X24_Y28_N2
\mchn|bnk|Rb_data[2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[2]~34_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|regfor:6:reg|data_out\(2))) # 
-- (!\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:4:reg|data_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(2),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|regfor:4:reg|data_out\(2),
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[2]~34_combout\);

-- Location: LCCOMB_X29_Y28_N16
\mchn|bnk|Rb_data[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[2]~35_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[2]~34_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(2)))) # (!\mchn|bnk|Rb_data[2]~34_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(2))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(2),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|regfor:7:reg|data_out\(2),
	datad => \mchn|bnk|Rb_data[2]~34_combout\,
	combout => \mchn|bnk|Rb_data[2]~35_combout\);

-- Location: LCCOMB_X28_Y26_N0
\mchn|bnk|Rb_data[2]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[2]~38_combout\ = (\mchn|regb_address[3]~1_combout\ & (\mchn|regb_address[2]~0_combout\)) # (!\mchn|regb_address[3]~1_combout\ & ((\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[2]~35_combout\))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|Rb_data[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|bnk|Rb_data[2]~37_combout\,
	datad => \mchn|bnk|Rb_data[2]~35_combout\,
	combout => \mchn|bnk|Rb_data[2]~38_combout\);

-- Location: LCCOMB_X28_Y26_N2
\mchn|bnk|Rb_data[2]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[2]~41_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[2]~38_combout\ & ((\mchn|bnk|Rb_data[2]~40_combout\))) # (!\mchn|bnk|Rb_data[2]~38_combout\ & (\mchn|bnk|Rb_data[2]~33_combout\)))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[2]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|bnk|Rb_data[2]~33_combout\,
	datac => \mchn|bnk|Rb_data[2]~40_combout\,
	datad => \mchn|bnk|Rb_data[2]~38_combout\,
	combout => \mchn|bnk|Rb_data[2]~41_combout\);

-- Location: LCCOMB_X28_Y26_N20
\mchn|bnk|Rb_data[2]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[2]~42_combout\ = (\mchn|estado.add~regout\ & \mchn|bnk|Rb_data[2]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Rb_data[2]~41_combout\,
	combout => \mchn|bnk|Rb_data[2]~42_combout\);

-- Location: LCCOMB_X30_Y29_N28
\mchn|bnk|Mux15~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux15~194_combout\ = (\mchn|ir|data_out\(11) & (\mchn|bnk|Mux15~51_combout\ & (\mchn|ir|data_out\(8) & \mchn|ir|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|Mux15~51_combout\,
	datac => \mchn|ir|data_out\(8),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux15~194_combout\);

-- Location: LCFF_X28_Y27_N19
\mchn|bnk|regfor:15:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[1]~43_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(1));

-- Location: LCCOMB_X29_Y30_N22
\mchn|bnk|Rb_data[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[1]~18_combout\ = (\mchn|regb_address[3]~1_combout\ & (((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & ((\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(1)))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(1),
	datab => \mchn|bnk|regfor:7:reg|data_out\(1),
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[1]~18_combout\);

-- Location: LCCOMB_X28_Y27_N18
\mchn|bnk|Rb_data[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[1]~19_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[1]~18_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(1)))) # (!\mchn|bnk|Rb_data[1]~18_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(1))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:11:reg|data_out\(1),
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|regfor:15:reg|data_out\(1),
	datad => \mchn|bnk|Rb_data[1]~18_combout\,
	combout => \mchn|bnk|Rb_data[1]~19_combout\);

-- Location: LCCOMB_X27_Y31_N4
\mchn|bnk|Rb_data[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[1]~11_combout\ = (\mchn|regb_address[2]~0_combout\ & (((\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & ((\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(1)))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (\mchn|bnk|regfor:2:reg|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:2:reg|data_out\(1),
	datab => \mchn|bnk|regfor:10:reg|data_out\(1),
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[1]~11_combout\);

-- Location: LCCOMB_X28_Y27_N30
\mchn|bnk|Rb_data[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[1]~12_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[1]~11_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(1))) # (!\mchn|bnk|Rb_data[1]~11_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(1)))))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|Rb_data[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(1),
	datab => \mchn|bnk|regfor:6:reg|data_out\(1),
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|bnk|Rb_data[1]~11_combout\,
	combout => \mchn|bnk|Rb_data[1]~12_combout\);

-- Location: LCCOMB_X28_Y31_N14
\mchn|bnk|Rb_data[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[1]~15_combout\ = (\mchn|regb_address[2]~0_combout\ & (((\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & ((\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:8:reg|data_out\(1)))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(1),
	datab => \mchn|bnk|regfor:8:reg|data_out\(1),
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[1]~15_combout\);

-- Location: LCCOMB_X30_Y31_N14
\mchn|bnk|Rb_data[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[1]~16_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[1]~15_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(1))) # (!\mchn|bnk|Rb_data[1]~15_combout\ & ((\mchn|bnk|regfor:4:reg|data_out\(1)))))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|Rb_data[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:12:reg|data_out\(1),
	datab => \mchn|bnk|regfor:4:reg|data_out\(1),
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|bnk|Rb_data[1]~15_combout\,
	combout => \mchn|bnk|Rb_data[1]~16_combout\);

-- Location: LCCOMB_X29_Y29_N26
\mchn|bnk|Rb_data[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[1]~13_combout\ = (\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|regfor:5:reg|data_out\(1)) # (\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|regfor:1:reg|data_out\(1) & 
-- ((!\mchn|regb_address[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:1:reg|data_out\(1),
	datab => \mchn|bnk|regfor:5:reg|data_out\(1),
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[1]~13_combout\);

-- Location: LCCOMB_X28_Y25_N10
\mchn|bnk|Rb_data[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[1]~14_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[1]~13_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(1)))) # (!\mchn|bnk|Rb_data[1]~13_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(1))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(1),
	datab => \mchn|bnk|regfor:13:reg|data_out\(1),
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|bnk|Rb_data[1]~13_combout\,
	combout => \mchn|bnk|Rb_data[1]~14_combout\);

-- Location: LCCOMB_X29_Y27_N2
\mchn|bnk|Rb_data[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[1]~17_combout\ = (\mchn|regb_address[1]~3_combout\ & (\mchn|regb_address[0]~2_combout\)) # (!\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[1]~14_combout\))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|Rb_data[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|Rb_data[1]~16_combout\,
	datad => \mchn|bnk|Rb_data[1]~14_combout\,
	combout => \mchn|bnk|Rb_data[1]~17_combout\);

-- Location: LCCOMB_X29_Y27_N12
\mchn|bnk|Rb_data[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[1]~20_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[1]~17_combout\ & (\mchn|bnk|Rb_data[1]~19_combout\)) # (!\mchn|bnk|Rb_data[1]~17_combout\ & ((\mchn|bnk|Rb_data[1]~12_combout\))))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|Rb_data[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|Rb_data[1]~19_combout\,
	datac => \mchn|bnk|Rb_data[1]~12_combout\,
	datad => \mchn|bnk|Rb_data[1]~17_combout\,
	combout => \mchn|bnk|Rb_data[1]~20_combout\);

-- Location: LCCOMB_X29_Y27_N26
\mchn|bnk|Rb_data[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[1]~21_combout\ = (\mchn|estado.add~regout\ & \mchn|bnk|Rb_data[1]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Rb_data[1]~20_combout\,
	combout => \mchn|bnk|Rb_data[1]~21_combout\);

-- Location: LCCOMB_X29_Y26_N18
\mchn|ALU|inter_carry~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry~0_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[0]~31_combout\ & \mchn|bnk|Ra_data[0]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datac => \mchn|bnk|Rb_data[0]~31_combout\,
	datad => \mchn|bnk|Ra_data[0]~31_combout\,
	combout => \mchn|ALU|inter_carry~0_combout\);

-- Location: LCCOMB_X28_Y26_N30
\mchn|ALU|inter_carry[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[2]~1_combout\ = (\mchn|bnk|Rb_data[1]~21_combout\ & ((\mchn|ALU|inter_carry~0_combout\) # ((\mchn|WideNor5~combout\ & \mchn|bnk|Mux30~20_combout\)))) # (!\mchn|bnk|Rb_data[1]~21_combout\ & (\mchn|WideNor5~combout\ & 
-- (\mchn|bnk|Mux30~20_combout\ & \mchn|ALU|inter_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|WideNor5~combout\,
	datab => \mchn|bnk|Mux30~20_combout\,
	datac => \mchn|bnk|Rb_data[1]~21_combout\,
	datad => \mchn|ALU|inter_carry~0_combout\,
	combout => \mchn|ALU|inter_carry[2]~1_combout\);

-- Location: LCCOMB_X28_Y26_N28
\mchn|ALU|inter_carry[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[3]~2_combout\ = (\mchn|bnk|Rb_data[2]~42_combout\ & ((\mchn|ALU|inter_carry[2]~1_combout\) # ((\mchn|WideNor5~combout\ & \mchn|bnk|Mux29~20_combout\)))) # (!\mchn|bnk|Rb_data[2]~42_combout\ & (\mchn|WideNor5~combout\ & 
-- (\mchn|bnk|Mux29~20_combout\ & \mchn|ALU|inter_carry[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|WideNor5~combout\,
	datab => \mchn|bnk|Mux29~20_combout\,
	datac => \mchn|bnk|Rb_data[2]~42_combout\,
	datad => \mchn|ALU|inter_carry[2]~1_combout\,
	combout => \mchn|ALU|inter_carry[3]~2_combout\);

-- Location: LCFF_X30_Y27_N1
\mchn|bnk|regfor:5:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[3]~30_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(3));

-- Location: LCCOMB_X27_Y28_N4
\mchn|bnk|regfor:1:reg|data_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:1:reg|data_out[3]~feeder_combout\ = \mchn|mxdata|S_out[3]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[3]~30_combout\,
	combout => \mchn|bnk|regfor:1:reg|data_out[3]~feeder_combout\);

-- Location: LCFF_X27_Y28_N5
\mchn|bnk|regfor:1:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:1:reg|data_out[3]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(3));

-- Location: LCFF_X30_Y25_N9
\mchn|bnk|regfor:9:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[3]~30_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(3));

-- Location: LCCOMB_X30_Y25_N8
\mchn|bnk|Mux28~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~11_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|bnk|regfor:9:reg|data_out\(3)) # (\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & (\mchn|bnk|regfor:1:reg|data_out\(3) & ((!\mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:1:reg|data_out\(3),
	datac => \mchn|bnk|regfor:9:reg|data_out\(3),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux28~11_combout\);

-- Location: LCCOMB_X30_Y25_N26
\mchn|bnk|Mux28~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~12_combout\ = (\mchn|bnk|Mux28~11_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(3)) # ((!\mchn|Selector2~0_combout\)))) # (!\mchn|bnk|Mux28~11_combout\ & (((\mchn|bnk|regfor:5:reg|data_out\(3) & \mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(3),
	datab => \mchn|bnk|regfor:5:reg|data_out\(3),
	datac => \mchn|bnk|Mux28~11_combout\,
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux28~12_combout\);

-- Location: LCCOMB_X31_Y27_N4
\mchn|bnk|regfor:7:reg|data_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:7:reg|data_out[3]~feeder_combout\ = \mchn|mxdata|S_out[3]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[3]~30_combout\,
	combout => \mchn|bnk|regfor:7:reg|data_out[3]~feeder_combout\);

-- Location: LCFF_X31_Y27_N5
\mchn|bnk|regfor:7:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:7:reg|data_out[3]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(3));

-- Location: LCCOMB_X30_Y31_N16
\mchn|bnk|regfor:3:reg|data_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:3:reg|data_out[3]~feeder_combout\ = \mchn|mxdata|S_out[3]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[3]~30_combout\,
	combout => \mchn|bnk|regfor:3:reg|data_out[3]~feeder_combout\);

-- Location: LCFF_X30_Y31_N17
\mchn|bnk|regfor:3:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:3:reg|data_out[3]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(3));

-- Location: LCCOMB_X29_Y25_N20
\mchn|bnk|Mux28~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~18_combout\ = (\mchn|Selector2~0_combout\ & (((\mchn|Selector1~0_combout\)))) # (!\mchn|Selector2~0_combout\ & ((\mchn|Selector1~0_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(3))) # (!\mchn|Selector1~0_combout\ & 
-- ((\mchn|bnk|regfor:3:reg|data_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:11:reg|data_out\(3),
	datab => \mchn|bnk|regfor:3:reg|data_out\(3),
	datac => \mchn|Selector2~0_combout\,
	datad => \mchn|Selector1~0_combout\,
	combout => \mchn|bnk|Mux28~18_combout\);

-- Location: LCCOMB_X30_Y25_N16
\mchn|bnk|Mux28~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~19_combout\ = (\mchn|bnk|Mux28~18_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(3)) # ((!\mchn|Selector2~0_combout\)))) # (!\mchn|bnk|Mux28~18_combout\ & (((\mchn|bnk|regfor:7:reg|data_out\(3) & \mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(3),
	datab => \mchn|bnk|regfor:7:reg|data_out\(3),
	datac => \mchn|bnk|Mux28~18_combout\,
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux28~19_combout\);

-- Location: LCFF_X30_Y25_N19
\mchn|bnk|regfor:8:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[3]~30_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(3));

-- Location: LCFF_X28_Y31_N27
\mchn|bnk|regfor:0:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[3]~30_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(3));

-- Location: LCCOMB_X31_Y28_N20
\mchn|bnk|Mux28~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~15_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(3))) # (!\mchn|Selector2~0_combout\ & 
-- ((\mchn|bnk|regfor:0:reg|data_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(3),
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|bnk|regfor:0:reg|data_out\(3),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux28~15_combout\);

-- Location: LCCOMB_X30_Y25_N20
\mchn|bnk|Mux28~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~16_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux28~15_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(3))) # (!\mchn|bnk|Mux28~15_combout\ & ((\mchn|bnk|regfor:8:reg|data_out\(3)))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux28~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:12:reg|data_out\(3),
	datab => \mchn|bnk|regfor:8:reg|data_out\(3),
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|bnk|Mux28~15_combout\,
	combout => \mchn|bnk|Mux28~16_combout\);

-- Location: LCFF_X31_Y28_N29
\mchn|bnk|regfor:14:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[3]~30_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(3));

-- Location: LCFF_X31_Y29_N29
\mchn|bnk|regfor:2:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[3]~30_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(3));

-- Location: LCCOMB_X31_Y31_N28
\mchn|bnk|Mux28~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~13_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & (\mchn|bnk|regfor:6:reg|data_out\(3))) # (!\mchn|Selector2~0_combout\ & 
-- ((\mchn|bnk|regfor:2:reg|data_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(3),
	datab => \mchn|bnk|regfor:2:reg|data_out\(3),
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux28~13_combout\);

-- Location: LCCOMB_X31_Y28_N28
\mchn|bnk|Mux28~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~14_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux28~13_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(3)))) # (!\mchn|bnk|Mux28~13_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(3))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux28~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(3),
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|bnk|regfor:14:reg|data_out\(3),
	datad => \mchn|bnk|Mux28~13_combout\,
	combout => \mchn|bnk|Mux28~14_combout\);

-- Location: LCCOMB_X30_Y25_N2
\mchn|bnk|Mux28~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~17_combout\ = (\mchn|Selector4~0_combout\ & (\mchn|Selector3~0_combout\)) # (!\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux28~14_combout\))) # (!\mchn|Selector3~0_combout\ & (\mchn|bnk|Mux28~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|bnk|Mux28~16_combout\,
	datad => \mchn|bnk|Mux28~14_combout\,
	combout => \mchn|bnk|Mux28~17_combout\);

-- Location: LCCOMB_X30_Y25_N6
\mchn|bnk|Mux28~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~20_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux28~17_combout\ & ((\mchn|bnk|Mux28~19_combout\))) # (!\mchn|bnk|Mux28~17_combout\ & (\mchn|bnk|Mux28~12_combout\)))) # (!\mchn|Selector4~0_combout\ & 
-- (((\mchn|bnk|Mux28~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|bnk|Mux28~12_combout\,
	datac => \mchn|bnk|Mux28~19_combout\,
	datad => \mchn|bnk|Mux28~17_combout\,
	combout => \mchn|bnk|Mux28~20_combout\);

-- Location: LCCOMB_X29_Y26_N30
\mchn|mxdata|S_out[3]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[3]~45_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[3]~52_combout\ $ (\mchn|ALU|inter_carry[3]~2_combout\ $ (\mchn|bnk|Mux28~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[3]~52_combout\,
	datab => \mchn|ALU|inter_carry[3]~2_combout\,
	datac => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Mux28~20_combout\,
	combout => \mchn|mxdata|S_out[3]~45_combout\);

-- Location: LCFF_X27_Y26_N21
\mchn|bnk|regfor:15:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|mxdata|S_out[4]~31_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(4));

-- Location: LCFF_X29_Y26_N21
\mchn|bnk|regfor:14:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[4]~31_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(4));

-- Location: LCFF_X28_Y29_N25
\mchn|bnk|regfor:13:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[4]~31_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(4));

-- Location: LCFF_X29_Y26_N7
\mchn|bnk|regfor:12:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[4]~31_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(4));

-- Location: LCCOMB_X29_Y26_N6
\mchn|bnk|Rb_data[4]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[4]~61_combout\ = (\mchn|regb_address[1]~3_combout\ & (((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(4))) # 
-- (!\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|regfor:13:reg|data_out\(4),
	datac => \mchn|bnk|regfor:12:reg|data_out\(4),
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[4]~61_combout\);

-- Location: LCCOMB_X29_Y26_N20
\mchn|bnk|Rb_data[4]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[4]~62_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[4]~61_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(4))) # (!\mchn|bnk|Rb_data[4]~61_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(4)))))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|Rb_data[4]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|regfor:15:reg|data_out\(4),
	datac => \mchn|bnk|regfor:14:reg|data_out\(4),
	datad => \mchn|bnk|Rb_data[4]~61_combout\,
	combout => \mchn|bnk|Rb_data[4]~62_combout\);

-- Location: LCFF_X31_Y30_N3
\mchn|bnk|regfor:6:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[4]~31_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(4));

-- Location: LCCOMB_X31_Y26_N8
\mchn|bnk|regfor:4:reg|data_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:4:reg|data_out[4]~feeder_combout\ = \mchn|mxdata|S_out[4]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[4]~31_combout\,
	combout => \mchn|bnk|regfor:4:reg|data_out[4]~feeder_combout\);

-- Location: LCFF_X31_Y26_N9
\mchn|bnk|regfor:4:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:4:reg|data_out[4]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(4));

-- Location: LCCOMB_X31_Y26_N10
\mchn|bnk|Rb_data[4]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[4]~54_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(4)) # ((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|regfor:4:reg|data_out\(4) & 
-- !\mchn|regb_address[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(4),
	datab => \mchn|bnk|regfor:4:reg|data_out\(4),
	datac => \mchn|regb_address[0]~2_combout\,
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[4]~54_combout\);

-- Location: LCCOMB_X31_Y26_N4
\mchn|bnk|Rb_data[4]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[4]~55_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[4]~54_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(4))) # (!\mchn|bnk|Rb_data[4]~54_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(4)))))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|Rb_data[4]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(4),
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|regfor:6:reg|data_out\(4),
	datad => \mchn|bnk|Rb_data[4]~54_combout\,
	combout => \mchn|bnk|Rb_data[4]~55_combout\);

-- Location: LCFF_X31_Y30_N29
\mchn|bnk|regfor:2:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[4]~31_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(4));

-- Location: LCCOMB_X31_Y29_N4
\mchn|bnk|Rb_data[4]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[4]~58_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(4)))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(4),
	datab => \mchn|bnk|regfor:2:reg|data_out\(4),
	datac => \mchn|regb_address[0]~2_combout\,
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[4]~58_combout\);

-- Location: LCCOMB_X31_Y29_N26
\mchn|bnk|Rb_data[4]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[4]~59_combout\ = (\mchn|bnk|Rb_data[4]~58_combout\ & ((\mchn|bnk|regfor:3:reg|data_out\(4)) # ((!\mchn|regb_address[0]~2_combout\)))) # (!\mchn|bnk|Rb_data[4]~58_combout\ & (((\mchn|regb_address[0]~2_combout\ & 
-- \mchn|bnk|regfor:1:reg|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(4),
	datab => \mchn|bnk|Rb_data[4]~58_combout\,
	datac => \mchn|regb_address[0]~2_combout\,
	datad => \mchn|bnk|regfor:1:reg|data_out\(4),
	combout => \mchn|bnk|Rb_data[4]~59_combout\);

-- Location: LCCOMB_X30_Y30_N22
\mchn|bnk|regfor:11:reg|data_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:11:reg|data_out[4]~feeder_combout\ = \mchn|mxdata|S_out[4]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[4]~31_combout\,
	combout => \mchn|bnk|regfor:11:reg|data_out[4]~feeder_combout\);

-- Location: LCFF_X30_Y30_N23
\mchn|bnk|regfor:11:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:11:reg|data_out[4]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(4));

-- Location: LCFF_X29_Y27_N31
\mchn|bnk|regfor:10:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[4]~31_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(4));

-- Location: LCCOMB_X29_Y27_N24
\mchn|bnk|Rb_data[4]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[4]~56_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(4)))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:8:reg|data_out\(4),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|regb_address[1]~3_combout\,
	datad => \mchn|bnk|regfor:10:reg|data_out\(4),
	combout => \mchn|bnk|Rb_data[4]~56_combout\);

-- Location: LCCOMB_X30_Y30_N16
\mchn|bnk|Rb_data[4]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[4]~57_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[4]~56_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(4)))) # (!\mchn|bnk|Rb_data[4]~56_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(4))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[4]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(4),
	datab => \mchn|bnk|regfor:11:reg|data_out\(4),
	datac => \mchn|regb_address[0]~2_combout\,
	datad => \mchn|bnk|Rb_data[4]~56_combout\,
	combout => \mchn|bnk|Rb_data[4]~57_combout\);

-- Location: LCCOMB_X31_Y26_N6
\mchn|bnk|Rb_data[4]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[4]~60_combout\ = (\mchn|regb_address[2]~0_combout\ & (\mchn|regb_address[3]~1_combout\)) # (!\mchn|regb_address[2]~0_combout\ & ((\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[4]~57_combout\))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (\mchn|bnk|Rb_data[4]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|Rb_data[4]~59_combout\,
	datad => \mchn|bnk|Rb_data[4]~57_combout\,
	combout => \mchn|bnk|Rb_data[4]~60_combout\);

-- Location: LCCOMB_X27_Y26_N8
\mchn|bnk|Rb_data[4]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[4]~63_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[4]~60_combout\ & (\mchn|bnk|Rb_data[4]~62_combout\)) # (!\mchn|bnk|Rb_data[4]~60_combout\ & ((\mchn|bnk|Rb_data[4]~55_combout\))))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|Rb_data[4]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|bnk|Rb_data[4]~62_combout\,
	datac => \mchn|bnk|Rb_data[4]~55_combout\,
	datad => \mchn|bnk|Rb_data[4]~60_combout\,
	combout => \mchn|bnk|Rb_data[4]~63_combout\);

-- Location: LCCOMB_X28_Y29_N24
\mchn|bnk|Mux27~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~18_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|bnk|regfor:13:reg|data_out\(4)) # (\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(4) & ((!\mchn|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:12:reg|data_out\(4),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|regfor:13:reg|data_out\(4),
	datad => \mchn|Selector3~0_combout\,
	combout => \mchn|bnk|Mux27~18_combout\);

-- Location: LCCOMB_X29_Y26_N4
\mchn|bnk|Mux27~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~19_combout\ = (\mchn|bnk|Mux27~18_combout\ & (((\mchn|bnk|regfor:15:reg|data_out\(4)) # (!\mchn|Selector3~0_combout\)))) # (!\mchn|bnk|Mux27~18_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(4) & ((\mchn|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(4),
	datab => \mchn|bnk|regfor:15:reg|data_out\(4),
	datac => \mchn|bnk|Mux27~18_combout\,
	datad => \mchn|Selector3~0_combout\,
	combout => \mchn|bnk|Mux27~19_combout\);

-- Location: LCFF_X28_Y26_N19
\mchn|bnk|regfor:5:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[4]~31_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(4));

-- Location: LCCOMB_X28_Y26_N6
\mchn|bnk|Mux27~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~11_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|Selector3~0_combout\) # (\mchn|bnk|regfor:5:reg|data_out\(4))))) # (!\mchn|Selector4~0_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(4) & (!\mchn|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(4),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|regfor:5:reg|data_out\(4),
	combout => \mchn|bnk|Mux27~11_combout\);

-- Location: LCCOMB_X31_Y26_N24
\mchn|bnk|regfor:7:reg|data_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:7:reg|data_out[4]~feeder_combout\ = \mchn|mxdata|S_out[4]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[4]~31_combout\,
	combout => \mchn|bnk|regfor:7:reg|data_out[4]~feeder_combout\);

-- Location: LCFF_X31_Y26_N25
\mchn|bnk|regfor:7:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:7:reg|data_out[4]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(4));

-- Location: LCCOMB_X31_Y30_N2
\mchn|bnk|Mux27~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~12_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux27~11_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(4)))) # (!\mchn|bnk|Mux27~11_combout\ & (\mchn|bnk|regfor:6:reg|data_out\(4))))) # (!\mchn|Selector3~0_combout\ & 
-- (\mchn|bnk|Mux27~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|Mux27~11_combout\,
	datac => \mchn|bnk|regfor:6:reg|data_out\(4),
	datad => \mchn|bnk|regfor:7:reg|data_out\(4),
	combout => \mchn|bnk|Mux27~12_combout\);

-- Location: LCCOMB_X31_Y29_N8
\mchn|bnk|Mux27~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~15_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(4)))) # (!\mchn|Selector3~0_combout\ & 
-- (\mchn|bnk|regfor:0:reg|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(4),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|regfor:2:reg|data_out\(4),
	datad => \mchn|Selector3~0_combout\,
	combout => \mchn|bnk|Mux27~15_combout\);

-- Location: LCCOMB_X31_Y29_N2
\mchn|bnk|Mux27~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~16_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux27~15_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(4))) # (!\mchn|bnk|Mux27~15_combout\ & ((\mchn|bnk|regfor:1:reg|data_out\(4)))))) # (!\mchn|Selector4~0_combout\ & 
-- (((\mchn|bnk|Mux27~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(4),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|Mux27~15_combout\,
	datad => \mchn|bnk|regfor:1:reg|data_out\(4),
	combout => \mchn|bnk|Mux27~16_combout\);

-- Location: LCFF_X29_Y27_N17
\mchn|bnk|regfor:8:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[4]~31_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(4));

-- Location: LCCOMB_X29_Y27_N10
\mchn|bnk|Mux27~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~13_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(4)) # ((\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & (((\mchn|bnk|regfor:8:reg|data_out\(4) & !\mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|regfor:10:reg|data_out\(4),
	datac => \mchn|bnk|regfor:8:reg|data_out\(4),
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux27~13_combout\);

-- Location: LCCOMB_X30_Y30_N18
\mchn|bnk|Mux27~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~14_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux27~13_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(4)))) # (!\mchn|bnk|Mux27~13_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(4))))) # (!\mchn|Selector4~0_combout\ & 
-- (((\mchn|bnk|Mux27~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(4),
	datab => \mchn|bnk|regfor:11:reg|data_out\(4),
	datac => \mchn|Selector4~0_combout\,
	datad => \mchn|bnk|Mux27~13_combout\,
	combout => \mchn|bnk|Mux27~14_combout\);

-- Location: LCCOMB_X31_Y29_N24
\mchn|bnk|Mux27~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~17_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|bnk|Mux27~14_combout\) # (\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & (\mchn|bnk|Mux27~16_combout\ & ((!\mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|Mux27~16_combout\,
	datac => \mchn|bnk|Mux27~14_combout\,
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux27~17_combout\);

-- Location: LCCOMB_X31_Y26_N16
\mchn|bnk|Mux27~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~20_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|Mux27~17_combout\ & (\mchn|bnk|Mux27~19_combout\)) # (!\mchn|bnk|Mux27~17_combout\ & ((\mchn|bnk|Mux27~12_combout\))))) # (!\mchn|Selector2~0_combout\ & 
-- (((\mchn|bnk|Mux27~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector2~0_combout\,
	datab => \mchn|bnk|Mux27~19_combout\,
	datac => \mchn|bnk|Mux27~12_combout\,
	datad => \mchn|bnk|Mux27~17_combout\,
	combout => \mchn|bnk|Mux27~20_combout\);

-- Location: LCCOMB_X29_Y27_N16
\mchn|WideNor5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|WideNor5~combout\ = (\mchn|estado.add~regout\) # (\mchn|estado.store~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datad => \mchn|estado.store~regout\,
	combout => \mchn|WideNor5~combout\);

-- Location: LCCOMB_X27_Y26_N26
\mchn|ALU|inter_carry[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[4]~3_combout\ = (\mchn|bnk|Rb_data[3]~53_combout\ & ((\mchn|ALU|inter_carry[3]~2_combout\) # ((\mchn|WideNor5~combout\ & \mchn|bnk|Mux28~20_combout\)))) # (!\mchn|bnk|Rb_data[3]~53_combout\ & (\mchn|WideNor5~combout\ & 
-- (\mchn|bnk|Mux28~20_combout\ & \mchn|ALU|inter_carry[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[3]~53_combout\,
	datab => \mchn|WideNor5~combout\,
	datac => \mchn|bnk|Mux28~20_combout\,
	datad => \mchn|ALU|inter_carry[3]~2_combout\,
	combout => \mchn|ALU|inter_carry[4]~3_combout\);

-- Location: LCCOMB_X31_Y26_N14
\mchn|mxdata|S_out[4]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[4]~46_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[4]~63_combout\ $ (\mchn|bnk|Mux27~20_combout\ $ (\mchn|ALU|inter_carry[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datab => \mchn|bnk|Rb_data[4]~63_combout\,
	datac => \mchn|bnk|Mux27~20_combout\,
	datad => \mchn|ALU|inter_carry[4]~3_combout\,
	combout => \mchn|mxdata|S_out[4]~46_combout\);

-- Location: LCFF_X31_Y28_N7
\mchn|bnk|regfor:14:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[5]~32_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(5));

-- Location: LCFF_X31_Y29_N21
\mchn|bnk|regfor:2:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[5]~32_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(5));

-- Location: LCFF_X31_Y29_N11
\mchn|bnk|regfor:10:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[5]~32_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(5));

-- Location: LCCOMB_X31_Y29_N20
\mchn|bnk|Rb_data[5]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[5]~65_combout\ = (\mchn|regb_address[2]~0_combout\ & (\mchn|regb_address[3]~1_combout\)) # (!\mchn|regb_address[2]~0_combout\ & ((\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(5)))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (\mchn|bnk|regfor:2:reg|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|regfor:2:reg|data_out\(5),
	datad => \mchn|bnk|regfor:10:reg|data_out\(5),
	combout => \mchn|bnk|Rb_data[5]~65_combout\);

-- Location: LCCOMB_X30_Y26_N22
\mchn|bnk|Rb_data[5]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[5]~66_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[5]~65_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(5)))) # (!\mchn|bnk|Rb_data[5]~65_combout\ & (\mchn|bnk|regfor:6:reg|data_out\(5))))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|Rb_data[5]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(5),
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|bnk|regfor:14:reg|data_out\(5),
	datad => \mchn|bnk|Rb_data[5]~65_combout\,
	combout => \mchn|bnk|Rb_data[5]~66_combout\);

-- Location: LCFF_X31_Y28_N25
\mchn|bnk|regfor:12:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[5]~32_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(5));

-- Location: LCFF_X28_Y31_N1
\mchn|bnk|regfor:0:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[5]~32_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(5));

-- Location: LCCOMB_X30_Y26_N12
\mchn|bnk|Rb_data[5]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[5]~69_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:8:reg|data_out\(5)) # ((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|regfor:0:reg|data_out\(5) & 
-- !\mchn|regb_address[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:8:reg|data_out\(5),
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|regfor:0:reg|data_out\(5),
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[5]~69_combout\);

-- Location: LCCOMB_X30_Y26_N2
\mchn|bnk|Rb_data[5]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[5]~70_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[5]~69_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(5)))) # (!\mchn|bnk|Rb_data[5]~69_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(5))))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|Rb_data[5]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(5),
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|bnk|regfor:12:reg|data_out\(5),
	datad => \mchn|bnk|Rb_data[5]~69_combout\,
	combout => \mchn|bnk|Rb_data[5]~70_combout\);

-- Location: LCFF_X30_Y25_N23
\mchn|bnk|regfor:9:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[5]~32_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(5));

-- Location: LCCOMB_X29_Y29_N14
\mchn|bnk|regfor:1:reg|data_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:1:reg|data_out[5]~feeder_combout\ = \mchn|mxdata|S_out[5]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[5]~32_combout\,
	combout => \mchn|bnk|regfor:1:reg|data_out[5]~feeder_combout\);

-- Location: LCFF_X29_Y29_N15
\mchn|bnk|regfor:1:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:1:reg|data_out[5]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(5));

-- Location: LCCOMB_X30_Y26_N8
\mchn|bnk|Rb_data[5]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[5]~67_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(5)) # ((\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|regfor:1:reg|data_out\(5) & 
-- !\mchn|regb_address[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(5),
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|bnk|regfor:1:reg|data_out\(5),
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[5]~67_combout\);

-- Location: LCCOMB_X30_Y26_N6
\mchn|bnk|Rb_data[5]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[5]~68_combout\ = (\mchn|bnk|Rb_data[5]~67_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(5)) # ((!\mchn|regb_address[3]~1_combout\)))) # (!\mchn|bnk|Rb_data[5]~67_combout\ & (((\mchn|bnk|regfor:9:reg|data_out\(5) & 
-- \mchn|regb_address[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(5),
	datab => \mchn|bnk|regfor:9:reg|data_out\(5),
	datac => \mchn|bnk|Rb_data[5]~67_combout\,
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[5]~68_combout\);

-- Location: LCCOMB_X30_Y26_N16
\mchn|bnk|Rb_data[5]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[5]~71_combout\ = (\mchn|regb_address[1]~3_combout\ & (((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[5]~68_combout\))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|Rb_data[5]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|Rb_data[5]~70_combout\,
	datac => \mchn|regb_address[0]~2_combout\,
	datad => \mchn|bnk|Rb_data[5]~68_combout\,
	combout => \mchn|bnk|Rb_data[5]~71_combout\);

-- Location: LCCOMB_X29_Y25_N8
\mchn|bnk|regfor:11:reg|data_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:11:reg|data_out[5]~feeder_combout\ = \mchn|mxdata|S_out[5]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[5]~32_combout\,
	combout => \mchn|bnk|regfor:11:reg|data_out[5]~feeder_combout\);

-- Location: LCFF_X29_Y25_N9
\mchn|bnk|regfor:11:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:11:reg|data_out[5]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(5));

-- Location: LCFF_X29_Y30_N19
\mchn|bnk|regfor:7:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[5]~32_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(5));

-- Location: LCFF_X29_Y30_N13
\mchn|bnk|regfor:3:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[5]~32_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(5));

-- Location: LCCOMB_X29_Y30_N12
\mchn|bnk|Rb_data[5]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[5]~72_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(5)) # ((\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|regfor:3:reg|data_out\(5) & 
-- !\mchn|regb_address[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|bnk|regfor:7:reg|data_out\(5),
	datac => \mchn|bnk|regfor:3:reg|data_out\(5),
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[5]~72_combout\);

-- Location: LCCOMB_X29_Y25_N26
\mchn|bnk|Rb_data[5]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[5]~73_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[5]~72_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(5))) # (!\mchn|bnk|Rb_data[5]~72_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(5)))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[5]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(5),
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|regfor:11:reg|data_out\(5),
	datad => \mchn|bnk|Rb_data[5]~72_combout\,
	combout => \mchn|bnk|Rb_data[5]~73_combout\);

-- Location: LCCOMB_X30_Y26_N14
\mchn|bnk|Rb_data[5]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[5]~74_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[5]~71_combout\ & ((\mchn|bnk|Rb_data[5]~73_combout\))) # (!\mchn|bnk|Rb_data[5]~71_combout\ & (\mchn|bnk|Rb_data[5]~66_combout\)))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|Rb_data[5]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|Rb_data[5]~66_combout\,
	datac => \mchn|bnk|Rb_data[5]~71_combout\,
	datad => \mchn|bnk|Rb_data[5]~73_combout\,
	combout => \mchn|bnk|Rb_data[5]~74_combout\);

-- Location: LCCOMB_X27_Y26_N14
\mchn|bnk|Rb_data[4]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[4]~64_combout\ = (\mchn|bnk|Rb_data[4]~63_combout\ & \mchn|estado.add~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mchn|bnk|Rb_data[4]~63_combout\,
	datad => \mchn|estado.add~regout\,
	combout => \mchn|bnk|Rb_data[4]~64_combout\);

-- Location: LCCOMB_X27_Y26_N30
\mchn|ALU|inter_carry[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[5]~4_combout\ = (\mchn|bnk|Rb_data[4]~64_combout\ & ((\mchn|ALU|inter_carry[4]~3_combout\) # ((\mchn|WideNor5~combout\ & \mchn|bnk|Mux27~20_combout\)))) # (!\mchn|bnk|Rb_data[4]~64_combout\ & (\mchn|WideNor5~combout\ & 
-- (\mchn|bnk|Mux27~20_combout\ & \mchn|ALU|inter_carry[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|WideNor5~combout\,
	datab => \mchn|bnk|Mux27~20_combout\,
	datac => \mchn|bnk|Rb_data[4]~64_combout\,
	datad => \mchn|ALU|inter_carry[4]~3_combout\,
	combout => \mchn|ALU|inter_carry[5]~4_combout\);

-- Location: LCFF_X30_Y25_N1
\mchn|bnk|regfor:8:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[5]~32_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(5));

-- Location: LCCOMB_X30_Y26_N0
\mchn|bnk|Mux26~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~15_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|regfor:8:reg|data_out\(5)) # ((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & (((\mchn|bnk|regfor:0:reg|data_out\(5) & !\mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:8:reg|data_out\(5),
	datac => \mchn|bnk|regfor:0:reg|data_out\(5),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux26~15_combout\);

-- Location: LCCOMB_X30_Y26_N18
\mchn|bnk|Mux26~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~16_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|Mux26~15_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(5)))) # (!\mchn|bnk|Mux26~15_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(5))))) # (!\mchn|Selector2~0_combout\ & 
-- (((\mchn|bnk|Mux26~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(5),
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|bnk|regfor:12:reg|data_out\(5),
	datad => \mchn|bnk|Mux26~15_combout\,
	combout => \mchn|bnk|Mux26~16_combout\);

-- Location: LCCOMB_X30_Y26_N20
\mchn|bnk|Mux26~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~17_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux26~14_combout\) # ((\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & (((!\mchn|Selector3~0_combout\ & \mchn|bnk|Mux26~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux26~14_combout\,
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|Mux26~16_combout\,
	combout => \mchn|bnk|Mux26~17_combout\);

-- Location: LCCOMB_X31_Y29_N10
\mchn|bnk|Mux26~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~11_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|bnk|regfor:10:reg|data_out\(5)) # (\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & (\mchn|bnk|regfor:2:reg|data_out\(5) & ((!\mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:2:reg|data_out\(5),
	datac => \mchn|bnk|regfor:10:reg|data_out\(5),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux26~11_combout\);

-- Location: LCCOMB_X30_Y26_N28
\mchn|bnk|Mux26~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~12_combout\ = (\mchn|bnk|Mux26~11_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(5)) # ((!\mchn|Selector2~0_combout\)))) # (!\mchn|bnk|Mux26~11_combout\ & (((\mchn|bnk|regfor:6:reg|data_out\(5) & \mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(5),
	datab => \mchn|bnk|Mux26~11_combout\,
	datac => \mchn|bnk|regfor:6:reg|data_out\(5),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux26~12_combout\);

-- Location: LCCOMB_X30_Y26_N26
\mchn|bnk|Mux26~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~20_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux26~17_combout\ & (\mchn|bnk|Mux26~19_combout\)) # (!\mchn|bnk|Mux26~17_combout\ & ((\mchn|bnk|Mux26~12_combout\))))) # (!\mchn|Selector3~0_combout\ & 
-- (((\mchn|bnk|Mux26~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux26~19_combout\,
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|bnk|Mux26~17_combout\,
	datad => \mchn|bnk|Mux26~12_combout\,
	combout => \mchn|bnk|Mux26~20_combout\);

-- Location: LCCOMB_X30_Y27_N26
\mchn|mxdata|S_out[5]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[5]~47_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[5]~74_combout\ $ (\mchn|ALU|inter_carry[5]~4_combout\ $ (\mchn|bnk|Mux26~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datab => \mchn|bnk|Rb_data[5]~74_combout\,
	datac => \mchn|ALU|inter_carry[5]~4_combout\,
	datad => \mchn|bnk|Mux26~20_combout\,
	combout => \mchn|mxdata|S_out[5]~47_combout\);

-- Location: LCFF_X25_Y26_N17
\mchn|bnk|regfor:11:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[6]~33_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(6));

-- Location: LCFF_X24_Y26_N1
\mchn|bnk|regfor:10:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[6]~33_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(6));

-- Location: LCCOMB_X24_Y26_N0
\mchn|bnk|Rb_data[6]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[6]~77_combout\ = (\mchn|bnk|Rb_data[6]~76_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(6)) # ((!\mchn|regb_address[1]~3_combout\)))) # (!\mchn|bnk|Rb_data[6]~76_combout\ & (((\mchn|bnk|regfor:10:reg|data_out\(6) & 
-- \mchn|regb_address[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[6]~76_combout\,
	datab => \mchn|bnk|regfor:11:reg|data_out\(6),
	datac => \mchn|bnk|regfor:10:reg|data_out\(6),
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[6]~77_combout\);

-- Location: LCFF_X25_Y28_N21
\mchn|bnk|regfor:0:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[6]~33_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(6));

-- Location: LCCOMB_X25_Y26_N14
\mchn|bnk|Rb_data[6]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[6]~80_combout\ = (\mchn|regb_address[1]~3_combout\ & (((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|regfor:1:reg|data_out\(6))) # 
-- (!\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|regfor:0:reg|data_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:1:reg|data_out\(6),
	datab => \mchn|bnk|regfor:0:reg|data_out\(6),
	datac => \mchn|regb_address[1]~3_combout\,
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[6]~80_combout\);

-- Location: LCCOMB_X25_Y26_N24
\mchn|bnk|Rb_data[6]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[6]~81_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[6]~80_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(6))) # (!\mchn|bnk|Rb_data[6]~80_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(6)))))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|Rb_data[6]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(6),
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|Rb_data[6]~80_combout\,
	datad => \mchn|bnk|regfor:2:reg|data_out\(6),
	combout => \mchn|bnk|Rb_data[6]~81_combout\);

-- Location: LCFF_X29_Y28_N23
\mchn|bnk|regfor:5:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[6]~33_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(6));

-- Location: LCCOMB_X24_Y28_N0
\mchn|bnk|regfor:6:reg|data_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:6:reg|data_out[6]~feeder_combout\ = \mchn|mxdata|S_out[6]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[6]~33_combout\,
	combout => \mchn|bnk|regfor:6:reg|data_out[6]~feeder_combout\);

-- Location: LCFF_X24_Y28_N1
\mchn|bnk|regfor:6:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:6:reg|data_out[6]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(6));

-- Location: LCCOMB_X28_Y28_N22
\mchn|bnk|Rb_data[6]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[6]~78_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(6)))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(6),
	datab => \mchn|bnk|regfor:6:reg|data_out\(6),
	datac => \mchn|regb_address[0]~2_combout\,
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[6]~78_combout\);

-- Location: LCCOMB_X29_Y28_N22
\mchn|bnk|Rb_data[6]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[6]~79_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[6]~78_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(6))) # (!\mchn|bnk|Rb_data[6]~78_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(6)))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[6]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(6),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|regfor:5:reg|data_out\(6),
	datad => \mchn|bnk|Rb_data[6]~78_combout\,
	combout => \mchn|bnk|Rb_data[6]~79_combout\);

-- Location: LCCOMB_X25_Y26_N6
\mchn|bnk|Rb_data[6]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[6]~82_combout\ = (\mchn|regb_address[3]~1_combout\ & (\mchn|regb_address[2]~0_combout\)) # (!\mchn|regb_address[3]~1_combout\ & ((\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[6]~79_combout\))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|Rb_data[6]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|bnk|Rb_data[6]~81_combout\,
	datad => \mchn|bnk|Rb_data[6]~79_combout\,
	combout => \mchn|bnk|Rb_data[6]~82_combout\);

-- Location: LCCOMB_X25_Y26_N26
\mchn|bnk|Rb_data[6]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[6]~85_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[6]~82_combout\ & (\mchn|bnk|Rb_data[6]~84_combout\)) # (!\mchn|bnk|Rb_data[6]~82_combout\ & ((\mchn|bnk|Rb_data[6]~77_combout\))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[6]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[6]~84_combout\,
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|Rb_data[6]~77_combout\,
	datad => \mchn|bnk|Rb_data[6]~82_combout\,
	combout => \mchn|bnk|Rb_data[6]~85_combout\);

-- Location: LCCOMB_X25_Y26_N22
\mchn|bnk|Mux25~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~15_combout\ = (\mchn|Selector3~0_combout\ & (((\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & ((\mchn|Selector4~0_combout\ & (\mchn|bnk|regfor:1:reg|data_out\(6))) # (!\mchn|Selector4~0_combout\ & 
-- ((\mchn|bnk|regfor:0:reg|data_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:1:reg|data_out\(6),
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|Selector4~0_combout\,
	datad => \mchn|bnk|regfor:0:reg|data_out\(6),
	combout => \mchn|bnk|Mux25~15_combout\);

-- Location: LCCOMB_X25_Y26_N28
\mchn|bnk|Mux25~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~16_combout\ = (\mchn|bnk|Mux25~15_combout\ & ((\mchn|bnk|regfor:3:reg|data_out\(6)) # ((!\mchn|Selector3~0_combout\)))) # (!\mchn|bnk|Mux25~15_combout\ & (((\mchn|Selector3~0_combout\ & \mchn|bnk|regfor:2:reg|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(6),
	datab => \mchn|bnk|Mux25~15_combout\,
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|regfor:2:reg|data_out\(6),
	combout => \mchn|bnk|Mux25~16_combout\);

-- Location: LCFF_X29_Y28_N13
\mchn|bnk|regfor:7:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[6]~33_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(6));

-- Location: LCCOMB_X29_Y28_N12
\mchn|bnk|Mux25~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~14_combout\ = (\mchn|bnk|Mux25~13_combout\ & (((\mchn|bnk|regfor:7:reg|data_out\(6)) # (!\mchn|Selector4~0_combout\)))) # (!\mchn|bnk|Mux25~13_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(6) & ((\mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux25~13_combout\,
	datab => \mchn|bnk|regfor:5:reg|data_out\(6),
	datac => \mchn|bnk|regfor:7:reg|data_out\(6),
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux25~14_combout\);

-- Location: LCCOMB_X25_Y26_N30
\mchn|bnk|Mux25~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~17_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & ((\mchn|bnk|Mux25~14_combout\))) # (!\mchn|Selector2~0_combout\ & 
-- (\mchn|bnk|Mux25~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|Mux25~16_combout\,
	datac => \mchn|bnk|Mux25~14_combout\,
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux25~17_combout\);

-- Location: LCCOMB_X24_Y25_N30
\mchn|bnk|regfor:13:reg|data_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:13:reg|data_out[6]~feeder_combout\ = \mchn|mxdata|S_out[6]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[6]~33_combout\,
	combout => \mchn|bnk|regfor:13:reg|data_out[6]~feeder_combout\);

-- Location: LCFF_X24_Y25_N31
\mchn|bnk|regfor:13:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:13:reg|data_out[6]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(6));

-- Location: LCCOMB_X25_Y29_N6
\mchn|bnk|regfor:14:reg|data_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:14:reg|data_out[6]~feeder_combout\ = \mchn|mxdata|S_out[6]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[6]~33_combout\,
	combout => \mchn|bnk|regfor:14:reg|data_out[6]~feeder_combout\);

-- Location: LCFF_X25_Y29_N7
\mchn|bnk|regfor:14:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:14:reg|data_out[6]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(6));

-- Location: LCCOMB_X25_Y28_N30
\mchn|bnk|Mux25~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~18_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(6)))) # (!\mchn|Selector3~0_combout\ & 
-- (\mchn|bnk|regfor:12:reg|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:12:reg|data_out\(6),
	datab => \mchn|bnk|regfor:14:reg|data_out\(6),
	datac => \mchn|Selector4~0_combout\,
	datad => \mchn|Selector3~0_combout\,
	combout => \mchn|bnk|Mux25~18_combout\);

-- Location: LCCOMB_X25_Y26_N20
\mchn|bnk|Mux25~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~19_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux25~18_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(6))) # (!\mchn|bnk|Mux25~18_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(6)))))) # (!\mchn|Selector4~0_combout\ & 
-- (((\mchn|bnk|Mux25~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(6),
	datab => \mchn|bnk|regfor:13:reg|data_out\(6),
	datac => \mchn|Selector4~0_combout\,
	datad => \mchn|bnk|Mux25~18_combout\,
	combout => \mchn|bnk|Mux25~19_combout\);

-- Location: LCFF_X24_Y25_N1
\mchn|bnk|regfor:9:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[6]~33_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(6));

-- Location: LCFF_X24_Y26_N7
\mchn|bnk|regfor:8:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[6]~33_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(6));

-- Location: LCCOMB_X24_Y25_N0
\mchn|bnk|Mux25~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~11_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\) # ((\mchn|bnk|regfor:9:reg|data_out\(6))))) # (!\mchn|Selector4~0_combout\ & (!\mchn|Selector3~0_combout\ & ((\mchn|bnk|regfor:8:reg|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|bnk|regfor:9:reg|data_out\(6),
	datad => \mchn|bnk|regfor:8:reg|data_out\(6),
	combout => \mchn|bnk|Mux25~11_combout\);

-- Location: LCCOMB_X24_Y26_N14
\mchn|bnk|Mux25~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~12_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux25~11_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(6))) # (!\mchn|bnk|Mux25~11_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(6)))))) # (!\mchn|Selector3~0_combout\ & 
-- (((\mchn|bnk|Mux25~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|regfor:11:reg|data_out\(6),
	datac => \mchn|bnk|regfor:10:reg|data_out\(6),
	datad => \mchn|bnk|Mux25~11_combout\,
	combout => \mchn|bnk|Mux25~12_combout\);

-- Location: LCCOMB_X25_Y26_N18
\mchn|bnk|Mux25~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~20_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux25~17_combout\ & (\mchn|bnk|Mux25~19_combout\)) # (!\mchn|bnk|Mux25~17_combout\ & ((\mchn|bnk|Mux25~12_combout\))))) # (!\mchn|Selector1~0_combout\ & (\mchn|bnk|Mux25~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|Mux25~17_combout\,
	datac => \mchn|bnk|Mux25~19_combout\,
	datad => \mchn|bnk|Mux25~12_combout\,
	combout => \mchn|bnk|Mux25~20_combout\);

-- Location: LCCOMB_X25_Y26_N2
\mchn|mxdata|S_out[6]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[6]~48_combout\ = (\mchn|estado.add~regout\ & (\mchn|ALU|inter_carry[6]~5_combout\ $ (\mchn|bnk|Rb_data[6]~85_combout\ $ (\mchn|bnk|Mux25~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ALU|inter_carry[6]~5_combout\,
	datab => \mchn|bnk|Rb_data[6]~85_combout\,
	datac => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Mux25~20_combout\,
	combout => \mchn|mxdata|S_out[6]~48_combout\);

-- Location: LCCOMB_X31_Y28_N22
\mchn|bnk|regfor:14:reg|data_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:14:reg|data_out[7]~feeder_combout\ = \mchn|mxdata|S_out[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[7]~34_combout\,
	combout => \mchn|bnk|regfor:14:reg|data_out[7]~feeder_combout\);

-- Location: LCFF_X31_Y28_N23
\mchn|bnk|regfor:14:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:14:reg|data_out[7]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(7));

-- Location: LCFF_X27_Y30_N15
\mchn|bnk|regfor:10:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[7]~34_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(7));

-- Location: LCCOMB_X27_Y29_N20
\mchn|bnk|Mux24~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~14_combout\ = (\mchn|bnk|Mux24~13_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(7)) # ((!\mchn|Selector1~0_combout\)))) # (!\mchn|bnk|Mux24~13_combout\ & (((\mchn|Selector1~0_combout\ & \mchn|bnk|regfor:10:reg|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux24~13_combout\,
	datab => \mchn|bnk|regfor:14:reg|data_out\(7),
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|bnk|regfor:10:reg|data_out\(7),
	combout => \mchn|bnk|Mux24~14_combout\);

-- Location: LCCOMB_X27_Y29_N16
\mchn|bnk|Mux24~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~17_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux24~14_combout\))) # (!\mchn|Selector3~0_combout\ & 
-- (\mchn|bnk|Mux24~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux24~16_combout\,
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|Mux24~14_combout\,
	datad => \mchn|Selector3~0_combout\,
	combout => \mchn|bnk|Mux24~17_combout\);

-- Location: LCCOMB_X24_Y29_N0
\mchn|bnk|regfor:7:reg|data_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:7:reg|data_out[7]~feeder_combout\ = \mchn|mxdata|S_out[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[7]~34_combout\,
	combout => \mchn|bnk|regfor:7:reg|data_out[7]~feeder_combout\);

-- Location: LCFF_X24_Y29_N1
\mchn|bnk|regfor:7:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:7:reg|data_out[7]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(7));

-- Location: LCCOMB_X24_Y29_N22
\mchn|bnk|regfor:15:reg|data_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:15:reg|data_out[7]~feeder_combout\ = \mchn|mxdata|S_out[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[7]~34_combout\,
	combout => \mchn|bnk|regfor:15:reg|data_out[7]~feeder_combout\);

-- Location: LCFF_X24_Y29_N23
\mchn|bnk|regfor:15:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:15:reg|data_out[7]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(7));

-- Location: LCCOMB_X28_Y30_N0
\mchn|bnk|Mux24~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~18_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|bnk|regfor:11:reg|data_out\(7)) # (\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(7) & ((!\mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(7),
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|bnk|regfor:11:reg|data_out\(7),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux24~18_combout\);

-- Location: LCCOMB_X24_Y29_N26
\mchn|bnk|Mux24~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~19_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|Mux24~18_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(7)))) # (!\mchn|bnk|Mux24~18_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(7))))) # (!\mchn|Selector2~0_combout\ & 
-- (((\mchn|bnk|Mux24~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector2~0_combout\,
	datab => \mchn|bnk|regfor:7:reg|data_out\(7),
	datac => \mchn|bnk|regfor:15:reg|data_out\(7),
	datad => \mchn|bnk|Mux24~18_combout\,
	combout => \mchn|bnk|Mux24~19_combout\);

-- Location: LCCOMB_X27_Y29_N18
\mchn|bnk|Mux24~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~20_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux24~17_combout\ & ((\mchn|bnk|Mux24~19_combout\))) # (!\mchn|bnk|Mux24~17_combout\ & (\mchn|bnk|Mux24~12_combout\)))) # (!\mchn|Selector4~0_combout\ & 
-- (((\mchn|bnk|Mux24~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux24~12_combout\,
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|Mux24~17_combout\,
	datad => \mchn|bnk|Mux24~19_combout\,
	combout => \mchn|bnk|Mux24~20_combout\);

-- Location: LCFF_X31_Y28_N1
\mchn|bnk|regfor:12:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[7]~34_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(7));

-- Location: LCFF_X27_Y29_N3
\mchn|bnk|regfor:4:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[7]~34_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(7));

-- Location: LCCOMB_X27_Y29_N24
\mchn|bnk|Rb_data[7]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[7]~91_combout\ = (\mchn|regb_address[3]~1_combout\ & (((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & ((\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:4:reg|data_out\(7)))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(7),
	datab => \mchn|bnk|regfor:4:reg|data_out\(7),
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[7]~91_combout\);

-- Location: LCCOMB_X27_Y29_N30
\mchn|bnk|Rb_data[7]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[7]~92_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[7]~91_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(7)))) # (!\mchn|bnk|Rb_data[7]~91_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(7))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[7]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:8:reg|data_out\(7),
	datab => \mchn|bnk|regfor:12:reg|data_out\(7),
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|bnk|Rb_data[7]~91_combout\,
	combout => \mchn|bnk|Rb_data[7]~92_combout\);

-- Location: LCFF_X27_Y31_N19
\mchn|bnk|regfor:2:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[7]~34_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(7));

-- Location: LCCOMB_X27_Y29_N8
\mchn|bnk|Rb_data[7]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[7]~89_combout\ = (\mchn|regb_address[3]~1_combout\ & (((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & ((\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|regfor:6:reg|data_out\(7))) # 
-- (!\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(7),
	datab => \mchn|bnk|regfor:2:reg|data_out\(7),
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[7]~89_combout\);

-- Location: LCCOMB_X27_Y29_N22
\mchn|bnk|Rb_data[7]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[7]~90_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[7]~89_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(7))) # (!\mchn|bnk|Rb_data[7]~89_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(7)))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[7]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|bnk|regfor:14:reg|data_out\(7),
	datac => \mchn|bnk|Rb_data[7]~89_combout\,
	datad => \mchn|bnk|regfor:10:reg|data_out\(7),
	combout => \mchn|bnk|Rb_data[7]~90_combout\);

-- Location: LCCOMB_X28_Y29_N8
\mchn|bnk|Rb_data[7]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[7]~93_combout\ = (\mchn|regb_address[0]~2_combout\ & (\mchn|regb_address[1]~3_combout\)) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[7]~90_combout\))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|Rb_data[7]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|Rb_data[7]~92_combout\,
	datad => \mchn|bnk|Rb_data[7]~90_combout\,
	combout => \mchn|bnk|Rb_data[7]~93_combout\);

-- Location: LCCOMB_X24_Y29_N24
\mchn|bnk|Rb_data[7]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[7]~95_combout\ = (\mchn|bnk|Rb_data[7]~94_combout\ & (((\mchn|bnk|regfor:15:reg|data_out\(7)) # (!\mchn|regb_address[2]~0_combout\)))) # (!\mchn|bnk|Rb_data[7]~94_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(7) & 
-- (\mchn|regb_address[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[7]~94_combout\,
	datab => \mchn|bnk|regfor:7:reg|data_out\(7),
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|bnk|regfor:15:reg|data_out\(7),
	combout => \mchn|bnk|Rb_data[7]~95_combout\);

-- Location: LCCOMB_X27_Y32_N20
\mchn|bnk|regfor:9:reg|data_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:9:reg|data_out[7]~feeder_combout\ = \mchn|mxdata|S_out[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[7]~34_combout\,
	combout => \mchn|bnk|regfor:9:reg|data_out[7]~feeder_combout\);

-- Location: LCFF_X27_Y32_N21
\mchn|bnk|regfor:9:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:9:reg|data_out[7]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(7));

-- Location: LCFF_X27_Y28_N17
\mchn|bnk|regfor:1:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[7]~34_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(7));

-- Location: LCCOMB_X27_Y28_N16
\mchn|bnk|Rb_data[7]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[7]~87_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(7)) # ((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|regfor:1:reg|data_out\(7) & 
-- !\mchn|regb_address[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|bnk|regfor:9:reg|data_out\(7),
	datac => \mchn|bnk|regfor:1:reg|data_out\(7),
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[7]~87_combout\);

-- Location: LCCOMB_X27_Y32_N18
\mchn|bnk|regfor:5:reg|data_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:5:reg|data_out[7]~feeder_combout\ = \mchn|mxdata|S_out[7]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[7]~34_combout\,
	combout => \mchn|bnk|regfor:5:reg|data_out[7]~feeder_combout\);

-- Location: LCFF_X27_Y32_N19
\mchn|bnk|regfor:5:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:5:reg|data_out[7]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(7));

-- Location: LCCOMB_X27_Y32_N8
\mchn|bnk|Rb_data[7]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[7]~88_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[7]~87_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(7))) # (!\mchn|bnk|Rb_data[7]~87_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(7)))))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|Rb_data[7]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(7),
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|bnk|Rb_data[7]~87_combout\,
	datad => \mchn|bnk|regfor:5:reg|data_out\(7),
	combout => \mchn|bnk|Rb_data[7]~88_combout\);

-- Location: LCCOMB_X27_Y29_N28
\mchn|bnk|Rb_data[7]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[7]~96_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[7]~93_combout\ & (\mchn|bnk|Rb_data[7]~95_combout\)) # (!\mchn|bnk|Rb_data[7]~93_combout\ & ((\mchn|bnk|Rb_data[7]~88_combout\))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|Rb_data[7]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|bnk|Rb_data[7]~93_combout\,
	datac => \mchn|bnk|Rb_data[7]~95_combout\,
	datad => \mchn|bnk|Rb_data[7]~88_combout\,
	combout => \mchn|bnk|Rb_data[7]~96_combout\);

-- Location: LCCOMB_X27_Y29_N14
\mchn|mxdata|S_out[7]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[7]~49_combout\ = (\mchn|estado.add~regout\ & (\mchn|ALU|inter_carry[7]~6_combout\ $ (\mchn|bnk|Mux24~20_combout\ $ (\mchn|bnk|Rb_data[7]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ALU|inter_carry[7]~6_combout\,
	datab => \mchn|bnk|Mux24~20_combout\,
	datac => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Rb_data[7]~96_combout\,
	combout => \mchn|mxdata|S_out[7]~49_combout\);

-- Location: LCFF_X25_Y25_N31
\mchn|bnk|regfor:14:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[8]~35_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(8));

-- Location: LCFF_X25_Y28_N13
\mchn|bnk|regfor:12:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[8]~35_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(8));

-- Location: LCCOMB_X25_Y25_N2
\mchn|bnk|Rb_data[8]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[8]~105_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|regb_address[1]~3_combout\) # (\mchn|bnk|regfor:13:reg|data_out\(8))))) # (!\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(8) & 
-- (!\mchn|regb_address[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|bnk|regfor:12:reg|data_out\(8),
	datac => \mchn|regb_address[1]~3_combout\,
	datad => \mchn|bnk|regfor:13:reg|data_out\(8),
	combout => \mchn|bnk|Rb_data[8]~105_combout\);

-- Location: LCCOMB_X25_Y25_N30
\mchn|bnk|Rb_data[8]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[8]~106_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[8]~105_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(8))) # (!\mchn|bnk|Rb_data[8]~105_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(8)))))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|Rb_data[8]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(8),
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|regfor:14:reg|data_out\(8),
	datad => \mchn|bnk|Rb_data[8]~105_combout\,
	combout => \mchn|bnk|Rb_data[8]~106_combout\);

-- Location: LCCOMB_X23_Y25_N0
\mchn|bnk|regfor:2:reg|data_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:2:reg|data_out[8]~feeder_combout\ = \mchn|mxdata|S_out[8]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[8]~35_combout\,
	combout => \mchn|bnk|regfor:2:reg|data_out[8]~feeder_combout\);

-- Location: LCFF_X23_Y25_N1
\mchn|bnk|regfor:2:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:2:reg|data_out[8]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(8));

-- Location: LCFF_X25_Y28_N7
\mchn|bnk|regfor:0:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[8]~35_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(8));

-- Location: LCCOMB_X24_Y28_N20
\mchn|bnk|Rb_data[8]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[8]~102_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\) # ((\mchn|bnk|regfor:2:reg|data_out\(8))))) # (!\mchn|regb_address[1]~3_combout\ & (!\mchn|regb_address[0]~2_combout\ & 
-- ((\mchn|bnk|regfor:0:reg|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|regfor:2:reg|data_out\(8),
	datad => \mchn|bnk|regfor:0:reg|data_out\(8),
	combout => \mchn|bnk|Rb_data[8]~102_combout\);

-- Location: LCFF_X27_Y25_N27
\mchn|bnk|regfor:1:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[8]~35_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(8));

-- Location: LCCOMB_X24_Y28_N30
\mchn|bnk|Rb_data[8]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[8]~103_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[8]~102_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(8))) # (!\mchn|bnk|Rb_data[8]~102_combout\ & ((\mchn|bnk|regfor:1:reg|data_out\(8)))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[8]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(8),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|Rb_data[8]~102_combout\,
	datad => \mchn|bnk|regfor:1:reg|data_out\(8),
	combout => \mchn|bnk|Rb_data[8]~103_combout\);

-- Location: LCFF_X24_Y26_N9
\mchn|bnk|regfor:8:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[8]~35_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(8));

-- Location: LCCOMB_X24_Y26_N8
\mchn|bnk|Rb_data[8]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[8]~100_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(8))) # 
-- (!\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:8:reg|data_out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(8),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|regfor:8:reg|data_out\(8),
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[8]~100_combout\);

-- Location: LCCOMB_X22_Y25_N0
\mchn|bnk|regfor:11:reg|data_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:11:reg|data_out[8]~feeder_combout\ = \mchn|mxdata|S_out[8]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[8]~35_combout\,
	combout => \mchn|bnk|regfor:11:reg|data_out[8]~feeder_combout\);

-- Location: LCFF_X22_Y25_N1
\mchn|bnk|regfor:11:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:11:reg|data_out[8]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(8));

-- Location: LCFF_X27_Y25_N13
\mchn|bnk|regfor:9:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[8]~35_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(8));

-- Location: LCCOMB_X25_Y25_N6
\mchn|bnk|Rb_data[8]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[8]~101_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[8]~100_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(8))) # (!\mchn|bnk|Rb_data[8]~100_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(8)))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|Rb_data[8]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|bnk|Rb_data[8]~100_combout\,
	datac => \mchn|bnk|regfor:11:reg|data_out\(8),
	datad => \mchn|bnk|regfor:9:reg|data_out\(8),
	combout => \mchn|bnk|Rb_data[8]~101_combout\);

-- Location: LCCOMB_X25_Y25_N8
\mchn|bnk|Rb_data[8]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[8]~104_combout\ = (\mchn|regb_address[2]~0_combout\ & (\mchn|regb_address[3]~1_combout\)) # (!\mchn|regb_address[2]~0_combout\ & ((\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[8]~101_combout\))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (\mchn|bnk|Rb_data[8]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|Rb_data[8]~103_combout\,
	datad => \mchn|bnk|Rb_data[8]~101_combout\,
	combout => \mchn|bnk|Rb_data[8]~104_combout\);

-- Location: LCCOMB_X24_Y29_N16
\mchn|bnk|regfor:7:reg|data_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:7:reg|data_out[8]~feeder_combout\ = \mchn|mxdata|S_out[8]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[8]~35_combout\,
	combout => \mchn|bnk|regfor:7:reg|data_out[8]~feeder_combout\);

-- Location: LCFF_X24_Y29_N17
\mchn|bnk|regfor:7:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:7:reg|data_out[8]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(8));

-- Location: LCFF_X24_Y28_N29
\mchn|bnk|regfor:6:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[8]~35_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(8));

-- Location: LCFF_X24_Y28_N19
\mchn|bnk|regfor:4:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[8]~35_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(8));

-- Location: LCCOMB_X24_Y28_N18
\mchn|bnk|Rb_data[8]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[8]~98_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(8)) # ((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|regfor:4:reg|data_out\(8) & 
-- !\mchn|regb_address[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(8),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|regfor:4:reg|data_out\(8),
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[8]~98_combout\);

-- Location: LCCOMB_X24_Y28_N28
\mchn|bnk|Rb_data[8]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[8]~99_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[8]~98_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(8))) # (!\mchn|bnk|Rb_data[8]~98_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(8)))))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|Rb_data[8]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|regfor:7:reg|data_out\(8),
	datac => \mchn|bnk|regfor:6:reg|data_out\(8),
	datad => \mchn|bnk|Rb_data[8]~98_combout\,
	combout => \mchn|bnk|Rb_data[8]~99_combout\);

-- Location: LCCOMB_X25_Y25_N0
\mchn|bnk|Rb_data[8]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[8]~107_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[8]~104_combout\ & (\mchn|bnk|Rb_data[8]~106_combout\)) # (!\mchn|bnk|Rb_data[8]~104_combout\ & ((\mchn|bnk|Rb_data[8]~99_combout\))))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|Rb_data[8]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|bnk|Rb_data[8]~106_combout\,
	datac => \mchn|bnk|Rb_data[8]~104_combout\,
	datad => \mchn|bnk|Rb_data[8]~99_combout\,
	combout => \mchn|bnk|Rb_data[8]~107_combout\);

-- Location: LCFF_X29_Y28_N19
\mchn|bnk|regfor:5:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[8]~35_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(8));

-- Location: LCCOMB_X29_Y28_N18
\mchn|bnk|Mux23~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~11_combout\ = (\mchn|Selector3~0_combout\ & (((\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & ((\mchn|Selector4~0_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(8)))) # (!\mchn|Selector4~0_combout\ & 
-- (\mchn|bnk|regfor:4:reg|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|regfor:4:reg|data_out\(8),
	datac => \mchn|bnk|regfor:5:reg|data_out\(8),
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux23~11_combout\);

-- Location: LCCOMB_X24_Y29_N12
\mchn|bnk|Mux23~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~12_combout\ = (\mchn|bnk|Mux23~11_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(8)) # ((!\mchn|Selector3~0_combout\)))) # (!\mchn|bnk|Mux23~11_combout\ & (((\mchn|bnk|regfor:6:reg|data_out\(8) & \mchn|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(8),
	datab => \mchn|bnk|regfor:6:reg|data_out\(8),
	datac => \mchn|bnk|Mux23~11_combout\,
	datad => \mchn|Selector3~0_combout\,
	combout => \mchn|bnk|Mux23~12_combout\);

-- Location: LCCOMB_X25_Y25_N20
\mchn|bnk|Mux23~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~18_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(8)) # ((\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & (((\mchn|bnk|regfor:12:reg|data_out\(8) & !\mchn|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(8),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|regfor:12:reg|data_out\(8),
	datad => \mchn|Selector3~0_combout\,
	combout => \mchn|bnk|Mux23~18_combout\);

-- Location: LCFF_X25_Y26_N1
\mchn|bnk|regfor:15:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[8]~35_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(8));

-- Location: LCCOMB_X25_Y25_N18
\mchn|bnk|Mux23~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~19_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux23~18_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(8)))) # (!\mchn|bnk|Mux23~18_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(8))))) # (!\mchn|Selector3~0_combout\ & 
-- (((\mchn|bnk|Mux23~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(8),
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|bnk|Mux23~18_combout\,
	datad => \mchn|bnk|regfor:15:reg|data_out\(8),
	combout => \mchn|bnk|Mux23~19_combout\);

-- Location: LCCOMB_X25_Y25_N16
\mchn|bnk|Mux23~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~20_combout\ = (\mchn|bnk|Mux23~17_combout\ & (((\mchn|bnk|Mux23~19_combout\)) # (!\mchn|Selector2~0_combout\))) # (!\mchn|bnk|Mux23~17_combout\ & (\mchn|Selector2~0_combout\ & (\mchn|bnk|Mux23~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux23~17_combout\,
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|bnk|Mux23~12_combout\,
	datad => \mchn|bnk|Mux23~19_combout\,
	combout => \mchn|bnk|Mux23~20_combout\);

-- Location: LCCOMB_X25_Y26_N8
\mchn|bnk|Rb_data[6]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[6]~86_combout\ = (\mchn|estado.add~regout\ & \mchn|bnk|Rb_data[6]~85_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Rb_data[6]~85_combout\,
	combout => \mchn|bnk|Rb_data[6]~86_combout\);

-- Location: LCCOMB_X27_Y26_N4
\mchn|bnk|Rb_data[5]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[5]~75_combout\ = (\mchn|estado.add~regout\ & \mchn|bnk|Rb_data[5]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Rb_data[5]~74_combout\,
	combout => \mchn|bnk|Rb_data[5]~75_combout\);

-- Location: LCCOMB_X27_Y26_N12
\mchn|ALU|inter_carry[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[6]~5_combout\ = (\mchn|bnk|Rb_data[5]~75_combout\ & ((\mchn|ALU|inter_carry[5]~4_combout\) # ((\mchn|WideNor5~combout\ & \mchn|bnk|Mux26~20_combout\)))) # (!\mchn|bnk|Rb_data[5]~75_combout\ & (\mchn|WideNor5~combout\ & 
-- (\mchn|bnk|Mux26~20_combout\ & \mchn|ALU|inter_carry[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|WideNor5~combout\,
	datab => \mchn|bnk|Mux26~20_combout\,
	datac => \mchn|bnk|Rb_data[5]~75_combout\,
	datad => \mchn|ALU|inter_carry[5]~4_combout\,
	combout => \mchn|ALU|inter_carry[6]~5_combout\);

-- Location: LCCOMB_X27_Y26_N10
\mchn|ALU|inter_carry[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[7]~6_combout\ = (\mchn|bnk|Rb_data[6]~86_combout\ & ((\mchn|ALU|inter_carry[6]~5_combout\) # ((\mchn|bnk|Mux25~20_combout\ & \mchn|WideNor5~combout\)))) # (!\mchn|bnk|Rb_data[6]~86_combout\ & (\mchn|bnk|Mux25~20_combout\ & 
-- (\mchn|WideNor5~combout\ & \mchn|ALU|inter_carry[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux25~20_combout\,
	datab => \mchn|WideNor5~combout\,
	datac => \mchn|bnk|Rb_data[6]~86_combout\,
	datad => \mchn|ALU|inter_carry[6]~5_combout\,
	combout => \mchn|ALU|inter_carry[7]~6_combout\);

-- Location: LCCOMB_X27_Y26_N22
\mchn|ALU|inter_carry[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[8]~7_combout\ = (\mchn|bnk|Rb_data[7]~97_combout\ & ((\mchn|ALU|inter_carry[7]~6_combout\) # ((\mchn|WideNor5~combout\ & \mchn|bnk|Mux24~20_combout\)))) # (!\mchn|bnk|Rb_data[7]~97_combout\ & (\mchn|WideNor5~combout\ & 
-- (\mchn|bnk|Mux24~20_combout\ & \mchn|ALU|inter_carry[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[7]~97_combout\,
	datab => \mchn|WideNor5~combout\,
	datac => \mchn|bnk|Mux24~20_combout\,
	datad => \mchn|ALU|inter_carry[7]~6_combout\,
	combout => \mchn|ALU|inter_carry[8]~7_combout\);

-- Location: LCCOMB_X25_Y25_N14
\mchn|mxdata|S_out[8]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[8]~50_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[8]~107_combout\ $ (\mchn|bnk|Mux23~20_combout\ $ (\mchn|ALU|inter_carry[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datab => \mchn|bnk|Rb_data[8]~107_combout\,
	datac => \mchn|bnk|Mux23~20_combout\,
	datad => \mchn|ALU|inter_carry[8]~7_combout\,
	combout => \mchn|mxdata|S_out[8]~50_combout\);

-- Location: LCFF_X28_Y31_N23
\mchn|ir|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \ROM|altsyncram_component|auto_generated|q_a\(9),
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|estado.fetch~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|ir|data_out\(9));

-- Location: LCCOMB_X27_Y30_N4
\mchn|bnk|regfor:10:reg|data_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:10:reg|data_out[11]~feeder_combout\ = \mchn|mxdata|S_out[11]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[11]~38_combout\,
	combout => \mchn|bnk|regfor:10:reg|data_out[11]~feeder_combout\);

-- Location: LCFF_X27_Y30_N5
\mchn|bnk|regfor:10:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:10:reg|data_out[11]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(11));

-- Location: LCCOMB_X25_Y29_N20
\mchn|bnk|regfor:14:reg|data_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:14:reg|data_out[11]~feeder_combout\ = \mchn|mxdata|S_out[11]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[11]~38_combout\,
	combout => \mchn|bnk|regfor:14:reg|data_out[11]~feeder_combout\);

-- Location: LCFF_X25_Y29_N21
\mchn|bnk|regfor:14:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:14:reg|data_out[11]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(11));

-- Location: LCFF_X25_Y27_N5
\mchn|bnk|regfor:6:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[11]~38_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(11));

-- Location: LCCOMB_X25_Y27_N18
\mchn|bnk|Mux20~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~13_combout\ = (\mchn|Selector2~0_combout\ & (((\mchn|bnk|regfor:6:reg|data_out\(11)) # (\mchn|Selector1~0_combout\)))) # (!\mchn|Selector2~0_combout\ & (\mchn|bnk|regfor:2:reg|data_out\(11) & ((!\mchn|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:2:reg|data_out\(11),
	datab => \mchn|bnk|regfor:6:reg|data_out\(11),
	datac => \mchn|Selector2~0_combout\,
	datad => \mchn|Selector1~0_combout\,
	combout => \mchn|bnk|Mux20~13_combout\);

-- Location: LCCOMB_X25_Y27_N8
\mchn|bnk|Mux20~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~14_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux20~13_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(11)))) # (!\mchn|bnk|Mux20~13_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(11))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux20~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:10:reg|data_out\(11),
	datac => \mchn|bnk|regfor:14:reg|data_out\(11),
	datad => \mchn|bnk|Mux20~13_combout\,
	combout => \mchn|bnk|Mux20~14_combout\);

-- Location: LCFF_X28_Y29_N13
\mchn|bnk|regfor:12:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[11]~38_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(11));

-- Location: LCFF_X25_Y27_N23
\mchn|bnk|regfor:4:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[11]~38_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(11));

-- Location: LCCOMB_X25_Y27_N22
\mchn|bnk|Mux20~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~15_combout\ = (\mchn|Selector2~0_combout\ & (((\mchn|bnk|regfor:4:reg|data_out\(11)) # (\mchn|Selector1~0_combout\)))) # (!\mchn|Selector2~0_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(11) & ((!\mchn|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(11),
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|bnk|regfor:4:reg|data_out\(11),
	datad => \mchn|Selector1~0_combout\,
	combout => \mchn|bnk|Mux20~15_combout\);

-- Location: LCCOMB_X25_Y27_N2
\mchn|bnk|Mux20~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~16_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux20~15_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(11)))) # (!\mchn|bnk|Mux20~15_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(11))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux20~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:8:reg|data_out\(11),
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|bnk|regfor:12:reg|data_out\(11),
	datad => \mchn|bnk|Mux20~15_combout\,
	combout => \mchn|bnk|Mux20~16_combout\);

-- Location: LCCOMB_X25_Y27_N12
\mchn|bnk|Mux20~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~17_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux20~14_combout\) # ((\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & (((\mchn|bnk|Mux20~16_combout\ & !\mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|Mux20~14_combout\,
	datac => \mchn|bnk|Mux20~16_combout\,
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux20~17_combout\);

-- Location: LCCOMB_X23_Y27_N22
\mchn|bnk|regfor:5:reg|data_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:5:reg|data_out[11]~feeder_combout\ = \mchn|mxdata|S_out[11]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[11]~38_combout\,
	combout => \mchn|bnk|regfor:5:reg|data_out[11]~feeder_combout\);

-- Location: LCFF_X23_Y27_N23
\mchn|bnk|regfor:5:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:5:reg|data_out[11]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(11));

-- Location: LCCOMB_X23_Y27_N28
\mchn|bnk|regfor:9:reg|data_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:9:reg|data_out[11]~feeder_combout\ = \mchn|mxdata|S_out[11]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[11]~38_combout\,
	combout => \mchn|bnk|regfor:9:reg|data_out[11]~feeder_combout\);

-- Location: LCFF_X23_Y27_N29
\mchn|bnk|regfor:9:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:9:reg|data_out[11]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(11));

-- Location: LCFF_X28_Y24_N9
\mchn|bnk|regfor:1:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[11]~38_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(11));

-- Location: LCCOMB_X23_Y27_N2
\mchn|bnk|Mux20~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~11_combout\ = (\mchn|Selector2~0_combout\ & (((\mchn|Selector1~0_combout\)))) # (!\mchn|Selector2~0_combout\ & ((\mchn|Selector1~0_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(11))) # (!\mchn|Selector1~0_combout\ & 
-- ((\mchn|bnk|regfor:1:reg|data_out\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector2~0_combout\,
	datab => \mchn|bnk|regfor:9:reg|data_out\(11),
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|bnk|regfor:1:reg|data_out\(11),
	combout => \mchn|bnk|Mux20~11_combout\);

-- Location: LCCOMB_X23_Y27_N4
\mchn|bnk|Mux20~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~12_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|Mux20~11_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(11))) # (!\mchn|bnk|Mux20~11_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(11)))))) # (!\mchn|Selector2~0_combout\ & 
-- (((\mchn|bnk|Mux20~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(11),
	datab => \mchn|bnk|regfor:5:reg|data_out\(11),
	datac => \mchn|Selector2~0_combout\,
	datad => \mchn|bnk|Mux20~11_combout\,
	combout => \mchn|bnk|Mux20~12_combout\);

-- Location: LCCOMB_X24_Y27_N22
\mchn|bnk|Mux20~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~20_combout\ = (\mchn|bnk|Mux20~17_combout\ & ((\mchn|bnk|Mux20~19_combout\) # ((!\mchn|Selector4~0_combout\)))) # (!\mchn|bnk|Mux20~17_combout\ & (((\mchn|bnk|Mux20~12_combout\ & \mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux20~19_combout\,
	datab => \mchn|bnk|Mux20~17_combout\,
	datac => \mchn|bnk|Mux20~12_combout\,
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux20~20_combout\);

-- Location: LCFF_X24_Y26_N25
\mchn|bnk|regfor:8:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(10));

-- Location: LCFF_X27_Y25_N21
\mchn|bnk|regfor:9:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(10));

-- Location: LCCOMB_X24_Y26_N4
\mchn|bnk|Rb_data[10]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[10]~120_combout\ = (\mchn|regb_address[1]~3_combout\ & (((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(10)))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|regfor:8:reg|data_out\(10),
	datac => \mchn|bnk|regfor:9:reg|data_out\(10),
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[10]~120_combout\);

-- Location: LCFF_X24_Y26_N27
\mchn|bnk|regfor:10:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(10));

-- Location: LCCOMB_X24_Y26_N22
\mchn|bnk|Rb_data[10]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[10]~121_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[10]~120_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(10))) # (!\mchn|bnk|Rb_data[10]~120_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(10)))))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|Rb_data[10]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|regfor:11:reg|data_out\(10),
	datac => \mchn|bnk|Rb_data[10]~120_combout\,
	datad => \mchn|bnk|regfor:10:reg|data_out\(10),
	combout => \mchn|bnk|Rb_data[10]~121_combout\);

-- Location: LCFF_X29_Y28_N3
\mchn|bnk|regfor:7:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(10));

-- Location: LCFF_X25_Y27_N1
\mchn|bnk|regfor:6:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(10));

-- Location: LCFF_X25_Y27_N15
\mchn|bnk|regfor:4:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(10));

-- Location: LCCOMB_X25_Y27_N26
\mchn|bnk|Rb_data[10]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[10]~122_combout\ = (\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(10)) # ((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & (((\mchn|bnk|regfor:4:reg|data_out\(10) & 
-- !\mchn|regb_address[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|regfor:6:reg|data_out\(10),
	datac => \mchn|bnk|regfor:4:reg|data_out\(10),
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[10]~122_combout\);

-- Location: LCCOMB_X29_Y28_N2
\mchn|bnk|Rb_data[10]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[10]~123_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[10]~122_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(10)))) # (!\mchn|bnk|Rb_data[10]~122_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(10))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[10]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(10),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|regfor:7:reg|data_out\(10),
	datad => \mchn|bnk|Rb_data[10]~122_combout\,
	combout => \mchn|bnk|Rb_data[10]~123_combout\);

-- Location: LCCOMB_X25_Y26_N4
\mchn|bnk|Rb_data[10]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[10]~126_combout\ = (\mchn|regb_address[2]~0_combout\ & (((\mchn|regb_address[3]~1_combout\) # (\mchn|bnk|Rb_data[10]~123_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|Rb_data[10]~125_combout\ & 
-- (!\mchn|regb_address[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[10]~125_combout\,
	datab => \mchn|regb_address[2]~0_combout\,
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|bnk|Rb_data[10]~123_combout\,
	combout => \mchn|bnk|Rb_data[10]~126_combout\);

-- Location: LCCOMB_X24_Y26_N20
\mchn|bnk|Rb_data[10]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[10]~129_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[10]~126_combout\ & (\mchn|bnk|Rb_data[10]~128_combout\)) # (!\mchn|bnk|Rb_data[10]~126_combout\ & ((\mchn|bnk|Rb_data[10]~121_combout\))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[10]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[10]~128_combout\,
	datab => \mchn|bnk|Rb_data[10]~121_combout\,
	datac => \mchn|regb_address[3]~1_combout\,
	datad => \mchn|bnk|Rb_data[10]~126_combout\,
	combout => \mchn|bnk|Rb_data[10]~129_combout\);

-- Location: LCCOMB_X27_Y26_N18
\mchn|bnk|Rb_data[10]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[10]~130_combout\ = (\mchn|bnk|Rb_data[10]~129_combout\ & \mchn|estado.add~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|bnk|Rb_data[10]~129_combout\,
	datad => \mchn|estado.add~regout\,
	combout => \mchn|bnk|Rb_data[10]~130_combout\);

-- Location: LCFF_X31_Y28_N19
\mchn|bnk|regfor:14:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[9]~36_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(9));

-- Location: LCCOMB_X27_Y30_N2
\mchn|bnk|regfor:10:reg|data_out[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:10:reg|data_out[9]~feeder_combout\ = \mchn|mxdata|S_out[9]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[9]~36_combout\,
	combout => \mchn|bnk|regfor:10:reg|data_out[9]~feeder_combout\);

-- Location: LCFF_X27_Y30_N3
\mchn|bnk|regfor:10:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:10:reg|data_out[9]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(9));

-- Location: LCFF_X27_Y31_N27
\mchn|bnk|regfor:2:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[9]~36_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(9));

-- Location: LCCOMB_X31_Y31_N2
\mchn|bnk|Mux22~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~11_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\) # ((\mchn|bnk|regfor:10:reg|data_out\(9))))) # (!\mchn|Selector1~0_combout\ & (!\mchn|Selector2~0_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|bnk|regfor:10:reg|data_out\(9),
	datad => \mchn|bnk|regfor:2:reg|data_out\(9),
	combout => \mchn|bnk|Mux22~11_combout\);

-- Location: LCFF_X24_Y28_N9
\mchn|bnk|regfor:6:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[9]~36_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(9));

-- Location: LCCOMB_X31_Y28_N4
\mchn|bnk|Mux22~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~12_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|Mux22~11_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(9))) # (!\mchn|bnk|Mux22~11_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(9)))))) # (!\mchn|Selector2~0_combout\ & 
-- (((\mchn|bnk|Mux22~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector2~0_combout\,
	datab => \mchn|bnk|regfor:14:reg|data_out\(9),
	datac => \mchn|bnk|Mux22~11_combout\,
	datad => \mchn|bnk|regfor:6:reg|data_out\(9),
	combout => \mchn|bnk|Mux22~12_combout\);

-- Location: LCCOMB_X29_Y28_N24
\mchn|bnk|regfor:7:reg|data_out[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:7:reg|data_out[9]~feeder_combout\ = \mchn|mxdata|S_out[9]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[9]~36_combout\,
	combout => \mchn|bnk|regfor:7:reg|data_out[9]~feeder_combout\);

-- Location: LCFF_X29_Y28_N25
\mchn|bnk|regfor:7:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:7:reg|data_out[9]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(9));

-- Location: LCFF_X27_Y28_N1
\mchn|bnk|regfor:3:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[9]~36_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(9));

-- Location: LCCOMB_X27_Y28_N14
\mchn|bnk|Mux22~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~18_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(9))) # (!\mchn|Selector2~0_combout\ & 
-- ((\mchn|bnk|regfor:3:reg|data_out\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:7:reg|data_out\(9),
	datac => \mchn|Selector2~0_combout\,
	datad => \mchn|bnk|regfor:3:reg|data_out\(9),
	combout => \mchn|bnk|Mux22~18_combout\);

-- Location: LCCOMB_X24_Y29_N14
\mchn|bnk|regfor:15:reg|data_out[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:15:reg|data_out[9]~feeder_combout\ = \mchn|mxdata|S_out[9]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[9]~36_combout\,
	combout => \mchn|bnk|regfor:15:reg|data_out[9]~feeder_combout\);

-- Location: LCFF_X24_Y29_N15
\mchn|bnk|regfor:15:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:15:reg|data_out[9]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(9));

-- Location: LCCOMB_X27_Y28_N8
\mchn|bnk|Mux22~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~19_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux22~18_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(9))) # (!\mchn|bnk|Mux22~18_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(9)))))) # (!\mchn|Selector1~0_combout\ & 
-- (\mchn|bnk|Mux22~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|Mux22~18_combout\,
	datac => \mchn|bnk|regfor:15:reg|data_out\(9),
	datad => \mchn|bnk|regfor:11:reg|data_out\(9),
	combout => \mchn|bnk|Mux22~19_combout\);

-- Location: LCFF_X28_Y31_N21
\mchn|bnk|regfor:0:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[9]~36_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(9));

-- Location: LCFF_X28_Y30_N3
\mchn|bnk|regfor:8:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[9]~36_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(9));

-- Location: LCCOMB_X31_Y28_N14
\mchn|bnk|Mux22~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~15_combout\ = (\mchn|Selector2~0_combout\ & (\mchn|Selector1~0_combout\)) # (!\mchn|Selector2~0_combout\ & ((\mchn|Selector1~0_combout\ & ((\mchn|bnk|regfor:8:reg|data_out\(9)))) # (!\mchn|Selector1~0_combout\ & 
-- (\mchn|bnk|regfor:0:reg|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector2~0_combout\,
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|bnk|regfor:0:reg|data_out\(9),
	datad => \mchn|bnk|regfor:8:reg|data_out\(9),
	combout => \mchn|bnk|Mux22~15_combout\);

-- Location: LCFF_X31_Y28_N17
\mchn|bnk|regfor:12:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[9]~36_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(9));

-- Location: LCCOMB_X31_Y28_N16
\mchn|bnk|Mux22~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~16_combout\ = (\mchn|bnk|Mux22~15_combout\ & (((\mchn|bnk|regfor:12:reg|data_out\(9)) # (!\mchn|Selector2~0_combout\)))) # (!\mchn|bnk|Mux22~15_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(9) & ((\mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(9),
	datab => \mchn|bnk|Mux22~15_combout\,
	datac => \mchn|bnk|regfor:12:reg|data_out\(9),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux22~16_combout\);

-- Location: LCCOMB_X28_Y25_N2
\mchn|bnk|regfor:9:reg|data_out[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:9:reg|data_out[9]~feeder_combout\ = \mchn|mxdata|S_out[9]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[9]~36_combout\,
	combout => \mchn|bnk|regfor:9:reg|data_out[9]~feeder_combout\);

-- Location: LCFF_X28_Y25_N3
\mchn|bnk|regfor:9:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:9:reg|data_out[9]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(9));

-- Location: LCFF_X28_Y25_N21
\mchn|bnk|regfor:13:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[9]~36_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(9));

-- Location: LCFF_X28_Y26_N25
\mchn|bnk|regfor:5:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[9]~36_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(9));

-- Location: LCFF_X27_Y28_N23
\mchn|bnk|regfor:1:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|mxdata|S_out[9]~36_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(9));

-- Location: LCCOMB_X28_Y26_N24
\mchn|bnk|Mux22~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~13_combout\ = (\mchn|Selector1~0_combout\ & (\mchn|Selector2~0_combout\)) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(9))) # (!\mchn|Selector2~0_combout\ & 
-- ((\mchn|bnk|regfor:1:reg|data_out\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|bnk|regfor:5:reg|data_out\(9),
	datad => \mchn|bnk|regfor:1:reg|data_out\(9),
	combout => \mchn|bnk|Mux22~13_combout\);

-- Location: LCCOMB_X28_Y25_N20
\mchn|bnk|Mux22~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~14_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux22~13_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(9)))) # (!\mchn|bnk|Mux22~13_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(9))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux22~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:9:reg|data_out\(9),
	datac => \mchn|bnk|regfor:13:reg|data_out\(9),
	datad => \mchn|bnk|Mux22~13_combout\,
	combout => \mchn|bnk|Mux22~14_combout\);

-- Location: LCCOMB_X31_Y28_N12
\mchn|bnk|Mux22~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~17_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\) # ((\mchn|bnk|Mux22~14_combout\)))) # (!\mchn|Selector4~0_combout\ & (!\mchn|Selector3~0_combout\ & (\mchn|bnk|Mux22~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|bnk|Mux22~16_combout\,
	datad => \mchn|bnk|Mux22~14_combout\,
	combout => \mchn|bnk|Mux22~17_combout\);

-- Location: LCCOMB_X31_Y28_N26
\mchn|bnk|Mux22~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~20_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux22~17_combout\ & ((\mchn|bnk|Mux22~19_combout\))) # (!\mchn|bnk|Mux22~17_combout\ & (\mchn|bnk|Mux22~12_combout\)))) # (!\mchn|Selector3~0_combout\ & 
-- (((\mchn|bnk|Mux22~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|Mux22~12_combout\,
	datac => \mchn|bnk|Mux22~19_combout\,
	datad => \mchn|bnk|Mux22~17_combout\,
	combout => \mchn|bnk|Mux22~20_combout\);

-- Location: LCCOMB_X27_Y26_N16
\mchn|bnk|Rb_data[8]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[8]~108_combout\ = (\mchn|estado.add~regout\ & \mchn|bnk|Rb_data[8]~107_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Rb_data[8]~107_combout\,
	combout => \mchn|bnk|Rb_data[8]~108_combout\);

-- Location: LCCOMB_X27_Y26_N0
\mchn|ALU|inter_carry[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[9]~8_combout\ = (\mchn|bnk|Rb_data[8]~108_combout\ & ((\mchn|ALU|inter_carry[8]~7_combout\) # ((\mchn|bnk|Mux23~20_combout\ & \mchn|WideNor5~combout\)))) # (!\mchn|bnk|Rb_data[8]~108_combout\ & (\mchn|bnk|Mux23~20_combout\ & 
-- (\mchn|WideNor5~combout\ & \mchn|ALU|inter_carry[8]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux23~20_combout\,
	datab => \mchn|WideNor5~combout\,
	datac => \mchn|bnk|Rb_data[8]~108_combout\,
	datad => \mchn|ALU|inter_carry[8]~7_combout\,
	combout => \mchn|ALU|inter_carry[9]~8_combout\);

-- Location: LCCOMB_X27_Y26_N28
\mchn|ALU|inter_carry[10]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[10]~9_combout\ = (\mchn|bnk|Rb_data[9]~119_combout\ & ((\mchn|ALU|inter_carry[9]~8_combout\) # ((\mchn|WideNor5~combout\ & \mchn|bnk|Mux22~20_combout\)))) # (!\mchn|bnk|Rb_data[9]~119_combout\ & (\mchn|WideNor5~combout\ & 
-- (\mchn|bnk|Mux22~20_combout\ & \mchn|ALU|inter_carry[9]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[9]~119_combout\,
	datab => \mchn|WideNor5~combout\,
	datac => \mchn|bnk|Mux22~20_combout\,
	datad => \mchn|ALU|inter_carry[9]~8_combout\,
	combout => \mchn|ALU|inter_carry[10]~9_combout\);

-- Location: LCCOMB_X27_Y26_N2
\mchn|ALU|inter_carry[11]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[11]~10_combout\ = (\mchn|bnk|Rb_data[10]~130_combout\ & ((\mchn|ALU|inter_carry[10]~9_combout\) # ((\mchn|bnk|Mux21~20_combout\ & \mchn|WideNor5~combout\)))) # (!\mchn|bnk|Rb_data[10]~130_combout\ & (\mchn|bnk|Mux21~20_combout\ & 
-- (\mchn|WideNor5~combout\ & \mchn|ALU|inter_carry[10]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux21~20_combout\,
	datab => \mchn|bnk|Rb_data[10]~130_combout\,
	datac => \mchn|WideNor5~combout\,
	datad => \mchn|ALU|inter_carry[10]~9_combout\,
	combout => \mchn|ALU|inter_carry[11]~10_combout\);

-- Location: LCCOMB_X27_Y27_N4
\mchn|mxdata|S_out[11]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[11]~53_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[11]~140_combout\ $ (\mchn|bnk|Mux20~20_combout\ $ (\mchn|ALU|inter_carry[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[11]~140_combout\,
	datab => \mchn|bnk|Mux20~20_combout\,
	datac => \mchn|estado.add~regout\,
	datad => \mchn|ALU|inter_carry[11]~10_combout\,
	combout => \mchn|mxdata|S_out[11]~53_combout\);

-- Location: LCCOMB_X28_Y27_N8
\mchn|bnk|regfor:14:reg|data_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:14:reg|data_out[12]~feeder_combout\ = \mchn|mxdata|S_out[12]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[12]~54_combout\,
	combout => \mchn|bnk|regfor:14:reg|data_out[12]~feeder_combout\);

-- Location: LCFF_X28_Y27_N9
\mchn|bnk|regfor:14:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:14:reg|data_out[12]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(12));

-- Location: LCFF_X28_Y27_N27
\mchn|bnk|regfor:15:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[12]~54_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(12));

-- Location: LCCOMB_X28_Y27_N26
\mchn|bnk|Rb_data[12]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[12]~150_combout\ = (\mchn|bnk|Rb_data[12]~149_combout\ & (((\mchn|bnk|regfor:15:reg|data_out\(12)) # (!\mchn|regb_address[1]~3_combout\)))) # (!\mchn|bnk|Rb_data[12]~149_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(12) & 
-- ((\mchn|regb_address[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[12]~149_combout\,
	datab => \mchn|bnk|regfor:14:reg|data_out\(12),
	datac => \mchn|bnk|regfor:15:reg|data_out\(12),
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[12]~150_combout\);

-- Location: LCFF_X31_Y27_N1
\mchn|bnk|regfor:5:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[12]~54_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(12));

-- Location: LCCOMB_X28_Y28_N28
\mchn|bnk|Rb_data[12]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[12]~142_combout\ = (\mchn|regb_address[1]~3_combout\ & (((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(12)))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(12),
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|regb_address[0]~2_combout\,
	datad => \mchn|bnk|regfor:5:reg|data_out\(12),
	combout => \mchn|bnk|Rb_data[12]~142_combout\);

-- Location: LCFF_X31_Y27_N11
\mchn|bnk|regfor:7:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[12]~54_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(12));

-- Location: LCCOMB_X28_Y28_N10
\mchn|bnk|Rb_data[12]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[12]~143_combout\ = (\mchn|bnk|Rb_data[12]~142_combout\ & (((\mchn|bnk|regfor:7:reg|data_out\(12)) # (!\mchn|regb_address[1]~3_combout\)))) # (!\mchn|bnk|Rb_data[12]~142_combout\ & (\mchn|bnk|regfor:6:reg|data_out\(12) & 
-- ((\mchn|regb_address[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(12),
	datab => \mchn|bnk|Rb_data[12]~142_combout\,
	datac => \mchn|bnk|regfor:7:reg|data_out\(12),
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[12]~143_combout\);

-- Location: LCCOMB_X29_Y30_N14
\mchn|bnk|Rb_data[12]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[12]~151_combout\ = (\mchn|bnk|Rb_data[12]~148_combout\ & ((\mchn|bnk|Rb_data[12]~150_combout\) # ((!\mchn|regb_address[2]~0_combout\)))) # (!\mchn|bnk|Rb_data[12]~148_combout\ & (((\mchn|bnk|Rb_data[12]~143_combout\ & 
-- \mchn|regb_address[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[12]~148_combout\,
	datab => \mchn|bnk|Rb_data[12]~150_combout\,
	datac => \mchn|bnk|Rb_data[12]~143_combout\,
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[12]~151_combout\);

-- Location: LCCOMB_X25_Y27_N6
\mchn|bnk|Rb_data[11]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[11]~135_combout\ = (\mchn|regb_address[3]~1_combout\ & (((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & ((\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:4:reg|data_out\(11)))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(11),
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|regfor:4:reg|data_out\(11),
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[11]~135_combout\);

-- Location: LCCOMB_X25_Y27_N28
\mchn|bnk|Rb_data[11]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[11]~136_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[11]~135_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(11)))) # (!\mchn|bnk|Rb_data[11]~135_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(11))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[11]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:8:reg|data_out\(11),
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|regfor:12:reg|data_out\(11),
	datad => \mchn|bnk|Rb_data[11]~135_combout\,
	combout => \mchn|bnk|Rb_data[11]~136_combout\);

-- Location: LCCOMB_X24_Y27_N4
\mchn|bnk|Rb_data[11]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[11]~137_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|Rb_data[11]~134_combout\)) # 
-- (!\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|Rb_data[11]~136_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[11]~134_combout\,
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|regb_address[1]~3_combout\,
	datad => \mchn|bnk|Rb_data[11]~136_combout\,
	combout => \mchn|bnk|Rb_data[11]~137_combout\);

-- Location: LCCOMB_X24_Y29_N18
\mchn|bnk|regfor:7:reg|data_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:7:reg|data_out[11]~feeder_combout\ = \mchn|mxdata|S_out[11]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[11]~38_combout\,
	combout => \mchn|bnk|regfor:7:reg|data_out[11]~feeder_combout\);

-- Location: LCFF_X24_Y29_N19
\mchn|bnk|regfor:7:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:7:reg|data_out[11]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(11));

-- Location: LCCOMB_X24_Y29_N20
\mchn|bnk|regfor:15:reg|data_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:15:reg|data_out[11]~feeder_combout\ = \mchn|mxdata|S_out[11]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[11]~38_combout\,
	combout => \mchn|bnk|regfor:15:reg|data_out[11]~feeder_combout\);

-- Location: LCFF_X24_Y29_N21
\mchn|bnk|regfor:15:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:15:reg|data_out[11]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(11));

-- Location: LCCOMB_X24_Y29_N4
\mchn|bnk|Rb_data[11]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[11]~139_combout\ = (\mchn|bnk|Rb_data[11]~138_combout\ & (((\mchn|bnk|regfor:15:reg|data_out\(11)) # (!\mchn|regb_address[2]~0_combout\)))) # (!\mchn|bnk|Rb_data[11]~138_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(11) & 
-- ((\mchn|regb_address[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[11]~138_combout\,
	datab => \mchn|bnk|regfor:7:reg|data_out\(11),
	datac => \mchn|bnk|regfor:15:reg|data_out\(11),
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[11]~139_combout\);

-- Location: LCCOMB_X24_Y27_N14
\mchn|bnk|Rb_data[11]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[11]~140_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[11]~137_combout\ & ((\mchn|bnk|Rb_data[11]~139_combout\))) # (!\mchn|bnk|Rb_data[11]~137_combout\ & (\mchn|bnk|Rb_data[11]~132_combout\)))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[11]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[11]~132_combout\,
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|Rb_data[11]~137_combout\,
	datad => \mchn|bnk|Rb_data[11]~139_combout\,
	combout => \mchn|bnk|Rb_data[11]~140_combout\);

-- Location: LCCOMB_X28_Y27_N0
\mchn|bnk|Rb_data[11]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[11]~141_combout\ = (\mchn|estado.add~regout\ & \mchn|bnk|Rb_data[11]~140_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Rb_data[11]~140_combout\,
	combout => \mchn|bnk|Rb_data[11]~141_combout\);

-- Location: LCCOMB_X27_Y27_N0
\mchn|ALU|inter_carry[12]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[12]~11_combout\ = (\mchn|bnk|Rb_data[11]~141_combout\ & ((\mchn|ALU|inter_carry[11]~10_combout\) # ((\mchn|WideNor5~combout\ & \mchn|bnk|Mux20~20_combout\)))) # (!\mchn|bnk|Rb_data[11]~141_combout\ & (\mchn|WideNor5~combout\ & 
-- (\mchn|bnk|Mux20~20_combout\ & \mchn|ALU|inter_carry[11]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|WideNor5~combout\,
	datab => \mchn|bnk|Mux20~20_combout\,
	datac => \mchn|bnk|Rb_data[11]~141_combout\,
	datad => \mchn|ALU|inter_carry[11]~10_combout\,
	combout => \mchn|ALU|inter_carry[12]~11_combout\);

-- Location: LCFF_X27_Y31_N13
\mchn|bnk|regfor:2:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[13]~55_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(13));

-- Location: LCFF_X27_Y30_N11
\mchn|bnk|regfor:10:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[13]~55_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(13));

-- Location: LCCOMB_X27_Y31_N22
\mchn|bnk|Rb_data[13]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[13]~153_combout\ = (\mchn|regb_address[2]~0_combout\ & (\mchn|regb_address[3]~1_combout\)) # (!\mchn|regb_address[2]~0_combout\ & ((\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(13)))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (\mchn|bnk|regfor:2:reg|data_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|regfor:2:reg|data_out\(13),
	datad => \mchn|bnk|regfor:10:reg|data_out\(13),
	combout => \mchn|bnk|Rb_data[13]~153_combout\);

-- Location: LCCOMB_X24_Y27_N2
\mchn|bnk|regfor:6:reg|data_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:6:reg|data_out[13]~feeder_combout\ = \mchn|mxdata|S_out[13]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[13]~55_combout\,
	combout => \mchn|bnk|regfor:6:reg|data_out[13]~feeder_combout\);

-- Location: LCFF_X24_Y27_N3
\mchn|bnk|regfor:6:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:6:reg|data_out[13]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(13));

-- Location: LCCOMB_X27_Y31_N20
\mchn|bnk|Rb_data[13]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[13]~154_combout\ = (\mchn|bnk|Rb_data[13]~153_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(13)) # ((!\mchn|regb_address[2]~0_combout\)))) # (!\mchn|bnk|Rb_data[13]~153_combout\ & (((\mchn|bnk|regfor:6:reg|data_out\(13) & 
-- \mchn|regb_address[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(13),
	datab => \mchn|bnk|Rb_data[13]~153_combout\,
	datac => \mchn|bnk|regfor:6:reg|data_out\(13),
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[13]~154_combout\);

-- Location: LCCOMB_X28_Y30_N6
\mchn|bnk|regfor:11:reg|data_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:11:reg|data_out[13]~feeder_combout\ = \mchn|mxdata|S_out[13]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[13]~55_combout\,
	combout => \mchn|bnk|regfor:11:reg|data_out[13]~feeder_combout\);

-- Location: LCFF_X28_Y30_N7
\mchn|bnk|regfor:11:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:11:reg|data_out[13]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(13));

-- Location: LCFF_X28_Y27_N11
\mchn|bnk|regfor:15:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|mxdata|S_out[13]~55_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(13));

-- Location: LCFF_X27_Y31_N11
\mchn|bnk|regfor:3:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[13]~55_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(13));

-- Location: LCCOMB_X27_Y31_N10
\mchn|bnk|Rb_data[13]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[13]~160_combout\ = (\mchn|regb_address[3]~1_combout\ & (((\mchn|regb_address[2]~0_combout\)))) # (!\mchn|regb_address[3]~1_combout\ & ((\mchn|regb_address[2]~0_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(13))) # 
-- (!\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|regfor:3:reg|data_out\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(13),
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|regfor:3:reg|data_out\(13),
	datad => \mchn|regb_address[2]~0_combout\,
	combout => \mchn|bnk|Rb_data[13]~160_combout\);

-- Location: LCCOMB_X24_Y30_N28
\mchn|bnk|Rb_data[13]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[13]~161_combout\ = (\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[13]~160_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(13)))) # (!\mchn|bnk|Rb_data[13]~160_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(13))))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (((\mchn|bnk|Rb_data[13]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[3]~1_combout\,
	datab => \mchn|bnk|regfor:11:reg|data_out\(13),
	datac => \mchn|bnk|regfor:15:reg|data_out\(13),
	datad => \mchn|bnk|Rb_data[13]~160_combout\,
	combout => \mchn|bnk|Rb_data[13]~161_combout\);

-- Location: LCCOMB_X24_Y27_N10
\mchn|bnk|Rb_data[13]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[13]~162_combout\ = (\mchn|bnk|Rb_data[13]~159_combout\ & (((\mchn|bnk|Rb_data[13]~161_combout\)) # (!\mchn|regb_address[1]~3_combout\))) # (!\mchn|bnk|Rb_data[13]~159_combout\ & (\mchn|regb_address[1]~3_combout\ & 
-- (\mchn|bnk|Rb_data[13]~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[13]~159_combout\,
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|Rb_data[13]~154_combout\,
	datad => \mchn|bnk|Rb_data[13]~161_combout\,
	combout => \mchn|bnk|Rb_data[13]~162_combout\);

-- Location: LCCOMB_X28_Y30_N26
\mchn|bnk|regfor:8:reg|data_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:8:reg|data_out[12]~feeder_combout\ = \mchn|mxdata|S_out[12]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[12]~54_combout\,
	combout => \mchn|bnk|regfor:8:reg|data_out[12]~feeder_combout\);

-- Location: LCFF_X28_Y30_N27
\mchn|bnk|regfor:8:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:8:reg|data_out[12]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(12));

-- Location: LCCOMB_X28_Y30_N8
\mchn|bnk|Mux19~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~13_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(12))) # (!\mchn|Selector3~0_combout\ & 
-- ((\mchn|bnk|regfor:8:reg|data_out\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(12),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|regfor:8:reg|data_out\(12),
	combout => \mchn|bnk|Mux19~13_combout\);

-- Location: LCFF_X27_Y25_N1
\mchn|bnk|regfor:9:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[12]~54_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(12));

-- Location: LCCOMB_X28_Y30_N18
\mchn|bnk|Mux19~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~14_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux19~13_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(12))) # (!\mchn|bnk|Mux19~13_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(12)))))) # (!\mchn|Selector4~0_combout\ & 
-- (((\mchn|bnk|Mux19~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:11:reg|data_out\(12),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|Mux19~13_combout\,
	datad => \mchn|bnk|regfor:9:reg|data_out\(12),
	combout => \mchn|bnk|Mux19~14_combout\);

-- Location: LCCOMB_X28_Y27_N22
\mchn|bnk|Mux19~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~17_combout\ = (\mchn|Selector2~0_combout\ & (((\mchn|Selector1~0_combout\)))) # (!\mchn|Selector2~0_combout\ & ((\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux19~14_combout\))) # (!\mchn|Selector1~0_combout\ & 
-- (\mchn|bnk|Mux19~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux19~16_combout\,
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|bnk|Mux19~14_combout\,
	combout => \mchn|bnk|Mux19~17_combout\);

-- Location: LCCOMB_X28_Y27_N28
\mchn|bnk|Mux19~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~19_combout\ = (\mchn|bnk|Mux19~18_combout\ & (((\mchn|bnk|regfor:15:reg|data_out\(12)) # (!\mchn|Selector3~0_combout\)))) # (!\mchn|bnk|Mux19~18_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(12) & (\mchn|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux19~18_combout\,
	datab => \mchn|bnk|regfor:14:reg|data_out\(12),
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|regfor:15:reg|data_out\(12),
	combout => \mchn|bnk|Mux19~19_combout\);

-- Location: LCCOMB_X28_Y27_N14
\mchn|bnk|Mux19~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~20_combout\ = (\mchn|bnk|Mux19~17_combout\ & (((\mchn|bnk|Mux19~19_combout\) # (!\mchn|Selector2~0_combout\)))) # (!\mchn|bnk|Mux19~17_combout\ & (\mchn|bnk|Mux19~12_combout\ & ((\mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux19~12_combout\,
	datab => \mchn|bnk|Mux19~17_combout\,
	datac => \mchn|bnk|Mux19~19_combout\,
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux19~20_combout\);

-- Location: LCCOMB_X27_Y27_N2
\mchn|ALU|inter_carry[13]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[13]~12_combout\ = (\mchn|bnk|Rb_data[12]~152_combout\ & ((\mchn|ALU|inter_carry[12]~11_combout\) # ((\mchn|bnk|Mux19~20_combout\ & \mchn|WideNor5~combout\)))) # (!\mchn|bnk|Rb_data[12]~152_combout\ & (\mchn|bnk|Mux19~20_combout\ & 
-- (\mchn|WideNor5~combout\ & \mchn|ALU|inter_carry[12]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[12]~152_combout\,
	datab => \mchn|bnk|Mux19~20_combout\,
	datac => \mchn|WideNor5~combout\,
	datad => \mchn|ALU|inter_carry[12]~11_combout\,
	combout => \mchn|ALU|inter_carry[13]~12_combout\);

-- Location: LCCOMB_X28_Y27_N20
\mchn|bnk|Rb_data[13]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[13]~163_combout\ = (\mchn|estado.add~regout\ & \mchn|bnk|Rb_data[13]~162_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Rb_data[13]~162_combout\,
	combout => \mchn|bnk|Rb_data[13]~163_combout\);

-- Location: LCCOMB_X27_Y31_N14
\mchn|bnk|Mux18~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~18_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(13))) # (!\mchn|Selector2~0_combout\ & 
-- ((\mchn|bnk|regfor:3:reg|data_out\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(13),
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|Selector2~0_combout\,
	datad => \mchn|bnk|regfor:3:reg|data_out\(13),
	combout => \mchn|bnk|Mux18~18_combout\);

-- Location: LCCOMB_X28_Y30_N14
\mchn|bnk|Mux18~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~19_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux18~18_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(13)))) # (!\mchn|bnk|Mux18~18_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(13))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:11:reg|data_out\(13),
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|bnk|Mux18~18_combout\,
	datad => \mchn|bnk|regfor:15:reg|data_out\(13),
	combout => \mchn|bnk|Mux18~19_combout\);

-- Location: LCCOMB_X27_Y31_N2
\mchn|bnk|Mux18~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~11_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(13)) # ((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & (((!\mchn|Selector2~0_combout\ & \mchn|bnk|regfor:2:reg|data_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(13),
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|Selector2~0_combout\,
	datad => \mchn|bnk|regfor:2:reg|data_out\(13),
	combout => \mchn|bnk|Mux18~11_combout\);

-- Location: LCCOMB_X27_Y31_N28
\mchn|bnk|Mux18~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~12_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|Mux18~11_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(13))) # (!\mchn|bnk|Mux18~11_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(13)))))) # (!\mchn|Selector2~0_combout\ & 
-- (((\mchn|bnk|Mux18~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(13),
	datab => \mchn|bnk|regfor:6:reg|data_out\(13),
	datac => \mchn|Selector2~0_combout\,
	datad => \mchn|bnk|Mux18~11_combout\,
	combout => \mchn|bnk|Mux18~12_combout\);

-- Location: LCCOMB_X23_Y27_N18
\mchn|bnk|regfor:9:reg|data_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:9:reg|data_out[13]~feeder_combout\ = \mchn|mxdata|S_out[13]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[13]~55_combout\,
	combout => \mchn|bnk|regfor:9:reg|data_out[13]~feeder_combout\);

-- Location: LCFF_X23_Y27_N19
\mchn|bnk|regfor:9:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:9:reg|data_out[13]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(13));

-- Location: LCFF_X28_Y29_N27
\mchn|bnk|regfor:13:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[13]~55_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(13));

-- Location: LCCOMB_X23_Y27_N26
\mchn|bnk|Mux18~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~14_combout\ = (\mchn|bnk|Mux18~13_combout\ & (((\mchn|bnk|regfor:13:reg|data_out\(13)) # (!\mchn|Selector1~0_combout\)))) # (!\mchn|bnk|Mux18~13_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(13) & (\mchn|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux18~13_combout\,
	datab => \mchn|bnk|regfor:9:reg|data_out\(13),
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|bnk|regfor:13:reg|data_out\(13),
	combout => \mchn|bnk|Mux18~14_combout\);

-- Location: LCFF_X28_Y29_N17
\mchn|bnk|regfor:12:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[13]~55_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(13));

-- Location: LCFF_X27_Y30_N25
\mchn|bnk|regfor:8:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[13]~55_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(13));

-- Location: LCCOMB_X28_Y30_N30
\mchn|bnk|Mux18~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~15_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|bnk|regfor:8:reg|data_out\(13)) # (\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(13) & ((!\mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(13),
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|bnk|regfor:8:reg|data_out\(13),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Mux18~15_combout\);

-- Location: LCCOMB_X25_Y27_N10
\mchn|bnk|regfor:4:reg|data_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:4:reg|data_out[13]~feeder_combout\ = \mchn|mxdata|S_out[13]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[13]~55_combout\,
	combout => \mchn|bnk|regfor:4:reg|data_out[13]~feeder_combout\);

-- Location: LCFF_X25_Y27_N11
\mchn|bnk|regfor:4:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:4:reg|data_out[13]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(13));

-- Location: LCCOMB_X28_Y30_N28
\mchn|bnk|Mux18~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~16_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|Mux18~15_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(13))) # (!\mchn|bnk|Mux18~15_combout\ & ((\mchn|bnk|regfor:4:reg|data_out\(13)))))) # (!\mchn|Selector2~0_combout\ & 
-- (((\mchn|bnk|Mux18~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector2~0_combout\,
	datab => \mchn|bnk|regfor:12:reg|data_out\(13),
	datac => \mchn|bnk|Mux18~15_combout\,
	datad => \mchn|bnk|regfor:4:reg|data_out\(13),
	combout => \mchn|bnk|Mux18~16_combout\);

-- Location: LCCOMB_X27_Y30_N26
\mchn|bnk|Mux18~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~17_combout\ = (\mchn|Selector3~0_combout\ & (\mchn|Selector4~0_combout\)) # (!\mchn|Selector3~0_combout\ & ((\mchn|Selector4~0_combout\ & (\mchn|bnk|Mux18~14_combout\)) # (!\mchn|Selector4~0_combout\ & ((\mchn|bnk|Mux18~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|Mux18~14_combout\,
	datad => \mchn|bnk|Mux18~16_combout\,
	combout => \mchn|bnk|Mux18~17_combout\);

-- Location: LCCOMB_X27_Y30_N20
\mchn|bnk|Mux18~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~20_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux18~17_combout\ & (\mchn|bnk|Mux18~19_combout\)) # (!\mchn|bnk|Mux18~17_combout\ & ((\mchn|bnk|Mux18~12_combout\))))) # (!\mchn|Selector3~0_combout\ & 
-- (((\mchn|bnk|Mux18~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|Mux18~19_combout\,
	datac => \mchn|bnk|Mux18~12_combout\,
	datad => \mchn|bnk|Mux18~17_combout\,
	combout => \mchn|bnk|Mux18~20_combout\);

-- Location: LCCOMB_X27_Y27_N28
\mchn|ALU|inter_carry[14]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[14]~13_combout\ = (\mchn|bnk|Rb_data[13]~163_combout\ & ((\mchn|ALU|inter_carry[13]~12_combout\) # ((\mchn|WideNor5~combout\ & \mchn|bnk|Mux18~20_combout\)))) # (!\mchn|bnk|Rb_data[13]~163_combout\ & (\mchn|WideNor5~combout\ & 
-- (\mchn|bnk|Mux18~20_combout\ & \mchn|ALU|inter_carry[13]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|WideNor5~combout\,
	datab => \mchn|bnk|Rb_data[13]~163_combout\,
	datac => \mchn|bnk|Mux18~20_combout\,
	datad => \mchn|ALU|inter_carry[13]~12_combout\,
	combout => \mchn|ALU|inter_carry[14]~13_combout\);

-- Location: LCFF_X27_Y27_N21
\mchn|bnk|regfor:8:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[15]~42_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(15));

-- Location: LCFF_X28_Y31_N3
\mchn|bnk|regfor:0:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[15]~42_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(15));

-- Location: LCFF_X30_Y27_N11
\mchn|bnk|regfor:4:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[15]~42_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(15));

-- Location: LCCOMB_X31_Y29_N30
\mchn|bnk|Ra_data[15]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~36_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & ((\mchn|bnk|regfor:4:reg|data_out\(15)))) # (!\mchn|Selector2~0_combout\ & 
-- (\mchn|bnk|regfor:0:reg|data_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:0:reg|data_out\(15),
	datac => \mchn|bnk|regfor:4:reg|data_out\(15),
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Ra_data[15]~36_combout\);

-- Location: LCCOMB_X28_Y29_N4
\mchn|bnk|Ra_data[15]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~37_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Ra_data[15]~36_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(15)))) # (!\mchn|bnk|Ra_data[15]~36_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(15))))) # 
-- (!\mchn|Selector1~0_combout\ & (((\mchn|bnk|Ra_data[15]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|bnk|regfor:8:reg|data_out\(15),
	datac => \mchn|bnk|regfor:12:reg|data_out\(15),
	datad => \mchn|bnk|Ra_data[15]~36_combout\,
	combout => \mchn|bnk|Ra_data[15]~37_combout\);

-- Location: LCFF_X24_Y27_N29
\mchn|bnk|regfor:6:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[15]~42_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(15));

-- Location: LCCOMB_X24_Y27_N20
\mchn|bnk|Ra_data[15]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~34_combout\ = (\mchn|Selector2~0_combout\ & (((\mchn|Selector1~0_combout\) # (\mchn|bnk|regfor:6:reg|data_out\(15))))) # (!\mchn|Selector2~0_combout\ & (\mchn|bnk|regfor:2:reg|data_out\(15) & (!\mchn|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:2:reg|data_out\(15),
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|bnk|regfor:6:reg|data_out\(15),
	combout => \mchn|bnk|Ra_data[15]~34_combout\);

-- Location: LCFF_X29_Y27_N5
\mchn|bnk|regfor:10:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[15]~42_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(15));

-- Location: LCCOMB_X28_Y29_N30
\mchn|bnk|Ra_data[15]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~35_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Ra_data[15]~34_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(15))) # (!\mchn|bnk|Ra_data[15]~34_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(15)))))) # 
-- (!\mchn|Selector1~0_combout\ & (((\mchn|bnk|Ra_data[15]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(15),
	datab => \mchn|Selector1~0_combout\,
	datac => \mchn|bnk|Ra_data[15]~34_combout\,
	datad => \mchn|bnk|regfor:10:reg|data_out\(15),
	combout => \mchn|bnk|Ra_data[15]~35_combout\);

-- Location: LCCOMB_X28_Y29_N20
\mchn|bnk|Ra_data[15]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~38_combout\ = (\mchn|Selector4~0_combout\ & (\mchn|Selector3~0_combout\)) # (!\mchn|Selector4~0_combout\ & ((\mchn|Selector3~0_combout\ & ((\mchn|bnk|Ra_data[15]~35_combout\))) # (!\mchn|Selector3~0_combout\ & 
-- (\mchn|bnk|Ra_data[15]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector4~0_combout\,
	datab => \mchn|Selector3~0_combout\,
	datac => \mchn|bnk|Ra_data[15]~37_combout\,
	datad => \mchn|bnk|Ra_data[15]~35_combout\,
	combout => \mchn|bnk|Ra_data[15]~38_combout\);

-- Location: LCFF_X31_Y27_N31
\mchn|bnk|regfor:5:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[15]~42_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(15));

-- Location: LCCOMB_X23_Y27_N24
\mchn|bnk|regfor:9:reg|data_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:9:reg|data_out[15]~feeder_combout\ = \mchn|mxdata|S_out[15]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[15]~42_combout\,
	combout => \mchn|bnk|regfor:9:reg|data_out[15]~feeder_combout\);

-- Location: LCFF_X23_Y27_N25
\mchn|bnk|regfor:9:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:9:reg|data_out[15]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(15));

-- Location: LCCOMB_X28_Y24_N24
\mchn|bnk|Ra_data[15]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~32_combout\ = (\mchn|Selector1~0_combout\ & (((\mchn|bnk|regfor:9:reg|data_out\(15)) # (\mchn|Selector2~0_combout\)))) # (!\mchn|Selector1~0_combout\ & (\mchn|bnk|regfor:1:reg|data_out\(15) & ((!\mchn|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:1:reg|data_out\(15),
	datab => \mchn|bnk|regfor:9:reg|data_out\(15),
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|Selector2~0_combout\,
	combout => \mchn|bnk|Ra_data[15]~32_combout\);

-- Location: LCFF_X28_Y29_N19
\mchn|bnk|regfor:13:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[15]~42_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(15));

-- Location: LCCOMB_X28_Y24_N2
\mchn|bnk|Ra_data[15]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~33_combout\ = (\mchn|Selector2~0_combout\ & ((\mchn|bnk|Ra_data[15]~32_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(15)))) # (!\mchn|bnk|Ra_data[15]~32_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(15))))) # 
-- (!\mchn|Selector2~0_combout\ & (((\mchn|bnk|Ra_data[15]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector2~0_combout\,
	datab => \mchn|bnk|regfor:5:reg|data_out\(15),
	datac => \mchn|bnk|Ra_data[15]~32_combout\,
	datad => \mchn|bnk|regfor:13:reg|data_out\(15),
	combout => \mchn|bnk|Ra_data[15]~33_combout\);

-- Location: LCCOMB_X28_Y24_N20
\mchn|bnk|Ra_data[15]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~41_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|Ra_data[15]~38_combout\ & (\mchn|bnk|Ra_data[15]~40_combout\)) # (!\mchn|bnk|Ra_data[15]~38_combout\ & ((\mchn|bnk|Ra_data[15]~33_combout\))))) # (!\mchn|Selector4~0_combout\ & 
-- (((\mchn|bnk|Ra_data[15]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Ra_data[15]~40_combout\,
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|Ra_data[15]~38_combout\,
	datad => \mchn|bnk|Ra_data[15]~33_combout\,
	combout => \mchn|bnk|Ra_data[15]~41_combout\);

-- Location: LCCOMB_X28_Y29_N28
\mchn|bnk|Rb_data[15]~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[15]~182_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|regb_address[1]~3_combout\) # (\mchn|bnk|regfor:13:reg|data_out\(15))))) # (!\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(15) & 
-- (!\mchn|regb_address[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|bnk|regfor:12:reg|data_out\(15),
	datac => \mchn|regb_address[1]~3_combout\,
	datad => \mchn|bnk|regfor:13:reg|data_out\(15),
	combout => \mchn|bnk|Rb_data[15]~182_combout\);

-- Location: LCCOMB_X32_Y27_N6
\mchn|bnk|regfor:15:reg|data_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:15:reg|data_out[15]~feeder_combout\ = \mchn|mxdata|S_out[15]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[15]~42_combout\,
	combout => \mchn|bnk|regfor:15:reg|data_out[15]~feeder_combout\);

-- Location: LCFF_X32_Y27_N7
\mchn|bnk|regfor:15:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:15:reg|data_out[15]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(15));

-- Location: LCCOMB_X28_Y29_N6
\mchn|bnk|Rb_data[15]~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[15]~183_combout\ = (\mchn|bnk|Rb_data[15]~182_combout\ & (((\mchn|bnk|regfor:15:reg|data_out\(15)) # (!\mchn|regb_address[1]~3_combout\)))) # (!\mchn|bnk|Rb_data[15]~182_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(15) & 
-- (\mchn|regb_address[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(15),
	datab => \mchn|bnk|Rb_data[15]~182_combout\,
	datac => \mchn|regb_address[1]~3_combout\,
	datad => \mchn|bnk|regfor:15:reg|data_out\(15),
	combout => \mchn|bnk|Rb_data[15]~183_combout\);

-- Location: LCCOMB_X31_Y27_N30
\mchn|bnk|Rb_data[15]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[15]~175_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\) # ((\mchn|bnk|regfor:5:reg|data_out\(15))))) # (!\mchn|regb_address[0]~2_combout\ & (!\mchn|regb_address[1]~3_combout\ & 
-- ((\mchn|bnk|regfor:4:reg|data_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|regfor:5:reg|data_out\(15),
	datad => \mchn|bnk|regfor:4:reg|data_out\(15),
	combout => \mchn|bnk|Rb_data[15]~175_combout\);

-- Location: LCFF_X31_Y27_N13
\mchn|bnk|regfor:7:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[15]~42_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(15));

-- Location: LCCOMB_X31_Y27_N12
\mchn|bnk|Rb_data[15]~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[15]~176_combout\ = (\mchn|bnk|Rb_data[15]~175_combout\ & (((\mchn|bnk|regfor:7:reg|data_out\(15)) # (!\mchn|regb_address[1]~3_combout\)))) # (!\mchn|bnk|Rb_data[15]~175_combout\ & (\mchn|bnk|regfor:6:reg|data_out\(15) & 
-- ((\mchn|regb_address[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(15),
	datab => \mchn|bnk|Rb_data[15]~175_combout\,
	datac => \mchn|bnk|regfor:7:reg|data_out\(15),
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[15]~176_combout\);

-- Location: LCCOMB_X28_Y29_N2
\mchn|bnk|Rb_data[15]~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[15]~177_combout\ = (\mchn|regb_address[0]~2_combout\ & (\mchn|regb_address[1]~3_combout\)) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(15)))) # 
-- (!\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|regb_address[1]~3_combout\,
	datac => \mchn|bnk|regfor:8:reg|data_out\(15),
	datad => \mchn|bnk|regfor:10:reg|data_out\(15),
	combout => \mchn|bnk|Rb_data[15]~177_combout\);

-- Location: LCFF_X27_Y27_N15
\mchn|bnk|regfor:11:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|mxdata|S_out[15]~42_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(15));

-- Location: LCCOMB_X28_Y24_N22
\mchn|bnk|Rb_data[15]~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[15]~178_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[15]~177_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(15)))) # (!\mchn|bnk|Rb_data[15]~177_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(15))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|Rb_data[15]~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|bnk|Rb_data[15]~177_combout\,
	datac => \mchn|bnk|regfor:9:reg|data_out\(15),
	datad => \mchn|bnk|regfor:11:reg|data_out\(15),
	combout => \mchn|bnk|Rb_data[15]~178_combout\);

-- Location: LCCOMB_X28_Y24_N18
\mchn|bnk|Rb_data[15]~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[15]~181_combout\ = (\mchn|regb_address[2]~0_combout\ & (((\mchn|regb_address[3]~1_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & ((\mchn|regb_address[3]~1_combout\ & ((\mchn|bnk|Rb_data[15]~178_combout\))) # 
-- (!\mchn|regb_address[3]~1_combout\ & (\mchn|bnk|Rb_data[15]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[15]~180_combout\,
	datab => \mchn|bnk|Rb_data[15]~178_combout\,
	datac => \mchn|regb_address[2]~0_combout\,
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[15]~181_combout\);

-- Location: LCCOMB_X28_Y24_N12
\mchn|bnk|Rb_data[15]~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[15]~184_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|bnk|Rb_data[15]~181_combout\ & (\mchn|bnk|Rb_data[15]~183_combout\)) # (!\mchn|bnk|Rb_data[15]~181_combout\ & ((\mchn|bnk|Rb_data[15]~176_combout\))))) # 
-- (!\mchn|regb_address[2]~0_combout\ & (((\mchn|bnk|Rb_data[15]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|bnk|Rb_data[15]~183_combout\,
	datac => \mchn|bnk|Rb_data[15]~176_combout\,
	datad => \mchn|bnk|Rb_data[15]~181_combout\,
	combout => \mchn|bnk|Rb_data[15]~184_combout\);

-- Location: LCCOMB_X28_Y24_N6
\mchn|ALU|S_out[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|S_out[15]~1_combout\ = \mchn|bnk|Ra_data[15]~41_combout\ $ (\mchn|bnk|Rb_data[15]~184_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|bnk|Ra_data[15]~41_combout\,
	datad => \mchn|bnk|Rb_data[15]~184_combout\,
	combout => \mchn|ALU|S_out[15]~1_combout\);

-- Location: LCCOMB_X30_Y31_N4
\mchn|bnk|regfor:3:reg|data_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:3:reg|data_out[14]~feeder_combout\ = \mchn|mxdata|S_out[14]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[14]~56_combout\,
	combout => \mchn|bnk|regfor:3:reg|data_out[14]~feeder_combout\);

-- Location: LCFF_X30_Y31_N5
\mchn|bnk|regfor:3:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:3:reg|data_out[14]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(14));

-- Location: LCFF_X27_Y25_N19
\mchn|bnk|regfor:1:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[14]~56_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(14));

-- Location: LCFF_X25_Y28_N11
\mchn|bnk|regfor:0:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[14]~56_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(14));

-- Location: LCCOMB_X24_Y25_N4
\mchn|bnk|Rb_data[14]~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[14]~168_combout\ = (\mchn|regb_address[1]~3_combout\ & (((\mchn|regb_address[0]~2_combout\)))) # (!\mchn|regb_address[1]~3_combout\ & ((\mchn|regb_address[0]~2_combout\ & (\mchn|bnk|regfor:1:reg|data_out\(14))) # 
-- (!\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|regfor:0:reg|data_out\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[1]~3_combout\,
	datab => \mchn|bnk|regfor:1:reg|data_out\(14),
	datac => \mchn|regb_address[0]~2_combout\,
	datad => \mchn|bnk|regfor:0:reg|data_out\(14),
	combout => \mchn|bnk|Rb_data[14]~168_combout\);

-- Location: LCCOMB_X27_Y25_N24
\mchn|bnk|Rb_data[14]~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[14]~169_combout\ = (\mchn|bnk|Rb_data[14]~168_combout\ & (((\mchn|bnk|regfor:3:reg|data_out\(14)) # (!\mchn|regb_address[1]~3_combout\)))) # (!\mchn|bnk|Rb_data[14]~168_combout\ & (\mchn|bnk|regfor:2:reg|data_out\(14) & 
-- ((\mchn|regb_address[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:2:reg|data_out\(14),
	datab => \mchn|bnk|regfor:3:reg|data_out\(14),
	datac => \mchn|bnk|Rb_data[14]~168_combout\,
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[14]~169_combout\);

-- Location: LCCOMB_X29_Y28_N4
\mchn|bnk|regfor:5:reg|data_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:5:reg|data_out[14]~feeder_combout\ = \mchn|mxdata|S_out[14]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[14]~56_combout\,
	combout => \mchn|bnk|regfor:5:reg|data_out[14]~feeder_combout\);

-- Location: LCFF_X29_Y28_N5
\mchn|bnk|regfor:5:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:5:reg|data_out[14]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(14));

-- Location: LCCOMB_X29_Y28_N14
\mchn|bnk|regfor:7:reg|data_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:7:reg|data_out[14]~feeder_combout\ = \mchn|mxdata|S_out[14]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[14]~56_combout\,
	combout => \mchn|bnk|regfor:7:reg|data_out[14]~feeder_combout\);

-- Location: LCFF_X29_Y28_N15
\mchn|bnk|regfor:7:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:7:reg|data_out[14]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(14));

-- Location: LCCOMB_X29_Y28_N20
\mchn|bnk|Rb_data[14]~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[14]~167_combout\ = (\mchn|bnk|Rb_data[14]~166_combout\ & (((\mchn|bnk|regfor:7:reg|data_out\(14)) # (!\mchn|regb_address[0]~2_combout\)))) # (!\mchn|bnk|Rb_data[14]~166_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(14) & 
-- ((\mchn|regb_address[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[14]~166_combout\,
	datab => \mchn|bnk|regfor:5:reg|data_out\(14),
	datac => \mchn|bnk|regfor:7:reg|data_out\(14),
	datad => \mchn|regb_address[0]~2_combout\,
	combout => \mchn|bnk|Rb_data[14]~167_combout\);

-- Location: LCCOMB_X28_Y25_N4
\mchn|bnk|Rb_data[14]~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[14]~170_combout\ = (\mchn|regb_address[2]~0_combout\ & ((\mchn|regb_address[3]~1_combout\) # ((\mchn|bnk|Rb_data[14]~167_combout\)))) # (!\mchn|regb_address[2]~0_combout\ & (!\mchn|regb_address[3]~1_combout\ & 
-- (\mchn|bnk|Rb_data[14]~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[2]~0_combout\,
	datab => \mchn|regb_address[3]~1_combout\,
	datac => \mchn|bnk|Rb_data[14]~169_combout\,
	datad => \mchn|bnk|Rb_data[14]~167_combout\,
	combout => \mchn|bnk|Rb_data[14]~170_combout\);

-- Location: LCCOMB_X28_Y27_N16
\mchn|bnk|regfor:14:reg|data_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:14:reg|data_out[14]~feeder_combout\ = \mchn|mxdata|S_out[14]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[14]~56_combout\,
	combout => \mchn|bnk|regfor:14:reg|data_out[14]~feeder_combout\);

-- Location: LCFF_X28_Y27_N17
\mchn|bnk|regfor:14:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:14:reg|data_out[14]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(14));

-- Location: LCFF_X25_Y28_N17
\mchn|bnk|regfor:12:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[14]~56_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(14));

-- Location: LCCOMB_X30_Y24_N20
\mchn|bnk|Rb_data[14]~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[14]~171_combout\ = (\mchn|regb_address[0]~2_combout\ & (((\mchn|regb_address[1]~3_combout\)))) # (!\mchn|regb_address[0]~2_combout\ & ((\mchn|regb_address[1]~3_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(14))) # 
-- (!\mchn|regb_address[1]~3_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|regb_address[0]~2_combout\,
	datab => \mchn|bnk|regfor:14:reg|data_out\(14),
	datac => \mchn|bnk|regfor:12:reg|data_out\(14),
	datad => \mchn|regb_address[1]~3_combout\,
	combout => \mchn|bnk|Rb_data[14]~171_combout\);

-- Location: LCFF_X28_Y25_N9
\mchn|bnk|regfor:13:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[14]~56_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(14));

-- Location: LCCOMB_X27_Y24_N0
\mchn|bnk|Rb_data[14]~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[14]~172_combout\ = (\mchn|regb_address[0]~2_combout\ & ((\mchn|bnk|Rb_data[14]~171_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(14))) # (!\mchn|bnk|Rb_data[14]~171_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(14)))))) # 
-- (!\mchn|regb_address[0]~2_combout\ & (((\mchn|bnk|Rb_data[14]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(14),
	datab => \mchn|regb_address[0]~2_combout\,
	datac => \mchn|bnk|Rb_data[14]~171_combout\,
	datad => \mchn|bnk|regfor:13:reg|data_out\(14),
	combout => \mchn|bnk|Rb_data[14]~172_combout\);

-- Location: LCCOMB_X28_Y25_N14
\mchn|bnk|Rb_data[14]~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[14]~173_combout\ = (\mchn|bnk|Rb_data[14]~170_combout\ & (((\mchn|bnk|Rb_data[14]~172_combout\) # (!\mchn|regb_address[3]~1_combout\)))) # (!\mchn|bnk|Rb_data[14]~170_combout\ & (\mchn|bnk|Rb_data[14]~165_combout\ & 
-- ((\mchn|regb_address[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[14]~165_combout\,
	datab => \mchn|bnk|Rb_data[14]~170_combout\,
	datac => \mchn|bnk|Rb_data[14]~172_combout\,
	datad => \mchn|regb_address[3]~1_combout\,
	combout => \mchn|bnk|Rb_data[14]~173_combout\);

-- Location: LCCOMB_X27_Y27_N8
\mchn|bnk|Rb_data[14]~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Rb_data[14]~174_combout\ = (\mchn|estado.add~regout\ & \mchn|bnk|Rb_data[14]~173_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datad => \mchn|bnk|Rb_data[14]~173_combout\,
	combout => \mchn|bnk|Rb_data[14]~174_combout\);

-- Location: LCCOMB_X27_Y27_N30
\mchn|ALU|inter_carry[15]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|ALU|inter_carry[15]~14_combout\ = (\mchn|bnk|Rb_data[14]~174_combout\ & ((\mchn|ALU|inter_carry[14]~13_combout\) # ((\mchn|bnk|Mux17~20_combout\ & \mchn|WideNor5~combout\)))) # (!\mchn|bnk|Rb_data[14]~174_combout\ & (\mchn|bnk|Mux17~20_combout\ & 
-- (\mchn|WideNor5~combout\ & \mchn|ALU|inter_carry[14]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux17~20_combout\,
	datab => \mchn|bnk|Rb_data[14]~174_combout\,
	datac => \mchn|WideNor5~combout\,
	datad => \mchn|ALU|inter_carry[14]~13_combout\,
	combout => \mchn|ALU|inter_carry[15]~14_combout\);

-- Location: LCCOMB_X27_Y27_N14
\mchn|mxdata|S_out[15]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[15]~42_combout\ = (\mchn|estado.add~regout\ & (\mchn|ALU|S_out[15]~1_combout\ $ (((\mchn|ALU|inter_carry[15]~14_combout\))))) # (!\mchn|estado.add~regout\ & (((\RAM|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datab => \mchn|ALU|S_out[15]~1_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_a\(15),
	datad => \mchn|ALU|inter_carry[15]~14_combout\,
	combout => \mchn|mxdata|S_out[15]~42_combout\);

-- Location: LCFF_X28_Y29_N5
\mchn|bnk|regfor:12:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[15]~42_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(15));

-- Location: LCCOMB_X28_Y29_N14
\mchn|bnk|Ra_data[15]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~19_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|regfor:14:reg|data_out\(15)) # ((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|regfor:12:reg|data_out\(15) & !\mchn|ir|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(15),
	datab => \mchn|bnk|regfor:12:reg|data_out\(15),
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Ra_data[15]~19_combout\);

-- Location: LCCOMB_X28_Y29_N18
\mchn|bnk|Ra_data[15]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~20_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Ra_data[15]~19_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(15)))) # (!\mchn|bnk|Ra_data[15]~19_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(15))))) # (!\mchn|ir|data_out\(8) & 
-- (\mchn|bnk|Ra_data[15]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|bnk|Ra_data[15]~19_combout\,
	datac => \mchn|bnk|regfor:13:reg|data_out\(15),
	datad => \mchn|bnk|regfor:15:reg|data_out\(15),
	combout => \mchn|bnk|Ra_data[15]~20_combout\);

-- Location: LCCOMB_X31_Y27_N16
\mchn|bnk|Ra_data[15]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~13_combout\ = (\mchn|bnk|Ra_data[15]~12_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(15)) # ((!\mchn|ir|data_out\(9))))) # (!\mchn|bnk|Ra_data[15]~12_combout\ & (((\mchn|bnk|regfor:10:reg|data_out\(15) & \mchn|ir|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Ra_data[15]~12_combout\,
	datab => \mchn|bnk|regfor:11:reg|data_out\(15),
	datac => \mchn|bnk|regfor:10:reg|data_out\(15),
	datad => \mchn|ir|data_out\(9),
	combout => \mchn|bnk|Ra_data[15]~13_combout\);

-- Location: LCFF_X24_Y27_N7
\mchn|bnk|regfor:2:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[15]~42_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(15));

-- Location: LCFF_X27_Y31_N7
\mchn|bnk|regfor:3:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[15]~42_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(15));

-- Location: LCCOMB_X27_Y28_N10
\mchn|bnk|regfor:1:reg|data_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:1:reg|data_out[15]~feeder_combout\ = \mchn|mxdata|S_out[15]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[15]~42_combout\,
	combout => \mchn|bnk|regfor:1:reg|data_out[15]~feeder_combout\);

-- Location: LCFF_X27_Y28_N11
\mchn|bnk|regfor:1:reg|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:1:reg|data_out[15]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(15));

-- Location: LCCOMB_X28_Y31_N2
\mchn|bnk|Ra_data[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~16_combout\ = (\mchn|ir|data_out\(9) & (\mchn|ir|data_out\(8))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:1:reg|data_out\(15)))) # (!\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:0:reg|data_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:0:reg|data_out\(15),
	datad => \mchn|bnk|regfor:1:reg|data_out\(15),
	combout => \mchn|bnk|Ra_data[15]~16_combout\);

-- Location: LCCOMB_X27_Y31_N6
\mchn|bnk|Ra_data[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~17_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Ra_data[15]~16_combout\ & ((\mchn|bnk|regfor:3:reg|data_out\(15)))) # (!\mchn|bnk|Ra_data[15]~16_combout\ & (\mchn|bnk|regfor:2:reg|data_out\(15))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Ra_data[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|regfor:2:reg|data_out\(15),
	datac => \mchn|bnk|regfor:3:reg|data_out\(15),
	datad => \mchn|bnk|Ra_data[15]~16_combout\,
	combout => \mchn|bnk|Ra_data[15]~17_combout\);

-- Location: LCCOMB_X30_Y27_N10
\mchn|bnk|Ra_data[15]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~14_combout\ = (\mchn|ir|data_out\(8) & (((\mchn|ir|data_out\(9))))) # (!\mchn|ir|data_out\(8) & ((\mchn|ir|data_out\(9) & (\mchn|bnk|regfor:6:reg|data_out\(15))) # (!\mchn|ir|data_out\(9) & ((\mchn|bnk|regfor:4:reg|data_out\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(15),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:4:reg|data_out\(15),
	datad => \mchn|ir|data_out\(9),
	combout => \mchn|bnk|Ra_data[15]~14_combout\);

-- Location: LCCOMB_X31_Y27_N2
\mchn|bnk|Ra_data[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~15_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Ra_data[15]~14_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(15))) # (!\mchn|bnk|Ra_data[15]~14_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(15)))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Ra_data[15]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(15),
	datab => \mchn|bnk|regfor:5:reg|data_out\(15),
	datac => \mchn|ir|data_out\(8),
	datad => \mchn|bnk|Ra_data[15]~14_combout\,
	combout => \mchn|bnk|Ra_data[15]~15_combout\);

-- Location: LCCOMB_X31_Y27_N28
\mchn|bnk|Ra_data[15]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~18_combout\ = (\mchn|ir|data_out\(11) & (\mchn|ir|data_out\(10))) # (!\mchn|ir|data_out\(11) & ((\mchn|ir|data_out\(10) & ((\mchn|bnk|Ra_data[15]~15_combout\))) # (!\mchn|ir|data_out\(10) & (\mchn|bnk|Ra_data[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|Ra_data[15]~17_combout\,
	datad => \mchn|bnk|Ra_data[15]~15_combout\,
	combout => \mchn|bnk|Ra_data[15]~18_combout\);

-- Location: LCCOMB_X31_Y27_N22
\mchn|bnk|Ra_data[15]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[15]~21_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Ra_data[15]~18_combout\ & (\mchn|bnk|Ra_data[15]~20_combout\)) # (!\mchn|bnk|Ra_data[15]~18_combout\ & ((\mchn|bnk|Ra_data[15]~13_combout\))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Ra_data[15]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|Ra_data[15]~20_combout\,
	datac => \mchn|bnk|Ra_data[15]~13_combout\,
	datad => \mchn|bnk|Ra_data[15]~18_combout\,
	combout => \mchn|bnk|Ra_data[15]~21_combout\);

-- Location: LCCOMB_X31_Y27_N20
\mchn|out_RAM_data[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[15]~15_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Ra_data[15]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Ra_data[15]~21_combout\,
	combout => \mchn|out_RAM_data[15]~15_combout\);

-- Location: LCCOMB_X27_Y27_N12
\mchn|mxdata|S_out[14]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[14]~41_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Mux17~20_combout\)) # (!\mchn|estado.add~regout\ & ((\RAM|altsyncram_component|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux17~20_combout\,
	datab => \mchn|estado.add~regout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(14),
	combout => \mchn|mxdata|S_out[14]~41_combout\);

-- Location: LCCOMB_X27_Y27_N22
\mchn|mxdata|S_out[14]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[14]~56_combout\ = \mchn|mxdata|S_out[14]~41_combout\ $ (((\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[14]~173_combout\ $ (\mchn|ALU|inter_carry[14]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[14]~173_combout\,
	datab => \mchn|ALU|inter_carry[14]~13_combout\,
	datac => \mchn|estado.add~regout\,
	datad => \mchn|mxdata|S_out[14]~41_combout\,
	combout => \mchn|mxdata|S_out[14]~56_combout\);

-- Location: LCFF_X27_Y27_N13
\mchn|bnk|regfor:11:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[14]~56_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(14));

-- Location: LCCOMB_X30_Y29_N2
\mchn|bnk|Mux17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~8_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11)) # ((\mchn|bnk|regfor:7:reg|data_out\(14))))) # (!\mchn|ir|data_out\(10) & (!\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:3:reg|data_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:7:reg|data_out\(14),
	datad => \mchn|bnk|regfor:3:reg|data_out\(14),
	combout => \mchn|bnk|Mux17~8_combout\);

-- Location: LCCOMB_X27_Y27_N26
\mchn|bnk|Mux17~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~9_combout\ = (\mchn|bnk|Mux17~8_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(14)) # ((!\mchn|ir|data_out\(11))))) # (!\mchn|bnk|Mux17~8_combout\ & (((\mchn|bnk|regfor:11:reg|data_out\(14) & \mchn|ir|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(14),
	datab => \mchn|bnk|regfor:11:reg|data_out\(14),
	datac => \mchn|bnk|Mux17~8_combout\,
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux17~9_combout\);

-- Location: LCFF_X27_Y25_N29
\mchn|bnk|regfor:9:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[14]~56_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(14));

-- Location: LCCOMB_X27_Y25_N18
\mchn|bnk|Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~3_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:5:reg|data_out\(14)) # ((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & (((\mchn|bnk|regfor:1:reg|data_out\(14) & !\mchn|ir|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(14),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|regfor:1:reg|data_out\(14),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux17~3_combout\);

-- Location: LCCOMB_X27_Y25_N8
\mchn|bnk|Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~4_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux17~3_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(14)))) # (!\mchn|bnk|Mux17~3_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(14))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|regfor:9:reg|data_out\(14),
	datac => \mchn|bnk|regfor:13:reg|data_out\(14),
	datad => \mchn|bnk|Mux17~3_combout\,
	combout => \mchn|bnk|Mux17~4_combout\);

-- Location: LCCOMB_X28_Y28_N12
\mchn|bnk|regfor:4:reg|data_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:4:reg|data_out[14]~feeder_combout\ = \mchn|mxdata|S_out[14]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[14]~56_combout\,
	combout => \mchn|bnk|regfor:4:reg|data_out[14]~feeder_combout\);

-- Location: LCFF_X28_Y28_N13
\mchn|bnk|regfor:4:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:4:reg|data_out[14]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(14));

-- Location: LCFF_X27_Y27_N9
\mchn|bnk|regfor:8:reg|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[14]~56_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(14));

-- Location: LCCOMB_X25_Y28_N10
\mchn|bnk|Mux17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~5_combout\ = (\mchn|ir|data_out\(10) & (\mchn|ir|data_out\(11))) # (!\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:8:reg|data_out\(14)))) # (!\mchn|ir|data_out\(11) & (\mchn|bnk|regfor:0:reg|data_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:0:reg|data_out\(14),
	datad => \mchn|bnk|regfor:8:reg|data_out\(14),
	combout => \mchn|bnk|Mux17~5_combout\);

-- Location: LCCOMB_X25_Y28_N16
\mchn|bnk|Mux17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~6_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux17~5_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(14)))) # (!\mchn|bnk|Mux17~5_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(14))))) # (!\mchn|ir|data_out\(10) & 
-- (((\mchn|bnk|Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:4:reg|data_out\(14),
	datac => \mchn|bnk|regfor:12:reg|data_out\(14),
	datad => \mchn|bnk|Mux17~5_combout\,
	combout => \mchn|bnk|Mux17~6_combout\);

-- Location: LCCOMB_X27_Y27_N18
\mchn|bnk|Mux17~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~7_combout\ = (\mchn|ir|data_out\(9) & (\mchn|ir|data_out\(8))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & (\mchn|bnk|Mux17~4_combout\)) # (!\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux17~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|Mux17~4_combout\,
	datad => \mchn|bnk|Mux17~6_combout\,
	combout => \mchn|bnk|Mux17~7_combout\);

-- Location: LCCOMB_X27_Y27_N16
\mchn|bnk|Mux17~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux17~10_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux17~7_combout\ & ((\mchn|bnk|Mux17~9_combout\))) # (!\mchn|bnk|Mux17~7_combout\ & (\mchn|bnk|Mux17~2_combout\)))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux17~2_combout\,
	datab => \mchn|bnk|Mux17~9_combout\,
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|bnk|Mux17~7_combout\,
	combout => \mchn|bnk|Mux17~10_combout\);

-- Location: LCCOMB_X27_Y27_N10
\mchn|out_RAM_data[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[14]~14_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux17~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.store~regout\,
	datac => \mchn|bnk|Mux17~10_combout\,
	combout => \mchn|out_RAM_data[14]~14_combout\);

-- Location: LCCOMB_X27_Y27_N24
\mchn|mxdata|S_out[13]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[13]~40_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Mux18~20_combout\)) # (!\mchn|estado.add~regout\ & ((\RAM|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux18~20_combout\,
	datab => \mchn|estado.add~regout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(13),
	combout => \mchn|mxdata|S_out[13]~40_combout\);

-- Location: LCCOMB_X28_Y27_N10
\mchn|mxdata|S_out[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[13]~55_combout\ = \mchn|mxdata|S_out[13]~40_combout\ $ (((\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[13]~162_combout\ $ (\mchn|ALU|inter_carry[13]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datab => \mchn|bnk|Rb_data[13]~162_combout\,
	datac => \mchn|ALU|inter_carry[13]~12_combout\,
	datad => \mchn|mxdata|S_out[13]~40_combout\,
	combout => \mchn|mxdata|S_out[13]~55_combout\);

-- Location: LCCOMB_X24_Y29_N30
\mchn|bnk|regfor:7:reg|data_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:7:reg|data_out[13]~feeder_combout\ = \mchn|mxdata|S_out[13]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[13]~55_combout\,
	combout => \mchn|bnk|regfor:7:reg|data_out[13]~feeder_combout\);

-- Location: LCFF_X24_Y29_N31
\mchn|bnk|regfor:7:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:7:reg|data_out[13]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(13));

-- Location: LCCOMB_X25_Y30_N28
\mchn|bnk|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~1_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:5:reg|data_out\(13))) # (!\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:4:reg|data_out\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(13),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|regfor:4:reg|data_out\(13),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux18~1_combout\);

-- Location: LCCOMB_X25_Y30_N30
\mchn|bnk|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~2_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux18~1_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(13))) # (!\mchn|bnk|Mux18~1_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(13)))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|regfor:7:reg|data_out\(13),
	datac => \mchn|bnk|regfor:6:reg|data_out\(13),
	datad => \mchn|bnk|Mux18~1_combout\,
	combout => \mchn|bnk|Mux18~2_combout\);

-- Location: LCCOMB_X28_Y29_N16
\mchn|bnk|Mux18~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~8_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:13:reg|data_out\(13))) # (!\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:12:reg|data_out\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(13),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|regfor:12:reg|data_out\(13),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux18~8_combout\);

-- Location: LCCOMB_X25_Y30_N24
\mchn|bnk|Mux18~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~9_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux18~8_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(13)))) # (!\mchn|bnk|Mux18~8_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(13))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Mux18~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(13),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|Mux18~8_combout\,
	datad => \mchn|bnk|regfor:15:reg|data_out\(13),
	combout => \mchn|bnk|Mux18~9_combout\);

-- Location: LCCOMB_X28_Y24_N26
\mchn|bnk|regfor:1:reg|data_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:1:reg|data_out[13]~feeder_combout\ = \mchn|mxdata|S_out[13]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[13]~55_combout\,
	combout => \mchn|bnk|regfor:1:reg|data_out[13]~feeder_combout\);

-- Location: LCFF_X28_Y24_N27
\mchn|bnk|regfor:1:reg|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:1:reg|data_out[13]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(13));

-- Location: LCCOMB_X28_Y31_N22
\mchn|bnk|Mux18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~5_combout\ = (\mchn|ir|data_out\(8) & (((\mchn|ir|data_out\(9))))) # (!\mchn|ir|data_out\(8) & ((\mchn|ir|data_out\(9) & ((\mchn|bnk|regfor:2:reg|data_out\(13)))) # (!\mchn|ir|data_out\(9) & (\mchn|bnk|regfor:0:reg|data_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(13),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|bnk|regfor:2:reg|data_out\(13),
	combout => \mchn|bnk|Mux18~5_combout\);

-- Location: LCCOMB_X27_Y31_N16
\mchn|bnk|Mux18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~6_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux18~5_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(13))) # (!\mchn|bnk|Mux18~5_combout\ & ((\mchn|bnk|regfor:1:reg|data_out\(13)))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Mux18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(13),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:1:reg|data_out\(13),
	datad => \mchn|bnk|Mux18~5_combout\,
	combout => \mchn|bnk|Mux18~6_combout\);

-- Location: LCCOMB_X27_Y30_N24
\mchn|bnk|Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~3_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|regfor:10:reg|data_out\(13)) # ((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|regfor:8:reg|data_out\(13) & !\mchn|ir|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|regfor:10:reg|data_out\(13),
	datac => \mchn|bnk|regfor:8:reg|data_out\(13),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux18~3_combout\);

-- Location: LCCOMB_X25_Y30_N0
\mchn|bnk|Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~4_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux18~3_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(13)))) # (!\mchn|bnk|Mux18~3_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(13))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(13),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|Mux18~3_combout\,
	datad => \mchn|bnk|regfor:11:reg|data_out\(13),
	combout => \mchn|bnk|Mux18~4_combout\);

-- Location: LCCOMB_X25_Y30_N2
\mchn|bnk|Mux18~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~7_combout\ = (\mchn|ir|data_out\(10) & (((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux18~4_combout\))) # (!\mchn|ir|data_out\(11) & (\mchn|bnk|Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|Mux18~6_combout\,
	datac => \mchn|ir|data_out\(11),
	datad => \mchn|bnk|Mux18~4_combout\,
	combout => \mchn|bnk|Mux18~7_combout\);

-- Location: LCCOMB_X25_Y30_N6
\mchn|bnk|Mux18~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux18~10_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux18~7_combout\ & ((\mchn|bnk|Mux18~9_combout\))) # (!\mchn|bnk|Mux18~7_combout\ & (\mchn|bnk|Mux18~2_combout\)))) # (!\mchn|ir|data_out\(10) & (((\mchn|bnk|Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|Mux18~2_combout\,
	datac => \mchn|bnk|Mux18~9_combout\,
	datad => \mchn|bnk|Mux18~7_combout\,
	combout => \mchn|bnk|Mux18~10_combout\);

-- Location: LCCOMB_X25_Y30_N4
\mchn|out_RAM_data[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[13]~13_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux18~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux18~10_combout\,
	combout => \mchn|out_RAM_data[13]~13_combout\);

-- Location: LCCOMB_X28_Y27_N12
\mchn|mxdata|S_out[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[12]~39_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Mux19~20_combout\)) # (!\mchn|estado.add~regout\ & ((\RAM|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux19~20_combout\,
	datac => \mchn|estado.add~regout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(12),
	combout => \mchn|mxdata|S_out[12]~39_combout\);

-- Location: LCCOMB_X28_Y27_N6
\mchn|mxdata|S_out[12]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[12]~54_combout\ = \mchn|mxdata|S_out[12]~39_combout\ $ (((\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[12]~151_combout\ $ (\mchn|ALU|inter_carry[12]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datab => \mchn|bnk|Rb_data[12]~151_combout\,
	datac => \mchn|ALU|inter_carry[12]~11_combout\,
	datad => \mchn|mxdata|S_out[12]~39_combout\,
	combout => \mchn|mxdata|S_out[12]~54_combout\);

-- Location: LCFF_X28_Y29_N23
\mchn|bnk|regfor:12:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[12]~54_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(12));

-- Location: LCCOMB_X28_Y28_N20
\mchn|bnk|regfor:4:reg|data_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:4:reg|data_out[12]~feeder_combout\ = \mchn|mxdata|S_out[12]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[12]~54_combout\,
	combout => \mchn|bnk|regfor:4:reg|data_out[12]~feeder_combout\);

-- Location: LCFF_X28_Y28_N21
\mchn|bnk|regfor:4:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:4:reg|data_out[12]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(12));

-- Location: LCCOMB_X28_Y28_N2
\mchn|bnk|regfor:0:reg|data_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:0:reg|data_out[12]~feeder_combout\ = \mchn|mxdata|S_out[12]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[12]~54_combout\,
	combout => \mchn|bnk|regfor:0:reg|data_out[12]~feeder_combout\);

-- Location: LCFF_X28_Y28_N3
\mchn|bnk|regfor:0:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:0:reg|data_out[12]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(12));

-- Location: LCCOMB_X30_Y28_N10
\mchn|bnk|Mux19~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~5_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:4:reg|data_out\(12)) # ((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & (((!\mchn|ir|data_out\(11) & \mchn|bnk|regfor:0:reg|data_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:4:reg|data_out\(12),
	datac => \mchn|ir|data_out\(11),
	datad => \mchn|bnk|regfor:0:reg|data_out\(12),
	combout => \mchn|bnk|Mux19~5_combout\);

-- Location: LCCOMB_X28_Y29_N0
\mchn|bnk|Mux19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~6_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux19~5_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(12))) # (!\mchn|bnk|Mux19~5_combout\ & ((\mchn|bnk|regfor:8:reg|data_out\(12)))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|regfor:12:reg|data_out\(12),
	datac => \mchn|bnk|regfor:8:reg|data_out\(12),
	datad => \mchn|bnk|Mux19~5_combout\,
	combout => \mchn|bnk|Mux19~6_combout\);

-- Location: LCFF_X27_Y30_N31
\mchn|bnk|regfor:10:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[12]~54_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:10:reg|data_out\(12));

-- Location: LCFF_X24_Y27_N25
\mchn|bnk|regfor:2:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[12]~54_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(12));

-- Location: LCCOMB_X24_Y27_N24
\mchn|bnk|Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~3_combout\ = (\mchn|ir|data_out\(11) & (((\mchn|ir|data_out\(10))))) # (!\mchn|ir|data_out\(11) & ((\mchn|ir|data_out\(10) & (\mchn|bnk|regfor:6:reg|data_out\(12))) # (!\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:2:reg|data_out\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(12),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:2:reg|data_out\(12),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux19~3_combout\);

-- Location: LCCOMB_X27_Y30_N30
\mchn|bnk|Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~4_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux19~3_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(12))) # (!\mchn|bnk|Mux19~3_combout\ & ((\mchn|bnk|regfor:10:reg|data_out\(12)))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|regfor:14:reg|data_out\(12),
	datac => \mchn|bnk|regfor:10:reg|data_out\(12),
	datad => \mchn|bnk|Mux19~3_combout\,
	combout => \mchn|bnk|Mux19~4_combout\);

-- Location: LCCOMB_X27_Y30_N8
\mchn|bnk|Mux19~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~7_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8)) # ((\mchn|bnk|Mux19~4_combout\)))) # (!\mchn|ir|data_out\(9) & (!\mchn|ir|data_out\(8) & (\mchn|bnk|Mux19~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|Mux19~6_combout\,
	datad => \mchn|bnk|Mux19~4_combout\,
	combout => \mchn|bnk|Mux19~7_combout\);

-- Location: LCFF_X27_Y25_N11
\mchn|bnk|regfor:1:reg|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[12]~54_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(12));

-- Location: LCCOMB_X27_Y25_N10
\mchn|bnk|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~1_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:9:reg|data_out\(12)) # ((\mchn|ir|data_out\(10))))) # (!\mchn|ir|data_out\(11) & (((\mchn|bnk|regfor:1:reg|data_out\(12) & !\mchn|ir|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(12),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:1:reg|data_out\(12),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux19~1_combout\);

-- Location: LCCOMB_X31_Y27_N0
\mchn|bnk|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~2_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux19~1_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(12))) # (!\mchn|bnk|Mux19~1_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(12)))))) # (!\mchn|ir|data_out\(10) & 
-- (((\mchn|bnk|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(12),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|regfor:5:reg|data_out\(12),
	datad => \mchn|bnk|Mux19~1_combout\,
	combout => \mchn|bnk|Mux19~2_combout\);

-- Location: LCCOMB_X27_Y30_N18
\mchn|bnk|Mux19~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux19~10_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux19~7_combout\ & (\mchn|bnk|Mux19~9_combout\)) # (!\mchn|bnk|Mux19~7_combout\ & ((\mchn|bnk|Mux19~2_combout\))))) # (!\mchn|ir|data_out\(8) & (((\mchn|bnk|Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux19~9_combout\,
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|Mux19~7_combout\,
	datad => \mchn|bnk|Mux19~2_combout\,
	combout => \mchn|bnk|Mux19~10_combout\);

-- Location: LCCOMB_X27_Y30_N12
\mchn|out_RAM_data[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[12]~12_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux19~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux19~10_combout\,
	combout => \mchn|out_RAM_data[12]~12_combout\);

-- Location: LCCOMB_X27_Y27_N6
\mchn|mxdata|S_out[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[11]~38_combout\ = (\mchn|mxdata|S_out[11]~53_combout\) # ((!\mchn|estado.add~regout\ & \RAM|altsyncram_component|auto_generated|q_a\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datac => \mchn|mxdata|S_out[11]~53_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(11),
	combout => \mchn|mxdata|S_out[11]~38_combout\);

-- Location: LCFF_X27_Y27_N7
\mchn|bnk|regfor:11:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|mxdata|S_out[11]~38_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(11));

-- Location: LCFF_X27_Y27_N25
\mchn|bnk|regfor:8:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[11]~38_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:8:reg|data_out\(11));

-- Location: LCCOMB_X24_Y28_N26
\mchn|bnk|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~1_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:9:reg|data_out\(11))) # (!\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:8:reg|data_out\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(11),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|regfor:8:reg|data_out\(11),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux20~1_combout\);

-- Location: LCCOMB_X24_Y28_N4
\mchn|bnk|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~2_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux20~1_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(11)))) # (!\mchn|bnk|Mux20~1_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(11))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(11),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|regfor:11:reg|data_out\(11),
	datad => \mchn|bnk|Mux20~1_combout\,
	combout => \mchn|bnk|Mux20~2_combout\);

-- Location: LCFF_X28_Y29_N11
\mchn|bnk|regfor:13:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[11]~38_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(11));

-- Location: LCCOMB_X28_Y29_N10
\mchn|bnk|Mux20~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~9_combout\ = (\mchn|bnk|Mux20~8_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(11)) # ((!\mchn|ir|data_out\(8))))) # (!\mchn|bnk|Mux20~8_combout\ & (((\mchn|bnk|regfor:13:reg|data_out\(11) & \mchn|ir|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux20~8_combout\,
	datab => \mchn|bnk|regfor:15:reg|data_out\(11),
	datac => \mchn|bnk|regfor:13:reg|data_out\(11),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux20~9_combout\);

-- Location: LCCOMB_X25_Y27_N20
\mchn|bnk|Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~3_combout\ = (\mchn|ir|data_out\(8) & (((\mchn|ir|data_out\(9))))) # (!\mchn|ir|data_out\(8) & ((\mchn|ir|data_out\(9) & ((\mchn|bnk|regfor:6:reg|data_out\(11)))) # (!\mchn|ir|data_out\(9) & (\mchn|bnk|regfor:4:reg|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(11),
	datab => \mchn|bnk|regfor:6:reg|data_out\(11),
	datac => \mchn|ir|data_out\(8),
	datad => \mchn|ir|data_out\(9),
	combout => \mchn|bnk|Mux20~3_combout\);

-- Location: LCCOMB_X25_Y28_N14
\mchn|bnk|Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~4_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux20~3_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(11))) # (!\mchn|bnk|Mux20~3_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(11)))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|bnk|regfor:7:reg|data_out\(11),
	datac => \mchn|bnk|regfor:5:reg|data_out\(11),
	datad => \mchn|bnk|Mux20~3_combout\,
	combout => \mchn|bnk|Mux20~4_combout\);

-- Location: LCFF_X27_Y31_N1
\mchn|bnk|regfor:2:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[11]~38_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(11));

-- Location: LCFF_X27_Y31_N31
\mchn|bnk|regfor:3:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[11]~38_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(11));

-- Location: LCFF_X28_Y31_N7
\mchn|bnk|regfor:0:reg|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[11]~38_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(11));

-- Location: LCCOMB_X28_Y31_N6
\mchn|bnk|Mux20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~5_combout\ = (\mchn|ir|data_out\(9) & (\mchn|ir|data_out\(8))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:1:reg|data_out\(11)))) # (!\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:0:reg|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:0:reg|data_out\(11),
	datad => \mchn|bnk|regfor:1:reg|data_out\(11),
	combout => \mchn|bnk|Mux20~5_combout\);

-- Location: LCCOMB_X27_Y31_N30
\mchn|bnk|Mux20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~6_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux20~5_combout\ & ((\mchn|bnk|regfor:3:reg|data_out\(11)))) # (!\mchn|bnk|Mux20~5_combout\ & (\mchn|bnk|regfor:2:reg|data_out\(11))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|regfor:2:reg|data_out\(11),
	datac => \mchn|bnk|regfor:3:reg|data_out\(11),
	datad => \mchn|bnk|Mux20~5_combout\,
	combout => \mchn|bnk|Mux20~6_combout\);

-- Location: LCCOMB_X25_Y28_N28
\mchn|bnk|Mux20~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~7_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11)) # ((\mchn|bnk|Mux20~4_combout\)))) # (!\mchn|ir|data_out\(10) & (!\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|Mux20~4_combout\,
	datad => \mchn|bnk|Mux20~6_combout\,
	combout => \mchn|bnk|Mux20~7_combout\);

-- Location: LCCOMB_X25_Y28_N18
\mchn|bnk|Mux20~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux20~10_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux20~7_combout\ & ((\mchn|bnk|Mux20~9_combout\))) # (!\mchn|bnk|Mux20~7_combout\ & (\mchn|bnk|Mux20~2_combout\)))) # (!\mchn|ir|data_out\(11) & (((\mchn|bnk|Mux20~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|Mux20~2_combout\,
	datac => \mchn|bnk|Mux20~9_combout\,
	datad => \mchn|bnk|Mux20~7_combout\,
	combout => \mchn|bnk|Mux20~10_combout\);

-- Location: LCCOMB_X25_Y28_N4
\mchn|out_RAM_data[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[11]~11_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux20~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux20~10_combout\,
	combout => \mchn|out_RAM_data[11]~11_combout\);

-- Location: LCCOMB_X24_Y26_N24
\mchn|bnk|Mux21~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~11_combout\ = (\mchn|Selector4~0_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(10)) # ((\mchn|Selector3~0_combout\)))) # (!\mchn|Selector4~0_combout\ & (((\mchn|bnk|regfor:8:reg|data_out\(10) & !\mchn|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(10),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|bnk|regfor:8:reg|data_out\(10),
	datad => \mchn|Selector3~0_combout\,
	combout => \mchn|bnk|Mux21~11_combout\);

-- Location: LCCOMB_X24_Y26_N2
\mchn|bnk|Mux21~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~12_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux21~11_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(10)))) # (!\mchn|bnk|Mux21~11_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(10))))) # (!\mchn|Selector3~0_combout\ & 
-- (((\mchn|bnk|Mux21~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|regfor:10:reg|data_out\(10),
	datac => \mchn|bnk|Mux21~11_combout\,
	datad => \mchn|bnk|regfor:11:reg|data_out\(10),
	combout => \mchn|bnk|Mux21~12_combout\);

-- Location: LCCOMB_X25_Y27_N14
\mchn|bnk|Mux21~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~13_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(10)) # ((\mchn|Selector4~0_combout\)))) # (!\mchn|Selector3~0_combout\ & (((\mchn|bnk|regfor:4:reg|data_out\(10) & !\mchn|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector3~0_combout\,
	datab => \mchn|bnk|regfor:6:reg|data_out\(10),
	datac => \mchn|bnk|regfor:4:reg|data_out\(10),
	datad => \mchn|Selector4~0_combout\,
	combout => \mchn|bnk|Mux21~13_combout\);

-- Location: LCFF_X28_Y26_N27
\mchn|bnk|regfor:5:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(10));

-- Location: LCCOMB_X25_Y25_N12
\mchn|bnk|Mux21~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~14_combout\ = (\mchn|bnk|Mux21~13_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(10)) # ((!\mchn|Selector4~0_combout\)))) # (!\mchn|bnk|Mux21~13_combout\ & (((\mchn|Selector4~0_combout\ & \mchn|bnk|regfor:5:reg|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(10),
	datab => \mchn|bnk|Mux21~13_combout\,
	datac => \mchn|Selector4~0_combout\,
	datad => \mchn|bnk|regfor:5:reg|data_out\(10),
	combout => \mchn|bnk|Mux21~14_combout\);

-- Location: LCCOMB_X25_Y29_N14
\mchn|bnk|regfor:2:reg|data_out[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:2:reg|data_out[10]~feeder_combout\ = \mchn|mxdata|S_out[10]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[10]~37_combout\,
	combout => \mchn|bnk|regfor:2:reg|data_out[10]~feeder_combout\);

-- Location: LCFF_X25_Y29_N15
\mchn|bnk|regfor:2:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:2:reg|data_out[10]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(10));

-- Location: LCFF_X27_Y25_N31
\mchn|bnk|regfor:1:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(10));

-- Location: LCCOMB_X24_Y26_N28
\mchn|bnk|Mux21~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~15_combout\ = (\mchn|Selector4~0_combout\ & (((\mchn|Selector3~0_combout\) # (\mchn|bnk|regfor:1:reg|data_out\(10))))) # (!\mchn|Selector4~0_combout\ & (\mchn|bnk|regfor:0:reg|data_out\(10) & (!\mchn|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(10),
	datab => \mchn|Selector4~0_combout\,
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|regfor:1:reg|data_out\(10),
	combout => \mchn|bnk|Mux21~15_combout\);

-- Location: LCCOMB_X24_Y26_N18
\mchn|bnk|Mux21~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~16_combout\ = (\mchn|Selector3~0_combout\ & ((\mchn|bnk|Mux21~15_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(10))) # (!\mchn|bnk|Mux21~15_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(10)))))) # (!\mchn|Selector3~0_combout\ & 
-- (((\mchn|bnk|Mux21~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(10),
	datab => \mchn|bnk|regfor:2:reg|data_out\(10),
	datac => \mchn|Selector3~0_combout\,
	datad => \mchn|bnk|Mux21~15_combout\,
	combout => \mchn|bnk|Mux21~16_combout\);

-- Location: LCCOMB_X24_Y26_N12
\mchn|bnk|Mux21~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~17_combout\ = (\mchn|Selector1~0_combout\ & (\mchn|Selector2~0_combout\)) # (!\mchn|Selector1~0_combout\ & ((\mchn|Selector2~0_combout\ & (\mchn|bnk|Mux21~14_combout\)) # (!\mchn|Selector2~0_combout\ & ((\mchn|bnk|Mux21~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|Selector1~0_combout\,
	datab => \mchn|Selector2~0_combout\,
	datac => \mchn|bnk|Mux21~14_combout\,
	datad => \mchn|bnk|Mux21~16_combout\,
	combout => \mchn|bnk|Mux21~17_combout\);

-- Location: LCCOMB_X24_Y26_N10
\mchn|bnk|Mux21~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~20_combout\ = (\mchn|Selector1~0_combout\ & ((\mchn|bnk|Mux21~17_combout\ & (\mchn|bnk|Mux21~19_combout\)) # (!\mchn|bnk|Mux21~17_combout\ & ((\mchn|bnk|Mux21~12_combout\))))) # (!\mchn|Selector1~0_combout\ & 
-- (((\mchn|bnk|Mux21~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux21~19_combout\,
	datab => \mchn|bnk|Mux21~12_combout\,
	datac => \mchn|Selector1~0_combout\,
	datad => \mchn|bnk|Mux21~17_combout\,
	combout => \mchn|bnk|Mux21~20_combout\);

-- Location: LCCOMB_X25_Y27_N30
\mchn|mxdata|S_out[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[10]~52_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[10]~129_combout\ $ (\mchn|bnk|Mux21~20_combout\ $ (\mchn|ALU|inter_carry[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datab => \mchn|bnk|Rb_data[10]~129_combout\,
	datac => \mchn|bnk|Mux21~20_combout\,
	datad => \mchn|ALU|inter_carry[10]~9_combout\,
	combout => \mchn|mxdata|S_out[10]~52_combout\);

-- Location: LCCOMB_X25_Y27_N16
\mchn|mxdata|S_out[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[10]~37_combout\ = (\mchn|mxdata|S_out[10]~52_combout\) # ((!\mchn|estado.add~regout\ & \RAM|altsyncram_component|auto_generated|q_a\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datac => \RAM|altsyncram_component|auto_generated|q_a\(10),
	datad => \mchn|mxdata|S_out[10]~52_combout\,
	combout => \mchn|mxdata|S_out[10]~37_combout\);

-- Location: LCCOMB_X25_Y30_N20
\mchn|bnk|regfor:11:reg|data_out[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:11:reg|data_out[10]~feeder_combout\ = \mchn|mxdata|S_out[10]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[10]~37_combout\,
	combout => \mchn|bnk|regfor:11:reg|data_out[10]~feeder_combout\);

-- Location: LCFF_X25_Y30_N21
\mchn|bnk|regfor:11:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:11:reg|data_out[10]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(10));

-- Location: LCFF_X29_Y30_N11
\mchn|bnk|regfor:3:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(10));

-- Location: LCCOMB_X29_Y30_N10
\mchn|bnk|Mux21~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~8_combout\ = (\mchn|ir|data_out\(11) & (((\mchn|ir|data_out\(10))))) # (!\mchn|ir|data_out\(11) & ((\mchn|ir|data_out\(10) & (\mchn|bnk|regfor:7:reg|data_out\(10))) # (!\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:3:reg|data_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(10),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:3:reg|data_out\(10),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux21~8_combout\);

-- Location: LCCOMB_X25_Y30_N26
\mchn|bnk|Mux21~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~9_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux21~8_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(10))) # (!\mchn|bnk|Mux21~8_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(10)))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux21~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(10),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:11:reg|data_out\(10),
	datad => \mchn|bnk|Mux21~8_combout\,
	combout => \mchn|bnk|Mux21~9_combout\);

-- Location: LCFF_X25_Y29_N31
\mchn|bnk|regfor:14:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(10));

-- Location: LCCOMB_X25_Y29_N0
\mchn|bnk|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~1_combout\ = (\mchn|ir|data_out\(10) & (((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11) & (\mchn|bnk|regfor:10:reg|data_out\(10))) # (!\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:2:reg|data_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(10),
	datab => \mchn|bnk|regfor:2:reg|data_out\(10),
	datac => \mchn|ir|data_out\(10),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux21~1_combout\);

-- Location: LCCOMB_X25_Y29_N30
\mchn|bnk|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~2_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux21~1_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(10)))) # (!\mchn|bnk|Mux21~1_combout\ & (\mchn|bnk|regfor:6:reg|data_out\(10))))) # (!\mchn|ir|data_out\(10) & 
-- (((\mchn|bnk|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(10),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|regfor:14:reg|data_out\(10),
	datad => \mchn|bnk|Mux21~1_combout\,
	combout => \mchn|bnk|Mux21~2_combout\);

-- Location: LCFF_X25_Y28_N25
\mchn|bnk|regfor:12:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(10));

-- Location: LCFF_X25_Y28_N27
\mchn|bnk|regfor:0:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[10]~37_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(10));

-- Location: LCCOMB_X25_Y28_N26
\mchn|bnk|Mux21~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~5_combout\ = (\mchn|ir|data_out\(10) & (((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11) & (\mchn|bnk|regfor:8:reg|data_out\(10))) # (!\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:0:reg|data_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:8:reg|data_out\(10),
	datac => \mchn|bnk|regfor:0:reg|data_out\(10),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux21~5_combout\);

-- Location: LCCOMB_X25_Y28_N24
\mchn|bnk|Mux21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~6_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux21~5_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(10)))) # (!\mchn|bnk|Mux21~5_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(10))))) # (!\mchn|ir|data_out\(10) & 
-- (((\mchn|bnk|Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:4:reg|data_out\(10),
	datac => \mchn|bnk|regfor:12:reg|data_out\(10),
	datad => \mchn|bnk|Mux21~5_combout\,
	combout => \mchn|bnk|Mux21~6_combout\);

-- Location: LCCOMB_X24_Y25_N26
\mchn|bnk|regfor:13:reg|data_out[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:13:reg|data_out[10]~feeder_combout\ = \mchn|mxdata|S_out[10]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[10]~37_combout\,
	combout => \mchn|bnk|regfor:13:reg|data_out[10]~feeder_combout\);

-- Location: LCFF_X24_Y25_N27
\mchn|bnk|regfor:13:reg|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:13:reg|data_out[10]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(10));

-- Location: LCCOMB_X27_Y25_N30
\mchn|bnk|Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~3_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:5:reg|data_out\(10)) # ((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & (((\mchn|bnk|regfor:1:reg|data_out\(10) & !\mchn|ir|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:5:reg|data_out\(10),
	datac => \mchn|bnk|regfor:1:reg|data_out\(10),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux21~3_combout\);

-- Location: LCCOMB_X27_Y25_N20
\mchn|bnk|Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~4_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux21~3_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(10))) # (!\mchn|bnk|Mux21~3_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(10)))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|regfor:13:reg|data_out\(10),
	datac => \mchn|bnk|regfor:9:reg|data_out\(10),
	datad => \mchn|bnk|Mux21~3_combout\,
	combout => \mchn|bnk|Mux21~4_combout\);

-- Location: LCCOMB_X29_Y27_N0
\mchn|bnk|Mux21~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~7_combout\ = (\mchn|ir|data_out\(9) & (\mchn|ir|data_out\(8))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux21~4_combout\))) # (!\mchn|ir|data_out\(8) & (\mchn|bnk|Mux21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|Mux21~6_combout\,
	datad => \mchn|bnk|Mux21~4_combout\,
	combout => \mchn|bnk|Mux21~7_combout\);

-- Location: LCCOMB_X29_Y27_N6
\mchn|bnk|Mux21~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux21~10_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux21~7_combout\ & (\mchn|bnk|Mux21~9_combout\)) # (!\mchn|bnk|Mux21~7_combout\ & ((\mchn|bnk|Mux21~2_combout\))))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|Mux21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|Mux21~9_combout\,
	datac => \mchn|bnk|Mux21~2_combout\,
	datad => \mchn|bnk|Mux21~7_combout\,
	combout => \mchn|bnk|Mux21~10_combout\);

-- Location: LCCOMB_X29_Y27_N4
\mchn|out_RAM_data[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[10]~10_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux21~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux21~10_combout\,
	combout => \mchn|out_RAM_data[10]~10_combout\);

-- Location: LCCOMB_X27_Y28_N22
\mchn|mxdata|S_out[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[9]~36_combout\ = (\mchn|mxdata|S_out[9]~51_combout\) # ((!\mchn|estado.add~regout\ & \RAM|altsyncram_component|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|mxdata|S_out[9]~51_combout\,
	datac => \mchn|estado.add~regout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(9),
	combout => \mchn|mxdata|S_out[9]~36_combout\);

-- Location: LCFF_X28_Y30_N17
\mchn|bnk|regfor:11:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[9]~36_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(9));

-- Location: LCCOMB_X28_Y30_N2
\mchn|bnk|Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~3_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|regfor:10:reg|data_out\(9)) # ((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|regfor:8:reg|data_out\(9) & !\mchn|ir|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(9),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|regfor:8:reg|data_out\(9),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux22~3_combout\);

-- Location: LCCOMB_X28_Y30_N16
\mchn|bnk|Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~4_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux22~3_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(9)))) # (!\mchn|bnk|Mux22~3_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(9))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:11:reg|data_out\(9),
	datad => \mchn|bnk|Mux22~3_combout\,
	combout => \mchn|bnk|Mux22~4_combout\);

-- Location: LCCOMB_X28_Y31_N4
\mchn|bnk|Mux22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~5_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(8)) # (\mchn|bnk|regfor:2:reg|data_out\(9))))) # (!\mchn|ir|data_out\(9) & (\mchn|bnk|regfor:0:reg|data_out\(9) & (!\mchn|ir|data_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:0:reg|data_out\(9),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|ir|data_out\(8),
	datad => \mchn|bnk|regfor:2:reg|data_out\(9),
	combout => \mchn|bnk|Mux22~5_combout\);

-- Location: LCCOMB_X27_Y28_N0
\mchn|bnk|Mux22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~6_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux22~5_combout\ & ((\mchn|bnk|regfor:3:reg|data_out\(9)))) # (!\mchn|bnk|Mux22~5_combout\ & (\mchn|bnk|regfor:1:reg|data_out\(9))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|bnk|regfor:1:reg|data_out\(9),
	datac => \mchn|bnk|regfor:3:reg|data_out\(9),
	datad => \mchn|bnk|Mux22~5_combout\,
	combout => \mchn|bnk|Mux22~6_combout\);

-- Location: LCCOMB_X25_Y29_N22
\mchn|bnk|Mux22~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~7_combout\ = (\mchn|ir|data_out\(10) & (((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11) & (\mchn|bnk|Mux22~4_combout\)) # (!\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux22~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|Mux22~4_combout\,
	datac => \mchn|ir|data_out\(11),
	datad => \mchn|bnk|Mux22~6_combout\,
	combout => \mchn|bnk|Mux22~7_combout\);

-- Location: LCCOMB_X31_Y28_N30
\mchn|bnk|Mux22~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~8_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:13:reg|data_out\(9))) # (!\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:12:reg|data_out\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(9),
	datab => \mchn|bnk|regfor:12:reg|data_out\(9),
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux22~8_combout\);

-- Location: LCCOMB_X25_Y29_N24
\mchn|bnk|Mux22~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~9_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux22~8_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(9))) # (!\mchn|bnk|Mux22~8_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(9)))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Mux22~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|regfor:15:reg|data_out\(9),
	datac => \mchn|bnk|regfor:14:reg|data_out\(9),
	datad => \mchn|bnk|Mux22~8_combout\,
	combout => \mchn|bnk|Mux22~9_combout\);

-- Location: LCFF_X28_Y28_N27
\mchn|bnk|regfor:4:reg|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[9]~36_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(9));

-- Location: LCCOMB_X28_Y28_N26
\mchn|bnk|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~1_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:5:reg|data_out\(9)) # ((\mchn|ir|data_out\(9))))) # (!\mchn|ir|data_out\(8) & (((\mchn|bnk|regfor:4:reg|data_out\(9) & !\mchn|ir|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:4:reg|data_out\(9),
	datad => \mchn|ir|data_out\(9),
	combout => \mchn|bnk|Mux22~1_combout\);

-- Location: LCCOMB_X24_Y28_N8
\mchn|bnk|Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~2_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux22~1_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(9))) # (!\mchn|bnk|Mux22~1_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(9)))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(9),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|regfor:6:reg|data_out\(9),
	datad => \mchn|bnk|Mux22~1_combout\,
	combout => \mchn|bnk|Mux22~2_combout\);

-- Location: LCCOMB_X25_Y29_N10
\mchn|bnk|Mux22~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux22~10_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux22~7_combout\ & (\mchn|bnk|Mux22~9_combout\)) # (!\mchn|bnk|Mux22~7_combout\ & ((\mchn|bnk|Mux22~2_combout\))))) # (!\mchn|ir|data_out\(10) & (\mchn|bnk|Mux22~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|Mux22~7_combout\,
	datac => \mchn|bnk|Mux22~9_combout\,
	datad => \mchn|bnk|Mux22~2_combout\,
	combout => \mchn|bnk|Mux22~10_combout\);

-- Location: LCCOMB_X25_Y29_N12
\mchn|out_RAM_data[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[9]~9_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux22~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux22~10_combout\,
	combout => \mchn|out_RAM_data[9]~9_combout\);

-- Location: LCCOMB_X25_Y25_N22
\mchn|mxdata|S_out[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[8]~35_combout\ = (\mchn|mxdata|S_out[8]~50_combout\) # ((!\mchn|estado.add~regout\ & \RAM|altsyncram_component|auto_generated|q_a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datac => \mchn|mxdata|S_out[8]~50_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(8),
	combout => \mchn|mxdata|S_out[8]~35_combout\);

-- Location: LCCOMB_X24_Y25_N8
\mchn|bnk|regfor:13:reg|data_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:13:reg|data_out[8]~feeder_combout\ = \mchn|mxdata|S_out[8]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[8]~35_combout\,
	combout => \mchn|bnk|regfor:13:reg|data_out[8]~feeder_combout\);

-- Location: LCFF_X24_Y25_N9
\mchn|bnk|regfor:13:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:13:reg|data_out[8]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:13:reg|data_out\(8));

-- Location: LCCOMB_X24_Y25_N22
\mchn|bnk|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~2_combout\ = (\mchn|bnk|Mux23~1_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(8)) # ((!\mchn|ir|data_out\(10))))) # (!\mchn|bnk|Mux23~1_combout\ & (((\mchn|ir|data_out\(10) & \mchn|bnk|regfor:5:reg|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux23~1_combout\,
	datab => \mchn|bnk|regfor:13:reg|data_out\(8),
	datac => \mchn|ir|data_out\(10),
	datad => \mchn|bnk|regfor:5:reg|data_out\(8),
	combout => \mchn|bnk|Mux23~2_combout\);

-- Location: LCCOMB_X25_Y28_N6
\mchn|bnk|Mux23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~5_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:4:reg|data_out\(8)) # ((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & (((\mchn|bnk|regfor:0:reg|data_out\(8) & !\mchn|ir|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:4:reg|data_out\(8),
	datac => \mchn|bnk|regfor:0:reg|data_out\(8),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux23~5_combout\);

-- Location: LCCOMB_X25_Y28_N12
\mchn|bnk|Mux23~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~6_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux23~5_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(8)))) # (!\mchn|bnk|Mux23~5_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(8))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|regfor:8:reg|data_out\(8),
	datac => \mchn|bnk|regfor:12:reg|data_out\(8),
	datad => \mchn|bnk|Mux23~5_combout\,
	combout => \mchn|bnk|Mux23~6_combout\);

-- Location: LCCOMB_X24_Y25_N28
\mchn|bnk|Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~3_combout\ = (\mchn|ir|data_out\(10) & (((\mchn|bnk|regfor:6:reg|data_out\(8)) # (\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & (\mchn|bnk|regfor:2:reg|data_out\(8) & ((!\mchn|ir|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:2:reg|data_out\(8),
	datab => \mchn|bnk|regfor:6:reg|data_out\(8),
	datac => \mchn|ir|data_out\(10),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux23~3_combout\);

-- Location: LCCOMB_X24_Y25_N6
\mchn|bnk|Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~4_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux23~3_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(8)))) # (!\mchn|bnk|Mux23~3_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(8))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(8),
	datab => \mchn|bnk|regfor:14:reg|data_out\(8),
	datac => \mchn|ir|data_out\(11),
	datad => \mchn|bnk|Mux23~3_combout\,
	combout => \mchn|bnk|Mux23~4_combout\);

-- Location: LCCOMB_X24_Y25_N20
\mchn|bnk|Mux23~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~7_combout\ = (\mchn|ir|data_out\(8) & (\mchn|ir|data_out\(9))) # (!\mchn|ir|data_out\(8) & ((\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux23~4_combout\))) # (!\mchn|ir|data_out\(9) & (\mchn|bnk|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|Mux23~6_combout\,
	datad => \mchn|bnk|Mux23~4_combout\,
	combout => \mchn|bnk|Mux23~7_combout\);

-- Location: LCCOMB_X23_Y25_N30
\mchn|bnk|regfor:3:reg|data_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:3:reg|data_out[8]~feeder_combout\ = \mchn|mxdata|S_out[8]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[8]~35_combout\,
	combout => \mchn|bnk|regfor:3:reg|data_out[8]~feeder_combout\);

-- Location: LCFF_X23_Y25_N31
\mchn|bnk|regfor:3:reg|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:3:reg|data_out[8]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(8));

-- Location: LCCOMB_X23_Y25_N20
\mchn|bnk|Mux23~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~8_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:11:reg|data_out\(8)) # ((\mchn|ir|data_out\(10))))) # (!\mchn|ir|data_out\(11) & (((\mchn|bnk|regfor:3:reg|data_out\(8) & !\mchn|ir|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:11:reg|data_out\(8),
	datab => \mchn|bnk|regfor:3:reg|data_out\(8),
	datac => \mchn|ir|data_out\(11),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux23~8_combout\);

-- Location: LCCOMB_X24_Y25_N2
\mchn|bnk|Mux23~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~9_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux23~8_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(8)))) # (!\mchn|bnk|Mux23~8_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(8))))) # (!\mchn|ir|data_out\(10) & 
-- (((\mchn|bnk|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:7:reg|data_out\(8),
	datac => \mchn|bnk|Mux23~8_combout\,
	datad => \mchn|bnk|regfor:15:reg|data_out\(8),
	combout => \mchn|bnk|Mux23~9_combout\);

-- Location: LCCOMB_X24_Y25_N16
\mchn|bnk|Mux23~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux23~10_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux23~7_combout\ & ((\mchn|bnk|Mux23~9_combout\))) # (!\mchn|bnk|Mux23~7_combout\ & (\mchn|bnk|Mux23~2_combout\)))) # (!\mchn|ir|data_out\(8) & (((\mchn|bnk|Mux23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|bnk|Mux23~2_combout\,
	datac => \mchn|bnk|Mux23~7_combout\,
	datad => \mchn|bnk|Mux23~9_combout\,
	combout => \mchn|bnk|Mux23~10_combout\);

-- Location: LCCOMB_X25_Y25_N4
\mchn|out_RAM_data[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[8]~8_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux23~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux23~10_combout\,
	combout => \mchn|out_RAM_data[8]~8_combout\);

-- Location: LCCOMB_X27_Y29_N0
\mchn|mxdata|S_out[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[7]~34_combout\ = (\mchn|mxdata|S_out[7]~49_combout\) # ((!\mchn|estado.add~regout\ & \RAM|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datac => \mchn|mxdata|S_out[7]~49_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(7),
	combout => \mchn|mxdata|S_out[7]~34_combout\);

-- Location: LCFF_X28_Y30_N1
\mchn|bnk|regfor:11:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[7]~34_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(7));

-- Location: LCCOMB_X27_Y30_N14
\mchn|bnk|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~2_combout\ = (\mchn|bnk|Mux24~1_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(7)) # ((!\mchn|ir|data_out\(9))))) # (!\mchn|bnk|Mux24~1_combout\ & (((\mchn|bnk|regfor:10:reg|data_out\(7) & \mchn|ir|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux24~1_combout\,
	datab => \mchn|bnk|regfor:11:reg|data_out\(7),
	datac => \mchn|bnk|regfor:10:reg|data_out\(7),
	datad => \mchn|ir|data_out\(9),
	combout => \mchn|bnk|Mux24~2_combout\);

-- Location: LCCOMB_X27_Y29_N4
\mchn|bnk|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~3_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|regfor:6:reg|data_out\(7)) # ((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|regfor:4:reg|data_out\(7) & !\mchn|ir|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(7),
	datab => \mchn|bnk|regfor:4:reg|data_out\(7),
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux24~3_combout\);

-- Location: LCCOMB_X27_Y29_N6
\mchn|bnk|Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~4_combout\ = (\mchn|bnk|Mux24~3_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(7)) # ((!\mchn|ir|data_out\(8))))) # (!\mchn|bnk|Mux24~3_combout\ & (((\mchn|bnk|regfor:5:reg|data_out\(7) & \mchn|ir|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(7),
	datab => \mchn|bnk|regfor:5:reg|data_out\(7),
	datac => \mchn|bnk|Mux24~3_combout\,
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux24~4_combout\);

-- Location: LCFF_X27_Y31_N9
\mchn|bnk|regfor:3:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[7]~34_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(7));

-- Location: LCFF_X28_Y31_N31
\mchn|bnk|regfor:0:reg|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[7]~34_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(7));

-- Location: LCCOMB_X28_Y31_N30
\mchn|bnk|Mux24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~5_combout\ = (\mchn|ir|data_out\(9) & (\mchn|ir|data_out\(8))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:1:reg|data_out\(7)))) # (!\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:0:reg|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:0:reg|data_out\(7),
	datad => \mchn|bnk|regfor:1:reg|data_out\(7),
	combout => \mchn|bnk|Mux24~5_combout\);

-- Location: LCCOMB_X27_Y31_N18
\mchn|bnk|Mux24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~6_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux24~5_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(7))) # (!\mchn|bnk|Mux24~5_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(7)))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Mux24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|regfor:3:reg|data_out\(7),
	datac => \mchn|bnk|regfor:2:reg|data_out\(7),
	datad => \mchn|bnk|Mux24~5_combout\,
	combout => \mchn|bnk|Mux24~6_combout\);

-- Location: LCCOMB_X30_Y29_N30
\mchn|bnk|Mux24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~7_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11)) # ((\mchn|bnk|Mux24~4_combout\)))) # (!\mchn|ir|data_out\(10) & (!\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|Mux24~4_combout\,
	datad => \mchn|bnk|Mux24~6_combout\,
	combout => \mchn|bnk|Mux24~7_combout\);

-- Location: LCCOMB_X30_Y29_N18
\mchn|bnk|Mux24~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux24~10_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux24~7_combout\ & (\mchn|bnk|Mux24~9_combout\)) # (!\mchn|bnk|Mux24~7_combout\ & ((\mchn|bnk|Mux24~2_combout\))))) # (!\mchn|ir|data_out\(11) & (((\mchn|bnk|Mux24~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux24~9_combout\,
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|Mux24~2_combout\,
	datad => \mchn|bnk|Mux24~7_combout\,
	combout => \mchn|bnk|Mux24~10_combout\);

-- Location: LCCOMB_X30_Y29_N20
\mchn|out_RAM_data[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[7]~7_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux24~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux24~10_combout\,
	combout => \mchn|out_RAM_data[7]~7_combout\);

-- Location: LCCOMB_X25_Y26_N0
\mchn|mxdata|S_out[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[6]~33_combout\ = (\mchn|mxdata|S_out[6]~48_combout\) # ((!\mchn|estado.add~regout\ & \RAM|altsyncram_component|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datab => \mchn|mxdata|S_out[6]~48_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(6),
	combout => \mchn|mxdata|S_out[6]~33_combout\);

-- Location: LCFF_X25_Y29_N9
\mchn|bnk|regfor:2:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[6]~33_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(6));

-- Location: LCCOMB_X25_Y29_N8
\mchn|bnk|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~1_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:10:reg|data_out\(6)) # ((\mchn|ir|data_out\(10))))) # (!\mchn|ir|data_out\(11) & (((\mchn|bnk|regfor:2:reg|data_out\(6) & !\mchn|ir|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(6),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:2:reg|data_out\(6),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux25~1_combout\);

-- Location: LCCOMB_X25_Y29_N28
\mchn|bnk|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~2_combout\ = (\mchn|bnk|Mux25~1_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(6)) # ((!\mchn|ir|data_out\(10))))) # (!\mchn|bnk|Mux25~1_combout\ & (((\mchn|bnk|regfor:6:reg|data_out\(6) & \mchn|ir|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(6),
	datab => \mchn|bnk|Mux25~1_combout\,
	datac => \mchn|bnk|regfor:6:reg|data_out\(6),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux25~2_combout\);

-- Location: LCCOMB_X24_Y28_N14
\mchn|bnk|regfor:4:reg|data_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:4:reg|data_out[6]~feeder_combout\ = \mchn|mxdata|S_out[6]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[6]~33_combout\,
	combout => \mchn|bnk|regfor:4:reg|data_out[6]~feeder_combout\);

-- Location: LCFF_X24_Y28_N15
\mchn|bnk|regfor:4:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:4:reg|data_out[6]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(6));

-- Location: LCCOMB_X25_Y28_N20
\mchn|bnk|Mux25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~5_combout\ = (\mchn|ir|data_out\(10) & (((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11) & (\mchn|bnk|regfor:8:reg|data_out\(6))) # (!\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:0:reg|data_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:8:reg|data_out\(6),
	datac => \mchn|bnk|regfor:0:reg|data_out\(6),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux25~5_combout\);

-- Location: LCFF_X25_Y28_N3
\mchn|bnk|regfor:12:reg|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[6]~33_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(6));

-- Location: LCCOMB_X25_Y28_N0
\mchn|bnk|Mux25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~6_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux25~5_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(6)))) # (!\mchn|bnk|Mux25~5_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(6))))) # (!\mchn|ir|data_out\(10) & 
-- (((\mchn|bnk|Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:4:reg|data_out\(6),
	datac => \mchn|bnk|Mux25~5_combout\,
	datad => \mchn|bnk|regfor:12:reg|data_out\(6),
	combout => \mchn|bnk|Mux25~6_combout\);

-- Location: LCCOMB_X27_Y28_N30
\mchn|bnk|Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~3_combout\ = (\mchn|ir|data_out\(10) & (((\mchn|bnk|regfor:5:reg|data_out\(6)) # (\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & (\mchn|bnk|regfor:1:reg|data_out\(6) & ((!\mchn|ir|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:1:reg|data_out\(6),
	datab => \mchn|bnk|regfor:5:reg|data_out\(6),
	datac => \mchn|ir|data_out\(10),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux25~3_combout\);

-- Location: LCCOMB_X25_Y29_N2
\mchn|bnk|Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~4_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux25~3_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(6)))) # (!\mchn|bnk|Mux25~3_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(6))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(6),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:13:reg|data_out\(6),
	datad => \mchn|bnk|Mux25~3_combout\,
	combout => \mchn|bnk|Mux25~4_combout\);

-- Location: LCCOMB_X25_Y29_N16
\mchn|bnk|Mux25~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~7_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux25~4_combout\))) # (!\mchn|ir|data_out\(8) & (\mchn|bnk|Mux25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|Mux25~6_combout\,
	datac => \mchn|ir|data_out\(8),
	datad => \mchn|bnk|Mux25~4_combout\,
	combout => \mchn|bnk|Mux25~7_combout\);

-- Location: LCCOMB_X29_Y24_N22
\mchn|bnk|Mux25~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~8_combout\ = (\mchn|ir|data_out\(11) & (((\mchn|ir|data_out\(10))))) # (!\mchn|ir|data_out\(11) & ((\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:7:reg|data_out\(6)))) # (!\mchn|ir|data_out\(10) & (\mchn|bnk|regfor:3:reg|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(6),
	datab => \mchn|bnk|regfor:7:reg|data_out\(6),
	datac => \mchn|ir|data_out\(11),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux25~8_combout\);

-- Location: LCCOMB_X25_Y26_N16
\mchn|bnk|Mux25~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~9_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux25~8_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(6))) # (!\mchn|bnk|Mux25~8_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(6)))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux25~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:15:reg|data_out\(6),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:11:reg|data_out\(6),
	datad => \mchn|bnk|Mux25~8_combout\,
	combout => \mchn|bnk|Mux25~9_combout\);

-- Location: LCCOMB_X25_Y29_N18
\mchn|bnk|Mux25~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux25~10_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux25~7_combout\ & ((\mchn|bnk|Mux25~9_combout\))) # (!\mchn|bnk|Mux25~7_combout\ & (\mchn|bnk|Mux25~2_combout\)))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|Mux25~2_combout\,
	datac => \mchn|bnk|Mux25~7_combout\,
	datad => \mchn|bnk|Mux25~9_combout\,
	combout => \mchn|bnk|Mux25~10_combout\);

-- Location: LCCOMB_X25_Y29_N4
\mchn|out_RAM_data[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[6]~6_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux25~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux25~10_combout\,
	combout => \mchn|out_RAM_data[6]~6_combout\);

-- Location: LCCOMB_X30_Y27_N30
\mchn|mxdata|S_out[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[5]~32_combout\ = (\mchn|mxdata|S_out[5]~47_combout\) # ((!\mchn|estado.add~regout\ & \RAM|altsyncram_component|auto_generated|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datab => \mchn|mxdata|S_out[5]~47_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(5),
	combout => \mchn|mxdata|S_out[5]~32_combout\);

-- Location: LCCOMB_X29_Y29_N22
\mchn|bnk|regfor:6:reg|data_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:6:reg|data_out[5]~feeder_combout\ = \mchn|mxdata|S_out[5]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[5]~32_combout\,
	combout => \mchn|bnk|regfor:6:reg|data_out[5]~feeder_combout\);

-- Location: LCFF_X29_Y29_N23
\mchn|bnk|regfor:6:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:6:reg|data_out[5]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(5));

-- Location: LCFF_X30_Y27_N31
\mchn|bnk|regfor:4:reg|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|mxdata|S_out[5]~32_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(5));

-- Location: LCCOMB_X30_Y27_N4
\mchn|bnk|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~1_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:5:reg|data_out\(5))) # (!\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:4:reg|data_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(5),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|ir|data_out\(8),
	datad => \mchn|bnk|regfor:4:reg|data_out\(5),
	combout => \mchn|bnk|Mux26~1_combout\);

-- Location: LCCOMB_X29_Y29_N4
\mchn|bnk|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~2_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux26~1_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(5))) # (!\mchn|bnk|Mux26~1_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(5)))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(5),
	datab => \mchn|bnk|regfor:6:reg|data_out\(5),
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|bnk|Mux26~1_combout\,
	combout => \mchn|bnk|Mux26~2_combout\);

-- Location: LCCOMB_X28_Y31_N0
\mchn|bnk|Mux26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~5_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8)) # ((\mchn|bnk|regfor:2:reg|data_out\(5))))) # (!\mchn|ir|data_out\(9) & (!\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:0:reg|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:0:reg|data_out\(5),
	datad => \mchn|bnk|regfor:2:reg|data_out\(5),
	combout => \mchn|bnk|Mux26~5_combout\);

-- Location: LCCOMB_X29_Y29_N24
\mchn|bnk|Mux26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~6_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux26~5_combout\ & ((\mchn|bnk|regfor:3:reg|data_out\(5)))) # (!\mchn|bnk|Mux26~5_combout\ & (\mchn|bnk|regfor:1:reg|data_out\(5))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|bnk|regfor:1:reg|data_out\(5),
	datac => \mchn|bnk|regfor:3:reg|data_out\(5),
	datad => \mchn|bnk|Mux26~5_combout\,
	combout => \mchn|bnk|Mux26~6_combout\);

-- Location: LCCOMB_X30_Y25_N0
\mchn|bnk|Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~3_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|regfor:10:reg|data_out\(5)) # ((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|regfor:8:reg|data_out\(5) & !\mchn|ir|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(5),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|regfor:8:reg|data_out\(5),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux26~3_combout\);

-- Location: LCCOMB_X30_Y25_N22
\mchn|bnk|Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~4_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux26~3_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(5))) # (!\mchn|bnk|Mux26~3_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(5)))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:11:reg|data_out\(5),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:9:reg|data_out\(5),
	datad => \mchn|bnk|Mux26~3_combout\,
	combout => \mchn|bnk|Mux26~4_combout\);

-- Location: LCCOMB_X29_Y29_N6
\mchn|bnk|Mux26~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~7_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|ir|data_out\(10)) # ((\mchn|bnk|Mux26~4_combout\)))) # (!\mchn|ir|data_out\(11) & (!\mchn|ir|data_out\(10) & (\mchn|bnk|Mux26~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|Mux26~6_combout\,
	datad => \mchn|bnk|Mux26~4_combout\,
	combout => \mchn|bnk|Mux26~7_combout\);

-- Location: LCCOMB_X29_Y29_N12
\mchn|bnk|Mux26~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux26~10_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux26~7_combout\ & (\mchn|bnk|Mux26~9_combout\)) # (!\mchn|bnk|Mux26~7_combout\ & ((\mchn|bnk|Mux26~2_combout\))))) # (!\mchn|ir|data_out\(10) & (((\mchn|bnk|Mux26~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux26~9_combout\,
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|Mux26~2_combout\,
	datad => \mchn|bnk|Mux26~7_combout\,
	combout => \mchn|bnk|Mux26~10_combout\);

-- Location: LCCOMB_X29_Y29_N18
\mchn|out_RAM_data[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[5]~5_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux26~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux26~10_combout\,
	combout => \mchn|out_RAM_data[5]~5_combout\);

-- Location: LCCOMB_X27_Y26_N20
\mchn|mxdata|S_out[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[4]~31_combout\ = (\mchn|mxdata|S_out[4]~46_combout\) # ((!\mchn|estado.add~regout\ & \RAM|altsyncram_component|auto_generated|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datac => \mchn|mxdata|S_out[4]~46_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(4),
	combout => \mchn|mxdata|S_out[4]~31_combout\);

-- Location: LCFF_X27_Y28_N19
\mchn|bnk|regfor:1:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[4]~31_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(4));

-- Location: LCCOMB_X30_Y30_N20
\mchn|bnk|regfor:9:reg|data_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:9:reg|data_out[4]~feeder_combout\ = \mchn|mxdata|S_out[4]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[4]~31_combout\,
	combout => \mchn|bnk|regfor:9:reg|data_out[4]~feeder_combout\);

-- Location: LCFF_X30_Y30_N21
\mchn|bnk|regfor:9:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:9:reg|data_out[4]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:9:reg|data_out\(4));

-- Location: LCCOMB_X27_Y28_N18
\mchn|bnk|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~1_combout\ = (\mchn|ir|data_out\(10) & (\mchn|ir|data_out\(11))) # (!\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:9:reg|data_out\(4)))) # (!\mchn|ir|data_out\(11) & (\mchn|bnk|regfor:1:reg|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:1:reg|data_out\(4),
	datad => \mchn|bnk|regfor:9:reg|data_out\(4),
	combout => \mchn|bnk|Mux27~1_combout\);

-- Location: LCCOMB_X29_Y27_N8
\mchn|bnk|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~2_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux27~1_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(4))) # (!\mchn|bnk|Mux27~1_combout\ & ((\mchn|bnk|regfor:5:reg|data_out\(4)))))) # (!\mchn|ir|data_out\(10) & 
-- (\mchn|bnk|Mux27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|Mux27~1_combout\,
	datac => \mchn|bnk|regfor:13:reg|data_out\(4),
	datad => \mchn|bnk|regfor:5:reg|data_out\(4),
	combout => \mchn|bnk|Mux27~2_combout\);

-- Location: LCCOMB_X32_Y26_N8
\mchn|bnk|regfor:0:reg|data_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:0:reg|data_out[4]~feeder_combout\ = \mchn|mxdata|S_out[4]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[4]~31_combout\,
	combout => \mchn|bnk|regfor:0:reg|data_out[4]~feeder_combout\);

-- Location: LCFF_X32_Y26_N9
\mchn|bnk|regfor:0:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:0:reg|data_out[4]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|load_reg[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:0:reg|data_out\(4));

-- Location: LCCOMB_X31_Y26_N30
\mchn|bnk|Mux27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~5_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:4:reg|data_out\(4)) # ((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & (((\mchn|bnk|regfor:0:reg|data_out\(4) & !\mchn|ir|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(4),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|regfor:0:reg|data_out\(4),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux27~5_combout\);

-- Location: LCCOMB_X29_Y27_N14
\mchn|bnk|Mux27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~6_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux27~5_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(4)))) # (!\mchn|bnk|Mux27~5_combout\ & (\mchn|bnk|regfor:8:reg|data_out\(4))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:8:reg|data_out\(4),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|Mux27~5_combout\,
	datad => \mchn|bnk|regfor:12:reg|data_out\(4),
	combout => \mchn|bnk|Mux27~6_combout\);

-- Location: LCCOMB_X31_Y30_N28
\mchn|bnk|Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~3_combout\ = (\mchn|ir|data_out\(11) & (((\mchn|ir|data_out\(10))))) # (!\mchn|ir|data_out\(11) & ((\mchn|ir|data_out\(10) & (\mchn|bnk|regfor:6:reg|data_out\(4))) # (!\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:2:reg|data_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|regfor:6:reg|data_out\(4),
	datac => \mchn|bnk|regfor:2:reg|data_out\(4),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux27~3_combout\);

-- Location: LCCOMB_X30_Y27_N18
\mchn|bnk|Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~4_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux27~3_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(4)))) # (!\mchn|bnk|Mux27~3_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(4))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:10:reg|data_out\(4),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:14:reg|data_out\(4),
	datad => \mchn|bnk|Mux27~3_combout\,
	combout => \mchn|bnk|Mux27~4_combout\);

-- Location: LCCOMB_X29_Y27_N20
\mchn|bnk|Mux27~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~7_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8)) # ((\mchn|bnk|Mux27~4_combout\)))) # (!\mchn|ir|data_out\(9) & (!\mchn|ir|data_out\(8) & (\mchn|bnk|Mux27~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|Mux27~6_combout\,
	datad => \mchn|bnk|Mux27~4_combout\,
	combout => \mchn|bnk|Mux27~7_combout\);

-- Location: LCFF_X30_Y28_N13
\mchn|bnk|regfor:3:reg|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[4]~31_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(4));

-- Location: LCCOMB_X30_Y28_N12
\mchn|bnk|Mux27~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~8_combout\ = (\mchn|ir|data_out\(10) & (\mchn|ir|data_out\(11))) # (!\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:11:reg|data_out\(4)))) # (!\mchn|ir|data_out\(11) & (\mchn|bnk|regfor:3:reg|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:3:reg|data_out\(4),
	datad => \mchn|bnk|regfor:11:reg|data_out\(4),
	combout => \mchn|bnk|Mux27~8_combout\);

-- Location: LCCOMB_X30_Y27_N24
\mchn|bnk|Mux27~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~9_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux27~8_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(4))) # (!\mchn|bnk|Mux27~8_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(4)))))) # (!\mchn|ir|data_out\(10) & 
-- (((\mchn|bnk|Mux27~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:15:reg|data_out\(4),
	datac => \mchn|bnk|regfor:7:reg|data_out\(4),
	datad => \mchn|bnk|Mux27~8_combout\,
	combout => \mchn|bnk|Mux27~9_combout\);

-- Location: LCCOMB_X29_Y27_N22
\mchn|bnk|Mux27~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux27~10_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux27~7_combout\ & ((\mchn|bnk|Mux27~9_combout\))) # (!\mchn|bnk|Mux27~7_combout\ & (\mchn|bnk|Mux27~2_combout\)))) # (!\mchn|ir|data_out\(8) & (((\mchn|bnk|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|bnk|Mux27~2_combout\,
	datac => \mchn|bnk|Mux27~7_combout\,
	datad => \mchn|bnk|Mux27~9_combout\,
	combout => \mchn|bnk|Mux27~10_combout\);

-- Location: LCCOMB_X29_Y27_N30
\mchn|out_RAM_data[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[4]~4_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux27~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux27~10_combout\,
	combout => \mchn|out_RAM_data[4]~4_combout\);

-- Location: LCCOMB_X30_Y27_N8
\mchn|mxdata|S_out[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[3]~30_combout\ = (\mchn|mxdata|S_out[3]~45_combout\) # ((!\mchn|estado.add~regout\ & \RAM|altsyncram_component|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datac => \mchn|mxdata|S_out[3]~45_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(3),
	combout => \mchn|mxdata|S_out[3]~30_combout\);

-- Location: LCCOMB_X31_Y28_N2
\mchn|bnk|regfor:12:reg|data_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:12:reg|data_out[3]~feeder_combout\ = \mchn|mxdata|S_out[3]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[3]~30_combout\,
	combout => \mchn|bnk|regfor:12:reg|data_out[3]~feeder_combout\);

-- Location: LCFF_X31_Y28_N3
\mchn|bnk|regfor:12:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:12:reg|data_out[3]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:12:reg|data_out\(3));

-- Location: LCCOMB_X31_Y28_N8
\mchn|bnk|Mux28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~8_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|regfor:14:reg|data_out\(3)) # ((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|regfor:12:reg|data_out\(3) & !\mchn|ir|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:14:reg|data_out\(3),
	datab => \mchn|bnk|regfor:12:reg|data_out\(3),
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux28~8_combout\);

-- Location: LCCOMB_X29_Y25_N10
\mchn|bnk|regfor:15:reg|data_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:15:reg|data_out[3]~feeder_combout\ = \mchn|mxdata|S_out[3]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[3]~30_combout\,
	combout => \mchn|bnk|regfor:15:reg|data_out[3]~feeder_combout\);

-- Location: LCFF_X29_Y25_N11
\mchn|bnk|regfor:15:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:15:reg|data_out[3]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(3));

-- Location: LCCOMB_X30_Y25_N4
\mchn|bnk|Mux28~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~9_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux28~8_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(3)))) # (!\mchn|bnk|Mux28~8_combout\ & (\mchn|bnk|regfor:13:reg|data_out\(3))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:13:reg|data_out\(3),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|Mux28~8_combout\,
	datad => \mchn|bnk|regfor:15:reg|data_out\(3),
	combout => \mchn|bnk|Mux28~9_combout\);

-- Location: LCCOMB_X32_Y31_N24
\mchn|bnk|regfor:4:reg|data_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:4:reg|data_out[3]~feeder_combout\ = \mchn|mxdata|S_out[3]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[3]~30_combout\,
	combout => \mchn|bnk|regfor:4:reg|data_out[3]~feeder_combout\);

-- Location: LCFF_X32_Y31_N25
\mchn|bnk|regfor:4:reg|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:4:reg|data_out[3]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:4:reg|data_out\(3));

-- Location: LCCOMB_X31_Y31_N22
\mchn|bnk|Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~3_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|regfor:6:reg|data_out\(3)) # ((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|regfor:4:reg|data_out\(3) & !\mchn|ir|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:6:reg|data_out\(3),
	datab => \mchn|ir|data_out\(9),
	datac => \mchn|bnk|regfor:4:reg|data_out\(3),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux28~3_combout\);

-- Location: LCCOMB_X31_Y27_N18
\mchn|bnk|Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~4_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux28~3_combout\ & ((\mchn|bnk|regfor:7:reg|data_out\(3)))) # (!\mchn|bnk|Mux28~3_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(3))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|bnk|regfor:5:reg|data_out\(3),
	datac => \mchn|bnk|regfor:7:reg|data_out\(3),
	datad => \mchn|bnk|Mux28~3_combout\,
	combout => \mchn|bnk|Mux28~4_combout\);

-- Location: LCCOMB_X28_Y31_N26
\mchn|bnk|Mux28~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~5_combout\ = (\mchn|ir|data_out\(9) & (\mchn|ir|data_out\(8))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:1:reg|data_out\(3)))) # (!\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:0:reg|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:0:reg|data_out\(3),
	datad => \mchn|bnk|regfor:1:reg|data_out\(3),
	combout => \mchn|bnk|Mux28~5_combout\);

-- Location: LCCOMB_X30_Y31_N10
\mchn|bnk|Mux28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~6_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux28~5_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(3))) # (!\mchn|bnk|Mux28~5_combout\ & ((\mchn|bnk|regfor:2:reg|data_out\(3)))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(3),
	datab => \mchn|bnk|regfor:2:reg|data_out\(3),
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|bnk|Mux28~5_combout\,
	combout => \mchn|bnk|Mux28~6_combout\);

-- Location: LCCOMB_X30_Y25_N10
\mchn|bnk|Mux28~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~7_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11)) # ((\mchn|bnk|Mux28~4_combout\)))) # (!\mchn|ir|data_out\(10) & (!\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|Mux28~4_combout\,
	datad => \mchn|bnk|Mux28~6_combout\,
	combout => \mchn|bnk|Mux28~7_combout\);

-- Location: LCCOMB_X30_Y25_N30
\mchn|bnk|Mux28~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux28~10_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux28~7_combout\ & ((\mchn|bnk|Mux28~9_combout\))) # (!\mchn|bnk|Mux28~7_combout\ & (\mchn|bnk|Mux28~2_combout\)))) # (!\mchn|ir|data_out\(11) & (((\mchn|bnk|Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Mux28~2_combout\,
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|Mux28~9_combout\,
	datad => \mchn|bnk|Mux28~7_combout\,
	combout => \mchn|bnk|Mux28~10_combout\);

-- Location: LCCOMB_X30_Y25_N24
\mchn|out_RAM_data[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[3]~3_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux28~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux28~10_combout\,
	combout => \mchn|out_RAM_data[3]~3_combout\);

-- Location: LCCOMB_X28_Y26_N10
\mchn|mxdata|S_out[2]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[2]~44_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[2]~41_combout\ $ (\mchn|bnk|Mux29~20_combout\ $ (\mchn|ALU|inter_carry[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datab => \mchn|bnk|Rb_data[2]~41_combout\,
	datac => \mchn|bnk|Mux29~20_combout\,
	datad => \mchn|ALU|inter_carry[2]~1_combout\,
	combout => \mchn|mxdata|S_out[2]~44_combout\);

-- Location: LCCOMB_X25_Y27_N24
\mchn|mxdata|S_out[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[2]~29_combout\ = (\mchn|mxdata|S_out[2]~44_combout\) # ((!\mchn|estado.add~regout\ & \RAM|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datac => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datad => \mchn|mxdata|S_out[2]~44_combout\,
	combout => \mchn|mxdata|S_out[2]~29_combout\);

-- Location: LCFF_X29_Y25_N23
\mchn|bnk|regfor:15:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[2]~29_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(2));

-- Location: LCFF_X30_Y28_N17
\mchn|bnk|regfor:3:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[2]~29_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:3:reg|data_out\(2));

-- Location: LCCOMB_X30_Y28_N16
\mchn|bnk|Mux29~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~8_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:7:reg|data_out\(2)) # ((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & (((\mchn|bnk|regfor:3:reg|data_out\(2) & !\mchn|ir|data_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:7:reg|data_out\(2),
	datac => \mchn|bnk|regfor:3:reg|data_out\(2),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux29~8_combout\);

-- Location: LCCOMB_X30_Y28_N22
\mchn|bnk|Mux29~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~9_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux29~8_combout\ & (\mchn|bnk|regfor:15:reg|data_out\(2))) # (!\mchn|bnk|Mux29~8_combout\ & ((\mchn|bnk|regfor:11:reg|data_out\(2)))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|regfor:15:reg|data_out\(2),
	datac => \mchn|bnk|Mux29~8_combout\,
	datad => \mchn|bnk|regfor:11:reg|data_out\(2),
	combout => \mchn|bnk|Mux29~9_combout\);

-- Location: LCFF_X24_Y28_N17
\mchn|bnk|regfor:6:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[2]~29_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:6:reg|data_out\(2));

-- Location: LCCOMB_X29_Y24_N14
\mchn|bnk|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~1_combout\ = (\mchn|ir|data_out\(11) & (((\mchn|bnk|regfor:10:reg|data_out\(2)) # (\mchn|ir|data_out\(10))))) # (!\mchn|ir|data_out\(11) & (\mchn|bnk|regfor:2:reg|data_out\(2) & ((!\mchn|ir|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:2:reg|data_out\(2),
	datab => \mchn|bnk|regfor:10:reg|data_out\(2),
	datac => \mchn|ir|data_out\(11),
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Mux29~1_combout\);

-- Location: LCCOMB_X30_Y28_N8
\mchn|bnk|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~2_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux29~1_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(2))) # (!\mchn|bnk|Mux29~1_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(2)))))) # (!\mchn|ir|data_out\(10) & 
-- (((\mchn|bnk|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:14:reg|data_out\(2),
	datac => \mchn|bnk|regfor:6:reg|data_out\(2),
	datad => \mchn|bnk|Mux29~1_combout\,
	combout => \mchn|bnk|Mux29~2_combout\);

-- Location: LCCOMB_X30_Y28_N26
\mchn|bnk|Mux29~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~5_combout\ = (\mchn|ir|data_out\(10) & (((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11) & ((\mchn|bnk|regfor:8:reg|data_out\(2)))) # (!\mchn|ir|data_out\(11) & (\mchn|bnk|regfor:0:reg|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:0:reg|data_out\(2),
	datac => \mchn|bnk|regfor:8:reg|data_out\(2),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Mux29~5_combout\);

-- Location: LCCOMB_X30_Y28_N4
\mchn|bnk|Mux29~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~6_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux29~5_combout\ & ((\mchn|bnk|regfor:12:reg|data_out\(2)))) # (!\mchn|bnk|Mux29~5_combout\ & (\mchn|bnk|regfor:4:reg|data_out\(2))))) # (!\mchn|ir|data_out\(10) & 
-- (((\mchn|bnk|Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(2),
	datab => \mchn|bnk|regfor:12:reg|data_out\(2),
	datac => \mchn|ir|data_out\(10),
	datad => \mchn|bnk|Mux29~5_combout\,
	combout => \mchn|bnk|Mux29~6_combout\);

-- Location: LCFF_X29_Y28_N11
\mchn|bnk|regfor:5:reg|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[2]~29_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:5:reg|data_out\(2));

-- Location: LCCOMB_X27_Y28_N2
\mchn|bnk|Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~3_combout\ = (\mchn|ir|data_out\(11) & (((\mchn|ir|data_out\(10))))) # (!\mchn|ir|data_out\(11) & ((\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:5:reg|data_out\(2)))) # (!\mchn|ir|data_out\(10) & (\mchn|bnk|regfor:1:reg|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:1:reg|data_out\(2),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|ir|data_out\(10),
	datad => \mchn|bnk|regfor:5:reg|data_out\(2),
	combout => \mchn|bnk|Mux29~3_combout\);

-- Location: LCCOMB_X28_Y25_N30
\mchn|bnk|Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~4_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Mux29~3_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(2)))) # (!\mchn|bnk|Mux29~3_combout\ & (\mchn|bnk|regfor:9:reg|data_out\(2))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:9:reg|data_out\(2),
	datab => \mchn|ir|data_out\(11),
	datac => \mchn|bnk|regfor:13:reg|data_out\(2),
	datad => \mchn|bnk|Mux29~3_combout\,
	combout => \mchn|bnk|Mux29~4_combout\);

-- Location: LCCOMB_X30_Y28_N30
\mchn|bnk|Mux29~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~7_combout\ = (\mchn|ir|data_out\(9) & (\mchn|ir|data_out\(8))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux29~4_combout\))) # (!\mchn|ir|data_out\(8) & (\mchn|bnk|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|Mux29~6_combout\,
	datad => \mchn|bnk|Mux29~4_combout\,
	combout => \mchn|bnk|Mux29~7_combout\);

-- Location: LCCOMB_X30_Y28_N28
\mchn|bnk|Mux29~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux29~10_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux29~7_combout\ & (\mchn|bnk|Mux29~9_combout\)) # (!\mchn|bnk|Mux29~7_combout\ & ((\mchn|bnk|Mux29~2_combout\))))) # (!\mchn|ir|data_out\(9) & (((\mchn|bnk|Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|Mux29~9_combout\,
	datac => \mchn|bnk|Mux29~2_combout\,
	datad => \mchn|bnk|Mux29~7_combout\,
	combout => \mchn|bnk|Mux29~10_combout\);

-- Location: LCCOMB_X30_Y28_N2
\mchn|out_RAM_data[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[2]~2_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux29~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux29~10_combout\,
	combout => \mchn|out_RAM_data[2]~2_combout\);

-- Location: LCCOMB_X27_Y30_N6
\mchn|mxdata|S_out[1]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[1]~43_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[1]~20_combout\ $ ((\mchn|ALU|S_out[1]~0_combout\)))) # (!\mchn|estado.add~regout\ & (((\RAM|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|Rb_data[1]~20_combout\,
	datab => \mchn|estado.add~regout\,
	datac => \mchn|ALU|S_out[1]~0_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_a\(1),
	combout => \mchn|mxdata|S_out[1]~43_combout\);

-- Location: LCCOMB_X29_Y30_N0
\mchn|bnk|regfor:7:reg|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:7:reg|data_out[1]~feeder_combout\ = \mchn|mxdata|S_out[1]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[1]~43_combout\,
	combout => \mchn|bnk|regfor:7:reg|data_out[1]~feeder_combout\);

-- Location: LCFF_X29_Y30_N1
\mchn|bnk|regfor:7:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:7:reg|data_out[1]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:7:reg|data_out\(1));

-- Location: LCCOMB_X29_Y29_N30
\mchn|bnk|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~1_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:5:reg|data_out\(1)))) # (!\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:4:reg|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:4:reg|data_out\(1),
	datab => \mchn|bnk|regfor:5:reg|data_out\(1),
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux30~1_combout\);

-- Location: LCCOMB_X29_Y29_N28
\mchn|bnk|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~2_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux30~1_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(1))) # (!\mchn|bnk|Mux30~1_combout\ & ((\mchn|bnk|regfor:6:reg|data_out\(1)))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|regfor:7:reg|data_out\(1),
	datac => \mchn|bnk|regfor:6:reg|data_out\(1),
	datad => \mchn|bnk|Mux30~1_combout\,
	combout => \mchn|bnk|Mux30~2_combout\);

-- Location: LCFF_X28_Y27_N21
\mchn|bnk|regfor:14:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[1]~43_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:14:reg|data_out\(1));

-- Location: LCCOMB_X29_Y30_N26
\mchn|bnk|Mux30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~8_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8) & ((\mchn|bnk|regfor:13:reg|data_out\(1)))) # (!\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:12:reg|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:12:reg|data_out\(1),
	datab => \mchn|bnk|regfor:13:reg|data_out\(1),
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux30~8_combout\);

-- Location: LCCOMB_X29_Y30_N20
\mchn|bnk|Mux30~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~9_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|bnk|Mux30~8_combout\ & ((\mchn|bnk|regfor:15:reg|data_out\(1)))) # (!\mchn|bnk|Mux30~8_combout\ & (\mchn|bnk|regfor:14:reg|data_out\(1))))) # (!\mchn|ir|data_out\(9) & 
-- (((\mchn|bnk|Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|bnk|regfor:14:reg|data_out\(1),
	datac => \mchn|bnk|regfor:15:reg|data_out\(1),
	datad => \mchn|bnk|Mux30~8_combout\,
	combout => \mchn|bnk|Mux30~9_combout\);

-- Location: LCCOMB_X27_Y31_N24
\mchn|bnk|regfor:2:reg|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:2:reg|data_out[1]~feeder_combout\ = \mchn|mxdata|S_out[1]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[1]~43_combout\,
	combout => \mchn|bnk|regfor:2:reg|data_out[1]~feeder_combout\);

-- Location: LCFF_X27_Y31_N25
\mchn|bnk|regfor:2:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:2:reg|data_out[1]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:2:reg|data_out\(1));

-- Location: LCCOMB_X28_Y31_N16
\mchn|bnk|Mux30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~5_combout\ = (\mchn|ir|data_out\(9) & ((\mchn|ir|data_out\(8)) # ((\mchn|bnk|regfor:2:reg|data_out\(1))))) # (!\mchn|ir|data_out\(9) & (!\mchn|ir|data_out\(8) & (\mchn|bnk|regfor:0:reg|data_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(9),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|regfor:0:reg|data_out\(1),
	datad => \mchn|bnk|regfor:2:reg|data_out\(1),
	combout => \mchn|bnk|Mux30~5_combout\);

-- Location: LCCOMB_X29_Y29_N16
\mchn|bnk|regfor:1:reg|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|regfor:1:reg|data_out[1]~feeder_combout\ = \mchn|mxdata|S_out[1]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mchn|mxdata|S_out[1]~43_combout\,
	combout => \mchn|bnk|regfor:1:reg|data_out[1]~feeder_combout\);

-- Location: LCFF_X29_Y29_N17
\mchn|bnk|regfor:1:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	datain => \mchn|bnk|regfor:1:reg|data_out[1]~feeder_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	ena => \mchn|bnk|Mux15~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:1:reg|data_out\(1));

-- Location: LCCOMB_X29_Y30_N30
\mchn|bnk|Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~6_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux30~5_combout\ & (\mchn|bnk|regfor:3:reg|data_out\(1))) # (!\mchn|bnk|Mux30~5_combout\ & ((\mchn|bnk|regfor:1:reg|data_out\(1)))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:3:reg|data_out\(1),
	datab => \mchn|ir|data_out\(8),
	datac => \mchn|bnk|Mux30~5_combout\,
	datad => \mchn|bnk|regfor:1:reg|data_out\(1),
	combout => \mchn|bnk|Mux30~6_combout\);

-- Location: LCFF_X28_Y30_N11
\mchn|bnk|regfor:11:reg|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[1]~43_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:11:reg|data_out\(1));

-- Location: LCCOMB_X27_Y30_N28
\mchn|bnk|Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~3_combout\ = (\mchn|ir|data_out\(9) & (((\mchn|bnk|regfor:10:reg|data_out\(1)) # (\mchn|ir|data_out\(8))))) # (!\mchn|ir|data_out\(9) & (\mchn|bnk|regfor:8:reg|data_out\(1) & ((!\mchn|ir|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:8:reg|data_out\(1),
	datab => \mchn|bnk|regfor:10:reg|data_out\(1),
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|ir|data_out\(8),
	combout => \mchn|bnk|Mux30~3_combout\);

-- Location: LCCOMB_X29_Y30_N2
\mchn|bnk|Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~4_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Mux30~3_combout\ & (\mchn|bnk|regfor:11:reg|data_out\(1))) # (!\mchn|bnk|Mux30~3_combout\ & ((\mchn|bnk|regfor:9:reg|data_out\(1)))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|bnk|regfor:11:reg|data_out\(1),
	datac => \mchn|bnk|regfor:9:reg|data_out\(1),
	datad => \mchn|bnk|Mux30~3_combout\,
	combout => \mchn|bnk|Mux30~4_combout\);

-- Location: LCCOMB_X29_Y30_N8
\mchn|bnk|Mux30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~7_combout\ = (\mchn|ir|data_out\(11) & (((\mchn|ir|data_out\(10)) # (\mchn|bnk|Mux30~4_combout\)))) # (!\mchn|ir|data_out\(11) & (\mchn|bnk|Mux30~6_combout\ & (!\mchn|ir|data_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|Mux30~6_combout\,
	datac => \mchn|ir|data_out\(10),
	datad => \mchn|bnk|Mux30~4_combout\,
	combout => \mchn|bnk|Mux30~7_combout\);

-- Location: LCCOMB_X30_Y29_N10
\mchn|bnk|Mux30~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Mux30~10_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Mux30~7_combout\ & ((\mchn|bnk|Mux30~9_combout\))) # (!\mchn|bnk|Mux30~7_combout\ & (\mchn|bnk|Mux30~2_combout\)))) # (!\mchn|ir|data_out\(10) & (((\mchn|bnk|Mux30~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|Mux30~2_combout\,
	datac => \mchn|bnk|Mux30~9_combout\,
	datad => \mchn|bnk|Mux30~7_combout\,
	combout => \mchn|bnk|Mux30~10_combout\);

-- Location: LCCOMB_X30_Y29_N24
\mchn|out_RAM_data[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[1]~1_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Mux30~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Mux30~10_combout\,
	combout => \mchn|out_RAM_data[1]~1_combout\);

-- Location: LCCOMB_X29_Y26_N0
\mchn|mxdata|S_out[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|mxdata|S_out[0]~28_combout\ = (\mchn|estado.add~regout\ & (\mchn|bnk|Rb_data[0]~10_combout\ $ (((\mchn|bnk|Ra_data[0]~31_combout\))))) # (!\mchn|estado.add~regout\ & (((\RAM|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.add~regout\,
	datab => \mchn|bnk|Rb_data[0]~10_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_a\(0),
	datad => \mchn|bnk|Ra_data[0]~31_combout\,
	combout => \mchn|mxdata|S_out[0]~28_combout\);

-- Location: LCFF_X30_Y26_N11
\mchn|bnk|regfor:15:reg|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_to_machine~clkctrl_outclk\,
	sdata => \mchn|mxdata|S_out[0]~28_combout\,
	aclr => \mchn|ALT_INV_estado.zero~clkctrl_outclk\,
	sload => VCC,
	ena => \mchn|bnk|Mux15~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mchn|bnk|regfor:15:reg|data_out\(0));

-- Location: LCCOMB_X31_Y30_N16
\mchn|bnk|Ra_data[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~9_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|ir|data_out\(10)) # ((\mchn|bnk|regfor:11:reg|data_out\(0))))) # (!\mchn|ir|data_out\(11) & (!\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:3:reg|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|regfor:11:reg|data_out\(0),
	datad => \mchn|bnk|regfor:3:reg|data_out\(0),
	combout => \mchn|bnk|Ra_data[0]~9_combout\);

-- Location: LCCOMB_X31_Y30_N18
\mchn|bnk|Ra_data[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~10_combout\ = (\mchn|bnk|Ra_data[0]~9_combout\ & (((\mchn|bnk|regfor:15:reg|data_out\(0)) # (!\mchn|ir|data_out\(10))))) # (!\mchn|bnk|Ra_data[0]~9_combout\ & (\mchn|bnk|regfor:7:reg|data_out\(0) & ((\mchn|ir|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:7:reg|data_out\(0),
	datab => \mchn|bnk|regfor:15:reg|data_out\(0),
	datac => \mchn|bnk|Ra_data[0]~9_combout\,
	datad => \mchn|ir|data_out\(10),
	combout => \mchn|bnk|Ra_data[0]~10_combout\);

-- Location: LCCOMB_X30_Y30_N30
\mchn|bnk|Ra_data[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~2_combout\ = (\mchn|ir|data_out\(10) & (((\mchn|ir|data_out\(11))))) # (!\mchn|ir|data_out\(10) & ((\mchn|ir|data_out\(11) & (\mchn|bnk|regfor:9:reg|data_out\(0))) # (!\mchn|ir|data_out\(11) & 
-- ((\mchn|bnk|regfor:1:reg|data_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(10),
	datab => \mchn|bnk|regfor:9:reg|data_out\(0),
	datac => \mchn|bnk|regfor:1:reg|data_out\(0),
	datad => \mchn|ir|data_out\(11),
	combout => \mchn|bnk|Ra_data[0]~2_combout\);

-- Location: LCCOMB_X31_Y30_N8
\mchn|bnk|Ra_data[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~3_combout\ = (\mchn|ir|data_out\(10) & ((\mchn|bnk|Ra_data[0]~2_combout\ & ((\mchn|bnk|regfor:13:reg|data_out\(0)))) # (!\mchn|bnk|Ra_data[0]~2_combout\ & (\mchn|bnk|regfor:5:reg|data_out\(0))))) # (!\mchn|ir|data_out\(10) & 
-- (((\mchn|bnk|Ra_data[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|bnk|regfor:5:reg|data_out\(0),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|Ra_data[0]~2_combout\,
	datad => \mchn|bnk|regfor:13:reg|data_out\(0),
	combout => \mchn|bnk|Ra_data[0]~3_combout\);

-- Location: LCCOMB_X31_Y30_N4
\mchn|bnk|Ra_data[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~4_combout\ = (\mchn|ir|data_out\(11) & (\mchn|ir|data_out\(10))) # (!\mchn|ir|data_out\(11) & ((\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:6:reg|data_out\(0)))) # (!\mchn|ir|data_out\(10) & (\mchn|bnk|regfor:2:reg|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|ir|data_out\(10),
	datac => \mchn|bnk|regfor:2:reg|data_out\(0),
	datad => \mchn|bnk|regfor:6:reg|data_out\(0),
	combout => \mchn|bnk|Ra_data[0]~4_combout\);

-- Location: LCCOMB_X31_Y30_N22
\mchn|bnk|Ra_data[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~5_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Ra_data[0]~4_combout\ & ((\mchn|bnk|regfor:14:reg|data_out\(0)))) # (!\mchn|bnk|Ra_data[0]~4_combout\ & (\mchn|bnk|regfor:10:reg|data_out\(0))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Ra_data[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|regfor:10:reg|data_out\(0),
	datac => \mchn|bnk|Ra_data[0]~4_combout\,
	datad => \mchn|bnk|regfor:14:reg|data_out\(0),
	combout => \mchn|bnk|Ra_data[0]~5_combout\);

-- Location: LCCOMB_X31_Y31_N18
\mchn|bnk|Ra_data[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~6_combout\ = (\mchn|ir|data_out\(11) & (((\mchn|ir|data_out\(10))))) # (!\mchn|ir|data_out\(11) & ((\mchn|ir|data_out\(10) & ((\mchn|bnk|regfor:4:reg|data_out\(0)))) # (!\mchn|ir|data_out\(10) & 
-- (\mchn|bnk|regfor:0:reg|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|regfor:0:reg|data_out\(0),
	datac => \mchn|ir|data_out\(10),
	datad => \mchn|bnk|regfor:4:reg|data_out\(0),
	combout => \mchn|bnk|Ra_data[0]~6_combout\);

-- Location: LCCOMB_X31_Y30_N12
\mchn|bnk|Ra_data[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~7_combout\ = (\mchn|ir|data_out\(11) & ((\mchn|bnk|Ra_data[0]~6_combout\ & (\mchn|bnk|regfor:12:reg|data_out\(0))) # (!\mchn|bnk|Ra_data[0]~6_combout\ & ((\mchn|bnk|regfor:8:reg|data_out\(0)))))) # (!\mchn|ir|data_out\(11) & 
-- (((\mchn|bnk|Ra_data[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(11),
	datab => \mchn|bnk|regfor:12:reg|data_out\(0),
	datac => \mchn|bnk|regfor:8:reg|data_out\(0),
	datad => \mchn|bnk|Ra_data[0]~6_combout\,
	combout => \mchn|bnk|Ra_data[0]~7_combout\);

-- Location: LCCOMB_X31_Y30_N26
\mchn|bnk|Ra_data[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~8_combout\ = (\mchn|ir|data_out\(8) & (((\mchn|ir|data_out\(9))))) # (!\mchn|ir|data_out\(8) & ((\mchn|ir|data_out\(9) & (\mchn|bnk|Ra_data[0]~5_combout\)) # (!\mchn|ir|data_out\(9) & ((\mchn|bnk|Ra_data[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|bnk|Ra_data[0]~5_combout\,
	datac => \mchn|ir|data_out\(9),
	datad => \mchn|bnk|Ra_data[0]~7_combout\,
	combout => \mchn|bnk|Ra_data[0]~8_combout\);

-- Location: LCCOMB_X31_Y30_N20
\mchn|bnk|Ra_data[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|bnk|Ra_data[0]~11_combout\ = (\mchn|ir|data_out\(8) & ((\mchn|bnk|Ra_data[0]~8_combout\ & (\mchn|bnk|Ra_data[0]~10_combout\)) # (!\mchn|bnk|Ra_data[0]~8_combout\ & ((\mchn|bnk|Ra_data[0]~3_combout\))))) # (!\mchn|ir|data_out\(8) & 
-- (((\mchn|bnk|Ra_data[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|ir|data_out\(8),
	datab => \mchn|bnk|Ra_data[0]~10_combout\,
	datac => \mchn|bnk|Ra_data[0]~3_combout\,
	datad => \mchn|bnk|Ra_data[0]~8_combout\,
	combout => \mchn|bnk|Ra_data[0]~11_combout\);

-- Location: LCCOMB_X30_Y30_N6
\mchn|out_RAM_data[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|out_RAM_data[0]~0_combout\ = (\mchn|estado.store~regout\ & \mchn|bnk|Ra_data[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|estado.store~regout\,
	datad => \mchn|bnk|Ra_data[0]~11_combout\,
	combout => \mchn|out_RAM_data[0]~0_combout\);

-- Location: LCCOMB_X30_Y23_N30
\displayram|BBCD|Box00|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux3~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(11) & (\RAM|altsyncram_component|auto_generated|q_b\(15) & (!\RAM|altsyncram_component|auto_generated|q_b\(13) & \RAM|altsyncram_component|auto_generated|q_b\(12)))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(11) & (!\RAM|altsyncram_component|auto_generated|q_b\(15) & (\RAM|altsyncram_component|auto_generated|q_b\(13) & !\RAM|altsyncram_component|auto_generated|q_b\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(11),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(15),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(13),
	datad => \RAM|altsyncram_component|auto_generated|q_b\(12),
	combout => \displayram|BBCD|Box00|Mux3~1_combout\);

-- Location: LCCOMB_X30_Y23_N12
\displayram|BBCD|Box00|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux3~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(11) & (!\RAM|altsyncram_component|auto_generated|q_b\(12) & (\RAM|altsyncram_component|auto_generated|q_b\(15) $ 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(13))))) # (!\RAM|altsyncram_component|auto_generated|q_b\(11) & ((\RAM|altsyncram_component|auto_generated|q_b\(15) & (!\RAM|altsyncram_component|auto_generated|q_b\(13) & 
-- !\RAM|altsyncram_component|auto_generated|q_b\(12))) # (!\RAM|altsyncram_component|auto_generated|q_b\(15) & (\RAM|altsyncram_component|auto_generated|q_b\(13) & \RAM|altsyncram_component|auto_generated|q_b\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(11),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(15),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(13),
	datad => \RAM|altsyncram_component|auto_generated|q_b\(12),
	combout => \displayram|BBCD|Box00|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y23_N28
\displayram|BBCD|Box00|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux3~2_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(14) & ((\displayram|BBCD|Box00|Mux3~0_combout\))) # (!\RAM|altsyncram_component|auto_generated|q_b\(14) & (\displayram|BBCD|Box00|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(14),
	datab => \displayram|BBCD|Box00|Mux3~1_combout\,
	datad => \displayram|BBCD|Box00|Mux3~0_combout\,
	combout => \displayram|BBCD|Box00|Mux3~2_combout\);

-- Location: LCCOMB_X30_Y23_N2
\displayram|BBCD|Box00|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux5~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(11) & (((!\RAM|altsyncram_component|auto_generated|q_b\(12) & \RAM|altsyncram_component|auto_generated|q_b\(14))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(13)))) # (!\RAM|altsyncram_component|auto_generated|q_b\(11) & (\RAM|altsyncram_component|auto_generated|q_b\(13) $ (((!\RAM|altsyncram_component|auto_generated|q_b\(12) & 
-- \RAM|altsyncram_component|auto_generated|q_b\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(11),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(12),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(13),
	datad => \RAM|altsyncram_component|auto_generated|q_b\(14),
	combout => \displayram|BBCD|Box00|Mux5~1_combout\);

-- Location: LCCOMB_X30_Y23_N4
\displayram|BBCD|Box00|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux5~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(11) & (\RAM|altsyncram_component|auto_generated|q_b\(13) $ (((\RAM|altsyncram_component|auto_generated|q_b\(12)) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(14)))))) # (!\RAM|altsyncram_component|auto_generated|q_b\(11) & ((\RAM|altsyncram_component|auto_generated|q_b\(14) & (!\RAM|altsyncram_component|auto_generated|q_b\(13) & 
-- !\RAM|altsyncram_component|auto_generated|q_b\(12))) # (!\RAM|altsyncram_component|auto_generated|q_b\(14) & (\RAM|altsyncram_component|auto_generated|q_b\(13) & \RAM|altsyncram_component|auto_generated|q_b\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(11),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(14),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(13),
	datad => \RAM|altsyncram_component|auto_generated|q_b\(12),
	combout => \displayram|BBCD|Box00|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y23_N16
\displayram|BBCD|Box00|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux5~2_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(15) & (!\displayram|BBCD|Box00|Mux5~1_combout\)) # (!\RAM|altsyncram_component|auto_generated|q_b\(15) & ((\displayram|BBCD|Box00|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box00|Mux5~1_combout\,
	datac => \displayram|BBCD|Box00|Mux5~0_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_b\(15),
	combout => \displayram|BBCD|Box00|Mux5~2_combout\);

-- Location: LCCOMB_X30_Y21_N22
\displayram|BBCD|Box01|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux4~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(9) & (\RAM|altsyncram_component|auto_generated|q_b\(10) $ (((\displayram|BBCD|Box00|Mux3~2_combout\ & !\displayram|BBCD|Box00|Mux5~2_combout\))))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(9) & (\RAM|altsyncram_component|auto_generated|q_b\(10) & ((\displayram|BBCD|Box00|Mux3~2_combout\) # (!\displayram|BBCD|Box00|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(9),
	datab => \displayram|BBCD|Box00|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(10),
	datad => \displayram|BBCD|Box00|Mux5~2_combout\,
	combout => \displayram|BBCD|Box01|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y21_N8
\displayram|BBCD|Box01|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux4~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(9) & ((\displayram|BBCD|Box00|Mux3~2_combout\ & ((\displayram|BBCD|Box00|Mux5~2_combout\) # (!\RAM|altsyncram_component|auto_generated|q_b\(10)))) # 
-- (!\displayram|BBCD|Box00|Mux3~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(10)) # (!\displayram|BBCD|Box00|Mux5~2_combout\))))) # (!\RAM|altsyncram_component|auto_generated|q_b\(9) & ((\RAM|altsyncram_component|auto_generated|q_b\(10)) # 
-- ((\displayram|BBCD|Box00|Mux3~2_combout\ & !\displayram|BBCD|Box00|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(9),
	datab => \displayram|BBCD|Box00|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(10),
	datad => \displayram|BBCD|Box00|Mux5~2_combout\,
	combout => \displayram|BBCD|Box01|Mux4~1_combout\);

-- Location: LCCOMB_X30_Y21_N26
\displayram|BBCD|Box01|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux4~2_combout\ = (\displayram|BBCD|Box00|Mux4~2_combout\ & ((!\displayram|BBCD|Box01|Mux4~1_combout\))) # (!\displayram|BBCD|Box00|Mux4~2_combout\ & (\displayram|BBCD|Box01|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux4~2_combout\,
	datab => \displayram|BBCD|Box01|Mux4~0_combout\,
	datac => \displayram|BBCD|Box01|Mux4~1_combout\,
	combout => \displayram|BBCD|Box01|Mux4~2_combout\);

-- Location: LCCOMB_X30_Y21_N18
\displayram|BBCD|Box01|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux3~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(9) & (\displayram|BBCD|Box00|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(10) & !\displayram|BBCD|Box00|Mux5~2_combout\))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(9) & (!\displayram|BBCD|Box00|Mux3~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(10) & \displayram|BBCD|Box00|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(9),
	datab => \displayram|BBCD|Box00|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(10),
	datad => \displayram|BBCD|Box00|Mux5~2_combout\,
	combout => \displayram|BBCD|Box01|Mux3~1_combout\);

-- Location: LCCOMB_X30_Y23_N8
\displayram|BBCD|Box00|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux4~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(11) & ((\RAM|altsyncram_component|auto_generated|q_b\(15) & ((\RAM|altsyncram_component|auto_generated|q_b\(13)) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(12)))) # (!\RAM|altsyncram_component|auto_generated|q_b\(15) & ((\RAM|altsyncram_component|auto_generated|q_b\(12)) # (!\RAM|altsyncram_component|auto_generated|q_b\(13)))))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(11) & ((\RAM|altsyncram_component|auto_generated|q_b\(12)) # ((\RAM|altsyncram_component|auto_generated|q_b\(15) & !\RAM|altsyncram_component|auto_generated|q_b\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(11),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(15),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(13),
	datad => \RAM|altsyncram_component|auto_generated|q_b\(12),
	combout => \displayram|BBCD|Box00|Mux4~1_combout\);

-- Location: LCCOMB_X30_Y23_N10
\displayram|BBCD|Box00|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux4~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(11) & (\RAM|altsyncram_component|auto_generated|q_b\(12) $ (((\RAM|altsyncram_component|auto_generated|q_b\(15) & 
-- !\RAM|altsyncram_component|auto_generated|q_b\(13)))))) # (!\RAM|altsyncram_component|auto_generated|q_b\(11) & (\RAM|altsyncram_component|auto_generated|q_b\(12) & ((\RAM|altsyncram_component|auto_generated|q_b\(15)) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(11),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(15),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(13),
	datad => \RAM|altsyncram_component|auto_generated|q_b\(12),
	combout => \displayram|BBCD|Box00|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y23_N6
\displayram|BBCD|Box00|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux4~2_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(14) & (!\displayram|BBCD|Box00|Mux4~1_combout\)) # (!\RAM|altsyncram_component|auto_generated|q_b\(14) & ((\displayram|BBCD|Box00|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box00|Mux4~1_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(14),
	datad => \displayram|BBCD|Box00|Mux4~0_combout\,
	combout => \displayram|BBCD|Box00|Mux4~2_combout\);

-- Location: LCCOMB_X30_Y21_N28
\displayram|BBCD|Box01|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux3~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(9) & (!\RAM|altsyncram_component|auto_generated|q_b\(10) & (\displayram|BBCD|Box00|Mux3~2_combout\ $ (!\displayram|BBCD|Box00|Mux5~2_combout\)))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(9) & ((\displayram|BBCD|Box00|Mux3~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(10) & !\displayram|BBCD|Box00|Mux5~2_combout\)) # (!\displayram|BBCD|Box00|Mux3~2_combout\ & 
-- (\RAM|altsyncram_component|auto_generated|q_b\(10) & \displayram|BBCD|Box00|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(9),
	datab => \displayram|BBCD|Box00|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(10),
	datad => \displayram|BBCD|Box00|Mux5~2_combout\,
	combout => \displayram|BBCD|Box01|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y21_N24
\displayram|BBCD|Box01|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux3~2_combout\ = (\displayram|BBCD|Box00|Mux4~2_combout\ & ((\displayram|BBCD|Box01|Mux3~0_combout\))) # (!\displayram|BBCD|Box00|Mux4~2_combout\ & (\displayram|BBCD|Box01|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box01|Mux3~1_combout\,
	datac => \displayram|BBCD|Box00|Mux4~2_combout\,
	datad => \displayram|BBCD|Box01|Mux3~0_combout\,
	combout => \displayram|BBCD|Box01|Mux3~2_combout\);

-- Location: LCCOMB_X29_Y21_N28
\displayram|BBCD|Box03|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux4~1_combout\ = (\displayram|BBCD|Box01|Mux5~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(8)) # ((\RAM|altsyncram_component|auto_generated|q_b\(7) & \displayram|BBCD|Box01|Mux3~2_combout\)))) # 
-- (!\displayram|BBCD|Box01|Mux5~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(7) & ((!\displayram|BBCD|Box01|Mux3~2_combout\) # (!\RAM|altsyncram_component|auto_generated|q_b\(8)))) # (!\RAM|altsyncram_component|auto_generated|q_b\(7) & 
-- ((\RAM|altsyncram_component|auto_generated|q_b\(8)) # (\displayram|BBCD|Box01|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box01|Mux5~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(7),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(8),
	datad => \displayram|BBCD|Box01|Mux3~2_combout\,
	combout => \displayram|BBCD|Box03|Mux4~1_combout\);

-- Location: LCCOMB_X29_Y21_N26
\displayram|BBCD|Box03|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux4~2_combout\ = (\displayram|BBCD|Box01|Mux4~2_combout\ & ((!\displayram|BBCD|Box03|Mux4~1_combout\))) # (!\displayram|BBCD|Box01|Mux4~2_combout\ & (\displayram|BBCD|Box03|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box03|Mux4~0_combout\,
	datac => \displayram|BBCD|Box01|Mux4~2_combout\,
	datad => \displayram|BBCD|Box03|Mux4~1_combout\,
	combout => \displayram|BBCD|Box03|Mux4~2_combout\);

-- Location: LCCOMB_X30_Y21_N2
\displayram|BBCD|Box01|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux5~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(9) & (((!\RAM|altsyncram_component|auto_generated|q_b\(10) & \displayram|BBCD|Box00|Mux4~2_combout\)) # (!\displayram|BBCD|Box00|Mux5~2_combout\))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(9) & (\displayram|BBCD|Box00|Mux5~2_combout\ $ (((!\RAM|altsyncram_component|auto_generated|q_b\(10) & \displayram|BBCD|Box00|Mux4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(9),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(10),
	datac => \displayram|BBCD|Box00|Mux4~2_combout\,
	datad => \displayram|BBCD|Box00|Mux5~2_combout\,
	combout => \displayram|BBCD|Box01|Mux5~1_combout\);

-- Location: LCCOMB_X30_Y21_N4
\displayram|BBCD|Box01|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux5~2_combout\ = (\displayram|BBCD|Box00|Mux3~2_combout\ & ((!\displayram|BBCD|Box01|Mux5~1_combout\))) # (!\displayram|BBCD|Box00|Mux3~2_combout\ & (\displayram|BBCD|Box01|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box01|Mux5~0_combout\,
	datab => \displayram|BBCD|Box01|Mux5~1_combout\,
	datad => \displayram|BBCD|Box00|Mux3~2_combout\,
	combout => \displayram|BBCD|Box01|Mux5~2_combout\);

-- Location: LCCOMB_X29_Y21_N30
\displayram|BBCD|Box03|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux5~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(7) & (((\displayram|BBCD|Box01|Mux4~2_combout\ & !\RAM|altsyncram_component|auto_generated|q_b\(8))) # (!\displayram|BBCD|Box01|Mux5~2_combout\))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(7) & (\displayram|BBCD|Box01|Mux5~2_combout\ $ (((\displayram|BBCD|Box01|Mux4~2_combout\ & !\RAM|altsyncram_component|auto_generated|q_b\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box01|Mux4~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(7),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(8),
	datad => \displayram|BBCD|Box01|Mux5~2_combout\,
	combout => \displayram|BBCD|Box03|Mux5~1_combout\);

-- Location: LCCOMB_X29_Y21_N20
\displayram|BBCD|Box03|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux5~2_combout\ = (\displayram|BBCD|Box01|Mux3~2_combout\ & ((!\displayram|BBCD|Box03|Mux5~1_combout\))) # (!\displayram|BBCD|Box01|Mux3~2_combout\ & (\displayram|BBCD|Box03|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box03|Mux5~0_combout\,
	datab => \displayram|BBCD|Box03|Mux5~1_combout\,
	datad => \displayram|BBCD|Box01|Mux3~2_combout\,
	combout => \displayram|BBCD|Box03|Mux5~2_combout\);

-- Location: LCCOMB_X29_Y19_N22
\displayram|BBCD|Box05|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux5~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(5) & (((!\RAM|altsyncram_component|auto_generated|q_b\(6) & \displayram|BBCD|Box03|Mux4~2_combout\)) # (!\displayram|BBCD|Box03|Mux5~2_combout\))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(5) & (\displayram|BBCD|Box03|Mux5~2_combout\ $ (((!\RAM|altsyncram_component|auto_generated|q_b\(6) & \displayram|BBCD|Box03|Mux4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(6),
	datab => \displayram|BBCD|Box03|Mux4~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(5),
	datad => \displayram|BBCD|Box03|Mux5~2_combout\,
	combout => \displayram|BBCD|Box05|Mux5~1_combout\);

-- Location: LCCOMB_X29_Y21_N2
\displayram|BBCD|Box03|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux3~1_combout\ = (\displayram|BBCD|Box01|Mux5~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(7) & (!\RAM|altsyncram_component|auto_generated|q_b\(8) & !\displayram|BBCD|Box01|Mux3~2_combout\))) # 
-- (!\displayram|BBCD|Box01|Mux5~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(7) & (\RAM|altsyncram_component|auto_generated|q_b\(8) & \displayram|BBCD|Box01|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box01|Mux5~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(7),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(8),
	datad => \displayram|BBCD|Box01|Mux3~2_combout\,
	combout => \displayram|BBCD|Box03|Mux3~1_combout\);

-- Location: LCCOMB_X29_Y21_N0
\displayram|BBCD|Box03|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux3~0_combout\ = (\displayram|BBCD|Box01|Mux5~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(7) & (!\RAM|altsyncram_component|auto_generated|q_b\(8) & \displayram|BBCD|Box01|Mux3~2_combout\)) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(7) & (\RAM|altsyncram_component|auto_generated|q_b\(8) & !\displayram|BBCD|Box01|Mux3~2_combout\)))) # (!\displayram|BBCD|Box01|Mux5~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(8) & 
-- (\RAM|altsyncram_component|auto_generated|q_b\(7) $ (\displayram|BBCD|Box01|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box01|Mux5~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(7),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(8),
	datad => \displayram|BBCD|Box01|Mux3~2_combout\,
	combout => \displayram|BBCD|Box03|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y21_N8
\displayram|BBCD|Box03|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux3~2_combout\ = (\displayram|BBCD|Box01|Mux4~2_combout\ & ((\displayram|BBCD|Box03|Mux3~0_combout\))) # (!\displayram|BBCD|Box01|Mux4~2_combout\ & (\displayram|BBCD|Box03|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box03|Mux3~1_combout\,
	datac => \displayram|BBCD|Box01|Mux4~2_combout\,
	datad => \displayram|BBCD|Box03|Mux3~0_combout\,
	combout => \displayram|BBCD|Box03|Mux3~2_combout\);

-- Location: LCCOMB_X29_Y19_N16
\displayram|BBCD|Box05|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux5~2_combout\ = (\displayram|BBCD|Box03|Mux3~2_combout\ & ((!\displayram|BBCD|Box05|Mux5~1_combout\))) # (!\displayram|BBCD|Box03|Mux3~2_combout\ & (\displayram|BBCD|Box05|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux5~0_combout\,
	datab => \displayram|BBCD|Box05|Mux5~1_combout\,
	datad => \displayram|BBCD|Box03|Mux3~2_combout\,
	combout => \displayram|BBCD|Box05|Mux5~2_combout\);

-- Location: LCCOMB_X30_Y19_N28
\displayram|BBCD|Box08|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux4~1_combout\ = (\displayram|BBCD|Box05|Mux3~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(4) & ((\displayram|BBCD|Box05|Mux5~2_combout\) # (!\RAM|altsyncram_component|auto_generated|q_b\(3)))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(4) & ((\RAM|altsyncram_component|auto_generated|q_b\(3)) # (!\displayram|BBCD|Box05|Mux5~2_combout\))))) # (!\displayram|BBCD|Box05|Mux3~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(4)) # 
-- ((\RAM|altsyncram_component|auto_generated|q_b\(3) & !\displayram|BBCD|Box05|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux3~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(3),
	datad => \displayram|BBCD|Box05|Mux5~2_combout\,
	combout => \displayram|BBCD|Box08|Mux4~1_combout\);

-- Location: LCCOMB_X30_Y19_N10
\displayram|BBCD|Box08|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux4~0_combout\ = (\displayram|BBCD|Box05|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(4) $ (((\RAM|altsyncram_component|auto_generated|q_b\(3) & !\displayram|BBCD|Box05|Mux5~2_combout\))))) # 
-- (!\displayram|BBCD|Box05|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(4) & ((\RAM|altsyncram_component|auto_generated|q_b\(3)) # (!\displayram|BBCD|Box05|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux3~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(3),
	datad => \displayram|BBCD|Box05|Mux5~2_combout\,
	combout => \displayram|BBCD|Box08|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y19_N22
\displayram|BBCD|Box08|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux4~2_combout\ = (\displayram|BBCD|Box05|Mux4~2_combout\ & (!\displayram|BBCD|Box08|Mux4~1_combout\)) # (!\displayram|BBCD|Box05|Mux4~2_combout\ & ((\displayram|BBCD|Box08|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux4~2_combout\,
	datab => \displayram|BBCD|Box08|Mux4~1_combout\,
	datad => \displayram|BBCD|Box08|Mux4~0_combout\,
	combout => \displayram|BBCD|Box08|Mux4~2_combout\);

-- Location: LCCOMB_X30_Y19_N2
\displayram|BBCD|Box08|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux5~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(3) & (((\displayram|BBCD|Box05|Mux4~2_combout\ & !\RAM|altsyncram_component|auto_generated|q_b\(4))) # (!\displayram|BBCD|Box05|Mux5~2_combout\))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(3) & (\displayram|BBCD|Box05|Mux5~2_combout\ $ (((\displayram|BBCD|Box05|Mux4~2_combout\ & !\RAM|altsyncram_component|auto_generated|q_b\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux4~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(3),
	datad => \displayram|BBCD|Box05|Mux5~2_combout\,
	combout => \displayram|BBCD|Box08|Mux5~1_combout\);

-- Location: LCCOMB_X29_Y19_N2
\displayram|BBCD|Box05|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux3~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(6) & (\displayram|BBCD|Box03|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(5) & !\displayram|BBCD|Box03|Mux5~2_combout\))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(6) & (!\displayram|BBCD|Box03|Mux3~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(5) & \displayram|BBCD|Box03|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(6),
	datab => \displayram|BBCD|Box03|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(5),
	datad => \displayram|BBCD|Box03|Mux5~2_combout\,
	combout => \displayram|BBCD|Box05|Mux3~1_combout\);

-- Location: LCCOMB_X29_Y19_N28
\displayram|BBCD|Box05|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux3~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(6) & (!\displayram|BBCD|Box03|Mux3~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(5) & \displayram|BBCD|Box03|Mux5~2_combout\))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(6) & ((\displayram|BBCD|Box03|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(5) $ (!\displayram|BBCD|Box03|Mux5~2_combout\))) # (!\displayram|BBCD|Box03|Mux3~2_combout\ & 
-- (\RAM|altsyncram_component|auto_generated|q_b\(5) & !\displayram|BBCD|Box03|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(6),
	datab => \displayram|BBCD|Box03|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(5),
	datad => \displayram|BBCD|Box03|Mux5~2_combout\,
	combout => \displayram|BBCD|Box05|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y19_N0
\displayram|BBCD|Box05|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux3~2_combout\ = (\displayram|BBCD|Box03|Mux4~2_combout\ & ((\displayram|BBCD|Box05|Mux3~0_combout\))) # (!\displayram|BBCD|Box03|Mux4~2_combout\ & (\displayram|BBCD|Box05|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box05|Mux3~1_combout\,
	datac => \displayram|BBCD|Box03|Mux4~2_combout\,
	datad => \displayram|BBCD|Box05|Mux3~0_combout\,
	combout => \displayram|BBCD|Box05|Mux3~2_combout\);

-- Location: LCCOMB_X30_Y19_N12
\displayram|BBCD|Box08|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux5~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(3) & (\displayram|BBCD|Box05|Mux5~2_combout\ $ (((\RAM|altsyncram_component|auto_generated|q_b\(4)) # (!\displayram|BBCD|Box05|Mux4~2_combout\))))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(3) & ((\displayram|BBCD|Box05|Mux4~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(4) & !\displayram|BBCD|Box05|Mux5~2_combout\)) # (!\displayram|BBCD|Box05|Mux4~2_combout\ & 
-- (\RAM|altsyncram_component|auto_generated|q_b\(4) & \displayram|BBCD|Box05|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux4~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(3),
	datad => \displayram|BBCD|Box05|Mux5~2_combout\,
	combout => \displayram|BBCD|Box08|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y19_N20
\displayram|BBCD|Box08|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux5~2_combout\ = (\displayram|BBCD|Box05|Mux3~2_combout\ & (!\displayram|BBCD|Box08|Mux5~1_combout\)) # (!\displayram|BBCD|Box05|Mux3~2_combout\ & ((\displayram|BBCD|Box08|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box08|Mux5~1_combout\,
	datac => \displayram|BBCD|Box05|Mux3~2_combout\,
	datad => \displayram|BBCD|Box08|Mux5~0_combout\,
	combout => \displayram|BBCD|Box08|Mux5~2_combout\);

-- Location: LCCOMB_X28_Y4_N28
\displayram|BBCD|Box11|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux5~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(1) & (\displayram|BBCD|Box08|Mux5~2_combout\ $ (((\RAM|altsyncram_component|auto_generated|q_b\(2)) # (!\displayram|BBCD|Box08|Mux4~2_combout\))))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(1) & ((\displayram|BBCD|Box08|Mux4~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(2) & !\displayram|BBCD|Box08|Mux5~2_combout\)) # (!\displayram|BBCD|Box08|Mux4~2_combout\ & 
-- (\RAM|altsyncram_component|auto_generated|q_b\(2) & \displayram|BBCD|Box08|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(1),
	datab => \displayram|BBCD|Box08|Mux4~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(2),
	datad => \displayram|BBCD|Box08|Mux5~2_combout\,
	combout => \displayram|BBCD|Box11|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y19_N30
\displayram|BBCD|Box08|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux3~1_combout\ = (\displayram|BBCD|Box05|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(4) & (\RAM|altsyncram_component|auto_generated|q_b\(3) & !\displayram|BBCD|Box05|Mux5~2_combout\))) # 
-- (!\displayram|BBCD|Box05|Mux3~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(4) & (!\RAM|altsyncram_component|auto_generated|q_b\(3) & \displayram|BBCD|Box05|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux3~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(3),
	datad => \displayram|BBCD|Box05|Mux5~2_combout\,
	combout => \displayram|BBCD|Box08|Mux3~1_combout\);

-- Location: LCCOMB_X30_Y19_N24
\displayram|BBCD|Box08|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux3~0_combout\ = (\displayram|BBCD|Box05|Mux3~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(4) & (\RAM|altsyncram_component|auto_generated|q_b\(3) $ (!\displayram|BBCD|Box05|Mux5~2_combout\)))) # 
-- (!\displayram|BBCD|Box05|Mux3~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(4) & (!\RAM|altsyncram_component|auto_generated|q_b\(3) & \displayram|BBCD|Box05|Mux5~2_combout\)) # (!\RAM|altsyncram_component|auto_generated|q_b\(4) & 
-- (\RAM|altsyncram_component|auto_generated|q_b\(3) & !\displayram|BBCD|Box05|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux3~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(3),
	datad => \displayram|BBCD|Box05|Mux5~2_combout\,
	combout => \displayram|BBCD|Box08|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y19_N8
\displayram|BBCD|Box08|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux3~2_combout\ = (\displayram|BBCD|Box05|Mux4~2_combout\ & ((\displayram|BBCD|Box08|Mux3~0_combout\))) # (!\displayram|BBCD|Box05|Mux4~2_combout\ & (\displayram|BBCD|Box08|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux4~2_combout\,
	datab => \displayram|BBCD|Box08|Mux3~1_combout\,
	datac => \displayram|BBCD|Box08|Mux3~0_combout\,
	combout => \displayram|BBCD|Box08|Mux3~2_combout\);

-- Location: LCCOMB_X28_Y4_N10
\displayram|BBCD|Box11|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux5~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(1) & (((\displayram|BBCD|Box08|Mux4~2_combout\ & !\RAM|altsyncram_component|auto_generated|q_b\(2))) # (!\displayram|BBCD|Box08|Mux5~2_combout\))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(1) & (\displayram|BBCD|Box08|Mux5~2_combout\ $ (((\displayram|BBCD|Box08|Mux4~2_combout\ & !\RAM|altsyncram_component|auto_generated|q_b\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(1),
	datab => \displayram|BBCD|Box08|Mux4~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(2),
	datad => \displayram|BBCD|Box08|Mux5~2_combout\,
	combout => \displayram|BBCD|Box11|Mux5~1_combout\);

-- Location: LCCOMB_X28_Y4_N16
\displayram|BBCD|Box11|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux5~2_combout\ = (\displayram|BBCD|Box08|Mux3~2_combout\ & ((!\displayram|BBCD|Box11|Mux5~1_combout\))) # (!\displayram|BBCD|Box08|Mux3~2_combout\ & (\displayram|BBCD|Box11|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box11|Mux5~0_combout\,
	datac => \displayram|BBCD|Box08|Mux3~2_combout\,
	datad => \displayram|BBCD|Box11|Mux5~1_combout\,
	combout => \displayram|BBCD|Box11|Mux5~2_combout\);

-- Location: LCCOMB_X28_Y4_N14
\displayram|BBCD|Box11|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux3~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(1) & (\displayram|BBCD|Box08|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(2) & !\displayram|BBCD|Box08|Mux5~2_combout\))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(1) & (!\displayram|BBCD|Box08|Mux3~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(2) & \displayram|BBCD|Box08|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(1),
	datab => \displayram|BBCD|Box08|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(2),
	datad => \displayram|BBCD|Box08|Mux5~2_combout\,
	combout => \displayram|BBCD|Box11|Mux3~1_combout\);

-- Location: LCCOMB_X28_Y4_N20
\displayram|BBCD|Box11|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux3~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(1) & (!\RAM|altsyncram_component|auto_generated|q_b\(2) & (\displayram|BBCD|Box08|Mux3~2_combout\ $ (!\displayram|BBCD|Box08|Mux5~2_combout\)))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(1) & ((\displayram|BBCD|Box08|Mux3~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(2) & !\displayram|BBCD|Box08|Mux5~2_combout\)) # (!\displayram|BBCD|Box08|Mux3~2_combout\ & 
-- (\RAM|altsyncram_component|auto_generated|q_b\(2) & \displayram|BBCD|Box08|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(1),
	datab => \displayram|BBCD|Box08|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(2),
	datad => \displayram|BBCD|Box08|Mux5~2_combout\,
	combout => \displayram|BBCD|Box11|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y4_N4
\displayram|BBCD|Box11|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux3~2_combout\ = (\displayram|BBCD|Box08|Mux4~2_combout\ & ((\displayram|BBCD|Box11|Mux3~0_combout\))) # (!\displayram|BBCD|Box08|Mux4~2_combout\ & (\displayram|BBCD|Box11|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box11|Mux3~1_combout\,
	datac => \displayram|BBCD|Box11|Mux3~0_combout\,
	datad => \displayram|BBCD|Box08|Mux4~2_combout\,
	combout => \displayram|BBCD|Box11|Mux3~2_combout\);

-- Location: LCCOMB_X28_Y4_N18
\displayram|BBCD|Box11|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux4~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(1) & (\RAM|altsyncram_component|auto_generated|q_b\(2) $ (((\displayram|BBCD|Box08|Mux3~2_combout\ & !\displayram|BBCD|Box08|Mux5~2_combout\))))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(1) & (\RAM|altsyncram_component|auto_generated|q_b\(2) & ((\displayram|BBCD|Box08|Mux3~2_combout\) # (!\displayram|BBCD|Box08|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(1),
	datab => \displayram|BBCD|Box08|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(2),
	datad => \displayram|BBCD|Box08|Mux5~2_combout\,
	combout => \displayram|BBCD|Box11|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y4_N24
\displayram|BBCD|Box11|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux4~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(1) & ((\displayram|BBCD|Box08|Mux3~2_combout\ & ((\displayram|BBCD|Box08|Mux5~2_combout\) # (!\RAM|altsyncram_component|auto_generated|q_b\(2)))) # 
-- (!\displayram|BBCD|Box08|Mux3~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(2)) # (!\displayram|BBCD|Box08|Mux5~2_combout\))))) # (!\RAM|altsyncram_component|auto_generated|q_b\(1) & ((\RAM|altsyncram_component|auto_generated|q_b\(2)) # 
-- ((\displayram|BBCD|Box08|Mux3~2_combout\ & !\displayram|BBCD|Box08|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(1),
	datab => \displayram|BBCD|Box08|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(2),
	datad => \displayram|BBCD|Box08|Mux5~2_combout\,
	combout => \displayram|BBCD|Box11|Mux4~1_combout\);

-- Location: LCCOMB_X28_Y4_N26
\displayram|BBCD|Box11|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux4~2_combout\ = (\displayram|BBCD|Box08|Mux4~2_combout\ & ((!\displayram|BBCD|Box11|Mux4~1_combout\))) # (!\displayram|BBCD|Box08|Mux4~2_combout\ & (\displayram|BBCD|Box11|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box11|Mux4~0_combout\,
	datac => \displayram|BBCD|Box11|Mux4~1_combout\,
	datad => \displayram|BBCD|Box08|Mux4~2_combout\,
	combout => \displayram|BBCD|Box11|Mux4~2_combout\);

-- Location: LCCOMB_X28_Y4_N30
\displayram|Hex00|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex00|Mux6~0_combout\ = (\displayram|BBCD|Box11|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(0) & (\displayram|BBCD|Box11|Mux5~2_combout\ $ (\displayram|BBCD|Box11|Mux4~2_combout\)))) # 
-- (!\displayram|BBCD|Box11|Mux3~2_combout\ & (!\displayram|BBCD|Box11|Mux5~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(0) $ (\displayram|BBCD|Box11|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux5~2_combout\,
	datab => \displayram|BBCD|Box11|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(0),
	datad => \displayram|BBCD|Box11|Mux4~2_combout\,
	combout => \displayram|Hex00|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y4_N0
\displayram|Hex00|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex00|Mux5~0_combout\ = (\displayram|BBCD|Box11|Mux5~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(0) & (\displayram|BBCD|Box11|Mux3~2_combout\)) # (!\RAM|altsyncram_component|auto_generated|q_b\(0) & 
-- ((\displayram|BBCD|Box11|Mux4~2_combout\))))) # (!\displayram|BBCD|Box11|Mux5~2_combout\ & (\displayram|BBCD|Box11|Mux4~2_combout\ & (\displayram|BBCD|Box11|Mux3~2_combout\ $ (\RAM|altsyncram_component|auto_generated|q_b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux5~2_combout\,
	datab => \displayram|BBCD|Box11|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(0),
	datad => \displayram|BBCD|Box11|Mux4~2_combout\,
	combout => \displayram|Hex00|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y4_N2
\displayram|Hex00|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex00|Mux4~0_combout\ = (\displayram|BBCD|Box11|Mux3~2_combout\ & (\displayram|BBCD|Box11|Mux4~2_combout\ & ((\displayram|BBCD|Box11|Mux5~2_combout\) # (!\RAM|altsyncram_component|auto_generated|q_b\(0))))) # 
-- (!\displayram|BBCD|Box11|Mux3~2_combout\ & (\displayram|BBCD|Box11|Mux5~2_combout\ & (!\RAM|altsyncram_component|auto_generated|q_b\(0) & !\displayram|BBCD|Box11|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux5~2_combout\,
	datab => \displayram|BBCD|Box11|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(0),
	datad => \displayram|BBCD|Box11|Mux4~2_combout\,
	combout => \displayram|Hex00|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y4_N12
\displayram|Hex00|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex00|Mux3~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(0) & (\displayram|BBCD|Box11|Mux5~2_combout\ $ (((!\displayram|BBCD|Box11|Mux4~2_combout\))))) # (!\RAM|altsyncram_component|auto_generated|q_b\(0) & 
-- ((\displayram|BBCD|Box11|Mux5~2_combout\ & (\displayram|BBCD|Box11|Mux3~2_combout\ & !\displayram|BBCD|Box11|Mux4~2_combout\)) # (!\displayram|BBCD|Box11|Mux5~2_combout\ & (!\displayram|BBCD|Box11|Mux3~2_combout\ & 
-- \displayram|BBCD|Box11|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux5~2_combout\,
	datab => \displayram|BBCD|Box11|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(0),
	datad => \displayram|BBCD|Box11|Mux4~2_combout\,
	combout => \displayram|Hex00|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y4_N6
\displayram|Hex00|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex00|Mux2~0_combout\ = (\displayram|BBCD|Box11|Mux5~2_combout\ & (!\displayram|BBCD|Box11|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(0)))) # (!\displayram|BBCD|Box11|Mux5~2_combout\ & 
-- ((\displayram|BBCD|Box11|Mux4~2_combout\ & (!\displayram|BBCD|Box11|Mux3~2_combout\)) # (!\displayram|BBCD|Box11|Mux4~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux5~2_combout\,
	datab => \displayram|BBCD|Box11|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(0),
	datad => \displayram|BBCD|Box11|Mux4~2_combout\,
	combout => \displayram|Hex00|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y4_N8
\displayram|Hex00|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex00|Mux1~0_combout\ = (\displayram|BBCD|Box11|Mux5~2_combout\ & (!\displayram|BBCD|Box11|Mux3~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(0)) # (!\displayram|BBCD|Box11|Mux4~2_combout\)))) # 
-- (!\displayram|BBCD|Box11|Mux5~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(0) & (\displayram|BBCD|Box11|Mux3~2_combout\ $ (!\displayram|BBCD|Box11|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux5~2_combout\,
	datab => \displayram|BBCD|Box11|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(0),
	datad => \displayram|BBCD|Box11|Mux4~2_combout\,
	combout => \displayram|Hex00|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y4_N22
\displayram|Hex00|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex00|Mux0~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(0) & ((\displayram|BBCD|Box11|Mux3~2_combout\) # (\displayram|BBCD|Box11|Mux5~2_combout\ $ (\displayram|BBCD|Box11|Mux4~2_combout\)))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(0) & ((\displayram|BBCD|Box11|Mux5~2_combout\) # (\displayram|BBCD|Box11|Mux3~2_combout\ $ (\displayram|BBCD|Box11|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux5~2_combout\,
	datab => \displayram|BBCD|Box11|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(0),
	datad => \displayram|BBCD|Box11|Mux4~2_combout\,
	combout => \displayram|Hex00|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y4_N28
\displayram|BBCD|Box11|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux2~0_combout\ = (\displayram|BBCD|Box08|Mux4~2_combout\ & ((\displayram|BBCD|Box08|Mux5~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(1) & \RAM|altsyncram_component|auto_generated|q_b\(2))) # 
-- (!\displayram|BBCD|Box08|Mux5~2_combout\ & ((!\RAM|altsyncram_component|auto_generated|q_b\(2)))))) # (!\displayram|BBCD|Box08|Mux4~2_combout\ & (\displayram|BBCD|Box08|Mux5~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(1)) # 
-- (\RAM|altsyncram_component|auto_generated|q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box08|Mux4~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(1),
	datac => \displayram|BBCD|Box08|Mux5~2_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_b\(2),
	combout => \displayram|BBCD|Box11|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y4_N10
\displayram|BBCD|Box11|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux2~1_combout\ = (\displayram|BBCD|Box08|Mux4~2_combout\ & ((\displayram|BBCD|Box08|Mux5~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(2)))) # (!\displayram|BBCD|Box08|Mux5~2_combout\ & 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(1) & !\RAM|altsyncram_component|auto_generated|q_b\(2))))) # (!\displayram|BBCD|Box08|Mux4~2_combout\ & (((\displayram|BBCD|Box08|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box08|Mux4~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(1),
	datac => \displayram|BBCD|Box08|Mux5~2_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_b\(2),
	combout => \displayram|BBCD|Box11|Mux2~1_combout\);

-- Location: LCCOMB_X57_Y4_N24
\displayram|BBCD|Box11|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux2~2_combout\ = (\displayram|BBCD|Box08|Mux3~2_combout\ & ((!\displayram|BBCD|Box11|Mux2~1_combout\))) # (!\displayram|BBCD|Box08|Mux3~2_combout\ & (\displayram|BBCD|Box11|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box11|Mux2~0_combout\,
	datac => \displayram|BBCD|Box08|Mux3~2_combout\,
	datad => \displayram|BBCD|Box11|Mux2~1_combout\,
	combout => \displayram|BBCD|Box11|Mux2~2_combout\);

-- Location: LCCOMB_X29_Y19_N26
\displayram|BBCD|Box05|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux2~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(6) & (\displayram|BBCD|Box03|Mux5~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(5)) # (!\displayram|BBCD|Box03|Mux4~2_combout\)))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(6) & ((\displayram|BBCD|Box03|Mux4~2_combout\ & ((!\displayram|BBCD|Box03|Mux5~2_combout\))) # (!\displayram|BBCD|Box03|Mux4~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(5) & 
-- \displayram|BBCD|Box03|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(6),
	datab => \displayram|BBCD|Box03|Mux4~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(5),
	datad => \displayram|BBCD|Box03|Mux5~2_combout\,
	combout => \displayram|BBCD|Box05|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y19_N20
\displayram|BBCD|Box05|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux2~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(6) & (((\displayram|BBCD|Box03|Mux5~2_combout\)))) # (!\RAM|altsyncram_component|auto_generated|q_b\(6) & ((\displayram|BBCD|Box03|Mux4~2_combout\ & 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(5) & !\displayram|BBCD|Box03|Mux5~2_combout\)) # (!\displayram|BBCD|Box03|Mux4~2_combout\ & ((\displayram|BBCD|Box03|Mux5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(6),
	datab => \displayram|BBCD|Box03|Mux4~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(5),
	datad => \displayram|BBCD|Box03|Mux5~2_combout\,
	combout => \displayram|BBCD|Box05|Mux2~1_combout\);

-- Location: LCCOMB_X29_Y19_N10
\displayram|BBCD|Box05|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux2~2_combout\ = (\displayram|BBCD|Box03|Mux3~2_combout\ & ((!\displayram|BBCD|Box05|Mux2~1_combout\))) # (!\displayram|BBCD|Box03|Mux3~2_combout\ & (\displayram|BBCD|Box05|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box05|Mux2~0_combout\,
	datac => \displayram|BBCD|Box05|Mux2~1_combout\,
	datad => \displayram|BBCD|Box03|Mux3~2_combout\,
	combout => \displayram|BBCD|Box05|Mux2~2_combout\);

-- Location: LCCOMB_X29_Y19_N4
\displayram|BBCD|Box05|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box05|Mux1~0_combout\ = (\displayram|BBCD|Box03|Mux3~2_combout\ & ((\displayram|BBCD|Box03|Mux4~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(6) & \displayram|BBCD|Box03|Mux5~2_combout\)) # 
-- (!\displayram|BBCD|Box03|Mux4~2_combout\ & ((!\displayram|BBCD|Box03|Mux5~2_combout\))))) # (!\displayram|BBCD|Box03|Mux3~2_combout\ & (\displayram|BBCD|Box03|Mux4~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(6)) # 
-- (\displayram|BBCD|Box03|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(6),
	datab => \displayram|BBCD|Box03|Mux3~2_combout\,
	datac => \displayram|BBCD|Box03|Mux4~2_combout\,
	datad => \displayram|BBCD|Box03|Mux5~2_combout\,
	combout => \displayram|BBCD|Box05|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y21_N22
\displayram|BBCD|Box03|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux2~0_combout\ = (\displayram|BBCD|Box01|Mux4~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(8) & (\RAM|altsyncram_component|auto_generated|q_b\(7) & \displayram|BBCD|Box01|Mux5~2_combout\)) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(8) & ((!\displayram|BBCD|Box01|Mux5~2_combout\))))) # (!\displayram|BBCD|Box01|Mux4~2_combout\ & (\displayram|BBCD|Box01|Mux5~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(7)) # 
-- (\RAM|altsyncram_component|auto_generated|q_b\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box01|Mux4~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(7),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(8),
	datad => \displayram|BBCD|Box01|Mux5~2_combout\,
	combout => \displayram|BBCD|Box03|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y21_N24
\displayram|BBCD|Box03|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux2~1_combout\ = (\displayram|BBCD|Box01|Mux4~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(8) & ((\displayram|BBCD|Box01|Mux5~2_combout\))) # (!\RAM|altsyncram_component|auto_generated|q_b\(8) & 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(7) & !\displayram|BBCD|Box01|Mux5~2_combout\)))) # (!\displayram|BBCD|Box01|Mux4~2_combout\ & (((\displayram|BBCD|Box01|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box01|Mux4~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(7),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(8),
	datad => \displayram|BBCD|Box01|Mux5~2_combout\,
	combout => \displayram|BBCD|Box03|Mux2~1_combout\);

-- Location: LCCOMB_X29_Y21_N18
\displayram|BBCD|Box03|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux2~2_combout\ = (\displayram|BBCD|Box01|Mux3~2_combout\ & ((!\displayram|BBCD|Box03|Mux2~1_combout\))) # (!\displayram|BBCD|Box01|Mux3~2_combout\ & (\displayram|BBCD|Box03|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box03|Mux2~0_combout\,
	datac => \displayram|BBCD|Box03|Mux2~1_combout\,
	datad => \displayram|BBCD|Box01|Mux3~2_combout\,
	combout => \displayram|BBCD|Box03|Mux2~2_combout\);

-- Location: LCCOMB_X29_Y21_N16
\displayram|BBCD|Box03|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box03|Mux1~0_combout\ = (\displayram|BBCD|Box01|Mux4~2_combout\ & ((\displayram|BBCD|Box01|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(8) & \displayram|BBCD|Box01|Mux5~2_combout\)) # 
-- (!\displayram|BBCD|Box01|Mux3~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(8)) # (\displayram|BBCD|Box01|Mux5~2_combout\))))) # (!\displayram|BBCD|Box01|Mux4~2_combout\ & (\displayram|BBCD|Box01|Mux3~2_combout\ & 
-- ((!\displayram|BBCD|Box01|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box01|Mux4~2_combout\,
	datab => \displayram|BBCD|Box01|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(8),
	datad => \displayram|BBCD|Box01|Mux5~2_combout\,
	combout => \displayram|BBCD|Box03|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y21_N16
\displayram|BBCD|Box01|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux1~0_combout\ = (\displayram|BBCD|Box00|Mux4~2_combout\ & ((\displayram|BBCD|Box00|Mux3~2_combout\ & (\RAM|altsyncram_component|auto_generated|q_b\(10) & \displayram|BBCD|Box00|Mux5~2_combout\)) # 
-- (!\displayram|BBCD|Box00|Mux3~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(10)) # (\displayram|BBCD|Box00|Mux5~2_combout\))))) # (!\displayram|BBCD|Box00|Mux4~2_combout\ & (\displayram|BBCD|Box00|Mux3~2_combout\ & 
-- ((!\displayram|BBCD|Box00|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux4~2_combout\,
	datab => \displayram|BBCD|Box00|Mux3~2_combout\,
	datac => \RAM|altsyncram_component|auto_generated|q_b\(10),
	datad => \displayram|BBCD|Box00|Mux5~2_combout\,
	combout => \displayram|BBCD|Box01|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y21_N0
\displayram|BBCD|Box01|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux2~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(10) & (((\displayram|BBCD|Box00|Mux5~2_combout\)))) # (!\RAM|altsyncram_component|auto_generated|q_b\(10) & ((\displayram|BBCD|Box00|Mux4~2_combout\ & 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(9) & !\displayram|BBCD|Box00|Mux5~2_combout\)) # (!\displayram|BBCD|Box00|Mux4~2_combout\ & ((\displayram|BBCD|Box00|Mux5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(9),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(10),
	datac => \displayram|BBCD|Box00|Mux4~2_combout\,
	datad => \displayram|BBCD|Box00|Mux5~2_combout\,
	combout => \displayram|BBCD|Box01|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y21_N10
\displayram|BBCD|Box01|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box01|Mux2~2_combout\ = (\displayram|BBCD|Box00|Mux3~2_combout\ & ((!\displayram|BBCD|Box01|Mux2~1_combout\))) # (!\displayram|BBCD|Box00|Mux3~2_combout\ & (\displayram|BBCD|Box01|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box01|Mux2~0_combout\,
	datab => \displayram|BBCD|Box01|Mux2~1_combout\,
	datad => \displayram|BBCD|Box00|Mux3~2_combout\,
	combout => \displayram|BBCD|Box01|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y23_N0
\displayram|BBCD|Box00|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux2~1_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(14) & ((\RAM|altsyncram_component|auto_generated|q_b\(13) & ((\RAM|altsyncram_component|auto_generated|q_b\(12)))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(13) & (!\RAM|altsyncram_component|auto_generated|q_b\(11) & !\RAM|altsyncram_component|auto_generated|q_b\(12))))) # (!\RAM|altsyncram_component|auto_generated|q_b\(14) & 
-- (((\RAM|altsyncram_component|auto_generated|q_b\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(11),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(14),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(13),
	datad => \RAM|altsyncram_component|auto_generated|q_b\(12),
	combout => \displayram|BBCD|Box00|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y23_N14
\displayram|BBCD|Box00|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux2~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(12) & (\RAM|altsyncram_component|auto_generated|q_b\(13) & ((\RAM|altsyncram_component|auto_generated|q_b\(11)) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(14))))) # (!\RAM|altsyncram_component|auto_generated|q_b\(12) & ((\RAM|altsyncram_component|auto_generated|q_b\(13) & (\RAM|altsyncram_component|auto_generated|q_b\(11) & 
-- !\RAM|altsyncram_component|auto_generated|q_b\(14))) # (!\RAM|altsyncram_component|auto_generated|q_b\(13) & ((\RAM|altsyncram_component|auto_generated|q_b\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(11),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(12),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(13),
	datad => \RAM|altsyncram_component|auto_generated|q_b\(14),
	combout => \displayram|BBCD|Box00|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y23_N22
\displayram|BBCD|Box00|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux2~2_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(15) & (!\displayram|BBCD|Box00|Mux2~1_combout\)) # (!\RAM|altsyncram_component|auto_generated|q_b\(15) & ((\displayram|BBCD|Box00|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box00|Mux2~1_combout\,
	datac => \displayram|BBCD|Box00|Mux2~0_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_b\(15),
	combout => \displayram|BBCD|Box00|Mux2~2_combout\);

-- Location: LCCOMB_X34_Y16_N30
\displayram|BBCD|Box02|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux5~1_combout\ = (\displayram|BBCD|Box01|Mux2~2_combout\ & (((\displayram|BBCD|Box00|Mux1~0_combout\ & !\displayram|BBCD|Box01|Mux1~0_combout\)) # (!\displayram|BBCD|Box00|Mux2~2_combout\))) # 
-- (!\displayram|BBCD|Box01|Mux2~2_combout\ & (\displayram|BBCD|Box00|Mux2~2_combout\ $ (((\displayram|BBCD|Box00|Mux1~0_combout\ & !\displayram|BBCD|Box01|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux1~0_combout\,
	datab => \displayram|BBCD|Box01|Mux1~0_combout\,
	datac => \displayram|BBCD|Box01|Mux2~2_combout\,
	datad => \displayram|BBCD|Box00|Mux2~2_combout\,
	combout => \displayram|BBCD|Box02|Mux5~1_combout\);

-- Location: LCCOMB_X30_Y23_N18
\displayram|BBCD|Box00|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux0~0_combout\ = ((!\RAM|altsyncram_component|auto_generated|q_b\(14) & !\RAM|altsyncram_component|auto_generated|q_b\(13))) # (!\RAM|altsyncram_component|auto_generated|q_b\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(14),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(15),
	datad => \RAM|altsyncram_component|auto_generated|q_b\(13),
	combout => \displayram|BBCD|Box00|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y16_N0
\displayram|BBCD|Box02|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux5~0_combout\ = (\displayram|BBCD|Box01|Mux2~2_combout\ & (\displayram|BBCD|Box00|Mux2~2_combout\ $ (((\displayram|BBCD|Box01|Mux1~0_combout\) # (!\displayram|BBCD|Box00|Mux1~0_combout\))))) # 
-- (!\displayram|BBCD|Box01|Mux2~2_combout\ & ((\displayram|BBCD|Box00|Mux1~0_combout\ & (!\displayram|BBCD|Box01|Mux1~0_combout\ & !\displayram|BBCD|Box00|Mux2~2_combout\)) # (!\displayram|BBCD|Box00|Mux1~0_combout\ & (\displayram|BBCD|Box01|Mux1~0_combout\ 
-- & \displayram|BBCD|Box00|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux1~0_combout\,
	datab => \displayram|BBCD|Box01|Mux1~0_combout\,
	datac => \displayram|BBCD|Box01|Mux2~2_combout\,
	datad => \displayram|BBCD|Box00|Mux2~2_combout\,
	combout => \displayram|BBCD|Box02|Mux5~0_combout\);

-- Location: LCCOMB_X34_Y16_N16
\displayram|BBCD|Box02|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux5~2_combout\ = (\displayram|BBCD|Box00|Mux0~0_combout\ & ((\displayram|BBCD|Box02|Mux5~0_combout\))) # (!\displayram|BBCD|Box00|Mux0~0_combout\ & (!\displayram|BBCD|Box02|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box02|Mux5~1_combout\,
	datac => \displayram|BBCD|Box00|Mux0~0_combout\,
	datad => \displayram|BBCD|Box02|Mux5~0_combout\,
	combout => \displayram|BBCD|Box02|Mux5~2_combout\);

-- Location: LCCOMB_X37_Y16_N30
\displayram|BBCD|Box04|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux5~1_combout\ = (\displayram|BBCD|Box03|Mux2~2_combout\ & (((\displayram|BBCD|Box02|Mux4~2_combout\ & !\displayram|BBCD|Box03|Mux1~0_combout\)) # (!\displayram|BBCD|Box02|Mux5~2_combout\))) # 
-- (!\displayram|BBCD|Box03|Mux2~2_combout\ & (\displayram|BBCD|Box02|Mux5~2_combout\ $ (((\displayram|BBCD|Box02|Mux4~2_combout\ & !\displayram|BBCD|Box03|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux4~2_combout\,
	datab => \displayram|BBCD|Box03|Mux2~2_combout\,
	datac => \displayram|BBCD|Box03|Mux1~0_combout\,
	datad => \displayram|BBCD|Box02|Mux5~2_combout\,
	combout => \displayram|BBCD|Box04|Mux5~1_combout\);

-- Location: LCCOMB_X37_Y16_N4
\displayram|BBCD|Box04|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux5~0_combout\ = (\displayram|BBCD|Box03|Mux2~2_combout\ & (\displayram|BBCD|Box02|Mux5~2_combout\ $ (((\displayram|BBCD|Box03|Mux1~0_combout\) # (!\displayram|BBCD|Box02|Mux4~2_combout\))))) # 
-- (!\displayram|BBCD|Box03|Mux2~2_combout\ & ((\displayram|BBCD|Box02|Mux4~2_combout\ & (!\displayram|BBCD|Box03|Mux1~0_combout\ & !\displayram|BBCD|Box02|Mux5~2_combout\)) # (!\displayram|BBCD|Box02|Mux4~2_combout\ & (\displayram|BBCD|Box03|Mux1~0_combout\ 
-- & \displayram|BBCD|Box02|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux4~2_combout\,
	datab => \displayram|BBCD|Box03|Mux2~2_combout\,
	datac => \displayram|BBCD|Box03|Mux1~0_combout\,
	datad => \displayram|BBCD|Box02|Mux5~2_combout\,
	combout => \displayram|BBCD|Box04|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y16_N20
\displayram|BBCD|Box04|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux5~2_combout\ = (\displayram|BBCD|Box02|Mux3~2_combout\ & (!\displayram|BBCD|Box04|Mux5~1_combout\)) # (!\displayram|BBCD|Box02|Mux3~2_combout\ & ((\displayram|BBCD|Box04|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux3~2_combout\,
	datab => \displayram|BBCD|Box04|Mux5~1_combout\,
	datac => \displayram|BBCD|Box04|Mux5~0_combout\,
	combout => \displayram|BBCD|Box04|Mux5~2_combout\);

-- Location: LCCOMB_X37_Y12_N30
\displayram|BBCD|Box07|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux4~0_combout\ = (\displayram|BBCD|Box04|Mux3~2_combout\ & (\displayram|BBCD|Box05|Mux1~0_combout\ $ (((\displayram|BBCD|Box05|Mux2~2_combout\ & !\displayram|BBCD|Box04|Mux5~2_combout\))))) # 
-- (!\displayram|BBCD|Box04|Mux3~2_combout\ & (\displayram|BBCD|Box05|Mux1~0_combout\ & ((\displayram|BBCD|Box05|Mux2~2_combout\) # (!\displayram|BBCD|Box04|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux3~2_combout\,
	datab => \displayram|BBCD|Box05|Mux2~2_combout\,
	datac => \displayram|BBCD|Box05|Mux1~0_combout\,
	datad => \displayram|BBCD|Box04|Mux5~2_combout\,
	combout => \displayram|BBCD|Box07|Mux4~0_combout\);

-- Location: LCCOMB_X37_Y12_N24
\displayram|BBCD|Box07|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux4~1_combout\ = (\displayram|BBCD|Box04|Mux3~2_combout\ & ((\displayram|BBCD|Box05|Mux2~2_combout\ & ((\displayram|BBCD|Box04|Mux5~2_combout\) # (!\displayram|BBCD|Box05|Mux1~0_combout\))) # 
-- (!\displayram|BBCD|Box05|Mux2~2_combout\ & ((\displayram|BBCD|Box05|Mux1~0_combout\) # (!\displayram|BBCD|Box04|Mux5~2_combout\))))) # (!\displayram|BBCD|Box04|Mux3~2_combout\ & ((\displayram|BBCD|Box05|Mux1~0_combout\) # 
-- ((\displayram|BBCD|Box05|Mux2~2_combout\ & !\displayram|BBCD|Box04|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux3~2_combout\,
	datab => \displayram|BBCD|Box05|Mux2~2_combout\,
	datac => \displayram|BBCD|Box05|Mux1~0_combout\,
	datad => \displayram|BBCD|Box04|Mux5~2_combout\,
	combout => \displayram|BBCD|Box07|Mux4~1_combout\);

-- Location: LCCOMB_X37_Y12_N2
\displayram|BBCD|Box07|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux4~2_combout\ = (\displayram|BBCD|Box04|Mux4~2_combout\ & ((!\displayram|BBCD|Box07|Mux4~1_combout\))) # (!\displayram|BBCD|Box04|Mux4~2_combout\ & (\displayram|BBCD|Box07|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux4~2_combout\,
	datab => \displayram|BBCD|Box07|Mux4~0_combout\,
	datac => \displayram|BBCD|Box07|Mux4~1_combout\,
	combout => \displayram|BBCD|Box07|Mux4~2_combout\);

-- Location: LCCOMB_X30_Y19_N0
\displayram|BBCD|Box08|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux2~1_combout\ = (\displayram|BBCD|Box05|Mux4~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(4) & ((\displayram|BBCD|Box05|Mux5~2_combout\))) # (!\RAM|altsyncram_component|auto_generated|q_b\(4) & 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(3) & !\displayram|BBCD|Box05|Mux5~2_combout\)))) # (!\displayram|BBCD|Box05|Mux4~2_combout\ & (((\displayram|BBCD|Box05|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux4~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(3),
	datad => \displayram|BBCD|Box05|Mux5~2_combout\,
	combout => \displayram|BBCD|Box08|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y19_N6
\displayram|BBCD|Box08|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux2~0_combout\ = (\displayram|BBCD|Box05|Mux4~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(4) & (\RAM|altsyncram_component|auto_generated|q_b\(3) & \displayram|BBCD|Box05|Mux5~2_combout\)) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(4) & ((!\displayram|BBCD|Box05|Mux5~2_combout\))))) # (!\displayram|BBCD|Box05|Mux4~2_combout\ & (\displayram|BBCD|Box05|Mux5~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(4)) # 
-- (\RAM|altsyncram_component|auto_generated|q_b\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux4~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(4),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(3),
	datad => \displayram|BBCD|Box05|Mux5~2_combout\,
	combout => \displayram|BBCD|Box08|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y19_N18
\displayram|BBCD|Box08|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux2~2_combout\ = (\displayram|BBCD|Box05|Mux3~2_combout\ & (!\displayram|BBCD|Box08|Mux2~1_combout\)) # (!\displayram|BBCD|Box05|Mux3~2_combout\ & ((\displayram|BBCD|Box08|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box08|Mux2~1_combout\,
	datac => \displayram|BBCD|Box05|Mux3~2_combout\,
	datad => \displayram|BBCD|Box08|Mux2~0_combout\,
	combout => \displayram|BBCD|Box08|Mux2~2_combout\);

-- Location: LCCOMB_X37_Y12_N26
\displayram|BBCD|Box07|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux5~1_combout\ = (\displayram|BBCD|Box05|Mux2~2_combout\ & (((\displayram|BBCD|Box04|Mux4~2_combout\ & !\displayram|BBCD|Box05|Mux1~0_combout\)) # (!\displayram|BBCD|Box04|Mux5~2_combout\))) # 
-- (!\displayram|BBCD|Box05|Mux2~2_combout\ & (\displayram|BBCD|Box04|Mux5~2_combout\ $ (((\displayram|BBCD|Box04|Mux4~2_combout\ & !\displayram|BBCD|Box05|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux4~2_combout\,
	datab => \displayram|BBCD|Box05|Mux2~2_combout\,
	datac => \displayram|BBCD|Box05|Mux1~0_combout\,
	datad => \displayram|BBCD|Box04|Mux5~2_combout\,
	combout => \displayram|BBCD|Box07|Mux5~1_combout\);

-- Location: LCCOMB_X37_Y16_N18
\displayram|BBCD|Box04|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux3~1_combout\ = (\displayram|BBCD|Box02|Mux3~2_combout\ & (\displayram|BBCD|Box03|Mux2~2_combout\ & (\displayram|BBCD|Box03|Mux1~0_combout\ & !\displayram|BBCD|Box02|Mux5~2_combout\))) # (!\displayram|BBCD|Box02|Mux3~2_combout\ & 
-- (!\displayram|BBCD|Box03|Mux2~2_combout\ & (!\displayram|BBCD|Box03|Mux1~0_combout\ & \displayram|BBCD|Box02|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux3~2_combout\,
	datab => \displayram|BBCD|Box03|Mux2~2_combout\,
	datac => \displayram|BBCD|Box03|Mux1~0_combout\,
	datad => \displayram|BBCD|Box02|Mux5~2_combout\,
	combout => \displayram|BBCD|Box04|Mux3~1_combout\);

-- Location: LCCOMB_X34_Y16_N20
\displayram|BBCD|Box02|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux4~1_combout\ = (\displayram|BBCD|Box00|Mux0~0_combout\ & ((\displayram|BBCD|Box01|Mux1~0_combout\) # ((\displayram|BBCD|Box01|Mux2~2_combout\ & !\displayram|BBCD|Box00|Mux2~2_combout\)))) # 
-- (!\displayram|BBCD|Box00|Mux0~0_combout\ & ((\displayram|BBCD|Box01|Mux1~0_combout\ & ((\displayram|BBCD|Box00|Mux2~2_combout\) # (!\displayram|BBCD|Box01|Mux2~2_combout\))) # (!\displayram|BBCD|Box01|Mux1~0_combout\ & 
-- ((\displayram|BBCD|Box01|Mux2~2_combout\) # (!\displayram|BBCD|Box00|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux0~0_combout\,
	datab => \displayram|BBCD|Box01|Mux1~0_combout\,
	datac => \displayram|BBCD|Box01|Mux2~2_combout\,
	datad => \displayram|BBCD|Box00|Mux2~2_combout\,
	combout => \displayram|BBCD|Box02|Mux4~1_combout\);

-- Location: LCCOMB_X34_Y16_N10
\displayram|BBCD|Box02|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux4~0_combout\ = (\displayram|BBCD|Box00|Mux0~0_combout\ & (\displayram|BBCD|Box01|Mux1~0_combout\ & ((\displayram|BBCD|Box01|Mux2~2_combout\) # (!\displayram|BBCD|Box00|Mux2~2_combout\)))) # 
-- (!\displayram|BBCD|Box00|Mux0~0_combout\ & (\displayram|BBCD|Box01|Mux1~0_combout\ $ (((\displayram|BBCD|Box01|Mux2~2_combout\ & !\displayram|BBCD|Box00|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux0~0_combout\,
	datab => \displayram|BBCD|Box01|Mux1~0_combout\,
	datac => \displayram|BBCD|Box01|Mux2~2_combout\,
	datad => \displayram|BBCD|Box00|Mux2~2_combout\,
	combout => \displayram|BBCD|Box02|Mux4~0_combout\);

-- Location: LCCOMB_X34_Y16_N22
\displayram|BBCD|Box02|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux4~2_combout\ = (\displayram|BBCD|Box00|Mux1~0_combout\ & (!\displayram|BBCD|Box02|Mux4~1_combout\)) # (!\displayram|BBCD|Box00|Mux1~0_combout\ & ((\displayram|BBCD|Box02|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux1~0_combout\,
	datac => \displayram|BBCD|Box02|Mux4~1_combout\,
	datad => \displayram|BBCD|Box02|Mux4~0_combout\,
	combout => \displayram|BBCD|Box02|Mux4~2_combout\);

-- Location: LCCOMB_X37_Y16_N28
\displayram|BBCD|Box04|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux3~0_combout\ = (\displayram|BBCD|Box02|Mux3~2_combout\ & (!\displayram|BBCD|Box03|Mux1~0_combout\ & (\displayram|BBCD|Box03|Mux2~2_combout\ $ (!\displayram|BBCD|Box02|Mux5~2_combout\)))) # (!\displayram|BBCD|Box02|Mux3~2_combout\ 
-- & ((\displayram|BBCD|Box03|Mux2~2_combout\ & (!\displayram|BBCD|Box03|Mux1~0_combout\ & !\displayram|BBCD|Box02|Mux5~2_combout\)) # (!\displayram|BBCD|Box03|Mux2~2_combout\ & (\displayram|BBCD|Box03|Mux1~0_combout\ & 
-- \displayram|BBCD|Box02|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux3~2_combout\,
	datab => \displayram|BBCD|Box03|Mux2~2_combout\,
	datac => \displayram|BBCD|Box03|Mux1~0_combout\,
	datad => \displayram|BBCD|Box02|Mux5~2_combout\,
	combout => \displayram|BBCD|Box04|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y16_N12
\displayram|BBCD|Box04|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux3~2_combout\ = (\displayram|BBCD|Box02|Mux4~2_combout\ & ((\displayram|BBCD|Box04|Mux3~0_combout\))) # (!\displayram|BBCD|Box02|Mux4~2_combout\ & (\displayram|BBCD|Box04|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box04|Mux3~1_combout\,
	datac => \displayram|BBCD|Box02|Mux4~2_combout\,
	datad => \displayram|BBCD|Box04|Mux3~0_combout\,
	combout => \displayram|BBCD|Box04|Mux3~2_combout\);

-- Location: LCCOMB_X37_Y12_N0
\displayram|BBCD|Box07|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux5~2_combout\ = (\displayram|BBCD|Box04|Mux3~2_combout\ & ((!\displayram|BBCD|Box07|Mux5~1_combout\))) # (!\displayram|BBCD|Box04|Mux3~2_combout\ & (\displayram|BBCD|Box07|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box07|Mux5~0_combout\,
	datab => \displayram|BBCD|Box07|Mux5~1_combout\,
	datad => \displayram|BBCD|Box04|Mux3~2_combout\,
	combout => \displayram|BBCD|Box07|Mux5~2_combout\);

-- Location: LCCOMB_X30_Y19_N16
\displayram|BBCD|Box08|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box08|Mux1~0_combout\ = (\displayram|BBCD|Box05|Mux4~2_combout\ & ((\RAM|altsyncram_component|auto_generated|q_b\(4) & ((\displayram|BBCD|Box05|Mux5~2_combout\) # (!\displayram|BBCD|Box05|Mux3~2_combout\))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(4) & (!\displayram|BBCD|Box05|Mux3~2_combout\ & \displayram|BBCD|Box05|Mux5~2_combout\)))) # (!\displayram|BBCD|Box05|Mux4~2_combout\ & (((\displayram|BBCD|Box05|Mux3~2_combout\ & 
-- !\displayram|BBCD|Box05|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux4~2_combout\,
	datab => \RAM|altsyncram_component|auto_generated|q_b\(4),
	datac => \displayram|BBCD|Box05|Mux3~2_combout\,
	datad => \displayram|BBCD|Box05|Mux5~2_combout\,
	combout => \displayram|BBCD|Box08|Mux1~0_combout\);

-- Location: LCCOMB_X45_Y12_N24
\displayram|BBCD|Box10|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux4~1_combout\ = (\displayram|BBCD|Box07|Mux3~2_combout\ & ((\displayram|BBCD|Box08|Mux2~2_combout\ & ((\displayram|BBCD|Box07|Mux5~2_combout\) # (!\displayram|BBCD|Box08|Mux1~0_combout\))) # 
-- (!\displayram|BBCD|Box08|Mux2~2_combout\ & ((\displayram|BBCD|Box08|Mux1~0_combout\) # (!\displayram|BBCD|Box07|Mux5~2_combout\))))) # (!\displayram|BBCD|Box07|Mux3~2_combout\ & ((\displayram|BBCD|Box08|Mux1~0_combout\) # 
-- ((\displayram|BBCD|Box08|Mux2~2_combout\ & !\displayram|BBCD|Box07|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box07|Mux3~2_combout\,
	datab => \displayram|BBCD|Box08|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux5~2_combout\,
	datad => \displayram|BBCD|Box08|Mux1~0_combout\,
	combout => \displayram|BBCD|Box10|Mux4~1_combout\);

-- Location: LCCOMB_X45_Y12_N10
\displayram|BBCD|Box10|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux4~0_combout\ = (\displayram|BBCD|Box07|Mux3~2_combout\ & (\displayram|BBCD|Box08|Mux1~0_combout\ $ (((\displayram|BBCD|Box08|Mux2~2_combout\ & !\displayram|BBCD|Box07|Mux5~2_combout\))))) # 
-- (!\displayram|BBCD|Box07|Mux3~2_combout\ & (\displayram|BBCD|Box08|Mux1~0_combout\ & ((\displayram|BBCD|Box08|Mux2~2_combout\) # (!\displayram|BBCD|Box07|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box07|Mux3~2_combout\,
	datab => \displayram|BBCD|Box08|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux5~2_combout\,
	datad => \displayram|BBCD|Box08|Mux1~0_combout\,
	combout => \displayram|BBCD|Box10|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y12_N18
\displayram|BBCD|Box10|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux4~2_combout\ = (\displayram|BBCD|Box07|Mux4~2_combout\ & (!\displayram|BBCD|Box10|Mux4~1_combout\)) # (!\displayram|BBCD|Box07|Mux4~2_combout\ & ((\displayram|BBCD|Box10|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box07|Mux4~2_combout\,
	datac => \displayram|BBCD|Box10|Mux4~1_combout\,
	datad => \displayram|BBCD|Box10|Mux4~0_combout\,
	combout => \displayram|BBCD|Box10|Mux4~2_combout\);

-- Location: LCCOMB_X45_Y12_N2
\displayram|BBCD|Box10|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux5~1_combout\ = (\displayram|BBCD|Box08|Mux2~2_combout\ & (((\displayram|BBCD|Box07|Mux4~2_combout\ & !\displayram|BBCD|Box08|Mux1~0_combout\)) # (!\displayram|BBCD|Box07|Mux5~2_combout\))) # 
-- (!\displayram|BBCD|Box08|Mux2~2_combout\ & (\displayram|BBCD|Box07|Mux5~2_combout\ $ (((\displayram|BBCD|Box07|Mux4~2_combout\ & !\displayram|BBCD|Box08|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box07|Mux4~2_combout\,
	datab => \displayram|BBCD|Box08|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux5~2_combout\,
	datad => \displayram|BBCD|Box08|Mux1~0_combout\,
	combout => \displayram|BBCD|Box10|Mux5~1_combout\);

-- Location: LCCOMB_X45_Y12_N4
\displayram|BBCD|Box10|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux5~0_combout\ = (\displayram|BBCD|Box08|Mux2~2_combout\ & (\displayram|BBCD|Box07|Mux5~2_combout\ $ (((\displayram|BBCD|Box08|Mux1~0_combout\) # (!\displayram|BBCD|Box07|Mux4~2_combout\))))) # 
-- (!\displayram|BBCD|Box08|Mux2~2_combout\ & ((\displayram|BBCD|Box07|Mux4~2_combout\ & (!\displayram|BBCD|Box07|Mux5~2_combout\ & !\displayram|BBCD|Box08|Mux1~0_combout\)) # (!\displayram|BBCD|Box07|Mux4~2_combout\ & (\displayram|BBCD|Box07|Mux5~2_combout\ 
-- & \displayram|BBCD|Box08|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box07|Mux4~2_combout\,
	datab => \displayram|BBCD|Box08|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux5~2_combout\,
	datad => \displayram|BBCD|Box08|Mux1~0_combout\,
	combout => \displayram|BBCD|Box10|Mux5~0_combout\);

-- Location: LCCOMB_X45_Y12_N20
\displayram|BBCD|Box10|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux5~2_combout\ = (\displayram|BBCD|Box07|Mux3~2_combout\ & (!\displayram|BBCD|Box10|Mux5~1_combout\)) # (!\displayram|BBCD|Box07|Mux3~2_combout\ & ((\displayram|BBCD|Box10|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box07|Mux3~2_combout\,
	datab => \displayram|BBCD|Box10|Mux5~1_combout\,
	datac => \displayram|BBCD|Box10|Mux5~0_combout\,
	combout => \displayram|BBCD|Box10|Mux5~2_combout\);

-- Location: LCCOMB_X57_Y4_N22
\displayram|BBCD|Box11|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box11|Mux1~0_combout\ = (\displayram|BBCD|Box08|Mux4~2_combout\ & ((\displayram|BBCD|Box08|Mux3~2_combout\ & (\displayram|BBCD|Box08|Mux5~2_combout\ & \RAM|altsyncram_component|auto_generated|q_b\(2))) # 
-- (!\displayram|BBCD|Box08|Mux3~2_combout\ & ((\displayram|BBCD|Box08|Mux5~2_combout\) # (\RAM|altsyncram_component|auto_generated|q_b\(2)))))) # (!\displayram|BBCD|Box08|Mux4~2_combout\ & (\displayram|BBCD|Box08|Mux3~2_combout\ & 
-- (!\displayram|BBCD|Box08|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box08|Mux4~2_combout\,
	datab => \displayram|BBCD|Box08|Mux3~2_combout\,
	datac => \displayram|BBCD|Box08|Mux5~2_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_b\(2),
	combout => \displayram|BBCD|Box11|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y4_N30
\displayram|BBCD|Box14|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box14|Mux4~0_combout\ = (\displayram|BBCD|Box10|Mux3~2_combout\ & (!\displayram|BBCD|Box10|Mux5~2_combout\ & ((\displayram|BBCD|Box10|Mux4~2_combout\) # (!\displayram|BBCD|Box11|Mux1~0_combout\)))) # 
-- (!\displayram|BBCD|Box10|Mux3~2_combout\ & (\displayram|BBCD|Box10|Mux5~2_combout\ & ((\displayram|BBCD|Box11|Mux1~0_combout\) # (!\displayram|BBCD|Box10|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box10|Mux3~2_combout\,
	datab => \displayram|BBCD|Box10|Mux4~2_combout\,
	datac => \displayram|BBCD|Box10|Mux5~2_combout\,
	datad => \displayram|BBCD|Box11|Mux1~0_combout\,
	combout => \displayram|BBCD|Box14|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y4_N8
\displayram|BBCD|Box14|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box14|Mux5~0_combout\ = (\displayram|BBCD|Box10|Mux4~2_combout\ & ((\displayram|BBCD|Box10|Mux3~2_combout\ & (!\displayram|BBCD|Box10|Mux5~2_combout\ & \displayram|BBCD|Box11|Mux1~0_combout\)) # (!\displayram|BBCD|Box10|Mux3~2_combout\ & 
-- (\displayram|BBCD|Box10|Mux5~2_combout\ & !\displayram|BBCD|Box11|Mux1~0_combout\)))) # (!\displayram|BBCD|Box10|Mux4~2_combout\ & (\displayram|BBCD|Box11|Mux1~0_combout\ $ (((\displayram|BBCD|Box10|Mux3~2_combout\ & 
-- !\displayram|BBCD|Box10|Mux5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box10|Mux3~2_combout\,
	datab => \displayram|BBCD|Box10|Mux4~2_combout\,
	datac => \displayram|BBCD|Box10|Mux5~2_combout\,
	datad => \displayram|BBCD|Box11|Mux1~0_combout\,
	combout => \displayram|BBCD|Box14|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y4_N12
\displayram|BBCD|Box14|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box14|Mux3~0_combout\ = (\displayram|BBCD|Box10|Mux4~2_combout\ & (!\displayram|BBCD|Box11|Mux1~0_combout\ & (\displayram|BBCD|Box10|Mux3~2_combout\ $ (!\displayram|BBCD|Box10|Mux5~2_combout\)))) # (!\displayram|BBCD|Box10|Mux4~2_combout\ 
-- & (\displayram|BBCD|Box10|Mux3~2_combout\ & (!\displayram|BBCD|Box10|Mux5~2_combout\ & \displayram|BBCD|Box11|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box10|Mux3~2_combout\,
	datab => \displayram|BBCD|Box10|Mux4~2_combout\,
	datac => \displayram|BBCD|Box10|Mux5~2_combout\,
	datad => \displayram|BBCD|Box11|Mux1~0_combout\,
	combout => \displayram|BBCD|Box14|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y4_N18
\displayram|Hex01|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex01|Mux6~0_combout\ = (\displayram|BBCD|Box14|Mux4~0_combout\ & (!\displayram|BBCD|Box14|Mux5~0_combout\ & (\displayram|BBCD|Box11|Mux2~2_combout\ $ (!\displayram|BBCD|Box14|Mux3~0_combout\)))) # (!\displayram|BBCD|Box14|Mux4~0_combout\ & 
-- (\displayram|BBCD|Box11|Mux2~2_combout\ & (\displayram|BBCD|Box14|Mux5~0_combout\ $ (!\displayram|BBCD|Box14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux2~2_combout\,
	datab => \displayram|BBCD|Box14|Mux4~0_combout\,
	datac => \displayram|BBCD|Box14|Mux5~0_combout\,
	datad => \displayram|BBCD|Box14|Mux3~0_combout\,
	combout => \displayram|Hex01|Mux6~0_combout\);

-- Location: LCCOMB_X57_Y4_N16
\displayram|Hex01|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex01|Mux5~0_combout\ = (\displayram|BBCD|Box14|Mux5~0_combout\ & ((\displayram|BBCD|Box11|Mux2~2_combout\ & ((\displayram|BBCD|Box14|Mux3~0_combout\))) # (!\displayram|BBCD|Box11|Mux2~2_combout\ & (\displayram|BBCD|Box14|Mux4~0_combout\)))) # 
-- (!\displayram|BBCD|Box14|Mux5~0_combout\ & (\displayram|BBCD|Box14|Mux4~0_combout\ & (\displayram|BBCD|Box11|Mux2~2_combout\ $ (\displayram|BBCD|Box14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux2~2_combout\,
	datab => \displayram|BBCD|Box14|Mux4~0_combout\,
	datac => \displayram|BBCD|Box14|Mux5~0_combout\,
	datad => \displayram|BBCD|Box14|Mux3~0_combout\,
	combout => \displayram|Hex01|Mux5~0_combout\);

-- Location: LCCOMB_X57_Y4_N14
\displayram|Hex01|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex01|Mux4~0_combout\ = (\displayram|BBCD|Box14|Mux4~0_combout\ & (\displayram|BBCD|Box14|Mux3~0_combout\ & ((\displayram|BBCD|Box14|Mux5~0_combout\) # (!\displayram|BBCD|Box11|Mux2~2_combout\)))) # (!\displayram|BBCD|Box14|Mux4~0_combout\ & 
-- (!\displayram|BBCD|Box11|Mux2~2_combout\ & (\displayram|BBCD|Box14|Mux5~0_combout\ & !\displayram|BBCD|Box14|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux2~2_combout\,
	datab => \displayram|BBCD|Box14|Mux4~0_combout\,
	datac => \displayram|BBCD|Box14|Mux5~0_combout\,
	datad => \displayram|BBCD|Box14|Mux3~0_combout\,
	combout => \displayram|Hex01|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y4_N20
\displayram|Hex01|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex01|Mux3~0_combout\ = (\displayram|BBCD|Box11|Mux2~2_combout\ & (\displayram|BBCD|Box14|Mux4~0_combout\ $ ((!\displayram|BBCD|Box14|Mux5~0_combout\)))) # (!\displayram|BBCD|Box11|Mux2~2_combout\ & ((\displayram|BBCD|Box14|Mux4~0_combout\ & 
-- (!\displayram|BBCD|Box14|Mux5~0_combout\ & !\displayram|BBCD|Box14|Mux3~0_combout\)) # (!\displayram|BBCD|Box14|Mux4~0_combout\ & (\displayram|BBCD|Box14|Mux5~0_combout\ & \displayram|BBCD|Box14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux2~2_combout\,
	datab => \displayram|BBCD|Box14|Mux4~0_combout\,
	datac => \displayram|BBCD|Box14|Mux5~0_combout\,
	datad => \displayram|BBCD|Box14|Mux3~0_combout\,
	combout => \displayram|Hex01|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y4_N26
\displayram|Hex01|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex01|Mux2~0_combout\ = (\displayram|BBCD|Box14|Mux5~0_combout\ & (\displayram|BBCD|Box11|Mux2~2_combout\ & ((!\displayram|BBCD|Box14|Mux3~0_combout\)))) # (!\displayram|BBCD|Box14|Mux5~0_combout\ & ((\displayram|BBCD|Box14|Mux4~0_combout\ & 
-- ((!\displayram|BBCD|Box14|Mux3~0_combout\))) # (!\displayram|BBCD|Box14|Mux4~0_combout\ & (\displayram|BBCD|Box11|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux2~2_combout\,
	datab => \displayram|BBCD|Box14|Mux4~0_combout\,
	datac => \displayram|BBCD|Box14|Mux5~0_combout\,
	datad => \displayram|BBCD|Box14|Mux3~0_combout\,
	combout => \displayram|Hex01|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y4_N4
\displayram|Hex01|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex01|Mux1~0_combout\ = (\displayram|BBCD|Box11|Mux2~2_combout\ & (\displayram|BBCD|Box14|Mux3~0_combout\ $ (((\displayram|BBCD|Box14|Mux5~0_combout\) # (!\displayram|BBCD|Box14|Mux4~0_combout\))))) # (!\displayram|BBCD|Box11|Mux2~2_combout\ & 
-- (!\displayram|BBCD|Box14|Mux4~0_combout\ & (\displayram|BBCD|Box14|Mux5~0_combout\ & !\displayram|BBCD|Box14|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux2~2_combout\,
	datab => \displayram|BBCD|Box14|Mux4~0_combout\,
	datac => \displayram|BBCD|Box14|Mux5~0_combout\,
	datad => \displayram|BBCD|Box14|Mux3~0_combout\,
	combout => \displayram|Hex01|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y4_N2
\displayram|Hex01|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex01|Mux0~0_combout\ = (\displayram|BBCD|Box11|Mux2~2_combout\ & ((\displayram|BBCD|Box14|Mux3~0_combout\) # (\displayram|BBCD|Box14|Mux4~0_combout\ $ (\displayram|BBCD|Box14|Mux5~0_combout\)))) # (!\displayram|BBCD|Box11|Mux2~2_combout\ & 
-- ((\displayram|BBCD|Box14|Mux5~0_combout\) # (\displayram|BBCD|Box14|Mux4~0_combout\ $ (\displayram|BBCD|Box14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box11|Mux2~2_combout\,
	datab => \displayram|BBCD|Box14|Mux4~0_combout\,
	datac => \displayram|BBCD|Box14|Mux5~0_combout\,
	datad => \displayram|BBCD|Box14|Mux3~0_combout\,
	combout => \displayram|Hex01|Mux0~0_combout\);

-- Location: LCCOMB_X45_Y12_N30
\displayram|BBCD|Box10|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux2~0_combout\ = (\displayram|BBCD|Box07|Mux4~2_combout\ & ((\displayram|BBCD|Box07|Mux5~2_combout\ & (\displayram|BBCD|Box08|Mux2~2_combout\ & \displayram|BBCD|Box08|Mux1~0_combout\)) # (!\displayram|BBCD|Box07|Mux5~2_combout\ & 
-- ((!\displayram|BBCD|Box08|Mux1~0_combout\))))) # (!\displayram|BBCD|Box07|Mux4~2_combout\ & (\displayram|BBCD|Box07|Mux5~2_combout\ & ((\displayram|BBCD|Box08|Mux2~2_combout\) # (\displayram|BBCD|Box08|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box07|Mux4~2_combout\,
	datab => \displayram|BBCD|Box08|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux5~2_combout\,
	datad => \displayram|BBCD|Box08|Mux1~0_combout\,
	combout => \displayram|BBCD|Box10|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y12_N0
\displayram|BBCD|Box10|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux2~1_combout\ = (\displayram|BBCD|Box07|Mux4~2_combout\ & ((\displayram|BBCD|Box07|Mux5~2_combout\ & ((\displayram|BBCD|Box08|Mux1~0_combout\))) # (!\displayram|BBCD|Box07|Mux5~2_combout\ & (!\displayram|BBCD|Box08|Mux2~2_combout\ 
-- & !\displayram|BBCD|Box08|Mux1~0_combout\)))) # (!\displayram|BBCD|Box07|Mux4~2_combout\ & (((\displayram|BBCD|Box07|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box07|Mux4~2_combout\,
	datab => \displayram|BBCD|Box08|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux5~2_combout\,
	datad => \displayram|BBCD|Box08|Mux1~0_combout\,
	combout => \displayram|BBCD|Box10|Mux2~1_combout\);

-- Location: LCCOMB_X45_Y12_N22
\displayram|BBCD|Box10|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux2~2_combout\ = (\displayram|BBCD|Box07|Mux3~2_combout\ & ((!\displayram|BBCD|Box10|Mux2~1_combout\))) # (!\displayram|BBCD|Box07|Mux3~2_combout\ & (\displayram|BBCD|Box10|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box07|Mux3~2_combout\,
	datab => \displayram|BBCD|Box10|Mux2~0_combout\,
	datad => \displayram|BBCD|Box10|Mux2~1_combout\,
	combout => \displayram|BBCD|Box10|Mux2~2_combout\);

-- Location: LCCOMB_X45_Y12_N12
\displayram|BBCD|Box10|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box10|Mux1~0_combout\ = (\displayram|BBCD|Box07|Mux3~2_combout\ & ((\displayram|BBCD|Box07|Mux5~2_combout\ & (\displayram|BBCD|Box08|Mux1~0_combout\ & \displayram|BBCD|Box07|Mux4~2_combout\)) # (!\displayram|BBCD|Box07|Mux5~2_combout\ & 
-- ((!\displayram|BBCD|Box07|Mux4~2_combout\))))) # (!\displayram|BBCD|Box07|Mux3~2_combout\ & (\displayram|BBCD|Box07|Mux4~2_combout\ & ((\displayram|BBCD|Box08|Mux1~0_combout\) # (\displayram|BBCD|Box07|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box07|Mux3~2_combout\,
	datab => \displayram|BBCD|Box08|Mux1~0_combout\,
	datac => \displayram|BBCD|Box07|Mux5~2_combout\,
	datad => \displayram|BBCD|Box07|Mux4~2_combout\,
	combout => \displayram|BBCD|Box10|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y12_N18
\displayram|BBCD|Box07|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux2~0_combout\ = (\displayram|BBCD|Box04|Mux4~2_combout\ & ((\displayram|BBCD|Box05|Mux1~0_combout\ & (\displayram|BBCD|Box05|Mux2~2_combout\ & \displayram|BBCD|Box04|Mux5~2_combout\)) # (!\displayram|BBCD|Box05|Mux1~0_combout\ & 
-- ((!\displayram|BBCD|Box04|Mux5~2_combout\))))) # (!\displayram|BBCD|Box04|Mux4~2_combout\ & (\displayram|BBCD|Box04|Mux5~2_combout\ & ((\displayram|BBCD|Box05|Mux2~2_combout\) # (\displayram|BBCD|Box05|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux4~2_combout\,
	datab => \displayram|BBCD|Box05|Mux2~2_combout\,
	datac => \displayram|BBCD|Box05|Mux1~0_combout\,
	datad => \displayram|BBCD|Box04|Mux5~2_combout\,
	combout => \displayram|BBCD|Box07|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y12_N8
\displayram|BBCD|Box07|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux2~1_combout\ = (\displayram|BBCD|Box04|Mux4~2_combout\ & ((\displayram|BBCD|Box05|Mux1~0_combout\ & ((\displayram|BBCD|Box04|Mux5~2_combout\))) # (!\displayram|BBCD|Box05|Mux1~0_combout\ & (!\displayram|BBCD|Box05|Mux2~2_combout\ 
-- & !\displayram|BBCD|Box04|Mux5~2_combout\)))) # (!\displayram|BBCD|Box04|Mux4~2_combout\ & (((\displayram|BBCD|Box04|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux4~2_combout\,
	datab => \displayram|BBCD|Box05|Mux2~2_combout\,
	datac => \displayram|BBCD|Box05|Mux1~0_combout\,
	datad => \displayram|BBCD|Box04|Mux5~2_combout\,
	combout => \displayram|BBCD|Box07|Mux2~1_combout\);

-- Location: LCCOMB_X37_Y12_N10
\displayram|BBCD|Box07|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux2~2_combout\ = (\displayram|BBCD|Box04|Mux3~2_combout\ & ((!\displayram|BBCD|Box07|Mux2~1_combout\))) # (!\displayram|BBCD|Box04|Mux3~2_combout\ & (\displayram|BBCD|Box07|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box07|Mux2~0_combout\,
	datac => \displayram|BBCD|Box07|Mux2~1_combout\,
	datad => \displayram|BBCD|Box04|Mux3~2_combout\,
	combout => \displayram|BBCD|Box07|Mux2~2_combout\);

-- Location: LCCOMB_X37_Y16_N0
\displayram|BBCD|Box04|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux4~1_combout\ = (\displayram|BBCD|Box02|Mux3~2_combout\ & ((\displayram|BBCD|Box03|Mux2~2_combout\ & ((\displayram|BBCD|Box02|Mux5~2_combout\) # (!\displayram|BBCD|Box03|Mux1~0_combout\))) # 
-- (!\displayram|BBCD|Box03|Mux2~2_combout\ & ((\displayram|BBCD|Box03|Mux1~0_combout\) # (!\displayram|BBCD|Box02|Mux5~2_combout\))))) # (!\displayram|BBCD|Box02|Mux3~2_combout\ & ((\displayram|BBCD|Box03|Mux1~0_combout\) # 
-- ((\displayram|BBCD|Box03|Mux2~2_combout\ & !\displayram|BBCD|Box02|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux3~2_combout\,
	datab => \displayram|BBCD|Box03|Mux2~2_combout\,
	datac => \displayram|BBCD|Box03|Mux1~0_combout\,
	datad => \displayram|BBCD|Box02|Mux5~2_combout\,
	combout => \displayram|BBCD|Box04|Mux4~1_combout\);

-- Location: LCCOMB_X37_Y16_N2
\displayram|BBCD|Box04|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux4~0_combout\ = (\displayram|BBCD|Box02|Mux3~2_combout\ & (\displayram|BBCD|Box03|Mux1~0_combout\ $ (((\displayram|BBCD|Box03|Mux2~2_combout\ & !\displayram|BBCD|Box02|Mux5~2_combout\))))) # 
-- (!\displayram|BBCD|Box02|Mux3~2_combout\ & (\displayram|BBCD|Box03|Mux1~0_combout\ & ((\displayram|BBCD|Box03|Mux2~2_combout\) # (!\displayram|BBCD|Box02|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux3~2_combout\,
	datab => \displayram|BBCD|Box03|Mux2~2_combout\,
	datac => \displayram|BBCD|Box03|Mux1~0_combout\,
	datad => \displayram|BBCD|Box02|Mux5~2_combout\,
	combout => \displayram|BBCD|Box04|Mux4~0_combout\);

-- Location: LCCOMB_X37_Y16_N26
\displayram|BBCD|Box04|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux4~2_combout\ = (\displayram|BBCD|Box02|Mux4~2_combout\ & (!\displayram|BBCD|Box04|Mux4~1_combout\)) # (!\displayram|BBCD|Box02|Mux4~2_combout\ & ((\displayram|BBCD|Box04|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box04|Mux4~1_combout\,
	datac => \displayram|BBCD|Box02|Mux4~2_combout\,
	datad => \displayram|BBCD|Box04|Mux4~0_combout\,
	combout => \displayram|BBCD|Box04|Mux4~2_combout\);

-- Location: LCCOMB_X37_Y12_N20
\displayram|BBCD|Box07|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box07|Mux1~0_combout\ = (\displayram|BBCD|Box04|Mux5~2_combout\ & (\displayram|BBCD|Box04|Mux4~2_combout\ & ((\displayram|BBCD|Box05|Mux1~0_combout\) # (!\displayram|BBCD|Box04|Mux3~2_combout\)))) # 
-- (!\displayram|BBCD|Box04|Mux5~2_combout\ & ((\displayram|BBCD|Box04|Mux4~2_combout\ & (\displayram|BBCD|Box05|Mux1~0_combout\ & !\displayram|BBCD|Box04|Mux3~2_combout\)) # (!\displayram|BBCD|Box04|Mux4~2_combout\ & 
-- ((\displayram|BBCD|Box04|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box05|Mux1~0_combout\,
	datab => \displayram|BBCD|Box04|Mux5~2_combout\,
	datac => \displayram|BBCD|Box04|Mux4~2_combout\,
	datad => \displayram|BBCD|Box04|Mux3~2_combout\,
	combout => \displayram|BBCD|Box07|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y16_N4
\displayram|BBCD|Box02|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux2~1_combout\ = (\displayram|BBCD|Box00|Mux1~0_combout\ & ((\displayram|BBCD|Box01|Mux1~0_combout\ & ((\displayram|BBCD|Box00|Mux2~2_combout\))) # (!\displayram|BBCD|Box01|Mux1~0_combout\ & (!\displayram|BBCD|Box01|Mux2~2_combout\ 
-- & !\displayram|BBCD|Box00|Mux2~2_combout\)))) # (!\displayram|BBCD|Box00|Mux1~0_combout\ & (((\displayram|BBCD|Box00|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux1~0_combout\,
	datab => \displayram|BBCD|Box01|Mux1~0_combout\,
	datac => \displayram|BBCD|Box01|Mux2~2_combout\,
	datad => \displayram|BBCD|Box00|Mux2~2_combout\,
	combout => \displayram|BBCD|Box02|Mux2~1_combout\);

-- Location: LCCOMB_X34_Y16_N6
\displayram|BBCD|Box02|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux2~0_combout\ = (\displayram|BBCD|Box00|Mux1~0_combout\ & ((\displayram|BBCD|Box01|Mux1~0_combout\ & (\displayram|BBCD|Box01|Mux2~2_combout\ & \displayram|BBCD|Box00|Mux2~2_combout\)) # (!\displayram|BBCD|Box01|Mux1~0_combout\ & 
-- ((!\displayram|BBCD|Box00|Mux2~2_combout\))))) # (!\displayram|BBCD|Box00|Mux1~0_combout\ & (\displayram|BBCD|Box00|Mux2~2_combout\ & ((\displayram|BBCD|Box01|Mux1~0_combout\) # (\displayram|BBCD|Box01|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux1~0_combout\,
	datab => \displayram|BBCD|Box01|Mux1~0_combout\,
	datac => \displayram|BBCD|Box01|Mux2~2_combout\,
	datad => \displayram|BBCD|Box00|Mux2~2_combout\,
	combout => \displayram|BBCD|Box02|Mux2~0_combout\);

-- Location: LCCOMB_X34_Y16_N18
\displayram|BBCD|Box02|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux2~2_combout\ = (\displayram|BBCD|Box00|Mux0~0_combout\ & ((\displayram|BBCD|Box02|Mux2~0_combout\))) # (!\displayram|BBCD|Box00|Mux0~0_combout\ & (!\displayram|BBCD|Box02|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box02|Mux2~1_combout\,
	datac => \displayram|BBCD|Box00|Mux0~0_combout\,
	datad => \displayram|BBCD|Box02|Mux2~0_combout\,
	combout => \displayram|BBCD|Box02|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y23_N24
\displayram|BBCD|Box00|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box00|Mux1~0_combout\ = (\RAM|altsyncram_component|auto_generated|q_b\(13) & (\RAM|altsyncram_component|auto_generated|q_b\(14) & ((\RAM|altsyncram_component|auto_generated|q_b\(12)) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(15))))) # (!\RAM|altsyncram_component|auto_generated|q_b\(13) & ((\RAM|altsyncram_component|auto_generated|q_b\(15) & ((!\RAM|altsyncram_component|auto_generated|q_b\(14)))) # 
-- (!\RAM|altsyncram_component|auto_generated|q_b\(15) & (\RAM|altsyncram_component|auto_generated|q_b\(12) & \RAM|altsyncram_component|auto_generated|q_b\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(13),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(15),
	datac => \RAM|altsyncram_component|auto_generated|q_b\(12),
	datad => \RAM|altsyncram_component|auto_generated|q_b\(14),
	combout => \displayram|BBCD|Box00|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y16_N24
\displayram|BBCD|Box02|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux1~0_combout\ = (\displayram|BBCD|Box00|Mux0~0_combout\ & (\displayram|BBCD|Box00|Mux1~0_combout\ & ((\displayram|BBCD|Box00|Mux2~2_combout\) # (\displayram|BBCD|Box01|Mux1~0_combout\)))) # (!\displayram|BBCD|Box00|Mux0~0_combout\ 
-- & ((\displayram|BBCD|Box00|Mux2~2_combout\ & (\displayram|BBCD|Box01|Mux1~0_combout\ & \displayram|BBCD|Box00|Mux1~0_combout\)) # (!\displayram|BBCD|Box00|Mux2~2_combout\ & ((!\displayram|BBCD|Box00|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box00|Mux0~0_combout\,
	datab => \displayram|BBCD|Box00|Mux2~2_combout\,
	datac => \displayram|BBCD|Box01|Mux1~0_combout\,
	datad => \displayram|BBCD|Box00|Mux1~0_combout\,
	combout => \displayram|BBCD|Box02|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y16_N24
\displayram|BBCD|Box04|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux2~1_combout\ = (\displayram|BBCD|Box02|Mux4~2_combout\ & ((\displayram|BBCD|Box03|Mux1~0_combout\ & ((\displayram|BBCD|Box02|Mux5~2_combout\))) # (!\displayram|BBCD|Box03|Mux1~0_combout\ & (!\displayram|BBCD|Box03|Mux2~2_combout\ 
-- & !\displayram|BBCD|Box02|Mux5~2_combout\)))) # (!\displayram|BBCD|Box02|Mux4~2_combout\ & (((\displayram|BBCD|Box02|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux4~2_combout\,
	datab => \displayram|BBCD|Box03|Mux2~2_combout\,
	datac => \displayram|BBCD|Box03|Mux1~0_combout\,
	datad => \displayram|BBCD|Box02|Mux5~2_combout\,
	combout => \displayram|BBCD|Box04|Mux2~1_combout\);

-- Location: LCCOMB_X37_Y16_N6
\displayram|BBCD|Box04|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux2~0_combout\ = (\displayram|BBCD|Box02|Mux4~2_combout\ & ((\displayram|BBCD|Box03|Mux1~0_combout\ & (\displayram|BBCD|Box03|Mux2~2_combout\ & \displayram|BBCD|Box02|Mux5~2_combout\)) # (!\displayram|BBCD|Box03|Mux1~0_combout\ & 
-- ((!\displayram|BBCD|Box02|Mux5~2_combout\))))) # (!\displayram|BBCD|Box02|Mux4~2_combout\ & (\displayram|BBCD|Box02|Mux5~2_combout\ & ((\displayram|BBCD|Box03|Mux2~2_combout\) # (\displayram|BBCD|Box03|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux4~2_combout\,
	datab => \displayram|BBCD|Box03|Mux2~2_combout\,
	datac => \displayram|BBCD|Box03|Mux1~0_combout\,
	datad => \displayram|BBCD|Box02|Mux5~2_combout\,
	combout => \displayram|BBCD|Box04|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y16_N10
\displayram|BBCD|Box04|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux2~2_combout\ = (\displayram|BBCD|Box02|Mux3~2_combout\ & (!\displayram|BBCD|Box04|Mux2~1_combout\)) # (!\displayram|BBCD|Box02|Mux3~2_combout\ & ((\displayram|BBCD|Box04|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux3~2_combout\,
	datac => \displayram|BBCD|Box04|Mux2~1_combout\,
	datad => \displayram|BBCD|Box04|Mux2~0_combout\,
	combout => \displayram|BBCD|Box04|Mux2~2_combout\);

-- Location: LCCOMB_X46_Y12_N26
\displayram|BBCD|Box06|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux5~1_combout\ = (\displayram|BBCD|Box02|Mux2~2_combout\ & (\displayram|BBCD|Box04|Mux2~2_combout\ $ (((\displayram|BBCD|Box04|Mux1~0_combout\) # (!\displayram|BBCD|Box02|Mux1~0_combout\))))) # 
-- (!\displayram|BBCD|Box02|Mux2~2_combout\ & ((\displayram|BBCD|Box04|Mux2~2_combout\) # ((!\displayram|BBCD|Box04|Mux1~0_combout\ & \displayram|BBCD|Box02|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux1~0_combout\,
	datab => \displayram|BBCD|Box02|Mux2~2_combout\,
	datac => \displayram|BBCD|Box02|Mux1~0_combout\,
	datad => \displayram|BBCD|Box04|Mux2~2_combout\,
	combout => \displayram|BBCD|Box06|Mux5~1_combout\);

-- Location: LCCOMB_X30_Y23_N20
\displayram|BBCD|Box02|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux0~3_combout\ = (!\RAM|altsyncram_component|auto_generated|q_b\(11) & !\RAM|altsyncram_component|auto_generated|q_b\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(11),
	datad => \RAM|altsyncram_component|auto_generated|q_b\(12),
	combout => \displayram|BBCD|Box02|Mux0~3_combout\);

-- Location: LCCOMB_X30_Y23_N26
\displayram|BBCD|Box02|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box02|Mux0~9_combout\ = (((!\RAM|altsyncram_component|auto_generated|q_b\(13) & \displayram|BBCD|Box02|Mux0~3_combout\)) # (!\RAM|altsyncram_component|auto_generated|q_b\(14))) # (!\RAM|altsyncram_component|auto_generated|q_b\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_b\(13),
	datab => \RAM|altsyncram_component|auto_generated|q_b\(15),
	datac => \displayram|BBCD|Box02|Mux0~3_combout\,
	datad => \RAM|altsyncram_component|auto_generated|q_b\(14),
	combout => \displayram|BBCD|Box02|Mux0~9_combout\);

-- Location: LCCOMB_X46_Y12_N24
\displayram|BBCD|Box06|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux5~2_combout\ = (\displayram|BBCD|Box02|Mux0~9_combout\ & (\displayram|BBCD|Box06|Mux5~0_combout\)) # (!\displayram|BBCD|Box02|Mux0~9_combout\ & ((!\displayram|BBCD|Box06|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux5~0_combout\,
	datab => \displayram|BBCD|Box06|Mux5~1_combout\,
	datac => \displayram|BBCD|Box02|Mux0~9_combout\,
	combout => \displayram|BBCD|Box06|Mux5~2_combout\);

-- Location: LCCOMB_X49_Y12_N8
\displayram|BBCD|Box09|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux5~0_combout\ = (\displayram|BBCD|Box07|Mux2~2_combout\ & (\displayram|BBCD|Box06|Mux5~2_combout\ $ (((\displayram|BBCD|Box07|Mux1~0_combout\) # (!\displayram|BBCD|Box06|Mux4~2_combout\))))) # 
-- (!\displayram|BBCD|Box07|Mux2~2_combout\ & ((\displayram|BBCD|Box06|Mux4~2_combout\ & (!\displayram|BBCD|Box07|Mux1~0_combout\ & !\displayram|BBCD|Box06|Mux5~2_combout\)) # (!\displayram|BBCD|Box06|Mux4~2_combout\ & (\displayram|BBCD|Box07|Mux1~0_combout\ 
-- & \displayram|BBCD|Box06|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux4~2_combout\,
	datab => \displayram|BBCD|Box07|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux1~0_combout\,
	datad => \displayram|BBCD|Box06|Mux5~2_combout\,
	combout => \displayram|BBCD|Box09|Mux5~0_combout\);

-- Location: LCCOMB_X46_Y12_N30
\displayram|BBCD|Box06|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux3~1_combout\ = (\displayram|BBCD|Box04|Mux1~0_combout\ & (!\displayram|BBCD|Box02|Mux2~2_combout\ & (!\displayram|BBCD|Box02|Mux0~9_combout\ & \displayram|BBCD|Box04|Mux2~2_combout\))) # (!\displayram|BBCD|Box04|Mux1~0_combout\ & 
-- (\displayram|BBCD|Box02|Mux2~2_combout\ & (\displayram|BBCD|Box02|Mux0~9_combout\ & !\displayram|BBCD|Box04|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux1~0_combout\,
	datab => \displayram|BBCD|Box02|Mux2~2_combout\,
	datac => \displayram|BBCD|Box02|Mux0~9_combout\,
	datad => \displayram|BBCD|Box04|Mux2~2_combout\,
	combout => \displayram|BBCD|Box06|Mux3~1_combout\);

-- Location: LCCOMB_X46_Y12_N0
\displayram|BBCD|Box06|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux3~0_combout\ = (\displayram|BBCD|Box04|Mux1~0_combout\ & (\displayram|BBCD|Box02|Mux2~2_combout\ & (\displayram|BBCD|Box02|Mux0~9_combout\ & !\displayram|BBCD|Box04|Mux2~2_combout\))) # (!\displayram|BBCD|Box04|Mux1~0_combout\ & 
-- ((\displayram|BBCD|Box02|Mux2~2_combout\ & (!\displayram|BBCD|Box02|Mux0~9_combout\ & \displayram|BBCD|Box04|Mux2~2_combout\)) # (!\displayram|BBCD|Box02|Mux2~2_combout\ & (\displayram|BBCD|Box02|Mux0~9_combout\ $ 
-- (!\displayram|BBCD|Box04|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux1~0_combout\,
	datab => \displayram|BBCD|Box02|Mux2~2_combout\,
	datac => \displayram|BBCD|Box02|Mux0~9_combout\,
	datad => \displayram|BBCD|Box04|Mux2~2_combout\,
	combout => \displayram|BBCD|Box06|Mux3~0_combout\);

-- Location: LCCOMB_X46_Y12_N28
\displayram|BBCD|Box06|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux3~2_combout\ = (\displayram|BBCD|Box02|Mux1~0_combout\ & ((\displayram|BBCD|Box06|Mux3~0_combout\))) # (!\displayram|BBCD|Box02|Mux1~0_combout\ & (\displayram|BBCD|Box06|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box06|Mux3~1_combout\,
	datac => \displayram|BBCD|Box02|Mux1~0_combout\,
	datad => \displayram|BBCD|Box06|Mux3~0_combout\,
	combout => \displayram|BBCD|Box06|Mux3~2_combout\);

-- Location: LCCOMB_X49_Y12_N10
\displayram|BBCD|Box09|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux5~1_combout\ = (\displayram|BBCD|Box07|Mux2~2_combout\ & (((\displayram|BBCD|Box06|Mux4~2_combout\ & !\displayram|BBCD|Box07|Mux1~0_combout\)) # (!\displayram|BBCD|Box06|Mux5~2_combout\))) # 
-- (!\displayram|BBCD|Box07|Mux2~2_combout\ & (\displayram|BBCD|Box06|Mux5~2_combout\ $ (((\displayram|BBCD|Box06|Mux4~2_combout\ & !\displayram|BBCD|Box07|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux4~2_combout\,
	datab => \displayram|BBCD|Box07|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux1~0_combout\,
	datad => \displayram|BBCD|Box06|Mux5~2_combout\,
	combout => \displayram|BBCD|Box09|Mux5~1_combout\);

-- Location: LCCOMB_X49_Y12_N12
\displayram|BBCD|Box09|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux5~2_combout\ = (\displayram|BBCD|Box06|Mux3~2_combout\ & ((!\displayram|BBCD|Box09|Mux5~1_combout\))) # (!\displayram|BBCD|Box06|Mux3~2_combout\ & (\displayram|BBCD|Box09|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box09|Mux5~0_combout\,
	datac => \displayram|BBCD|Box06|Mux3~2_combout\,
	datad => \displayram|BBCD|Box09|Mux5~1_combout\,
	combout => \displayram|BBCD|Box09|Mux5~2_combout\);

-- Location: LCCOMB_X60_Y12_N30
\displayram|BBCD|Box13|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux3~1_combout\ = (\displayram|BBCD|Box09|Mux3~2_combout\ & (\displayram|BBCD|Box10|Mux2~2_combout\ & (\displayram|BBCD|Box10|Mux1~0_combout\ & !\displayram|BBCD|Box09|Mux5~2_combout\))) # (!\displayram|BBCD|Box09|Mux3~2_combout\ & 
-- (!\displayram|BBCD|Box10|Mux2~2_combout\ & (!\displayram|BBCD|Box10|Mux1~0_combout\ & \displayram|BBCD|Box09|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux3~2_combout\,
	datab => \displayram|BBCD|Box10|Mux2~2_combout\,
	datac => \displayram|BBCD|Box10|Mux1~0_combout\,
	datad => \displayram|BBCD|Box09|Mux5~2_combout\,
	combout => \displayram|BBCD|Box13|Mux3~1_combout\);

-- Location: LCCOMB_X49_Y12_N20
\displayram|BBCD|Box09|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux4~1_combout\ = (\displayram|BBCD|Box06|Mux3~2_combout\ & ((\displayram|BBCD|Box07|Mux2~2_combout\ & ((\displayram|BBCD|Box06|Mux5~2_combout\) # (!\displayram|BBCD|Box07|Mux1~0_combout\))) # 
-- (!\displayram|BBCD|Box07|Mux2~2_combout\ & ((\displayram|BBCD|Box07|Mux1~0_combout\) # (!\displayram|BBCD|Box06|Mux5~2_combout\))))) # (!\displayram|BBCD|Box06|Mux3~2_combout\ & ((\displayram|BBCD|Box07|Mux1~0_combout\) # 
-- ((\displayram|BBCD|Box07|Mux2~2_combout\ & !\displayram|BBCD|Box06|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux3~2_combout\,
	datab => \displayram|BBCD|Box07|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux1~0_combout\,
	datad => \displayram|BBCD|Box06|Mux5~2_combout\,
	combout => \displayram|BBCD|Box09|Mux4~1_combout\);

-- Location: LCCOMB_X49_Y12_N18
\displayram|BBCD|Box09|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux4~0_combout\ = (\displayram|BBCD|Box06|Mux3~2_combout\ & (\displayram|BBCD|Box07|Mux1~0_combout\ $ (((\displayram|BBCD|Box07|Mux2~2_combout\ & !\displayram|BBCD|Box06|Mux5~2_combout\))))) # 
-- (!\displayram|BBCD|Box06|Mux3~2_combout\ & (\displayram|BBCD|Box07|Mux1~0_combout\ & ((\displayram|BBCD|Box07|Mux2~2_combout\) # (!\displayram|BBCD|Box06|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux3~2_combout\,
	datab => \displayram|BBCD|Box07|Mux2~2_combout\,
	datac => \displayram|BBCD|Box07|Mux1~0_combout\,
	datad => \displayram|BBCD|Box06|Mux5~2_combout\,
	combout => \displayram|BBCD|Box09|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y12_N2
\displayram|BBCD|Box09|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux4~2_combout\ = (\displayram|BBCD|Box06|Mux4~2_combout\ & (!\displayram|BBCD|Box09|Mux4~1_combout\)) # (!\displayram|BBCD|Box06|Mux4~2_combout\ & ((\displayram|BBCD|Box09|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux4~2_combout\,
	datac => \displayram|BBCD|Box09|Mux4~1_combout\,
	datad => \displayram|BBCD|Box09|Mux4~0_combout\,
	combout => \displayram|BBCD|Box09|Mux4~2_combout\);

-- Location: LCCOMB_X60_Y12_N12
\displayram|BBCD|Box13|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux3~2_combout\ = (\displayram|BBCD|Box09|Mux4~2_combout\ & (\displayram|BBCD|Box13|Mux3~0_combout\)) # (!\displayram|BBCD|Box09|Mux4~2_combout\ & ((\displayram|BBCD|Box13|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box13|Mux3~0_combout\,
	datab => \displayram|BBCD|Box13|Mux3~1_combout\,
	datac => \displayram|BBCD|Box09|Mux4~2_combout\,
	combout => \displayram|BBCD|Box13|Mux3~2_combout\);

-- Location: LCCOMB_X57_Y4_N0
\displayram|BBCD|Box14|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box14|Mux2~0_combout\ = (\displayram|BBCD|Box10|Mux3~2_combout\ & ((\displayram|BBCD|Box10|Mux4~2_combout\ & (\displayram|BBCD|Box10|Mux5~2_combout\ & \displayram|BBCD|Box11|Mux1~0_combout\)) # (!\displayram|BBCD|Box10|Mux4~2_combout\ & 
-- (!\displayram|BBCD|Box10|Mux5~2_combout\)))) # (!\displayram|BBCD|Box10|Mux3~2_combout\ & (\displayram|BBCD|Box10|Mux4~2_combout\ & ((\displayram|BBCD|Box10|Mux5~2_combout\) # (\displayram|BBCD|Box11|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box10|Mux3~2_combout\,
	datab => \displayram|BBCD|Box10|Mux4~2_combout\,
	datac => \displayram|BBCD|Box10|Mux5~2_combout\,
	datad => \displayram|BBCD|Box11|Mux1~0_combout\,
	combout => \displayram|BBCD|Box14|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y12_N28
\displayram|BBCD|Box13|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux5~0_combout\ = (\displayram|BBCD|Box10|Mux2~2_combout\ & (\displayram|BBCD|Box09|Mux5~2_combout\ $ (((\displayram|BBCD|Box10|Mux1~0_combout\) # (!\displayram|BBCD|Box09|Mux4~2_combout\))))) # 
-- (!\displayram|BBCD|Box10|Mux2~2_combout\ & ((\displayram|BBCD|Box09|Mux4~2_combout\ & (!\displayram|BBCD|Box10|Mux1~0_combout\ & !\displayram|BBCD|Box09|Mux5~2_combout\)) # (!\displayram|BBCD|Box09|Mux4~2_combout\ & (\displayram|BBCD|Box10|Mux1~0_combout\ 
-- & \displayram|BBCD|Box09|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux4~2_combout\,
	datab => \displayram|BBCD|Box10|Mux2~2_combout\,
	datac => \displayram|BBCD|Box10|Mux1~0_combout\,
	datad => \displayram|BBCD|Box09|Mux5~2_combout\,
	combout => \displayram|BBCD|Box13|Mux5~0_combout\);

-- Location: LCCOMB_X60_Y12_N22
\displayram|BBCD|Box13|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux5~1_combout\ = (\displayram|BBCD|Box10|Mux2~2_combout\ & (((\displayram|BBCD|Box09|Mux4~2_combout\ & !\displayram|BBCD|Box10|Mux1~0_combout\)) # (!\displayram|BBCD|Box09|Mux5~2_combout\))) # 
-- (!\displayram|BBCD|Box10|Mux2~2_combout\ & (\displayram|BBCD|Box09|Mux5~2_combout\ $ (((\displayram|BBCD|Box09|Mux4~2_combout\ & !\displayram|BBCD|Box10|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux4~2_combout\,
	datab => \displayram|BBCD|Box10|Mux2~2_combout\,
	datac => \displayram|BBCD|Box10|Mux1~0_combout\,
	datad => \displayram|BBCD|Box09|Mux5~2_combout\,
	combout => \displayram|BBCD|Box13|Mux5~1_combout\);

-- Location: LCCOMB_X60_Y12_N16
\displayram|BBCD|Box13|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux5~2_combout\ = (\displayram|BBCD|Box09|Mux3~2_combout\ & ((!\displayram|BBCD|Box13|Mux5~1_combout\))) # (!\displayram|BBCD|Box09|Mux3~2_combout\ & (\displayram|BBCD|Box13|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux3~2_combout\,
	datab => \displayram|BBCD|Box13|Mux5~0_combout\,
	datad => \displayram|BBCD|Box13|Mux5~1_combout\,
	combout => \displayram|BBCD|Box13|Mux5~2_combout\);

-- Location: LCCOMB_X60_Y12_N0
\displayram|BBCD|Box13|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux4~1_combout\ = (\displayram|BBCD|Box09|Mux3~2_combout\ & ((\displayram|BBCD|Box10|Mux2~2_combout\ & ((\displayram|BBCD|Box09|Mux5~2_combout\) # (!\displayram|BBCD|Box10|Mux1~0_combout\))) # 
-- (!\displayram|BBCD|Box10|Mux2~2_combout\ & ((\displayram|BBCD|Box10|Mux1~0_combout\) # (!\displayram|BBCD|Box09|Mux5~2_combout\))))) # (!\displayram|BBCD|Box09|Mux3~2_combout\ & ((\displayram|BBCD|Box10|Mux1~0_combout\) # 
-- ((\displayram|BBCD|Box10|Mux2~2_combout\ & !\displayram|BBCD|Box09|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux3~2_combout\,
	datab => \displayram|BBCD|Box10|Mux2~2_combout\,
	datac => \displayram|BBCD|Box10|Mux1~0_combout\,
	datad => \displayram|BBCD|Box09|Mux5~2_combout\,
	combout => \displayram|BBCD|Box13|Mux4~1_combout\);

-- Location: LCCOMB_X60_Y12_N10
\displayram|BBCD|Box13|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux4~0_combout\ = (\displayram|BBCD|Box09|Mux3~2_combout\ & (\displayram|BBCD|Box10|Mux1~0_combout\ $ (((\displayram|BBCD|Box10|Mux2~2_combout\ & !\displayram|BBCD|Box09|Mux5~2_combout\))))) # 
-- (!\displayram|BBCD|Box09|Mux3~2_combout\ & (\displayram|BBCD|Box10|Mux1~0_combout\ & ((\displayram|BBCD|Box10|Mux2~2_combout\) # (!\displayram|BBCD|Box09|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux3~2_combout\,
	datab => \displayram|BBCD|Box10|Mux2~2_combout\,
	datac => \displayram|BBCD|Box10|Mux1~0_combout\,
	datad => \displayram|BBCD|Box09|Mux5~2_combout\,
	combout => \displayram|BBCD|Box13|Mux4~0_combout\);

-- Location: LCCOMB_X60_Y12_N18
\displayram|BBCD|Box13|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux4~2_combout\ = (\displayram|BBCD|Box09|Mux4~2_combout\ & (!\displayram|BBCD|Box13|Mux4~1_combout\)) # (!\displayram|BBCD|Box09|Mux4~2_combout\ & ((\displayram|BBCD|Box13|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box13|Mux4~1_combout\,
	datac => \displayram|BBCD|Box09|Mux4~2_combout\,
	datad => \displayram|BBCD|Box13|Mux4~0_combout\,
	combout => \displayram|BBCD|Box13|Mux4~2_combout\);

-- Location: LCCOMB_X64_Y7_N8
\displayram|Hex02|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex02|Mux6~0_combout\ = (\displayram|BBCD|Box13|Mux3~2_combout\ & (\displayram|BBCD|Box14|Mux2~0_combout\ & (\displayram|BBCD|Box13|Mux5~2_combout\ $ (\displayram|BBCD|Box13|Mux4~2_combout\)))) # (!\displayram|BBCD|Box13|Mux3~2_combout\ & 
-- (!\displayram|BBCD|Box13|Mux5~2_combout\ & (\displayram|BBCD|Box14|Mux2~0_combout\ $ (\displayram|BBCD|Box13|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box13|Mux3~2_combout\,
	datab => \displayram|BBCD|Box14|Mux2~0_combout\,
	datac => \displayram|BBCD|Box13|Mux5~2_combout\,
	datad => \displayram|BBCD|Box13|Mux4~2_combout\,
	combout => \displayram|Hex02|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y7_N18
\displayram|Hex02|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex02|Mux5~0_combout\ = (\displayram|BBCD|Box13|Mux3~2_combout\ & ((\displayram|BBCD|Box14|Mux2~0_combout\ & (\displayram|BBCD|Box13|Mux5~2_combout\)) # (!\displayram|BBCD|Box14|Mux2~0_combout\ & ((\displayram|BBCD|Box13|Mux4~2_combout\))))) # 
-- (!\displayram|BBCD|Box13|Mux3~2_combout\ & (\displayram|BBCD|Box13|Mux4~2_combout\ & (\displayram|BBCD|Box14|Mux2~0_combout\ $ (\displayram|BBCD|Box13|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box13|Mux3~2_combout\,
	datab => \displayram|BBCD|Box14|Mux2~0_combout\,
	datac => \displayram|BBCD|Box13|Mux5~2_combout\,
	datad => \displayram|BBCD|Box13|Mux4~2_combout\,
	combout => \displayram|Hex02|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y7_N16
\displayram|Hex02|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex02|Mux4~0_combout\ = (\displayram|BBCD|Box13|Mux3~2_combout\ & (\displayram|BBCD|Box13|Mux4~2_combout\ & ((\displayram|BBCD|Box13|Mux5~2_combout\) # (!\displayram|BBCD|Box14|Mux2~0_combout\)))) # (!\displayram|BBCD|Box13|Mux3~2_combout\ & 
-- (!\displayram|BBCD|Box14|Mux2~0_combout\ & (\displayram|BBCD|Box13|Mux5~2_combout\ & !\displayram|BBCD|Box13|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box13|Mux3~2_combout\,
	datab => \displayram|BBCD|Box14|Mux2~0_combout\,
	datac => \displayram|BBCD|Box13|Mux5~2_combout\,
	datad => \displayram|BBCD|Box13|Mux4~2_combout\,
	combout => \displayram|Hex02|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y7_N10
\displayram|Hex02|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex02|Mux3~0_combout\ = (\displayram|BBCD|Box14|Mux2~0_combout\ & ((\displayram|BBCD|Box13|Mux5~2_combout\ $ (!\displayram|BBCD|Box13|Mux4~2_combout\)))) # (!\displayram|BBCD|Box14|Mux2~0_combout\ & ((\displayram|BBCD|Box13|Mux3~2_combout\ & 
-- (\displayram|BBCD|Box13|Mux5~2_combout\ & !\displayram|BBCD|Box13|Mux4~2_combout\)) # (!\displayram|BBCD|Box13|Mux3~2_combout\ & (!\displayram|BBCD|Box13|Mux5~2_combout\ & \displayram|BBCD|Box13|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box13|Mux3~2_combout\,
	datab => \displayram|BBCD|Box14|Mux2~0_combout\,
	datac => \displayram|BBCD|Box13|Mux5~2_combout\,
	datad => \displayram|BBCD|Box13|Mux4~2_combout\,
	combout => \displayram|Hex02|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y7_N12
\displayram|Hex02|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex02|Mux2~0_combout\ = (\displayram|BBCD|Box13|Mux5~2_combout\ & (!\displayram|BBCD|Box13|Mux3~2_combout\ & (\displayram|BBCD|Box14|Mux2~0_combout\))) # (!\displayram|BBCD|Box13|Mux5~2_combout\ & ((\displayram|BBCD|Box13|Mux4~2_combout\ & 
-- (!\displayram|BBCD|Box13|Mux3~2_combout\)) # (!\displayram|BBCD|Box13|Mux4~2_combout\ & ((\displayram|BBCD|Box14|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box13|Mux3~2_combout\,
	datab => \displayram|BBCD|Box14|Mux2~0_combout\,
	datac => \displayram|BBCD|Box13|Mux5~2_combout\,
	datad => \displayram|BBCD|Box13|Mux4~2_combout\,
	combout => \displayram|Hex02|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y7_N14
\displayram|Hex02|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex02|Mux1~0_combout\ = (\displayram|BBCD|Box14|Mux2~0_combout\ & (\displayram|BBCD|Box13|Mux3~2_combout\ $ (((\displayram|BBCD|Box13|Mux5~2_combout\) # (!\displayram|BBCD|Box13|Mux4~2_combout\))))) # (!\displayram|BBCD|Box14|Mux2~0_combout\ & 
-- (!\displayram|BBCD|Box13|Mux3~2_combout\ & (\displayram|BBCD|Box13|Mux5~2_combout\ & !\displayram|BBCD|Box13|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box13|Mux3~2_combout\,
	datab => \displayram|BBCD|Box14|Mux2~0_combout\,
	datac => \displayram|BBCD|Box13|Mux5~2_combout\,
	datad => \displayram|BBCD|Box13|Mux4~2_combout\,
	combout => \displayram|Hex02|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y7_N0
\displayram|Hex02|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex02|Mux0~0_combout\ = (\displayram|BBCD|Box14|Mux2~0_combout\ & ((\displayram|BBCD|Box13|Mux3~2_combout\) # (\displayram|BBCD|Box13|Mux5~2_combout\ $ (\displayram|BBCD|Box13|Mux4~2_combout\)))) # (!\displayram|BBCD|Box14|Mux2~0_combout\ & 
-- ((\displayram|BBCD|Box13|Mux5~2_combout\) # (\displayram|BBCD|Box13|Mux3~2_combout\ $ (\displayram|BBCD|Box13|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box13|Mux3~2_combout\,
	datab => \displayram|BBCD|Box14|Mux2~0_combout\,
	datac => \displayram|BBCD|Box13|Mux5~2_combout\,
	datad => \displayram|BBCD|Box13|Mux4~2_combout\,
	combout => \displayram|Hex02|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y12_N4
\displayram|BBCD|Box06|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux2~1_combout\ = (\displayram|BBCD|Box04|Mux1~0_combout\ & (\displayram|BBCD|Box02|Mux2~2_combout\)) # (!\displayram|BBCD|Box04|Mux1~0_combout\ & ((\displayram|BBCD|Box02|Mux2~2_combout\ & (!\displayram|BBCD|Box02|Mux1~0_combout\)) 
-- # (!\displayram|BBCD|Box02|Mux2~2_combout\ & (\displayram|BBCD|Box02|Mux1~0_combout\ & !\displayram|BBCD|Box04|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux1~0_combout\,
	datab => \displayram|BBCD|Box02|Mux2~2_combout\,
	datac => \displayram|BBCD|Box02|Mux1~0_combout\,
	datad => \displayram|BBCD|Box04|Mux2~2_combout\,
	combout => \displayram|BBCD|Box06|Mux2~1_combout\);

-- Location: LCCOMB_X46_Y12_N10
\displayram|BBCD|Box06|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux2~0_combout\ = (\displayram|BBCD|Box04|Mux1~0_combout\ & (\displayram|BBCD|Box02|Mux2~2_combout\ & ((\displayram|BBCD|Box04|Mux2~2_combout\) # (!\displayram|BBCD|Box02|Mux1~0_combout\)))) # 
-- (!\displayram|BBCD|Box04|Mux1~0_combout\ & ((\displayram|BBCD|Box02|Mux2~2_combout\ & (!\displayram|BBCD|Box02|Mux1~0_combout\ & \displayram|BBCD|Box04|Mux2~2_combout\)) # (!\displayram|BBCD|Box02|Mux2~2_combout\ & 
-- (\displayram|BBCD|Box02|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux1~0_combout\,
	datab => \displayram|BBCD|Box02|Mux2~2_combout\,
	datac => \displayram|BBCD|Box02|Mux1~0_combout\,
	datad => \displayram|BBCD|Box04|Mux2~2_combout\,
	combout => \displayram|BBCD|Box06|Mux2~0_combout\);

-- Location: LCCOMB_X46_Y12_N18
\displayram|BBCD|Box06|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux2~2_combout\ = (\displayram|BBCD|Box02|Mux0~9_combout\ & ((\displayram|BBCD|Box06|Mux2~0_combout\))) # (!\displayram|BBCD|Box02|Mux0~9_combout\ & (!\displayram|BBCD|Box06|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box06|Mux2~1_combout\,
	datac => \displayram|BBCD|Box02|Mux0~9_combout\,
	datad => \displayram|BBCD|Box06|Mux2~0_combout\,
	combout => \displayram|BBCD|Box06|Mux2~2_combout\);

-- Location: LCCOMB_X46_Y12_N6
\displayram|BBCD|Box06|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux0~0_combout\ = (\displayram|BBCD|Box02|Mux0~9_combout\) # ((!\displayram|BBCD|Box02|Mux1~0_combout\ & !\displayram|BBCD|Box02|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux1~0_combout\,
	datac => \displayram|BBCD|Box02|Mux0~9_combout\,
	datad => \displayram|BBCD|Box02|Mux2~2_combout\,
	combout => \displayram|BBCD|Box06|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y12_N22
\displayram|BBCD|Box06|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux4~0_combout\ = (\displayram|BBCD|Box02|Mux2~2_combout\ & (\displayram|BBCD|Box04|Mux1~0_combout\ & ((\displayram|BBCD|Box04|Mux2~2_combout\) # (!\displayram|BBCD|Box02|Mux0~9_combout\)))) # 
-- (!\displayram|BBCD|Box02|Mux2~2_combout\ & (\displayram|BBCD|Box04|Mux1~0_combout\ $ (((!\displayram|BBCD|Box02|Mux0~9_combout\ & \displayram|BBCD|Box04|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box04|Mux1~0_combout\,
	datab => \displayram|BBCD|Box02|Mux2~2_combout\,
	datac => \displayram|BBCD|Box02|Mux0~9_combout\,
	datad => \displayram|BBCD|Box04|Mux2~2_combout\,
	combout => \displayram|BBCD|Box06|Mux4~0_combout\);

-- Location: LCCOMB_X46_Y12_N2
\displayram|BBCD|Box06|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux4~2_combout\ = (\displayram|BBCD|Box02|Mux1~0_combout\ & (!\displayram|BBCD|Box06|Mux4~1_combout\)) # (!\displayram|BBCD|Box02|Mux1~0_combout\ & ((\displayram|BBCD|Box06|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux4~1_combout\,
	datac => \displayram|BBCD|Box02|Mux1~0_combout\,
	datad => \displayram|BBCD|Box06|Mux4~0_combout\,
	combout => \displayram|BBCD|Box06|Mux4~2_combout\);

-- Location: LCCOMB_X49_Y12_N24
\displayram|BBCD|Box09|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box09|Mux1~0_combout\ = (\displayram|BBCD|Box06|Mux3~2_combout\ & ((\displayram|BBCD|Box06|Mux5~2_combout\ & (\displayram|BBCD|Box07|Mux1~0_combout\ & \displayram|BBCD|Box06|Mux4~2_combout\)) # (!\displayram|BBCD|Box06|Mux5~2_combout\ & 
-- ((!\displayram|BBCD|Box06|Mux4~2_combout\))))) # (!\displayram|BBCD|Box06|Mux3~2_combout\ & (\displayram|BBCD|Box06|Mux4~2_combout\ & ((\displayram|BBCD|Box06|Mux5~2_combout\) # (\displayram|BBCD|Box07|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box06|Mux3~2_combout\,
	datab => \displayram|BBCD|Box06|Mux5~2_combout\,
	datac => \displayram|BBCD|Box07|Mux1~0_combout\,
	datad => \displayram|BBCD|Box06|Mux4~2_combout\,
	combout => \displayram|BBCD|Box09|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y12_N0
\displayram|BBCD|Box12|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box12|Mux3~0_combout\ = (\displayram|BBCD|Box09|Mux2~2_combout\ & (!\displayram|BBCD|Box09|Mux1~0_combout\ & (\displayram|BBCD|Box06|Mux2~2_combout\ $ (\displayram|BBCD|Box06|Mux0~0_combout\)))) # (!\displayram|BBCD|Box09|Mux2~2_combout\ 
-- & ((\displayram|BBCD|Box06|Mux2~2_combout\ & (\displayram|BBCD|Box06|Mux0~0_combout\ & \displayram|BBCD|Box09|Mux1~0_combout\)) # (!\displayram|BBCD|Box06|Mux2~2_combout\ & (!\displayram|BBCD|Box06|Mux0~0_combout\ & 
-- !\displayram|BBCD|Box09|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux2~2_combout\,
	datab => \displayram|BBCD|Box06|Mux2~2_combout\,
	datac => \displayram|BBCD|Box06|Mux0~0_combout\,
	datad => \displayram|BBCD|Box09|Mux1~0_combout\,
	combout => \displayram|BBCD|Box12|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y16_N8
\displayram|BBCD|Box04|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box04|Mux1~0_combout\ = (\displayram|BBCD|Box02|Mux3~2_combout\ & ((\displayram|BBCD|Box02|Mux4~2_combout\ & (\displayram|BBCD|Box03|Mux1~0_combout\ & \displayram|BBCD|Box02|Mux5~2_combout\)) # (!\displayram|BBCD|Box02|Mux4~2_combout\ & 
-- ((!\displayram|BBCD|Box02|Mux5~2_combout\))))) # (!\displayram|BBCD|Box02|Mux3~2_combout\ & (\displayram|BBCD|Box02|Mux4~2_combout\ & ((\displayram|BBCD|Box03|Mux1~0_combout\) # (\displayram|BBCD|Box02|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux3~2_combout\,
	datab => \displayram|BBCD|Box03|Mux1~0_combout\,
	datac => \displayram|BBCD|Box02|Mux4~2_combout\,
	datad => \displayram|BBCD|Box02|Mux5~2_combout\,
	combout => \displayram|BBCD|Box04|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y12_N12
\displayram|BBCD|Box06|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box06|Mux1~0_combout\ = (\displayram|BBCD|Box02|Mux1~0_combout\ & ((\displayram|BBCD|Box02|Mux2~2_combout\ & ((\displayram|BBCD|Box02|Mux0~9_combout\) # (\displayram|BBCD|Box04|Mux1~0_combout\))) # (!\displayram|BBCD|Box02|Mux2~2_combout\ 
-- & (\displayram|BBCD|Box02|Mux0~9_combout\ & \displayram|BBCD|Box04|Mux1~0_combout\)))) # (!\displayram|BBCD|Box02|Mux1~0_combout\ & (!\displayram|BBCD|Box02|Mux2~2_combout\ & (!\displayram|BBCD|Box02|Mux0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box02|Mux1~0_combout\,
	datab => \displayram|BBCD|Box02|Mux2~2_combout\,
	datac => \displayram|BBCD|Box02|Mux0~9_combout\,
	datad => \displayram|BBCD|Box04|Mux1~0_combout\,
	combout => \displayram|BBCD|Box06|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y12_N22
\displayram|BBCD|Box12|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box12|Mux3~1_combout\ = (\displayram|BBCD|Box09|Mux2~2_combout\ & (!\displayram|BBCD|Box06|Mux2~2_combout\ & (!\displayram|BBCD|Box06|Mux0~0_combout\ & \displayram|BBCD|Box09|Mux1~0_combout\))) # (!\displayram|BBCD|Box09|Mux2~2_combout\ & 
-- (\displayram|BBCD|Box06|Mux2~2_combout\ & (\displayram|BBCD|Box06|Mux0~0_combout\ & !\displayram|BBCD|Box09|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux2~2_combout\,
	datab => \displayram|BBCD|Box06|Mux2~2_combout\,
	datac => \displayram|BBCD|Box06|Mux0~0_combout\,
	datad => \displayram|BBCD|Box09|Mux1~0_combout\,
	combout => \displayram|BBCD|Box12|Mux3~1_combout\);

-- Location: LCCOMB_X50_Y12_N4
\displayram|BBCD|Box12|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box12|Mux3~2_combout\ = (\displayram|BBCD|Box06|Mux1~0_combout\ & (\displayram|BBCD|Box12|Mux3~0_combout\)) # (!\displayram|BBCD|Box06|Mux1~0_combout\ & ((\displayram|BBCD|Box12|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box12|Mux3~0_combout\,
	datac => \displayram|BBCD|Box06|Mux1~0_combout\,
	datad => \displayram|BBCD|Box12|Mux3~1_combout\,
	combout => \displayram|BBCD|Box12|Mux3~2_combout\);

-- Location: LCCOMB_X50_Y12_N26
\displayram|BBCD|Box12|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box12|Mux5~1_combout\ = (\displayram|BBCD|Box09|Mux2~2_combout\ & (((\displayram|BBCD|Box06|Mux1~0_combout\ & !\displayram|BBCD|Box09|Mux1~0_combout\)) # (!\displayram|BBCD|Box06|Mux2~2_combout\))) # 
-- (!\displayram|BBCD|Box09|Mux2~2_combout\ & (\displayram|BBCD|Box06|Mux2~2_combout\ $ (((\displayram|BBCD|Box06|Mux1~0_combout\ & !\displayram|BBCD|Box09|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux2~2_combout\,
	datab => \displayram|BBCD|Box06|Mux2~2_combout\,
	datac => \displayram|BBCD|Box06|Mux1~0_combout\,
	datad => \displayram|BBCD|Box09|Mux1~0_combout\,
	combout => \displayram|BBCD|Box12|Mux5~1_combout\);

-- Location: LCCOMB_X50_Y12_N28
\displayram|BBCD|Box12|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box12|Mux5~0_combout\ = (\displayram|BBCD|Box09|Mux2~2_combout\ & (\displayram|BBCD|Box06|Mux2~2_combout\ $ (((\displayram|BBCD|Box09|Mux1~0_combout\) # (!\displayram|BBCD|Box06|Mux1~0_combout\))))) # 
-- (!\displayram|BBCD|Box09|Mux2~2_combout\ & ((\displayram|BBCD|Box06|Mux2~2_combout\ & (!\displayram|BBCD|Box06|Mux1~0_combout\ & \displayram|BBCD|Box09|Mux1~0_combout\)) # (!\displayram|BBCD|Box06|Mux2~2_combout\ & (\displayram|BBCD|Box06|Mux1~0_combout\ 
-- & !\displayram|BBCD|Box09|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux2~2_combout\,
	datab => \displayram|BBCD|Box06|Mux2~2_combout\,
	datac => \displayram|BBCD|Box06|Mux1~0_combout\,
	datad => \displayram|BBCD|Box09|Mux1~0_combout\,
	combout => \displayram|BBCD|Box12|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y12_N24
\displayram|BBCD|Box12|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box12|Mux5~2_combout\ = (\displayram|BBCD|Box06|Mux0~0_combout\ & ((\displayram|BBCD|Box12|Mux5~0_combout\))) # (!\displayram|BBCD|Box06|Mux0~0_combout\ & (!\displayram|BBCD|Box12|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box12|Mux5~1_combout\,
	datac => \displayram|BBCD|Box06|Mux0~0_combout\,
	datad => \displayram|BBCD|Box12|Mux5~0_combout\,
	combout => \displayram|BBCD|Box12|Mux5~2_combout\);

-- Location: LCCOMB_X50_Y12_N2
\displayram|BBCD|Box12|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box12|Mux4~0_combout\ = (\displayram|BBCD|Box09|Mux2~2_combout\ & (\displayram|BBCD|Box09|Mux1~0_combout\ $ (((!\displayram|BBCD|Box06|Mux2~2_combout\ & !\displayram|BBCD|Box06|Mux0~0_combout\))))) # 
-- (!\displayram|BBCD|Box09|Mux2~2_combout\ & (\displayram|BBCD|Box09|Mux1~0_combout\ & ((!\displayram|BBCD|Box06|Mux0~0_combout\) # (!\displayram|BBCD|Box06|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux2~2_combout\,
	datab => \displayram|BBCD|Box06|Mux2~2_combout\,
	datac => \displayram|BBCD|Box06|Mux0~0_combout\,
	datad => \displayram|BBCD|Box09|Mux1~0_combout\,
	combout => \displayram|BBCD|Box12|Mux4~0_combout\);

-- Location: LCCOMB_X50_Y12_N12
\displayram|BBCD|Box12|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box12|Mux4~1_combout\ = (\displayram|BBCD|Box09|Mux2~2_combout\ & ((\displayram|BBCD|Box06|Mux2~2_combout\ & ((\displayram|BBCD|Box09|Mux1~0_combout\) # (!\displayram|BBCD|Box06|Mux0~0_combout\))) # 
-- (!\displayram|BBCD|Box06|Mux2~2_combout\ & ((\displayram|BBCD|Box06|Mux0~0_combout\) # (!\displayram|BBCD|Box09|Mux1~0_combout\))))) # (!\displayram|BBCD|Box09|Mux2~2_combout\ & ((\displayram|BBCD|Box09|Mux1~0_combout\) # 
-- ((!\displayram|BBCD|Box06|Mux2~2_combout\ & !\displayram|BBCD|Box06|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux2~2_combout\,
	datab => \displayram|BBCD|Box06|Mux2~2_combout\,
	datac => \displayram|BBCD|Box06|Mux0~0_combout\,
	datad => \displayram|BBCD|Box09|Mux1~0_combout\,
	combout => \displayram|BBCD|Box12|Mux4~1_combout\);

-- Location: LCCOMB_X50_Y12_N10
\displayram|BBCD|Box12|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box12|Mux4~2_combout\ = (\displayram|BBCD|Box06|Mux1~0_combout\ & ((!\displayram|BBCD|Box12|Mux4~1_combout\))) # (!\displayram|BBCD|Box06|Mux1~0_combout\ & (\displayram|BBCD|Box12|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayram|BBCD|Box12|Mux4~0_combout\,
	datac => \displayram|BBCD|Box06|Mux1~0_combout\,
	datad => \displayram|BBCD|Box12|Mux4~1_combout\,
	combout => \displayram|BBCD|Box12|Mux4~2_combout\);

-- Location: LCCOMB_X64_Y8_N24
\displayram|BBCD|Box15|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box15|Mux3~0_combout\ = (\displayram|BBCD|Box13|Mux1~0_combout\ & (\displayram|BBCD|Box12|Mux3~2_combout\ & (!\displayram|BBCD|Box12|Mux5~2_combout\ & !\displayram|BBCD|Box12|Mux4~2_combout\))) # (!\displayram|BBCD|Box13|Mux1~0_combout\ & 
-- (\displayram|BBCD|Box12|Mux4~2_combout\ & (\displayram|BBCD|Box12|Mux3~2_combout\ $ (!\displayram|BBCD|Box12|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box13|Mux1~0_combout\,
	datab => \displayram|BBCD|Box12|Mux3~2_combout\,
	datac => \displayram|BBCD|Box12|Mux5~2_combout\,
	datad => \displayram|BBCD|Box12|Mux4~2_combout\,
	combout => \displayram|BBCD|Box15|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y8_N26
\displayram|BBCD|Box15|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box15|Mux4~0_combout\ = (\displayram|BBCD|Box12|Mux3~2_combout\ & (!\displayram|BBCD|Box12|Mux5~2_combout\ & ((\displayram|BBCD|Box12|Mux4~2_combout\) # (!\displayram|BBCD|Box13|Mux1~0_combout\)))) # 
-- (!\displayram|BBCD|Box12|Mux3~2_combout\ & (\displayram|BBCD|Box12|Mux5~2_combout\ & ((\displayram|BBCD|Box13|Mux1~0_combout\) # (!\displayram|BBCD|Box12|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box13|Mux1~0_combout\,
	datab => \displayram|BBCD|Box12|Mux3~2_combout\,
	datac => \displayram|BBCD|Box12|Mux5~2_combout\,
	datad => \displayram|BBCD|Box12|Mux4~2_combout\,
	combout => \displayram|BBCD|Box15|Mux4~0_combout\);

-- Location: LCCOMB_X60_Y12_N24
\displayram|BBCD|Box13|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux2~1_combout\ = (\displayram|BBCD|Box09|Mux4~2_combout\ & ((\displayram|BBCD|Box10|Mux1~0_combout\ & ((\displayram|BBCD|Box09|Mux5~2_combout\))) # (!\displayram|BBCD|Box10|Mux1~0_combout\ & (!\displayram|BBCD|Box10|Mux2~2_combout\ 
-- & !\displayram|BBCD|Box09|Mux5~2_combout\)))) # (!\displayram|BBCD|Box09|Mux4~2_combout\ & (((\displayram|BBCD|Box09|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux4~2_combout\,
	datab => \displayram|BBCD|Box10|Mux2~2_combout\,
	datac => \displayram|BBCD|Box10|Mux1~0_combout\,
	datad => \displayram|BBCD|Box09|Mux5~2_combout\,
	combout => \displayram|BBCD|Box13|Mux2~1_combout\);

-- Location: LCCOMB_X60_Y12_N6
\displayram|BBCD|Box13|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux2~0_combout\ = (\displayram|BBCD|Box09|Mux4~2_combout\ & ((\displayram|BBCD|Box10|Mux1~0_combout\ & (\displayram|BBCD|Box10|Mux2~2_combout\ & \displayram|BBCD|Box09|Mux5~2_combout\)) # (!\displayram|BBCD|Box10|Mux1~0_combout\ & 
-- ((!\displayram|BBCD|Box09|Mux5~2_combout\))))) # (!\displayram|BBCD|Box09|Mux4~2_combout\ & (\displayram|BBCD|Box09|Mux5~2_combout\ & ((\displayram|BBCD|Box10|Mux2~2_combout\) # (\displayram|BBCD|Box10|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux4~2_combout\,
	datab => \displayram|BBCD|Box10|Mux2~2_combout\,
	datac => \displayram|BBCD|Box10|Mux1~0_combout\,
	datad => \displayram|BBCD|Box09|Mux5~2_combout\,
	combout => \displayram|BBCD|Box13|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y12_N26
\displayram|BBCD|Box13|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box13|Mux2~2_combout\ = (\displayram|BBCD|Box09|Mux3~2_combout\ & (!\displayram|BBCD|Box13|Mux2~1_combout\)) # (!\displayram|BBCD|Box09|Mux3~2_combout\ & ((\displayram|BBCD|Box13|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box09|Mux3~2_combout\,
	datac => \displayram|BBCD|Box13|Mux2~1_combout\,
	datad => \displayram|BBCD|Box13|Mux2~0_combout\,
	combout => \displayram|BBCD|Box13|Mux2~2_combout\);

-- Location: LCCOMB_X64_Y8_N28
\displayram|BBCD|Box15|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|BBCD|Box15|Mux5~0_combout\ = (\displayram|BBCD|Box13|Mux1~0_combout\ & (\displayram|BBCD|Box12|Mux4~2_combout\ $ (((\displayram|BBCD|Box12|Mux5~2_combout\) # (!\displayram|BBCD|Box12|Mux3~2_combout\))))) # 
-- (!\displayram|BBCD|Box13|Mux1~0_combout\ & ((\displayram|BBCD|Box12|Mux3~2_combout\ & (!\displayram|BBCD|Box12|Mux5~2_combout\ & !\displayram|BBCD|Box12|Mux4~2_combout\)) # (!\displayram|BBCD|Box12|Mux3~2_combout\ & (\displayram|BBCD|Box12|Mux5~2_combout\ 
-- & \displayram|BBCD|Box12|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box13|Mux1~0_combout\,
	datab => \displayram|BBCD|Box12|Mux3~2_combout\,
	datac => \displayram|BBCD|Box12|Mux5~2_combout\,
	datad => \displayram|BBCD|Box12|Mux4~2_combout\,
	combout => \displayram|BBCD|Box15|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y8_N22
\displayram|Hex03|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex03|Mux6~0_combout\ = (\displayram|BBCD|Box15|Mux3~0_combout\ & (\displayram|BBCD|Box13|Mux2~2_combout\ & (\displayram|BBCD|Box15|Mux4~0_combout\ $ (\displayram|BBCD|Box15|Mux5~0_combout\)))) # (!\displayram|BBCD|Box15|Mux3~0_combout\ & 
-- (!\displayram|BBCD|Box15|Mux5~0_combout\ & (\displayram|BBCD|Box15|Mux4~0_combout\ $ (\displayram|BBCD|Box13|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box15|Mux3~0_combout\,
	datab => \displayram|BBCD|Box15|Mux4~0_combout\,
	datac => \displayram|BBCD|Box13|Mux2~2_combout\,
	datad => \displayram|BBCD|Box15|Mux5~0_combout\,
	combout => \displayram|Hex03|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y8_N12
\displayram|Hex03|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex03|Mux5~0_combout\ = (\displayram|BBCD|Box15|Mux3~0_combout\ & ((\displayram|BBCD|Box13|Mux2~2_combout\ & ((\displayram|BBCD|Box15|Mux5~0_combout\))) # (!\displayram|BBCD|Box13|Mux2~2_combout\ & (\displayram|BBCD|Box15|Mux4~0_combout\)))) # 
-- (!\displayram|BBCD|Box15|Mux3~0_combout\ & (\displayram|BBCD|Box15|Mux4~0_combout\ & (\displayram|BBCD|Box13|Mux2~2_combout\ $ (\displayram|BBCD|Box15|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box15|Mux3~0_combout\,
	datab => \displayram|BBCD|Box15|Mux4~0_combout\,
	datac => \displayram|BBCD|Box13|Mux2~2_combout\,
	datad => \displayram|BBCD|Box15|Mux5~0_combout\,
	combout => \displayram|Hex03|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y8_N30
\displayram|Hex03|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex03|Mux4~0_combout\ = (\displayram|BBCD|Box15|Mux3~0_combout\ & (\displayram|BBCD|Box15|Mux4~0_combout\ & ((\displayram|BBCD|Box15|Mux5~0_combout\) # (!\displayram|BBCD|Box13|Mux2~2_combout\)))) # (!\displayram|BBCD|Box15|Mux3~0_combout\ & 
-- (!\displayram|BBCD|Box15|Mux4~0_combout\ & (!\displayram|BBCD|Box13|Mux2~2_combout\ & \displayram|BBCD|Box15|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box15|Mux3~0_combout\,
	datab => \displayram|BBCD|Box15|Mux4~0_combout\,
	datac => \displayram|BBCD|Box13|Mux2~2_combout\,
	datad => \displayram|BBCD|Box15|Mux5~0_combout\,
	combout => \displayram|Hex03|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y8_N16
\displayram|Hex03|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex03|Mux3~0_combout\ = (\displayram|BBCD|Box13|Mux2~2_combout\ & ((\displayram|BBCD|Box15|Mux4~0_combout\ $ (!\displayram|BBCD|Box15|Mux5~0_combout\)))) # (!\displayram|BBCD|Box13|Mux2~2_combout\ & ((\displayram|BBCD|Box15|Mux3~0_combout\ & 
-- (!\displayram|BBCD|Box15|Mux4~0_combout\ & \displayram|BBCD|Box15|Mux5~0_combout\)) # (!\displayram|BBCD|Box15|Mux3~0_combout\ & (\displayram|BBCD|Box15|Mux4~0_combout\ & !\displayram|BBCD|Box15|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box15|Mux3~0_combout\,
	datab => \displayram|BBCD|Box15|Mux4~0_combout\,
	datac => \displayram|BBCD|Box13|Mux2~2_combout\,
	datad => \displayram|BBCD|Box15|Mux5~0_combout\,
	combout => \displayram|Hex03|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y8_N14
\displayram|Hex03|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex03|Mux2~0_combout\ = (\displayram|BBCD|Box15|Mux5~0_combout\ & (!\displayram|BBCD|Box15|Mux3~0_combout\ & ((\displayram|BBCD|Box13|Mux2~2_combout\)))) # (!\displayram|BBCD|Box15|Mux5~0_combout\ & ((\displayram|BBCD|Box15|Mux4~0_combout\ & 
-- (!\displayram|BBCD|Box15|Mux3~0_combout\)) # (!\displayram|BBCD|Box15|Mux4~0_combout\ & ((\displayram|BBCD|Box13|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box15|Mux3~0_combout\,
	datab => \displayram|BBCD|Box15|Mux4~0_combout\,
	datac => \displayram|BBCD|Box13|Mux2~2_combout\,
	datad => \displayram|BBCD|Box15|Mux5~0_combout\,
	combout => \displayram|Hex03|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y8_N0
\displayram|Hex03|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex03|Mux1~0_combout\ = (\displayram|BBCD|Box15|Mux4~0_combout\ & (\displayram|BBCD|Box13|Mux2~2_combout\ & (\displayram|BBCD|Box15|Mux3~0_combout\ $ (\displayram|BBCD|Box15|Mux5~0_combout\)))) # (!\displayram|BBCD|Box15|Mux4~0_combout\ & 
-- (!\displayram|BBCD|Box15|Mux3~0_combout\ & ((\displayram|BBCD|Box13|Mux2~2_combout\) # (\displayram|BBCD|Box15|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box15|Mux3~0_combout\,
	datab => \displayram|BBCD|Box15|Mux4~0_combout\,
	datac => \displayram|BBCD|Box13|Mux2~2_combout\,
	datad => \displayram|BBCD|Box15|Mux5~0_combout\,
	combout => \displayram|Hex03|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y8_N10
\displayram|Hex03|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayram|Hex03|Mux0~0_combout\ = (\displayram|BBCD|Box13|Mux2~2_combout\ & ((\displayram|BBCD|Box15|Mux3~0_combout\) # (\displayram|BBCD|Box15|Mux4~0_combout\ $ (\displayram|BBCD|Box15|Mux5~0_combout\)))) # (!\displayram|BBCD|Box13|Mux2~2_combout\ & 
-- ((\displayram|BBCD|Box15|Mux5~0_combout\) # (\displayram|BBCD|Box15|Mux3~0_combout\ $ (\displayram|BBCD|Box15|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayram|BBCD|Box15|Mux3~0_combout\,
	datab => \displayram|BBCD|Box15|Mux4~0_combout\,
	datac => \displayram|BBCD|Box13|Mux2~2_combout\,
	datad => \displayram|BBCD|Box15|Mux5~0_combout\,
	combout => \displayram|Hex03|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y25_N0
\displayromaddress|BBCD|Box08|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux5~3_combout\ = (\mchn|pc|out_cont\(5) & (\mchn|pc|out_cont\(3) $ (((\mchn|pc|out_cont\(6) & !\mchn|pc|out_cont\(4)))))) # (!\mchn|pc|out_cont\(5) & (!\mchn|pc|out_cont\(3) & ((\mchn|pc|out_cont\(4)) # 
-- (!\mchn|pc|out_cont\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(5),
	datab => \mchn|pc|out_cont\(6),
	datac => \mchn|pc|out_cont\(3),
	datad => \mchn|pc|out_cont\(4),
	combout => \displayromaddress|BBCD|Box08|Mux5~3_combout\);

-- Location: LCCOMB_X16_Y25_N2
\displayromaddress|BBCD|Box08|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux5~2_combout\ = (\mchn|pc|out_cont\(5) & ((\mchn|pc|out_cont\(6) & (\mchn|pc|out_cont\(3) & !\mchn|pc|out_cont\(4))) # (!\mchn|pc|out_cont\(6) & (!\mchn|pc|out_cont\(3) & \mchn|pc|out_cont\(4))))) # (!\mchn|pc|out_cont\(5) 
-- & (\mchn|pc|out_cont\(3) $ (((\mchn|pc|out_cont\(6) & !\mchn|pc|out_cont\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(5),
	datab => \mchn|pc|out_cont\(6),
	datac => \mchn|pc|out_cont\(3),
	datad => \mchn|pc|out_cont\(4),
	combout => \displayromaddress|BBCD|Box08|Mux5~2_combout\);

-- Location: LCCOMB_X16_Y25_N6
\displayromaddress|BBCD|Box08|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux5~4_combout\ = (\mchn|pc|out_cont\(7) & (\displayromaddress|BBCD|Box08|Mux5~3_combout\)) # (!\mchn|pc|out_cont\(7) & ((\displayromaddress|BBCD|Box08|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayromaddress|BBCD|Box08|Mux5~3_combout\,
	datac => \mchn|pc|out_cont\(7),
	datad => \displayromaddress|BBCD|Box08|Mux5~2_combout\,
	combout => \displayromaddress|BBCD|Box08|Mux5~4_combout\);

-- Location: LCCOMB_X1_Y17_N14
\displayromaddress|BBCD|Box11|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux3~1_combout\ = (\displayromaddress|BBCD|Box08|Mux3~4_combout\ & (!\displayromaddress|BBCD|Box08|Mux5~4_combout\ & (\mchn|pc|out_cont\(1) & \mchn|pc|out_cont\(2)))) # (!\displayromaddress|BBCD|Box08|Mux3~4_combout\ & 
-- (\displayromaddress|BBCD|Box08|Mux5~4_combout\ & (!\mchn|pc|out_cont\(1) & !\mchn|pc|out_cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux3~4_combout\,
	datab => \displayromaddress|BBCD|Box08|Mux5~4_combout\,
	datac => \mchn|pc|out_cont\(1),
	datad => \mchn|pc|out_cont\(2),
	combout => \displayromaddress|BBCD|Box11|Mux3~1_combout\);

-- Location: LCCOMB_X1_Y25_N16
\displayromaddress|BBCD|Box08|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux4~3_combout\ = (\mchn|pc|out_cont\(4) & (\mchn|pc|out_cont\(6) $ (((\mchn|pc|out_cont\(5)) # (!\mchn|pc|out_cont\(3)))))) # (!\mchn|pc|out_cont\(4) & ((\mchn|pc|out_cont\(5) & (\mchn|pc|out_cont\(6) & 
-- !\mchn|pc|out_cont\(3))) # (!\mchn|pc|out_cont\(5) & (!\mchn|pc|out_cont\(6) & \mchn|pc|out_cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(4),
	datab => \mchn|pc|out_cont\(5),
	datac => \mchn|pc|out_cont\(6),
	datad => \mchn|pc|out_cont\(3),
	combout => \displayromaddress|BBCD|Box08|Mux4~3_combout\);

-- Location: LCCOMB_X1_Y25_N2
\displayromaddress|BBCD|Box08|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux4~4_combout\ = (\mchn|pc|out_cont\(7) & ((\displayromaddress|BBCD|Box08|Mux4~3_combout\))) # (!\mchn|pc|out_cont\(7) & (\displayromaddress|BBCD|Box08|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux4~2_combout\,
	datac => \displayromaddress|BBCD|Box08|Mux4~3_combout\,
	datad => \mchn|pc|out_cont\(7),
	combout => \displayromaddress|BBCD|Box08|Mux4~4_combout\);

-- Location: LCCOMB_X1_Y17_N12
\displayromaddress|BBCD|Box11|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux3~0_combout\ = (\displayromaddress|BBCD|Box08|Mux3~4_combout\ & (!\mchn|pc|out_cont\(2) & (\displayromaddress|BBCD|Box08|Mux5~4_combout\ $ (!\mchn|pc|out_cont\(1))))) # (!\displayromaddress|BBCD|Box08|Mux3~4_combout\ & 
-- ((\displayromaddress|BBCD|Box08|Mux5~4_combout\ & (!\mchn|pc|out_cont\(1) & \mchn|pc|out_cont\(2))) # (!\displayromaddress|BBCD|Box08|Mux5~4_combout\ & (\mchn|pc|out_cont\(1) & !\mchn|pc|out_cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux3~4_combout\,
	datab => \displayromaddress|BBCD|Box08|Mux5~4_combout\,
	datac => \mchn|pc|out_cont\(1),
	datad => \mchn|pc|out_cont\(2),
	combout => \displayromaddress|BBCD|Box11|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y17_N24
\displayromaddress|BBCD|Box11|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux3~2_combout\ = (\displayromaddress|BBCD|Box08|Mux4~4_combout\ & ((\displayromaddress|BBCD|Box11|Mux3~0_combout\))) # (!\displayromaddress|BBCD|Box08|Mux4~4_combout\ & (\displayromaddress|BBCD|Box11|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayromaddress|BBCD|Box11|Mux3~1_combout\,
	datac => \displayromaddress|BBCD|Box08|Mux4~4_combout\,
	datad => \displayromaddress|BBCD|Box11|Mux3~0_combout\,
	combout => \displayromaddress|BBCD|Box11|Mux3~2_combout\);

-- Location: LCCOMB_X1_Y17_N0
\displayromaddress|BBCD|Box11|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux4~1_combout\ = (\displayromaddress|BBCD|Box08|Mux3~4_combout\ & ((\displayromaddress|BBCD|Box08|Mux5~4_combout\ & ((\mchn|pc|out_cont\(1)) # (\mchn|pc|out_cont\(2)))) # (!\displayromaddress|BBCD|Box08|Mux5~4_combout\ & 
-- ((!\mchn|pc|out_cont\(2)) # (!\mchn|pc|out_cont\(1)))))) # (!\displayromaddress|BBCD|Box08|Mux3~4_combout\ & ((\mchn|pc|out_cont\(2)) # ((!\displayromaddress|BBCD|Box08|Mux5~4_combout\ & \mchn|pc|out_cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux3~4_combout\,
	datab => \displayromaddress|BBCD|Box08|Mux5~4_combout\,
	datac => \mchn|pc|out_cont\(1),
	datad => \mchn|pc|out_cont\(2),
	combout => \displayromaddress|BBCD|Box11|Mux4~1_combout\);

-- Location: LCCOMB_X1_Y17_N6
\displayromaddress|BBCD|Box11|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux4~0_combout\ = (\displayromaddress|BBCD|Box08|Mux3~4_combout\ & (\mchn|pc|out_cont\(2) $ (((!\displayromaddress|BBCD|Box08|Mux5~4_combout\ & \mchn|pc|out_cont\(1)))))) # (!\displayromaddress|BBCD|Box08|Mux3~4_combout\ & 
-- (\mchn|pc|out_cont\(2) & ((\mchn|pc|out_cont\(1)) # (!\displayromaddress|BBCD|Box08|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux3~4_combout\,
	datab => \displayromaddress|BBCD|Box08|Mux5~4_combout\,
	datac => \mchn|pc|out_cont\(1),
	datad => \mchn|pc|out_cont\(2),
	combout => \displayromaddress|BBCD|Box11|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y17_N26
\displayromaddress|BBCD|Box11|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux4~2_combout\ = (\displayromaddress|BBCD|Box08|Mux4~4_combout\ & (!\displayromaddress|BBCD|Box11|Mux4~1_combout\)) # (!\displayromaddress|BBCD|Box08|Mux4~4_combout\ & ((\displayromaddress|BBCD|Box11|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayromaddress|BBCD|Box11|Mux4~1_combout\,
	datac => \displayromaddress|BBCD|Box08|Mux4~4_combout\,
	datad => \displayromaddress|BBCD|Box11|Mux4~0_combout\,
	combout => \displayromaddress|BBCD|Box11|Mux4~2_combout\);

-- Location: LCCOMB_X1_Y17_N30
\displayromaddress|BBCD|Box11|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux5~1_combout\ = (\mchn|pc|out_cont\(1) & (((\displayromaddress|BBCD|Box08|Mux4~4_combout\ & !\mchn|pc|out_cont\(2))) # (!\displayromaddress|BBCD|Box08|Mux5~4_combout\))) # (!\mchn|pc|out_cont\(1) & 
-- (\displayromaddress|BBCD|Box08|Mux5~4_combout\ $ (((\displayromaddress|BBCD|Box08|Mux4~4_combout\ & !\mchn|pc|out_cont\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(1),
	datab => \displayromaddress|BBCD|Box08|Mux4~4_combout\,
	datac => \displayromaddress|BBCD|Box08|Mux5~4_combout\,
	datad => \mchn|pc|out_cont\(2),
	combout => \displayromaddress|BBCD|Box11|Mux5~1_combout\);

-- Location: LCCOMB_X1_Y17_N28
\displayromaddress|BBCD|Box11|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux5~0_combout\ = (\mchn|pc|out_cont\(1) & (\displayromaddress|BBCD|Box08|Mux5~4_combout\ $ (((\mchn|pc|out_cont\(2)) # (!\displayromaddress|BBCD|Box08|Mux4~4_combout\))))) # (!\mchn|pc|out_cont\(1) & 
-- ((\displayromaddress|BBCD|Box08|Mux4~4_combout\ & (!\displayromaddress|BBCD|Box08|Mux5~4_combout\ & !\mchn|pc|out_cont\(2))) # (!\displayromaddress|BBCD|Box08|Mux4~4_combout\ & (\displayromaddress|BBCD|Box08|Mux5~4_combout\ & \mchn|pc|out_cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(1),
	datab => \displayromaddress|BBCD|Box08|Mux4~4_combout\,
	datac => \displayromaddress|BBCD|Box08|Mux5~4_combout\,
	datad => \mchn|pc|out_cont\(2),
	combout => \displayromaddress|BBCD|Box11|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y17_N4
\displayromaddress|BBCD|Box11|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux5~2_combout\ = (\displayromaddress|BBCD|Box08|Mux3~4_combout\ & (!\displayromaddress|BBCD|Box11|Mux5~1_combout\)) # (!\displayromaddress|BBCD|Box08|Mux3~4_combout\ & ((\displayromaddress|BBCD|Box11|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux3~4_combout\,
	datab => \displayromaddress|BBCD|Box11|Mux5~1_combout\,
	datad => \displayromaddress|BBCD|Box11|Mux5~0_combout\,
	combout => \displayromaddress|BBCD|Box11|Mux5~2_combout\);

-- Location: LCCOMB_X1_Y17_N2
\displayromaddress|Hex00|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex00|Mux6~0_combout\ = (\displayromaddress|BBCD|Box11|Mux3~2_combout\ & (\mchn|pc|out_cont\(0) & (\displayromaddress|BBCD|Box11|Mux4~2_combout\ $ (\displayromaddress|BBCD|Box11|Mux5~2_combout\)))) # 
-- (!\displayromaddress|BBCD|Box11|Mux3~2_combout\ & (!\displayromaddress|BBCD|Box11|Mux5~2_combout\ & (\displayromaddress|BBCD|Box11|Mux4~2_combout\ $ (\mchn|pc|out_cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box11|Mux3~2_combout\,
	datab => \displayromaddress|BBCD|Box11|Mux4~2_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux5~2_combout\,
	datad => \mchn|pc|out_cont\(0),
	combout => \displayromaddress|Hex00|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y17_N20
\displayromaddress|Hex00|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex00|Mux5~0_combout\ = (\displayromaddress|BBCD|Box11|Mux3~2_combout\ & ((\mchn|pc|out_cont\(0) & ((\displayromaddress|BBCD|Box11|Mux5~2_combout\))) # (!\mchn|pc|out_cont\(0) & (\displayromaddress|BBCD|Box11|Mux4~2_combout\)))) # 
-- (!\displayromaddress|BBCD|Box11|Mux3~2_combout\ & (\displayromaddress|BBCD|Box11|Mux4~2_combout\ & (\displayromaddress|BBCD|Box11|Mux5~2_combout\ $ (\mchn|pc|out_cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box11|Mux3~2_combout\,
	datab => \displayromaddress|BBCD|Box11|Mux4~2_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux5~2_combout\,
	datad => \mchn|pc|out_cont\(0),
	combout => \displayromaddress|Hex00|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y17_N10
\displayromaddress|Hex00|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex00|Mux4~0_combout\ = (\displayromaddress|BBCD|Box11|Mux3~2_combout\ & (\displayromaddress|BBCD|Box11|Mux4~2_combout\ & ((\displayromaddress|BBCD|Box11|Mux5~2_combout\) # (!\mchn|pc|out_cont\(0))))) # 
-- (!\displayromaddress|BBCD|Box11|Mux3~2_combout\ & (!\displayromaddress|BBCD|Box11|Mux4~2_combout\ & (\displayromaddress|BBCD|Box11|Mux5~2_combout\ & !\mchn|pc|out_cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box11|Mux3~2_combout\,
	datab => \displayromaddress|BBCD|Box11|Mux4~2_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux5~2_combout\,
	datad => \mchn|pc|out_cont\(0),
	combout => \displayromaddress|Hex00|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y17_N16
\displayromaddress|Hex00|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex00|Mux3~0_combout\ = (\mchn|pc|out_cont\(0) & ((\displayromaddress|BBCD|Box11|Mux4~2_combout\ $ (!\displayromaddress|BBCD|Box11|Mux5~2_combout\)))) # (!\mchn|pc|out_cont\(0) & ((\displayromaddress|BBCD|Box11|Mux3~2_combout\ & 
-- (!\displayromaddress|BBCD|Box11|Mux4~2_combout\ & \displayromaddress|BBCD|Box11|Mux5~2_combout\)) # (!\displayromaddress|BBCD|Box11|Mux3~2_combout\ & (\displayromaddress|BBCD|Box11|Mux4~2_combout\ & !\displayromaddress|BBCD|Box11|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box11|Mux3~2_combout\,
	datab => \displayromaddress|BBCD|Box11|Mux4~2_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux5~2_combout\,
	datad => \mchn|pc|out_cont\(0),
	combout => \displayromaddress|Hex00|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y17_N22
\displayromaddress|Hex00|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex00|Mux2~0_combout\ = (\displayromaddress|BBCD|Box11|Mux5~2_combout\ & (!\displayromaddress|BBCD|Box11|Mux3~2_combout\ & ((\mchn|pc|out_cont\(0))))) # (!\displayromaddress|BBCD|Box11|Mux5~2_combout\ & 
-- ((\displayromaddress|BBCD|Box11|Mux4~2_combout\ & (!\displayromaddress|BBCD|Box11|Mux3~2_combout\)) # (!\displayromaddress|BBCD|Box11|Mux4~2_combout\ & ((\mchn|pc|out_cont\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box11|Mux3~2_combout\,
	datab => \displayromaddress|BBCD|Box11|Mux4~2_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux5~2_combout\,
	datad => \mchn|pc|out_cont\(0),
	combout => \displayromaddress|Hex00|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y17_N8
\displayromaddress|Hex00|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex00|Mux1~0_combout\ = (\displayromaddress|BBCD|Box11|Mux4~2_combout\ & (\mchn|pc|out_cont\(0) & (\displayromaddress|BBCD|Box11|Mux3~2_combout\ $ (\displayromaddress|BBCD|Box11|Mux5~2_combout\)))) # 
-- (!\displayromaddress|BBCD|Box11|Mux4~2_combout\ & (!\displayromaddress|BBCD|Box11|Mux3~2_combout\ & ((\displayromaddress|BBCD|Box11|Mux5~2_combout\) # (\mchn|pc|out_cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box11|Mux3~2_combout\,
	datab => \displayromaddress|BBCD|Box11|Mux4~2_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux5~2_combout\,
	datad => \mchn|pc|out_cont\(0),
	combout => \displayromaddress|Hex00|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y17_N18
\displayromaddress|Hex00|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex00|Mux0~0_combout\ = (\mchn|pc|out_cont\(0) & ((\displayromaddress|BBCD|Box11|Mux3~2_combout\) # (\displayromaddress|BBCD|Box11|Mux4~2_combout\ $ (\displayromaddress|BBCD|Box11|Mux5~2_combout\)))) # (!\mchn|pc|out_cont\(0) & 
-- ((\displayromaddress|BBCD|Box11|Mux5~2_combout\) # (\displayromaddress|BBCD|Box11|Mux3~2_combout\ $ (\displayromaddress|BBCD|Box11|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box11|Mux3~2_combout\,
	datab => \displayromaddress|BBCD|Box11|Mux4~2_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux5~2_combout\,
	datad => \mchn|pc|out_cont\(0),
	combout => \displayromaddress|Hex00|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y25_N12
\displayromaddress|BBCD|Box05|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box05|Mux2~0_combout\ = ((!\mchn|pc|out_cont\(5) & !\mchn|pc|out_cont\(6))) # (!\mchn|pc|out_cont\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(7),
	datab => \mchn|pc|out_cont\(5),
	datac => \mchn|pc|out_cont\(6),
	combout => \displayromaddress|BBCD|Box05|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y25_N30
\displayromaddress|BBCD|Box08|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux3~3_combout\ = (\mchn|pc|out_cont\(4) & (!\mchn|pc|out_cont\(5) & (!\mchn|pc|out_cont\(6) & \mchn|pc|out_cont\(3)))) # (!\mchn|pc|out_cont\(4) & (\mchn|pc|out_cont\(6) & (\mchn|pc|out_cont\(5) $ (!\mchn|pc|out_cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(4),
	datab => \mchn|pc|out_cont\(5),
	datac => \mchn|pc|out_cont\(6),
	datad => \mchn|pc|out_cont\(3),
	combout => \displayromaddress|BBCD|Box08|Mux3~3_combout\);

-- Location: LCCOMB_X1_Y25_N20
\displayromaddress|BBCD|Box08|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux3~2_combout\ = (\mchn|pc|out_cont\(5) & (!\mchn|pc|out_cont\(3) & (\mchn|pc|out_cont\(4) $ (!\mchn|pc|out_cont\(6))))) # (!\mchn|pc|out_cont\(5) & (!\mchn|pc|out_cont\(4) & (\mchn|pc|out_cont\(6) & \mchn|pc|out_cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(4),
	datab => \mchn|pc|out_cont\(5),
	datac => \mchn|pc|out_cont\(6),
	datad => \mchn|pc|out_cont\(3),
	combout => \displayromaddress|BBCD|Box08|Mux3~2_combout\);

-- Location: LCCOMB_X1_Y25_N8
\displayromaddress|BBCD|Box08|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux3~4_combout\ = (\mchn|pc|out_cont\(7) & (\displayromaddress|BBCD|Box08|Mux3~3_combout\)) # (!\mchn|pc|out_cont\(7) & ((\displayromaddress|BBCD|Box08|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayromaddress|BBCD|Box08|Mux3~3_combout\,
	datac => \displayromaddress|BBCD|Box08|Mux3~2_combout\,
	datad => \mchn|pc|out_cont\(7),
	combout => \displayromaddress|BBCD|Box08|Mux3~4_combout\);

-- Location: LCCOMB_X1_Y23_N14
\displayromaddress|BBCD|Box11|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux1~0_combout\ = (\displayromaddress|BBCD|Box08|Mux4~4_combout\ & ((\displayromaddress|BBCD|Box08|Mux3~4_combout\ & (\mchn|pc|out_cont\(2) & \displayromaddress|BBCD|Box08|Mux5~4_combout\)) # 
-- (!\displayromaddress|BBCD|Box08|Mux3~4_combout\ & ((\mchn|pc|out_cont\(2)) # (\displayromaddress|BBCD|Box08|Mux5~4_combout\))))) # (!\displayromaddress|BBCD|Box08|Mux4~4_combout\ & (\displayromaddress|BBCD|Box08|Mux3~4_combout\ & 
-- ((!\displayromaddress|BBCD|Box08|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux4~4_combout\,
	datab => \displayromaddress|BBCD|Box08|Mux3~4_combout\,
	datac => \mchn|pc|out_cont\(2),
	datad => \displayromaddress|BBCD|Box08|Mux5~4_combout\,
	combout => \displayromaddress|BBCD|Box11|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y25_N10
\displayromaddress|BBCD|Box08|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux1~0_combout\ = (\mchn|pc|out_cont\(5) & (\mchn|pc|out_cont\(6) & ((\mchn|pc|out_cont\(4)) # (!\mchn|pc|out_cont\(7))))) # (!\mchn|pc|out_cont\(5) & ((\mchn|pc|out_cont\(6) & (\mchn|pc|out_cont\(4) & 
-- !\mchn|pc|out_cont\(7))) # (!\mchn|pc|out_cont\(6) & ((\mchn|pc|out_cont\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(4),
	datab => \mchn|pc|out_cont\(5),
	datac => \mchn|pc|out_cont\(6),
	datad => \mchn|pc|out_cont\(7),
	combout => \displayromaddress|BBCD|Box08|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y23_N6
\displayromaddress|BBCD|Box14|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box14|Mux5~0_combout\ = (\displayromaddress|BBCD|Box11|Mux1~0_combout\ & (\displayromaddress|BBCD|Box08|Mux1~0_combout\ $ (((\displayromaddress|BBCD|Box08|Mux2~2_combout\) # (\displayromaddress|BBCD|Box05|Mux2~0_combout\))))) # 
-- (!\displayromaddress|BBCD|Box11|Mux1~0_combout\ & ((\displayromaddress|BBCD|Box08|Mux2~2_combout\ & (\displayromaddress|BBCD|Box05|Mux2~0_combout\ & \displayromaddress|BBCD|Box08|Mux1~0_combout\)) # (!\displayromaddress|BBCD|Box08|Mux2~2_combout\ & 
-- (!\displayromaddress|BBCD|Box05|Mux2~0_combout\ & !\displayromaddress|BBCD|Box08|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux2~2_combout\,
	datab => \displayromaddress|BBCD|Box05|Mux2~0_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux1~0_combout\,
	datad => \displayromaddress|BBCD|Box08|Mux1~0_combout\,
	combout => \displayromaddress|BBCD|Box14|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y23_N8
\displayromaddress|BBCD|Box14|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box14|Mux4~0_combout\ = (\displayromaddress|BBCD|Box08|Mux2~2_combout\ & (\displayromaddress|BBCD|Box05|Mux2~0_combout\ & ((\displayromaddress|BBCD|Box11|Mux1~0_combout\) # (!\displayromaddress|BBCD|Box08|Mux1~0_combout\)))) # 
-- (!\displayromaddress|BBCD|Box08|Mux2~2_combout\ & (!\displayromaddress|BBCD|Box05|Mux2~0_combout\ & ((\displayromaddress|BBCD|Box08|Mux1~0_combout\) # (!\displayromaddress|BBCD|Box11|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux2~2_combout\,
	datab => \displayromaddress|BBCD|Box05|Mux2~0_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux1~0_combout\,
	datad => \displayromaddress|BBCD|Box08|Mux1~0_combout\,
	combout => \displayromaddress|BBCD|Box14|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y23_N18
\displayromaddress|BBCD|Box11|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux2~1_combout\ = (\displayromaddress|BBCD|Box08|Mux4~4_combout\ & ((\mchn|pc|out_cont\(2) & ((\displayromaddress|BBCD|Box08|Mux5~4_combout\))) # (!\mchn|pc|out_cont\(2) & (!\mchn|pc|out_cont\(1) & 
-- !\displayromaddress|BBCD|Box08|Mux5~4_combout\)))) # (!\displayromaddress|BBCD|Box08|Mux4~4_combout\ & (((\displayromaddress|BBCD|Box08|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux4~4_combout\,
	datab => \mchn|pc|out_cont\(1),
	datac => \mchn|pc|out_cont\(2),
	datad => \displayromaddress|BBCD|Box08|Mux5~4_combout\,
	combout => \displayromaddress|BBCD|Box11|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y23_N24
\displayromaddress|BBCD|Box11|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux2~0_combout\ = (\displayromaddress|BBCD|Box08|Mux4~4_combout\ & ((\mchn|pc|out_cont\(2) & (\mchn|pc|out_cont\(1) & \displayromaddress|BBCD|Box08|Mux5~4_combout\)) # (!\mchn|pc|out_cont\(2) & 
-- ((!\displayromaddress|BBCD|Box08|Mux5~4_combout\))))) # (!\displayromaddress|BBCD|Box08|Mux4~4_combout\ & (\displayromaddress|BBCD|Box08|Mux5~4_combout\ & ((\mchn|pc|out_cont\(1)) # (\mchn|pc|out_cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux4~4_combout\,
	datab => \mchn|pc|out_cont\(1),
	datac => \mchn|pc|out_cont\(2),
	datad => \displayromaddress|BBCD|Box08|Mux5~4_combout\,
	combout => \displayromaddress|BBCD|Box11|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y23_N4
\displayromaddress|BBCD|Box11|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box11|Mux2~2_combout\ = (\displayromaddress|BBCD|Box08|Mux3~4_combout\ & (!\displayromaddress|BBCD|Box11|Mux2~1_combout\)) # (!\displayromaddress|BBCD|Box08|Mux3~4_combout\ & ((\displayromaddress|BBCD|Box11|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayromaddress|BBCD|Box11|Mux2~1_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux2~0_combout\,
	datad => \displayromaddress|BBCD|Box08|Mux3~4_combout\,
	combout => \displayromaddress|BBCD|Box11|Mux2~2_combout\);

-- Location: LCCOMB_X1_Y23_N10
\displayromaddress|BBCD|Box14|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box14|Mux3~0_combout\ = (\displayromaddress|BBCD|Box11|Mux1~0_combout\ & (!\displayromaddress|BBCD|Box08|Mux2~2_combout\ & (!\displayromaddress|BBCD|Box05|Mux2~0_combout\ & !\displayromaddress|BBCD|Box08|Mux1~0_combout\))) # 
-- (!\displayromaddress|BBCD|Box11|Mux1~0_combout\ & (\displayromaddress|BBCD|Box08|Mux1~0_combout\ & (\displayromaddress|BBCD|Box08|Mux2~2_combout\ $ (\displayromaddress|BBCD|Box05|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux2~2_combout\,
	datab => \displayromaddress|BBCD|Box05|Mux2~0_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux1~0_combout\,
	datad => \displayromaddress|BBCD|Box08|Mux1~0_combout\,
	combout => \displayromaddress|BBCD|Box14|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y23_N16
\displayromaddress|Hex01|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex01|Mux6~0_combout\ = (\displayromaddress|BBCD|Box14|Mux4~0_combout\ & (!\displayromaddress|BBCD|Box14|Mux5~0_combout\ & (\displayromaddress|BBCD|Box11|Mux2~2_combout\ $ (!\displayromaddress|BBCD|Box14|Mux3~0_combout\)))) # 
-- (!\displayromaddress|BBCD|Box14|Mux4~0_combout\ & (\displayromaddress|BBCD|Box11|Mux2~2_combout\ & (\displayromaddress|BBCD|Box14|Mux5~0_combout\ $ (!\displayromaddress|BBCD|Box14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box14|Mux5~0_combout\,
	datab => \displayromaddress|BBCD|Box14|Mux4~0_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux2~2_combout\,
	datad => \displayromaddress|BBCD|Box14|Mux3~0_combout\,
	combout => \displayromaddress|Hex01|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\displayromaddress|Hex01|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex01|Mux5~0_combout\ = (\displayromaddress|BBCD|Box14|Mux5~0_combout\ & ((\displayromaddress|BBCD|Box11|Mux2~2_combout\ & ((\displayromaddress|BBCD|Box14|Mux3~0_combout\))) # (!\displayromaddress|BBCD|Box11|Mux2~2_combout\ & 
-- (\displayromaddress|BBCD|Box14|Mux4~0_combout\)))) # (!\displayromaddress|BBCD|Box14|Mux5~0_combout\ & (\displayromaddress|BBCD|Box14|Mux4~0_combout\ & (\displayromaddress|BBCD|Box11|Mux2~2_combout\ $ (\displayromaddress|BBCD|Box14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box14|Mux5~0_combout\,
	datab => \displayromaddress|BBCD|Box14|Mux4~0_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux2~2_combout\,
	datad => \displayromaddress|BBCD|Box14|Mux3~0_combout\,
	combout => \displayromaddress|Hex01|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y23_N12
\displayromaddress|Hex01|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex01|Mux4~0_combout\ = (\displayromaddress|BBCD|Box14|Mux4~0_combout\ & (\displayromaddress|BBCD|Box14|Mux3~0_combout\ & ((\displayromaddress|BBCD|Box14|Mux5~0_combout\) # (!\displayromaddress|BBCD|Box11|Mux2~2_combout\)))) # 
-- (!\displayromaddress|BBCD|Box14|Mux4~0_combout\ & (\displayromaddress|BBCD|Box14|Mux5~0_combout\ & (!\displayromaddress|BBCD|Box11|Mux2~2_combout\ & !\displayromaddress|BBCD|Box14|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box14|Mux5~0_combout\,
	datab => \displayromaddress|BBCD|Box14|Mux4~0_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux2~2_combout\,
	datad => \displayromaddress|BBCD|Box14|Mux3~0_combout\,
	combout => \displayromaddress|Hex01|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y23_N2
\displayromaddress|Hex01|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex01|Mux3~0_combout\ = (\displayromaddress|BBCD|Box11|Mux2~2_combout\ & (\displayromaddress|BBCD|Box14|Mux5~0_combout\ $ ((!\displayromaddress|BBCD|Box14|Mux4~0_combout\)))) # (!\displayromaddress|BBCD|Box11|Mux2~2_combout\ & 
-- ((\displayromaddress|BBCD|Box14|Mux5~0_combout\ & (!\displayromaddress|BBCD|Box14|Mux4~0_combout\ & \displayromaddress|BBCD|Box14|Mux3~0_combout\)) # (!\displayromaddress|BBCD|Box14|Mux5~0_combout\ & (\displayromaddress|BBCD|Box14|Mux4~0_combout\ & 
-- !\displayromaddress|BBCD|Box14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box14|Mux5~0_combout\,
	datab => \displayromaddress|BBCD|Box14|Mux4~0_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux2~2_combout\,
	datad => \displayromaddress|BBCD|Box14|Mux3~0_combout\,
	combout => \displayromaddress|Hex01|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\displayromaddress|Hex01|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex01|Mux2~0_combout\ = (\displayromaddress|BBCD|Box14|Mux5~0_combout\ & (((\displayromaddress|BBCD|Box11|Mux2~2_combout\ & !\displayromaddress|BBCD|Box14|Mux3~0_combout\)))) # (!\displayromaddress|BBCD|Box14|Mux5~0_combout\ & 
-- ((\displayromaddress|BBCD|Box14|Mux4~0_combout\ & ((!\displayromaddress|BBCD|Box14|Mux3~0_combout\))) # (!\displayromaddress|BBCD|Box14|Mux4~0_combout\ & (\displayromaddress|BBCD|Box11|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box14|Mux5~0_combout\,
	datab => \displayromaddress|BBCD|Box14|Mux4~0_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux2~2_combout\,
	datad => \displayromaddress|BBCD|Box14|Mux3~0_combout\,
	combout => \displayromaddress|Hex01|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\displayromaddress|Hex01|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex01|Mux1~0_combout\ = (\displayromaddress|BBCD|Box14|Mux5~0_combout\ & (!\displayromaddress|BBCD|Box14|Mux3~0_combout\ & ((\displayromaddress|BBCD|Box11|Mux2~2_combout\) # (!\displayromaddress|BBCD|Box14|Mux4~0_combout\)))) # 
-- (!\displayromaddress|BBCD|Box14|Mux5~0_combout\ & (\displayromaddress|BBCD|Box11|Mux2~2_combout\ & (\displayromaddress|BBCD|Box14|Mux4~0_combout\ $ (!\displayromaddress|BBCD|Box14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box14|Mux5~0_combout\,
	datab => \displayromaddress|BBCD|Box14|Mux4~0_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux2~2_combout\,
	datad => \displayromaddress|BBCD|Box14|Mux3~0_combout\,
	combout => \displayromaddress|Hex01|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y23_N28
\displayromaddress|Hex01|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex01|Mux0~0_combout\ = (\displayromaddress|BBCD|Box11|Mux2~2_combout\ & ((\displayromaddress|BBCD|Box14|Mux3~0_combout\) # (\displayromaddress|BBCD|Box14|Mux5~0_combout\ $ (\displayromaddress|BBCD|Box14|Mux4~0_combout\)))) # 
-- (!\displayromaddress|BBCD|Box11|Mux2~2_combout\ & ((\displayromaddress|BBCD|Box14|Mux5~0_combout\) # (\displayromaddress|BBCD|Box14|Mux4~0_combout\ $ (\displayromaddress|BBCD|Box14|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box14|Mux5~0_combout\,
	datab => \displayromaddress|BBCD|Box14|Mux4~0_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux2~2_combout\,
	datad => \displayromaddress|BBCD|Box14|Mux3~0_combout\,
	combout => \displayromaddress|Hex01|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y25_N0
\displayromaddress|BBCD|Box05|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box05|Mux3~0_combout\ = (\mchn|pc|out_cont\(7) & (!\mchn|pc|out_cont\(5) & !\mchn|pc|out_cont\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(7),
	datab => \mchn|pc|out_cont\(5),
	datac => \mchn|pc|out_cont\(6),
	combout => \displayromaddress|BBCD|Box05|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y25_N4
\displayromaddress|BBCD|Box05|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box05|Mux5~0_combout\ = (\mchn|pc|out_cont\(7) & (!\mchn|pc|out_cont\(5) & \mchn|pc|out_cont\(6))) # (!\mchn|pc|out_cont\(7) & (\mchn|pc|out_cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(7),
	datab => \mchn|pc|out_cont\(5),
	datac => \mchn|pc|out_cont\(6),
	combout => \displayromaddress|BBCD|Box05|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y25_N14
\displayromaddress|BBCD|Box05|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box05|Mux4~0_combout\ = ((\mchn|pc|out_cont\(7) & !\mchn|pc|out_cont\(5))) # (!\mchn|pc|out_cont\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(7),
	datab => \mchn|pc|out_cont\(5),
	datac => \mchn|pc|out_cont\(6),
	combout => \displayromaddress|BBCD|Box05|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y25_N24
\displayromaddress|BBCD|Box08|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux2~1_combout\ = (\mchn|pc|out_cont\(4) & (\displayromaddress|BBCD|Box05|Mux5~0_combout\)) # (!\mchn|pc|out_cont\(4) & ((\displayromaddress|BBCD|Box05|Mux5~0_combout\ & (\displayromaddress|BBCD|Box05|Mux4~0_combout\)) # 
-- (!\displayromaddress|BBCD|Box05|Mux5~0_combout\ & (!\displayromaddress|BBCD|Box05|Mux4~0_combout\ & !\mchn|pc|out_cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(4),
	datab => \displayromaddress|BBCD|Box05|Mux5~0_combout\,
	datac => \displayromaddress|BBCD|Box05|Mux4~0_combout\,
	datad => \mchn|pc|out_cont\(3),
	combout => \displayromaddress|BBCD|Box08|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y25_N6
\displayromaddress|BBCD|Box08|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux2~0_combout\ = (\mchn|pc|out_cont\(4) & (\displayromaddress|BBCD|Box05|Mux5~0_combout\ & ((\displayromaddress|BBCD|Box05|Mux4~0_combout\) # (\mchn|pc|out_cont\(3))))) # (!\mchn|pc|out_cont\(4) & 
-- ((\displayromaddress|BBCD|Box05|Mux5~0_combout\ & (\displayromaddress|BBCD|Box05|Mux4~0_combout\ & \mchn|pc|out_cont\(3))) # (!\displayromaddress|BBCD|Box05|Mux5~0_combout\ & (!\displayromaddress|BBCD|Box05|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(4),
	datab => \displayromaddress|BBCD|Box05|Mux5~0_combout\,
	datac => \displayromaddress|BBCD|Box05|Mux4~0_combout\,
	datad => \mchn|pc|out_cont\(3),
	combout => \displayromaddress|BBCD|Box08|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y25_N22
\displayromaddress|BBCD|Box08|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box08|Mux2~2_combout\ = (\displayromaddress|BBCD|Box05|Mux3~0_combout\ & (!\displayromaddress|BBCD|Box08|Mux2~1_combout\)) # (!\displayromaddress|BBCD|Box05|Mux3~0_combout\ & ((\displayromaddress|BBCD|Box08|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displayromaddress|BBCD|Box05|Mux3~0_combout\,
	datac => \displayromaddress|BBCD|Box08|Mux2~1_combout\,
	datad => \displayromaddress|BBCD|Box08|Mux2~0_combout\,
	combout => \displayromaddress|BBCD|Box08|Mux2~2_combout\);

-- Location: LCCOMB_X1_Y23_N0
\displayromaddress|Hex02|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex02|Mux6~4_combout\ = (\displayromaddress|BBCD|Box05|Mux2~0_combout\ & (((!\displayromaddress|BBCD|Box08|Mux2~2_combout\ & !\displayromaddress|BBCD|Box11|Mux1~0_combout\)) # (!\displayromaddress|BBCD|Box08|Mux1~0_combout\))) # 
-- (!\displayromaddress|BBCD|Box05|Mux2~0_combout\ & ((\displayromaddress|BBCD|Box08|Mux2~2_combout\) # ((\displayromaddress|BBCD|Box08|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux2~2_combout\,
	datab => \displayromaddress|BBCD|Box05|Mux2~0_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux1~0_combout\,
	datad => \displayromaddress|BBCD|Box08|Mux1~0_combout\,
	combout => \displayromaddress|Hex02|Mux6~4_combout\);

-- Location: LCCOMB_X1_Y25_N18
\displayromaddress|Hex02|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex02|Mux4~7_combout\ = (!\mchn|pc|out_cont\(4) & !\mchn|pc|out_cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|pc|out_cont\(4),
	datad => \mchn|pc|out_cont\(3),
	combout => \displayromaddress|Hex02|Mux4~7_combout\);

-- Location: LCCOMB_X1_Y25_N28
\displayromaddress|Hex02|Mux4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex02|Mux4~13_combout\ = (((\displayromaddress|Hex02|Mux4~7_combout\ & !\mchn|pc|out_cont\(5))) # (!\mchn|pc|out_cont\(7))) # (!\mchn|pc|out_cont\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(6),
	datab => \displayromaddress|Hex02|Mux4~7_combout\,
	datac => \mchn|pc|out_cont\(5),
	datad => \mchn|pc|out_cont\(7),
	combout => \displayromaddress|Hex02|Mux4~13_combout\);

-- Location: LCCOMB_X1_Y23_N30
\displayromaddress|BBCD|Box14|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|BBCD|Box14|Mux2~0_combout\ = (\displayromaddress|BBCD|Box08|Mux2~2_combout\ & (\displayromaddress|BBCD|Box08|Mux1~0_combout\ & ((\displayromaddress|BBCD|Box05|Mux2~0_combout\) # (\displayromaddress|BBCD|Box11|Mux1~0_combout\)))) # 
-- (!\displayromaddress|BBCD|Box08|Mux2~2_combout\ & ((\displayromaddress|BBCD|Box05|Mux2~0_combout\ & (\displayromaddress|BBCD|Box11|Mux1~0_combout\ & \displayromaddress|BBCD|Box08|Mux1~0_combout\)) # (!\displayromaddress|BBCD|Box05|Mux2~0_combout\ & 
-- ((!\displayromaddress|BBCD|Box08|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displayromaddress|BBCD|Box08|Mux2~2_combout\,
	datab => \displayromaddress|BBCD|Box05|Mux2~0_combout\,
	datac => \displayromaddress|BBCD|Box11|Mux1~0_combout\,
	datad => \displayromaddress|BBCD|Box08|Mux1~0_combout\,
	combout => \displayromaddress|BBCD|Box14|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y25_N10
\displayromaddress|Hex02|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex02|Mux1~7_combout\ = (\mchn|pc|out_cont\(4)) # ((\mchn|pc|out_cont\(3)) # (\mchn|pc|out_cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mchn|pc|out_cont\(4),
	datac => \mchn|pc|out_cont\(3),
	datad => \mchn|pc|out_cont\(2),
	combout => \displayromaddress|Hex02|Mux1~7_combout\);

-- Location: LCCOMB_X1_Y25_N26
\displayromaddress|Hex02|Mux1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \displayromaddress|Hex02|Mux1~16_combout\ = (\mchn|pc|out_cont\(7)) # ((\mchn|pc|out_cont\(6) & (\mchn|pc|out_cont\(5) & \displayromaddress|Hex02|Mux1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|pc|out_cont\(6),
	datab => \mchn|pc|out_cont\(5),
	datac => \displayromaddress|Hex02|Mux1~7_combout\,
	datad => \mchn|pc|out_cont\(7),
	combout => \displayromaddress|Hex02|Mux1~16_combout\);

-- Location: LCCOMB_X32_Y27_N4
\mchn|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|WideOr0~combout\ = (\mchn|estado.load~regout\) # (\mchn|estado.add~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mchn|estado.load~regout\,
	datad => \mchn|estado.add~regout\,
	combout => \mchn|WideOr0~combout\);

-- Location: LCCOMB_X30_Y27_N0
\mchn|WideOr2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mchn|WideOr2~combout\ = (\mchn|estado.decode~regout\) # ((\mchn|estado.load~regout\) # (\mchn|estado.fetch~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.decode~regout\,
	datab => \mchn|estado.load~regout\,
	datad => \mchn|estado.fetch~regout\,
	combout => \mchn|WideOr2~combout\);

-- Location: LCCOMB_X30_Y27_N6
\stdsp|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stdsp|Mux6~0_combout\ = (\mchn|WideOr2~combout\ & (\mchn|WideOr0~combout\ $ (((\mchn|estado.decode~regout\) # (\mchn|estado.store~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|WideOr0~combout\,
	datab => \mchn|WideOr2~combout\,
	datac => \mchn|estado.decode~regout\,
	datad => \mchn|estado.store~regout\,
	combout => \stdsp|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y27_N20
\stdsp|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stdsp|Mux5~0_combout\ = (!\mchn|estado.decode~regout\ & (\mchn|estado.store~regout\ $ (((\mchn|estado.load~regout\) # (\mchn|estado.fetch~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.decode~regout\,
	datab => \mchn|estado.load~regout\,
	datac => \mchn|estado.store~regout\,
	datad => \mchn|estado.fetch~regout\,
	combout => \stdsp|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y27_N14
\stdsp|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stdsp|Mux4~0_combout\ = (!\mchn|WideOr0~combout\ & (\mchn|WideOr2~combout\ $ (((\mchn|estado.decode~regout\) # (\mchn|estado.store~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|WideOr0~combout\,
	datab => \mchn|WideOr2~combout\,
	datac => \mchn|estado.decode~regout\,
	datad => \mchn|estado.store~regout\,
	combout => \stdsp|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y27_N12
\stdsp|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stdsp|Mux3~0_combout\ = (\mchn|WideOr0~combout\ & (\mchn|WideOr2~combout\ $ (((!\mchn|estado.decode~regout\ & !\mchn|estado.store~regout\))))) # (!\mchn|WideOr0~combout\ & (\mchn|WideOr2~combout\ & (!\mchn|estado.decode~regout\ & 
-- !\mchn|estado.store~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|WideOr0~combout\,
	datab => \mchn|WideOr2~combout\,
	datac => \mchn|estado.decode~regout\,
	datad => \mchn|estado.store~regout\,
	combout => \stdsp|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y27_N22
\stdsp|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stdsp|Mux1~0_combout\ = (!\mchn|WideOr0~combout\ & (\mchn|WideOr2~combout\ & ((\mchn|estado.decode~regout\) # (\mchn|estado.store~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|WideOr0~combout\,
	datab => \mchn|WideOr2~combout\,
	datac => \mchn|estado.decode~regout\,
	datad => \mchn|estado.store~regout\,
	combout => \stdsp|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y31_N18
\stdsp|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stdsp|Mux0~0_combout\ = (\mchn|estado.decode~regout\) # ((\mchn|estado.add~regout\) # ((\mchn|estado.load~regout\) # (\mchn|estado.fetch~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mchn|estado.decode~regout\,
	datab => \mchn|estado.add~regout\,
	datac => \mchn|estado.load~regout\,
	datad => \mchn|estado.fetch~regout\,
	combout => \stdsp|Mux0~0_combout\);

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \clk_to_machine~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \clk50|clock_signal~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex00|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex00|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex00|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex00|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex00|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex00|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex00|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex01|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex01|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex01|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex01|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex01|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex01|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex01|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex02|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex02|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex02|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex02|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex02|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex02|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex02|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex03|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex03|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex03|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex03|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex03|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex03|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayram|Hex03|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex00|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex00|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex00|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex00|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex00|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex00|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex00|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex01|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex01|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex01|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex01|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex01|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex01|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex01|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex5(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex02|ALT_INV_Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex02|ALT_INV_Mux4~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex02|ALT_INV_Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|BBCD|Box14|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex02|Mux1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex6[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \displayromaddress|Hex02|Mux4~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stdsp|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stdsp|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stdsp|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stdsp|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stdsp|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Hex7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \stdsp|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Hex7(6));
END structure;


