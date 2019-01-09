-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "11/24/2018 19:39:37"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE project_data_type IS

TYPE SEVEN_SEGMENT_N_O_6_0_type IS ARRAY (6 DOWNTO 0) OF std_logic;
TYPE SEVEN_SEGMENT_N_O_6_0_7_0_type IS ARRAY (7 DOWNTO 0) OF SEVEN_SEGMENT_N_O_6_0_type;
SUBTYPE SEVEN_SEGMENT_N_O_type IS SEVEN_SEGMENT_N_O_6_0_7_0_type;

END project_data_type;

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY WORK;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.PROJECT_DATA_TYPE.ALL;

ENTITY 	project IS
    PORT (
	CLOCK_50_I : IN std_logic;
	PUSH_BUTTON_I : IN std_logic_vector(3 DOWNTO 0);
	SWITCH_I : IN std_logic_vector(17 DOWNTO 0);
	SEVEN_SEGMENT_N_O : OUT SEVEN_SEGMENT_N_O_type;
	LED_GREEN_O : OUT std_logic_vector(8 DOWNTO 0);
	VGA_CLOCK_O : OUT std_logic;
	VGA_HSYNC_O : OUT std_logic;
	VGA_VSYNC_O : OUT std_logic;
	VGA_BLANK_O : OUT std_logic;
	VGA_SYNC_O : OUT std_logic;
	VGA_RED_O : OUT std_logic_vector(9 DOWNTO 0);
	VGA_GREEN_O : OUT std_logic_vector(9 DOWNTO 0);
	VGA_BLUE_O : OUT std_logic_vector(9 DOWNTO 0);
	SRAM_DATA_IO : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_ADDRESS_O : OUT std_logic_vector(17 DOWNTO 0);
	SRAM_UB_N_O : OUT std_logic;
	SRAM_LB_N_O : OUT std_logic;
	SRAM_WE_N_O : OUT std_logic;
	SRAM_CE_N_O : OUT std_logic;
	SRAM_OE_N_O : OUT std_logic;
	UART_RX_I : IN std_logic;
	UART_TX_O : OUT std_logic
	);
END project;

-- Design Ports Information
-- SRAM_DATA_IO[0]	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[1]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[2]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[3]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[4]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[5]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[6]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[7]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[8]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[9]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[10]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[11]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[12]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[13]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[14]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DATA_IO[15]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PUSH_BUTTON_I[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SEVEN_SEGMENT_N_O[0][0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLOCK_O	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_HSYNC_O	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VSYNC_O	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLANK_O	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_SYNC_O	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[6]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_RED_O[9]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[8]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_GREEN_O[9]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[8]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLUE_O[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[0]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[1]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[2]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[3]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[4]	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[5]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[6]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[7]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[8]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[9]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[10]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[11]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[12]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[13]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[14]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[15]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[16]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDRESS_O[17]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_UB_N_O	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_LB_N_O	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WE_N_O	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_CE_N_O	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_OE_N_O	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_TX_O	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50_I	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RX_I	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default

ARCHITECTURE structure OF project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50_I : std_logic;
SIGNAL ww_PUSH_BUTTON_I : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SWITCH_I : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SEVEN_SEGMENT_N_O : SEVEN_SEGMENT_N_O_type;
SIGNAL ww_LED_GREEN_O : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_VGA_CLOCK_O : std_logic;
SIGNAL ww_VGA_HSYNC_O : std_logic;
SIGNAL ww_VGA_VSYNC_O : std_logic;
SIGNAL ww_VGA_BLANK_O : std_logic;
SIGNAL ww_VGA_SYNC_O : std_logic;
SIGNAL ww_VGA_RED_O : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_GREEN_O : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_BLUE_O : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SRAM_ADDRESS_O : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SRAM_UB_N_O : std_logic;
SIGNAL ww_SRAM_LB_N_O : std_logic;
SIGNAL ww_SRAM_WE_N_O : std_logic;
SIGNAL ww_SRAM_CE_N_O : std_logic;
SIGNAL ww_SRAM_OE_N_O : std_logic;
SIGNAL ww_UART_RX_I : std_logic;
SIGNAL ww_UART_TX_O : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \resetn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50_I~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_unit|Add0~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~16_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~8_combout\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \VGA_unit|Add0~6_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~8_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~10_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~12_combout\ : std_logic;
SIGNAL \UART_unit|Add1~21_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~14_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~16_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~26_combout\ : std_logic;
SIGNAL \UART_unit|Add1~30_combout\ : std_logic;
SIGNAL \UART_unit|Add1~36_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~38_combout\ : std_logic;
SIGNAL \UART_unit|Add1~39_combout\ : std_logic;
SIGNAL \UART_unit|Add1~42_combout\ : std_logic;
SIGNAL \UART_unit|UART_rx_enable~regout\ : std_logic;
SIGNAL \M1_unit|Uaddr[1]~20_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[3]~24_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[3]~21_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[3]~21_combout\ : std_logic;
SIGNAL \UART_timer[0]~26_combout\ : std_logic;
SIGNAL \UART_timer[2]~30_combout\ : std_logic;
SIGNAL \UART_timer[3]~32_combout\ : std_logic;
SIGNAL \UART_timer[5]~36_combout\ : std_logic;
SIGNAL \UART_timer[7]~40_combout\ : std_logic;
SIGNAL \UART_timer[9]~44_combout\ : std_logic;
SIGNAL \UART_timer[16]~58_combout\ : std_logic;
SIGNAL \UART_timer[21]~68_combout\ : std_logic;
SIGNAL \UART_unit|UART_rx_unload_data~regout\ : std_logic;
SIGNAL \M1_unit|Uaddr[5]~28_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[12]~39_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[12]~42_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[12]~39_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[14]~47\ : std_logic;
SIGNAL \M1_unit|Yaddr[15]~45_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[15]~49\ : std_logic;
SIGNAL \M1_unit|Uaddr[15]~48_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[15]~45_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[16]~51\ : std_logic;
SIGNAL \M1_unit|Uaddr[16]~50_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[17]~52_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[2]~17_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[4]~21_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[6]~25_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[3]~22_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[5]~26_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[8]~32_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[10]~36_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[12]~40_combout\ : std_logic;
SIGNAL \SRAM_address[10]~14_combout\ : std_logic;
SIGNAL \M1_unit|state~12_regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \always0~3_combout\ : std_logic;
SIGNAL \always0~4_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~2_combout\ : std_logic;
SIGNAL \UART_rx_enable~regout\ : std_logic;
SIGNAL \M1_unit|Selector15~0_combout\ : std_logic;
SIGNAL \UART_unit|Add1~23_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~28_combout\ : std_logic;
SIGNAL \M1_unit|Selector13~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector12~0_combout\ : std_logic;
SIGNAL \UART_unit|Add1~32_combout\ : std_logic;
SIGNAL \M1_unit|Selector11~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector10~0_combout\ : std_logic;
SIGNAL \M1_unit|Selector8~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Equal2~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan7~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan4~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan2~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~20_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~27_combout\ : std_logic;
SIGNAL \VGA_unit|LessThan2~0_combout\ : std_logic;
SIGNAL \M1_unit|WideOr5~0_combout\ : std_logic;
SIGNAL \M1_unit|state~16_combout\ : std_logic;
SIGNAL \PB_unit|WideOr0~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~17_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~18_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~19_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|always0~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector3~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RXC_state~12_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector3~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_IDLE~0_combout\ : std_logic;
SIGNAL \UART_unit|Selector7~1_combout\ : std_logic;
SIGNAL \UART_unit|Selector7~2_combout\ : std_logic;
SIGNAL \VGA_unit|always0~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][8]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][0]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][9]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][1]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~8_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][10]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][2]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~11_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~13_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][12]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][4]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~17_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~18_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~19_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][14]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][6]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~23_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~24_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~25_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][0]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][8]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][1]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][9]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][2]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][10]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~9_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][3]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][11]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][4]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][12]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~15_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~17_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][5]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][13]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~18_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][7]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][15]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~24_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][9]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][1]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][10]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][2]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~7_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~8_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][12]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][4]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~13_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][13]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][5]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~15_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~17_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][14]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][6]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~18_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~19_combout\ : std_logic;
SIGNAL \M1_unit|Selector20~0_combout\ : std_logic;
SIGNAL \UART_unit|always0~0_combout\ : std_logic;
SIGNAL \UART_unit|Add0~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state.S_US_IDLE~1_combout\ : std_logic;
SIGNAL \UART_unit|Selector26~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\ : std_logic;
SIGNAL \PB_unit|Equal0~0_combout\ : std_logic;
SIGNAL \PB_unit|Equal0~1_combout\ : std_logic;
SIGNAL \PB_unit|Equal0~2_combout\ : std_logic;
SIGNAL \PB_unit|LessThan0~0_combout\ : std_logic;
SIGNAL \PB_unit|LessThan0~1_combout\ : std_logic;
SIGNAL \PB_unit|LessThan0~2_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[13]~_wirecell_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[15]~_wirecell_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[8]~_wirecell_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][0]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][0]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][1]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][2]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][9]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][10]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][12]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][14]~feeder_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data[7]~feeder_combout\ : std_logic;
SIGNAL \SRAM_DATA_IO[0]~0\ : std_logic;
SIGNAL \SRAM_DATA_IO[1]~1\ : std_logic;
SIGNAL \SRAM_DATA_IO[2]~2\ : std_logic;
SIGNAL \SRAM_DATA_IO[3]~3\ : std_logic;
SIGNAL \SRAM_DATA_IO[4]~4\ : std_logic;
SIGNAL \SRAM_DATA_IO[5]~5\ : std_logic;
SIGNAL \SRAM_DATA_IO[6]~6\ : std_logic;
SIGNAL \SRAM_DATA_IO[7]~7\ : std_logic;
SIGNAL \SRAM_DATA_IO[8]~8\ : std_logic;
SIGNAL \SRAM_DATA_IO[9]~9\ : std_logic;
SIGNAL \SRAM_DATA_IO[10]~10\ : std_logic;
SIGNAL \SRAM_DATA_IO[11]~11\ : std_logic;
SIGNAL \SRAM_DATA_IO[12]~12\ : std_logic;
SIGNAL \SRAM_DATA_IO[13]~13\ : std_logic;
SIGNAL \SRAM_DATA_IO[14]~14\ : std_logic;
SIGNAL \SRAM_DATA_IO[15]~15\ : std_logic;
SIGNAL \CLOCK_50_I~combout\ : std_logic;
SIGNAL \CLOCK_50_I~clkctrl_outclk\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~16_combout\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_locked\ : std_logic;
SIGNAL \resetn~combout\ : std_logic;
SIGNAL \resetn~clkctrl_outclk\ : std_logic;
SIGNAL \UART_timer[0]~27\ : std_logic;
SIGNAL \UART_timer[1]~28_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_we_n~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_we_n~1_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_we_n~regout\ : std_logic;
SIGNAL \always0~9_combout\ : std_logic;
SIGNAL \UART_timer[1]~29\ : std_logic;
SIGNAL \UART_timer[2]~31\ : std_logic;
SIGNAL \UART_timer[3]~33\ : std_logic;
SIGNAL \UART_timer[4]~34_combout\ : std_logic;
SIGNAL \UART_timer[4]~35\ : std_logic;
SIGNAL \UART_timer[5]~37\ : std_logic;
SIGNAL \UART_timer[6]~38_combout\ : std_logic;
SIGNAL \UART_timer[6]~39\ : std_logic;
SIGNAL \UART_timer[7]~41\ : std_logic;
SIGNAL \UART_timer[8]~42_combout\ : std_logic;
SIGNAL \UART_timer[8]~43\ : std_logic;
SIGNAL \UART_timer[9]~45\ : std_logic;
SIGNAL \UART_timer[10]~46_combout\ : std_logic;
SIGNAL \UART_timer[10]~47\ : std_logic;
SIGNAL \UART_timer[11]~48_combout\ : std_logic;
SIGNAL \UART_timer[11]~49\ : std_logic;
SIGNAL \UART_timer[12]~50_combout\ : std_logic;
SIGNAL \UART_timer[12]~51\ : std_logic;
SIGNAL \UART_timer[13]~52_combout\ : std_logic;
SIGNAL \UART_timer[13]~53\ : std_logic;
SIGNAL \UART_timer[14]~54_combout\ : std_logic;
SIGNAL \UART_timer[14]~55\ : std_logic;
SIGNAL \UART_timer[15]~56_combout\ : std_logic;
SIGNAL \UART_timer[15]~57\ : std_logic;
SIGNAL \UART_timer[16]~59\ : std_logic;
SIGNAL \UART_timer[17]~60_combout\ : std_logic;
SIGNAL \UART_timer[17]~61\ : std_logic;
SIGNAL \UART_timer[18]~63\ : std_logic;
SIGNAL \UART_timer[19]~65\ : std_logic;
SIGNAL \UART_timer[20]~66_combout\ : std_logic;
SIGNAL \UART_timer[20]~67\ : std_logic;
SIGNAL \UART_timer[21]~69\ : std_logic;
SIGNAL \UART_timer[22]~70_combout\ : std_logic;
SIGNAL \UART_timer[22]~71\ : std_logic;
SIGNAL \UART_timer[23]~73\ : std_logic;
SIGNAL \UART_timer[24]~74_combout\ : std_logic;
SIGNAL \UART_timer[24]~75\ : std_logic;
SIGNAL \UART_timer[25]~76_combout\ : std_logic;
SIGNAL \always0~7_combout\ : std_logic;
SIGNAL \UART_timer[18]~62_combout\ : std_logic;
SIGNAL \UART_timer[19]~64_combout\ : std_logic;
SIGNAL \always0~5_combout\ : std_logic;
SIGNAL \UART_timer[23]~72_combout\ : std_logic;
SIGNAL \always0~6_combout\ : std_logic;
SIGNAL \always0~8_combout\ : std_logic;
SIGNAL \top_state[2]~5_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][0]~0_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[0]~16_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[13]~43\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[14]~44_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[14]~45\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[15]~46_combout\ : std_logic;
SIGNAL \PB_unit|LessThan0~3_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[0]~17\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[1]~18_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[1]~19\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[2]~20_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[2]~21\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[3]~23\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[4]~24_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[4]~25\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[5]~27\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[6]~29\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[7]~30_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[7]~31\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[8]~33\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[9]~34_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[9]~35\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[10]~37\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[11]~38_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[11]~39\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[12]~41\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[13]~42_combout\ : std_logic;
SIGNAL \PB_unit|Equal0~4_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_div_count[6]~28_combout\ : std_logic;
SIGNAL \PB_unit|Equal0~3_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz~0_combout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz~regout\ : std_logic;
SIGNAL \PB_unit|clock_1kHz_buf~regout\ : std_logic;
SIGNAL \PB_unit|always3~0_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][0]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][1]~feeder_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][1]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][2]~feeder_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][2]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][3]~feeder_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][3]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][4]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][5]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][6]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][7]~feeder_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][7]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][8]~feeder_combout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][8]~regout\ : std_logic;
SIGNAL \PB_unit|debounce_shift_reg[0][9]~regout\ : std_logic;
SIGNAL \PB_unit|WideOr0~0_combout\ : std_logic;
SIGNAL \PB_unit|WideOr0~2_combout\ : std_logic;
SIGNAL \UART_RX_I~combout\ : std_logic;
SIGNAL \top_state[1]~2_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~13_regout\ : std_logic;
SIGNAL \UART_unit|Selector7~0_combout\ : std_logic;
SIGNAL \UART_unit|Add1~1_combout\ : std_logic;
SIGNAL \UART_unit|Add1~54_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[0]~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_address[0]~1_combout\ : std_logic;
SIGNAL \UART_unit|Add1~2\ : std_logic;
SIGNAL \UART_unit|Add1~4\ : std_logic;
SIGNAL \UART_unit|Add1~5_combout\ : std_logic;
SIGNAL \UART_unit|Add1~52_combout\ : std_logic;
SIGNAL \UART_unit|Add1~6\ : std_logic;
SIGNAL \UART_unit|Add1~7_combout\ : std_logic;
SIGNAL \UART_unit|Add1~51_combout\ : std_logic;
SIGNAL \UART_unit|Add1~8\ : std_logic;
SIGNAL \UART_unit|Add1~10\ : std_logic;
SIGNAL \UART_unit|Add1~12_combout\ : std_logic;
SIGNAL \UART_unit|Add1~14_combout\ : std_logic;
SIGNAL \UART_unit|Add1~13\ : std_logic;
SIGNAL \UART_unit|Add1~15_combout\ : std_logic;
SIGNAL \UART_unit|Add1~17_combout\ : std_logic;
SIGNAL \UART_unit|Add1~16\ : std_logic;
SIGNAL \UART_unit|Add1~19\ : std_logic;
SIGNAL \UART_unit|Add1~22\ : std_logic;
SIGNAL \UART_unit|Add1~24_combout\ : std_logic;
SIGNAL \UART_unit|Add1~26_combout\ : std_logic;
SIGNAL \UART_unit|Add1~25\ : std_logic;
SIGNAL \UART_unit|Add1~27_combout\ : std_logic;
SIGNAL \UART_unit|Add1~29_combout\ : std_logic;
SIGNAL \UART_unit|Add1~28\ : std_logic;
SIGNAL \UART_unit|Add1~31\ : std_logic;
SIGNAL \UART_unit|Add1~33_combout\ : std_logic;
SIGNAL \UART_unit|Add1~35_combout\ : std_logic;
SIGNAL \UART_unit|Add1~38_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~1_combout\ : std_logic;
SIGNAL \UART_unit|Add1~44_combout\ : std_logic;
SIGNAL \UART_unit|Add1~41_combout\ : std_logic;
SIGNAL \UART_unit|Add1~34\ : std_logic;
SIGNAL \UART_unit|Add1~37\ : std_logic;
SIGNAL \UART_unit|Add1~40\ : std_logic;
SIGNAL \UART_unit|Add1~43\ : std_logic;
SIGNAL \UART_unit|Add1~45_combout\ : std_logic;
SIGNAL \UART_unit|Add1~47_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~0_combout\ : std_logic;
SIGNAL \UART_unit|Add1~9_combout\ : std_logic;
SIGNAL \UART_unit|Add1~11_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~3_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~4_combout\ : std_logic;
SIGNAL \UART_unit|LessThan1~5_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~20_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~11_regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[0]~10_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[8]~12_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data_in~regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[8]~13_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[8]~14_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[0]~11\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[1]~15_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[1]~16\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[2]~18\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[3]~19_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[3]~20\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[4]~22\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[5]~23_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[5]~24\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[6]~26\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[7]~27_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Equal2~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[7]~28\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[8]~30\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[9]~31_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|always0~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|always0~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector16~4_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Frame_error[1]~6_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[8]~33_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|data_count[1]~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector14~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector15~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Equal1~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector3~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RXC_state~13_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Frame_error[1]~14_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RXC_state~14_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RXC_state~9_regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|clock_count[8]~29_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Equal2~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RXC_state~15_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RXC_state~8_regout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector22~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector23~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector24~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector25~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector26~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector27~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector28~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Selector29~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data[0]~feeder_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data[7]~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data[5]~feeder_combout\ : std_logic;
SIGNAL \UART_unit|always0~1_combout\ : std_logic;
SIGNAL \UART_unit|always0~2_combout\ : std_logic;
SIGNAL \UART_unit|Add0~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Empty~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Empty~regout\ : std_logic;
SIGNAL \UART_unit|new_line_count[1]~0_combout\ : std_logic;
SIGNAL \UART_unit|Selector3~0_combout\ : std_logic;
SIGNAL \UART_unit|Selector3~1_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~14_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~15_combout\ : std_logic;
SIGNAL \UART_unit|UART_SRAM_state~12_regout\ : std_logic;
SIGNAL \UART_unit|Add1~0_combout\ : std_logic;
SIGNAL \UART_unit|Add1~3_combout\ : std_logic;
SIGNAL \UART_unit|Add1~53_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \top_state[1]~3_combout\ : std_logic;
SIGNAL \top_state[1]~4_combout\ : std_logic;
SIGNAL \top_state[1]~6_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~0_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[0]~feeder_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[1]~1_combout\ : std_logic;
SIGNAL \SRAM_write_data[0]~0_combout\ : std_logic;
SIGNAL \SRAM_we_n~0_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_WE_N_O~0_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_WE_N_O~regout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~2_combout\ : std_logic;
SIGNAL \SRAM_write_data[1]~1_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~3_combout\ : std_logic;
SIGNAL \SRAM_write_data[2]~2_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RX_data[3]~feeder_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~4_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[3]~feeder_combout\ : std_logic;
SIGNAL \SRAM_write_data[3]~3_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~5_combout\ : std_logic;
SIGNAL \SRAM_write_data[4]~4_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~6_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[5]~feeder_combout\ : std_logic;
SIGNAL \SRAM_write_data[5]~5_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~7_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[6]~feeder_combout\ : std_logic;
SIGNAL \SRAM_write_data[6]~6_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data~8_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[7]~feeder_combout\ : std_logic;
SIGNAL \SRAM_write_data[7]~7_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[10]~9_combout\ : std_logic;
SIGNAL \SRAM_write_data[8]~8_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[9]~feeder_combout\ : std_logic;
SIGNAL \SRAM_write_data[9]~9_combout\ : std_logic;
SIGNAL \UART_unit|SRAM_write_data[10]~feeder_combout\ : std_logic;
SIGNAL \SRAM_write_data[10]~10_combout\ : std_logic;
SIGNAL \SRAM_write_data[11]~11_combout\ : std_logic;
SIGNAL \SRAM_write_data[12]~12_combout\ : std_logic;
SIGNAL \SRAM_write_data[13]~13_combout\ : std_logic;
SIGNAL \SRAM_write_data[14]~14_combout\ : std_logic;
SIGNAL \SRAM_write_data[15]~15_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \VGA_enable~0_combout\ : std_logic;
SIGNAL \VGA_enable~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~33_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[0]~11\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[1]~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[5]~20_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[0]~11\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[1]~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[5]~21\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[6]~22_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|counter_enable~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|counter_enable~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[6]~23\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[7]~25\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[8]~26_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[7]~24_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[3]~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[2]~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan0~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan0~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[1]~13\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[2]~15\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[3]~17\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[4]~18_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[4]~19\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[5]~20_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[8]~27\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[9]~28_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[7]~25\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[8]~26_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[8]~27\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[9]~28_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan2~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan2~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[1]~13\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[2]~15\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[3]~17\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[4]~18_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[4]~19\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[5]~21\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[6]~22_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[6]~23\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[7]~24_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[3]~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[0]~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~1\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~3\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~5\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~7\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~9\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~11\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~13\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~8_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~6_combout\ : std_logic;
SIGNAL \VGA_unit|always0~0_combout\ : std_logic;
SIGNAL \VGA_unit|always0~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~21_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add0~0_combout\ : std_logic;
SIGNAL \VGA_unit|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_unit|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|H_Cont[0]~10_combout\ : std_logic;
SIGNAL \VGA_unit|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add0~1_combout\ : std_logic;
SIGNAL \VGA_unit|Equal0~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~22_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~23_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~14_regout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~26_combout\ : std_logic;
SIGNAL \VGA_unit|LessThan2~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~28_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~29_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~35_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~16_regout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~31_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~30_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~32_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~15_regout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~24_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~25_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~17_regout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~4_combout\ : std_logic;
SIGNAL \VGA_unit|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~0_combout\ : std_logic;
SIGNAL \VGA_unit|Equal2~0_combout\ : std_logic;
SIGNAL \VGA_unit|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~1\ : std_logic;
SIGNAL \VGA_unit|Add0~3\ : std_logic;
SIGNAL \VGA_unit|Add0~4_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~10_combout\ : std_logic;
SIGNAL \VGA_unit|SRAM_address[4]~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~15\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~17\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add1~18_combout\ : std_logic;
SIGNAL \VGA_unit|SRAM_address[4]~1_combout\ : std_logic;
SIGNAL \VGA_unit|SRAM_address[4]~2_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~0_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~53_combout\ : std_logic;
SIGNAL \VGA_unit|SRAM_address[1]~3_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~1\ : std_logic;
SIGNAL \VGA_unit|Add1~2_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~52_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~3\ : std_logic;
SIGNAL \VGA_unit|Add1~4_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~0_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~51_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~5\ : std_logic;
SIGNAL \VGA_unit|Add1~7\ : std_logic;
SIGNAL \VGA_unit|Add1~9\ : std_logic;
SIGNAL \VGA_unit|Add1~11_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~13_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~12\ : std_logic;
SIGNAL \VGA_unit|Add1~14_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~16_combout\ : std_logic;
SIGNAL \SRAM_address~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \M1_start~regout\ : std_logic;
SIGNAL \M1_unit|state~15_combout\ : std_logic;
SIGNAL \M1_unit|state~11_regout\ : std_logic;
SIGNAL \M1_unit|state~17_combout\ : std_logic;
SIGNAL \M1_unit|state~10_regout\ : std_logic;
SIGNAL \M1_unit|Yaddr[0]~51_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[1]~18\ : std_logic;
SIGNAL \M1_unit|Yaddr[2]~19_combout\ : std_logic;
SIGNAL \M1_unit|state.LI0~0_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[2]~20\ : std_logic;
SIGNAL \M1_unit|Yaddr[3]~22\ : std_logic;
SIGNAL \M1_unit|Yaddr[4]~23_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[4]~24\ : std_logic;
SIGNAL \M1_unit|Yaddr[5]~26\ : std_logic;
SIGNAL \M1_unit|Yaddr[6]~27_combout\ : std_logic;
SIGNAL \M1_unit|WideOr4~combout\ : std_logic;
SIGNAL \M1_unit|Selector17~0_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[0]~51_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[1]~18\ : std_logic;
SIGNAL \M1_unit|Vaddr[2]~19_combout\ : std_logic;
SIGNAL \M1_unit|state.LI4~0_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[2]~20\ : std_logic;
SIGNAL \M1_unit|Vaddr[3]~22\ : std_logic;
SIGNAL \M1_unit|Vaddr[4]~23_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[4]~24\ : std_logic;
SIGNAL \M1_unit|Vaddr[5]~26\ : std_logic;
SIGNAL \M1_unit|Vaddr[6]~27_combout\ : std_logic;
SIGNAL \M1_unit|state.IDLE~0_combout\ : std_logic;
SIGNAL \SRAM_address[6]~6_combout\ : std_logic;
SIGNAL \SRAM_address~1_combout\ : std_logic;
SIGNAL \SRAM_address[6]~7_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[5]~25_combout\ : std_logic;
SIGNAL \M1_unit|Selector18~0_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[5]~25_combout\ : std_logic;
SIGNAL \SRAM_address[5]~4_combout\ : std_logic;
SIGNAL \SRAM_address[5]~5_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~15\ : std_logic;
SIGNAL \VGA_unit|Add1~17_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~19_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[6]~28\ : std_logic;
SIGNAL \M1_unit|Yaddr[7]~29_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[0]~18_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[0]~19\ : std_logic;
SIGNAL \M1_unit|Uaddr[1]~21\ : std_logic;
SIGNAL \M1_unit|Uaddr[2]~22_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[2]~23\ : std_logic;
SIGNAL \M1_unit|Uaddr[3]~25\ : std_logic;
SIGNAL \M1_unit|Uaddr[4]~26_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[4]~27\ : std_logic;
SIGNAL \M1_unit|Uaddr[5]~29\ : std_logic;
SIGNAL \M1_unit|Uaddr[6]~30_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[6]~31\ : std_logic;
SIGNAL \M1_unit|Uaddr[7]~32_combout\ : std_logic;
SIGNAL \M1_unit|Selector16~0_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[6]~28\ : std_logic;
SIGNAL \M1_unit|Vaddr[7]~29_combout\ : std_logic;
SIGNAL \SRAM_address[7]~8_combout\ : std_logic;
SIGNAL \UART_unit|Add1~18_combout\ : std_logic;
SIGNAL \UART_unit|Add1~20_combout\ : std_logic;
SIGNAL \SRAM_address[7]~9_combout\ : std_logic;
SIGNAL \M1_unit|Selector19~0_combout\ : std_logic;
SIGNAL \SRAM_address[4]~2_combout\ : std_logic;
SIGNAL \SRAM_address[4]~3_combout\ : std_logic;
SIGNAL \unit0|WideOr6~0_combout\ : std_logic;
SIGNAL \unit0|WideOr5~0_combout\ : std_logic;
SIGNAL \unit0|WideOr4~0_combout\ : std_logic;
SIGNAL \unit0|WideOr3~0_combout\ : std_logic;
SIGNAL \unit0|WideOr2~0_combout\ : std_logic;
SIGNAL \unit0|WideOr1~0_combout\ : std_logic;
SIGNAL \unit0|WideOr0~0_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~18\ : std_logic;
SIGNAL \VGA_unit|Add1~20_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~22_combout\ : std_logic;
SIGNAL \SRAM_address[8]~10_combout\ : std_logic;
SIGNAL \SRAM_address[8]~11_combout\ : std_logic;
SIGNAL \SRAM_address[10]~15_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~21\ : std_logic;
SIGNAL \VGA_unit|Add1~23_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~25_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[7]~33\ : std_logic;
SIGNAL \M1_unit|Uaddr[8]~34_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[8]~35\ : std_logic;
SIGNAL \M1_unit|Uaddr[9]~36_combout\ : std_logic;
SIGNAL \M1_unit|Selector14~0_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[7]~30\ : std_logic;
SIGNAL \M1_unit|Vaddr[8]~31_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[8]~32\ : std_logic;
SIGNAL \M1_unit|Vaddr[9]~33_combout\ : std_logic;
SIGNAL \SRAM_address[9]~12_combout\ : std_logic;
SIGNAL \SRAM_address[9]~13_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~5\ : std_logic;
SIGNAL \VGA_unit|Add0~7\ : std_logic;
SIGNAL \VGA_unit|Add0~9\ : std_logic;
SIGNAL \VGA_unit|Add0~11\ : std_logic;
SIGNAL \VGA_unit|Add0~13\ : std_logic;
SIGNAL \VGA_unit|Add0~15\ : std_logic;
SIGNAL \VGA_unit|Add0~17\ : std_logic;
SIGNAL \VGA_unit|Add0~18_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~24\ : std_logic;
SIGNAL \VGA_unit|Add1~27\ : std_logic;
SIGNAL \VGA_unit|Add1~29_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~31_combout\ : std_logic;
SIGNAL \SRAM_address[11]~16_combout\ : std_logic;
SIGNAL \SRAM_address[11]~17_combout\ : std_logic;
SIGNAL \unit1|WideOr6~0_combout\ : std_logic;
SIGNAL \unit1|WideOr5~0_combout\ : std_logic;
SIGNAL \unit1|WideOr4~0_combout\ : std_logic;
SIGNAL \unit1|WideOr3~0_combout\ : std_logic;
SIGNAL \unit1|WideOr2~0_combout\ : std_logic;
SIGNAL \unit1|WideOr1~0_combout\ : std_logic;
SIGNAL \unit1|WideOr0~0_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~19\ : std_logic;
SIGNAL \VGA_unit|Add0~21\ : std_logic;
SIGNAL \VGA_unit|Add0~22_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~30\ : std_logic;
SIGNAL \VGA_unit|Add1~33\ : std_logic;
SIGNAL \VGA_unit|Add1~35_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~37_combout\ : std_logic;
SIGNAL \SRAM_address[13]~20_combout\ : std_logic;
SIGNAL \SRAM_address[13]~21_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~20_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~32_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~34_combout\ : std_logic;
SIGNAL \SRAM_address[12]~18_combout\ : std_logic;
SIGNAL \SRAM_address[12]~19_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~23\ : std_logic;
SIGNAL \VGA_unit|Add0~24_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~40_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[7]~30\ : std_logic;
SIGNAL \M1_unit|Yaddr[8]~31_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[8]~32\ : std_logic;
SIGNAL \M1_unit|Yaddr[9]~33_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[9]~34\ : std_logic;
SIGNAL \M1_unit|Yaddr[10]~35_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[10]~36\ : std_logic;
SIGNAL \M1_unit|Yaddr[11]~37_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[11]~38\ : std_logic;
SIGNAL \M1_unit|Yaddr[12]~40\ : std_logic;
SIGNAL \M1_unit|Yaddr[13]~41_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[13]~42\ : std_logic;
SIGNAL \M1_unit|Yaddr[14]~43_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[9]~37\ : std_logic;
SIGNAL \M1_unit|Uaddr[10]~38_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[10]~39\ : std_logic;
SIGNAL \M1_unit|Uaddr[11]~40_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[11]~41\ : std_logic;
SIGNAL \M1_unit|Uaddr[12]~43\ : std_logic;
SIGNAL \M1_unit|Uaddr[13]~44_combout\ : std_logic;
SIGNAL \M1_unit|Uaddr[13]~45\ : std_logic;
SIGNAL \M1_unit|Uaddr[14]~46_combout\ : std_logic;
SIGNAL \M1_unit|Selector9~0_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[9]~34\ : std_logic;
SIGNAL \M1_unit|Vaddr[10]~35_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[10]~36\ : std_logic;
SIGNAL \M1_unit|Vaddr[11]~37_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[11]~38\ : std_logic;
SIGNAL \M1_unit|Vaddr[12]~40\ : std_logic;
SIGNAL \M1_unit|Vaddr[13]~41_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[13]~42\ : std_logic;
SIGNAL \M1_unit|Vaddr[14]~43_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[14]~_wirecell_combout\ : std_logic;
SIGNAL \SRAM_address[14]~22_combout\ : std_logic;
SIGNAL \SRAM_address[14]~23_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~25\ : std_logic;
SIGNAL \VGA_unit|Add0~26_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~36\ : std_logic;
SIGNAL \VGA_unit|Add1~39\ : std_logic;
SIGNAL \VGA_unit|Add1~41_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~43_combout\ : std_logic;
SIGNAL \SRAM_address[15]~24_combout\ : std_logic;
SIGNAL \SRAM_address[15]~25_combout\ : std_logic;
SIGNAL \unit2|WideOr6~0_combout\ : std_logic;
SIGNAL \unit2|WideOr5~0_combout\ : std_logic;
SIGNAL \unit2|WideOr4~0_combout\ : std_logic;
SIGNAL \unit2|WideOr3~0_combout\ : std_logic;
SIGNAL \unit2|WideOr2~0_combout\ : std_logic;
SIGNAL \unit2|WideOr1~0_combout\ : std_logic;
SIGNAL \unit2|WideOr0~0_combout\ : std_logic;
SIGNAL \UART_unit|Add1~46\ : std_logic;
SIGNAL \UART_unit|Add1~48_combout\ : std_logic;
SIGNAL \UART_unit|Add1~50_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~42\ : std_logic;
SIGNAL \VGA_unit|Add1~44_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~27\ : std_logic;
SIGNAL \VGA_unit|Add0~28_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~46_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~45\ : std_logic;
SIGNAL \VGA_unit|Add1~47_combout\ : std_logic;
SIGNAL \VGA_unit|Add0~29\ : std_logic;
SIGNAL \VGA_unit|Add0~30_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~49_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[14]~44\ : std_logic;
SIGNAL \M1_unit|Yaddr[15]~46\ : std_logic;
SIGNAL \M1_unit|Yaddr[16]~47_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[16]~48\ : std_logic;
SIGNAL \M1_unit|Yaddr[17]~49_combout\ : std_logic;
SIGNAL \M1_unit|Selector6~0_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[14]~44\ : std_logic;
SIGNAL \M1_unit|Vaddr[15]~46\ : std_logic;
SIGNAL \M1_unit|Vaddr[16]~47_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[16]~48\ : std_logic;
SIGNAL \M1_unit|Vaddr[17]~49_combout\ : std_logic;
SIGNAL \SRAM_address[17]~28_combout\ : std_logic;
SIGNAL \SRAM_address[17]~29_combout\ : std_logic;
SIGNAL \M1_unit|Selector7~0_combout\ : std_logic;
SIGNAL \SRAM_address[16]~26_combout\ : std_logic;
SIGNAL \unit3|Decoder0~12_combout\ : std_logic;
SIGNAL \SRAM_address[16]~27_combout\ : std_logic;
SIGNAL \unit3|Decoder0~13_combout\ : std_logic;
SIGNAL \unit3|Decoder0~14_combout\ : std_logic;
SIGNAL \unit4|WideOr6~0_combout\ : std_logic;
SIGNAL \unit4|WideOr5~0_combout\ : std_logic;
SIGNAL \unit4|WideOr4~0_combout\ : std_logic;
SIGNAL \unit4|WideOr3~0_combout\ : std_logic;
SIGNAL \unit4|WideOr2~0_combout\ : std_logic;
SIGNAL \unit4|WideOr1~0_combout\ : std_logic;
SIGNAL \unit4|WideOr0~0_combout\ : std_logic;
SIGNAL \unit5|WideOr6~0_combout\ : std_logic;
SIGNAL \unit5|WideOr5~0_combout\ : std_logic;
SIGNAL \unit5|WideOr4~0_combout\ : std_logic;
SIGNAL \unit5|WideOr3~0_combout\ : std_logic;
SIGNAL \unit5|WideOr2~0_combout\ : std_logic;
SIGNAL \unit5|WideOr1~0_combout\ : std_logic;
SIGNAL \unit5|WideOr0~0_combout\ : std_logic;
SIGNAL \unit6|WideOr6~0_combout\ : std_logic;
SIGNAL \unit6|WideOr5~0_combout\ : std_logic;
SIGNAL \unit6|WideOr4~0_combout\ : std_logic;
SIGNAL \unit6|WideOr3~0_combout\ : std_logic;
SIGNAL \unit6|WideOr2~0_combout\ : std_logic;
SIGNAL \unit6|WideOr1~0_combout\ : std_logic;
SIGNAL \unit6|WideOr0~0_combout\ : std_logic;
SIGNAL \unit7|WideOr6~0_combout\ : std_logic;
SIGNAL \unit7|WideOr5~0_combout\ : std_logic;
SIGNAL \unit7|WideOr4~0_combout\ : std_logic;
SIGNAL \unit7|WideOr3~0_combout\ : std_logic;
SIGNAL \unit7|WideOr2~0_combout\ : std_logic;
SIGNAL \unit7|WideOr1~0_combout\ : std_logic;
SIGNAL \unit7|WideOr0~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Frame_error[0]~4_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~0_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Frame_error[1]~7_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Frame_error[0]~5\ : std_logic;
SIGNAL \UART_unit|UART_RX|Frame_error[1]~8_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Frame_error[1]~9\ : std_logic;
SIGNAL \UART_unit|UART_RX|Frame_error[2]~10_combout\ : std_logic;
SIGNAL \UART_unit|UART_RX|Frame_error[2]~11\ : std_logic;
SIGNAL \UART_unit|UART_RX|Frame_error[3]~12_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_BLANK~combout\ : std_logic;
SIGNAL \VGA_unit|Equal3~1_combout\ : std_logic;
SIGNAL \VGA_unit|Equal3~0_combout\ : std_logic;
SIGNAL \VGA_unit|Equal3~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|Add0~2_combout\ : std_logic;
SIGNAL \VGA_unit|always0~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|V_Cont[2]~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|LessThan6~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~4_combout\ : std_logic;
SIGNAL \VGA_unit|always0~4_combout\ : std_logic;
SIGNAL \VGA_unit|always0~2_combout\ : std_logic;
SIGNAL \VGA_unit|always0~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~6_combout\ : std_logic;
SIGNAL \VGA_unit|Equal2~1_combout\ : std_logic;
SIGNAL \VGA_unit|Equal2~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~7_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green[7]~27_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green[7]~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~9_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_SRAM_state~34_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][0]~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][3]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][11]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][8]~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][11]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~15_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~16_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~7_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][5]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][13]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][13]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~20_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~21_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~22_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~8_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~9_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][7]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][15]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][15]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~26_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~27_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_red~28_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_R~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~7_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~8_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~11_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~13_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~14_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~19_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~20_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[2][6]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][8]~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][14]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~21_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~22_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~23_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~25_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_green~26_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_G~7_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][8]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][8]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][0]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~0_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~1_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~2_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][11]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][11]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][3]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~9_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~10_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~11_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~3_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~4_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~5_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~20_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~6_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][15]~feeder_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[1][15]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_sram_data[0][7]~regout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~21_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~22_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_blue~23_combout\ : std_logic;
SIGNAL \VGA_unit|VGA_unit|oVGA_B~7_combout\ : std_logic;
SIGNAL \M1_unit|Selector23~0_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[0]~0_combout\ : std_logic;
SIGNAL \M1_unit|Yaddr[1]~17_combout\ : std_logic;
SIGNAL \M1_unit|Selector22~0_combout\ : std_logic;
SIGNAL \M1_unit|Vaddr[1]~17_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[1]~1_combout\ : std_logic;
SIGNAL \M1_unit|Selector21~0_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[2]~2_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~6_combout\ : std_logic;
SIGNAL \VGA_unit|Add1~50_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_ADDRESS_O[3]~3_combout\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \SRAM_unit|SRAM_LB_N_O~0_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_LB_N_O~regout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_CE_N_O~feeder_combout\ : std_logic;
SIGNAL \SRAM_unit|SRAM_CE_N_O~regout\ : std_logic;
SIGNAL \M1_unit|SRAM_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \M1_unit|Uaddr\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \M1_unit|Vaddr\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \M1_unit|Yaddr\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \SRAM_unit|SRAM_ADDRESS_O\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \SRAM_unit|SRAM_read_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SRAM_unit|SRAM_write_data_buf\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \UART_unit|UART_RX|Frame_error\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_unit|UART_RX|RX_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_unit|UART_RX|clock_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \UART_unit|UART_RX|data_buffer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UART_unit|UART_RX|data_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_unit|SRAM_write_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|H_Cont\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|oVGA_B\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|oVGA_R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_unit|VGA_blue\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_unit|VGA_red\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \PB_unit|clock_1kHz_div_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PB_unit|push_button_status\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PUSH_BUTTON_I~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SWITCH_I~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \UART_unit|SRAM_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \UART_unit|new_line_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|V_Cont\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_unit|VGA_unit|oVGA_G\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_unit|SRAM_address\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA_unit|VGA_green\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \PB_unit|push_button_status_buf\ : std_logic_vector(3 DOWNTO 0);
SIGNAL UART_timer : std_logic_vector(25 DOWNTO 0);
SIGNAL top_state : std_logic_vector(2 DOWNTO 0);
SIGNAL \unit0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SRAM_address[17]~29_combout\ : std_logic;
SIGNAL \unit4|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit5|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit6|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit7|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SRAM_we_n~0_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_enable~regout\ : std_logic;
SIGNAL \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\ : std_logic;
SIGNAL \SRAM_unit|ALT_INV_SRAM_CE_N_O~regout\ : std_logic;
SIGNAL \SRAM_unit|Clock_100_PLL_inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLOCK_50_I <= CLOCK_50_I;
ww_PUSH_BUTTON_I <= PUSH_BUTTON_I;
ww_SWITCH_I <= SWITCH_I;
SEVEN_SEGMENT_N_O <= ww_SEVEN_SEGMENT_N_O;
LED_GREEN_O <= ww_LED_GREEN_O;
VGA_CLOCK_O <= ww_VGA_CLOCK_O;
VGA_HSYNC_O <= ww_VGA_HSYNC_O;
VGA_VSYNC_O <= ww_VGA_VSYNC_O;
VGA_BLANK_O <= ww_VGA_BLANK_O;
VGA_SYNC_O <= ww_VGA_SYNC_O;
VGA_RED_O <= ww_VGA_RED_O;
VGA_GREEN_O <= ww_VGA_GREEN_O;
VGA_BLUE_O <= ww_VGA_BLUE_O;
SRAM_ADDRESS_O <= ww_SRAM_ADDRESS_O;
SRAM_UB_N_O <= ww_SRAM_UB_N_O;
SRAM_LB_N_O <= ww_SRAM_LB_N_O;
SRAM_WE_N_O <= ww_SRAM_WE_N_O;
SRAM_CE_N_O <= ww_SRAM_CE_N_O;
SRAM_OE_N_O <= ww_SRAM_OE_N_O;
ww_UART_RX_I <= UART_RX_I;
UART_TX_O <= ww_UART_TX_O;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50_I~combout\);

\SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0\ <= \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_CLK_bus\(0);
\SRAM_unit|Clock_100_PLL_inst|altpll_component|pll~CLK1\ <= \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_CLK_bus\(1);
\SRAM_unit|Clock_100_PLL_inst|altpll_component|pll~CLK2\ <= \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_CLK_bus\(2);

\SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0\);

\resetn~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \resetn~combout\);

\CLOCK_50_I~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50_I~combout\);
\unit0|ALT_INV_WideOr0~0_combout\ <= NOT \unit0|WideOr0~0_combout\;
\unit1|ALT_INV_WideOr0~0_combout\ <= NOT \unit1|WideOr0~0_combout\;
\unit2|ALT_INV_WideOr0~0_combout\ <= NOT \unit2|WideOr0~0_combout\;
\ALT_INV_SRAM_address[17]~29_combout\ <= NOT \SRAM_address[17]~29_combout\;
\unit4|ALT_INV_WideOr0~0_combout\ <= NOT \unit4|WideOr0~0_combout\;
\unit5|ALT_INV_WideOr0~0_combout\ <= NOT \unit5|WideOr0~0_combout\;
\unit6|ALT_INV_WideOr0~0_combout\ <= NOT \unit6|WideOr0~0_combout\;
\unit7|ALT_INV_WideOr0~0_combout\ <= NOT \unit7|WideOr0~0_combout\;
\ALT_INV_SRAM_we_n~0_combout\ <= NOT \SRAM_we_n~0_combout\;
\ALT_INV_VGA_enable~regout\ <= NOT \VGA_enable~regout\;
\SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\ <= NOT \SRAM_unit|SRAM_WE_N_O~regout\;
\SRAM_unit|ALT_INV_SRAM_CE_N_O~regout\ <= NOT \SRAM_unit|SRAM_CE_N_O~regout\;
\SRAM_unit|Clock_100_PLL_inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\ <= NOT \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_outclk\;

-- Location: LCFF_X46_Y11_N11
\M1_unit|SRAM_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector15~0_combout\,
	sdata => \M1_unit|Vaddr[8]~_wirecell_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(8));

-- Location: LCFF_X46_Y11_N13
\M1_unit|SRAM_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector13~0_combout\,
	sdata => \M1_unit|Vaddr\(10),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(10));

-- Location: LCFF_X46_Y10_N27
\M1_unit|SRAM_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector12~0_combout\,
	sdata => \M1_unit|Vaddr\(11),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(11));

-- Location: LCFF_X47_Y10_N29
\M1_unit|SRAM_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector11~0_combout\,
	sdata => \M1_unit|Vaddr\(12),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(12));

-- Location: LCFF_X46_Y10_N29
\M1_unit|SRAM_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector10~0_combout\,
	sdata => \M1_unit|Vaddr[13]~_wirecell_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(13));

-- Location: LCFF_X47_Y10_N25
\M1_unit|SRAM_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector8~0_combout\,
	sdata => \M1_unit|Vaddr[15]~_wirecell_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(15));

-- Location: LCCOMB_X42_Y14_N2
\VGA_unit|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~2_combout\ = (\VGA_unit|SRAM_address\(3) & (\VGA_unit|Add0~1\ & VCC)) # (!\VGA_unit|SRAM_address\(3) & (!\VGA_unit|Add0~1\))
-- \VGA_unit|Add0~3\ = CARRY((!\VGA_unit|SRAM_address\(3) & !\VGA_unit|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(3),
	datad => VCC,
	cin => \VGA_unit|Add0~1\,
	combout => \VGA_unit|Add0~2_combout\,
	cout => \VGA_unit|Add0~3\);

-- Location: LCCOMB_X36_Y18_N16
\VGA_unit|VGA_unit|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~16_combout\ = (\VGA_unit|VGA_unit|V_Cont\(8) & ((GND) # (!\VGA_unit|VGA_unit|Add1~15\))) # (!\VGA_unit|VGA_unit|V_Cont\(8) & (\VGA_unit|VGA_unit|Add1~15\ $ (GND)))
-- \VGA_unit|VGA_unit|Add1~17\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(8)) # (!\VGA_unit|VGA_unit|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(8),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~15\,
	combout => \VGA_unit|VGA_unit|Add1~16_combout\,
	cout => \VGA_unit|VGA_unit|Add1~17\);

-- Location: LCCOMB_X41_Y14_N22
\VGA_unit|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~8_combout\ = (\VGA_unit|SRAM_address\(4) & (\VGA_unit|Add1~7\ $ (GND))) # (!\VGA_unit|SRAM_address\(4) & (!\VGA_unit|Add1~7\ & VCC))
-- \VGA_unit|Add1~9\ = CARRY((\VGA_unit|SRAM_address\(4) & !\VGA_unit|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(4),
	datad => VCC,
	cin => \VGA_unit|Add1~7\,
	combout => \VGA_unit|Add1~8_combout\,
	cout => \VGA_unit|Add1~9\);

-- Location: LCFF_X45_Y8_N7
\UART_timer[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[0]~26_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(0));

-- Location: LCFF_X45_Y8_N11
\UART_timer[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[2]~30_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(2));

-- Location: LCFF_X45_Y8_N13
\UART_timer[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[3]~32_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(3));

-- Location: LCFF_X45_Y8_N17
\UART_timer[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[5]~36_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(5));

-- Location: LCFF_X45_Y8_N21
\UART_timer[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[7]~40_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(7));

-- Location: LCFF_X45_Y8_N25
\UART_timer[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[9]~44_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(9));

-- Location: LCFF_X45_Y7_N7
\UART_timer[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[16]~58_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(16));

-- Location: LCFF_X45_Y7_N17
\UART_timer[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[21]~68_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(21));

-- Location: LCCOMB_X42_Y14_N6
\VGA_unit|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~6_combout\ = (\VGA_unit|SRAM_address\(5) & (\VGA_unit|Add0~5\ & VCC)) # (!\VGA_unit|SRAM_address\(5) & (!\VGA_unit|Add0~5\))
-- \VGA_unit|Add0~7\ = CARRY((!\VGA_unit|SRAM_address\(5) & !\VGA_unit|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(5),
	datad => VCC,
	cin => \VGA_unit|Add0~5\,
	combout => \VGA_unit|Add0~6_combout\,
	cout => \VGA_unit|Add0~7\);

-- Location: LCFF_X47_Y11_N25
\M1_unit|Uaddr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[5]~28_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(5));

-- Location: LCCOMB_X42_Y14_N8
\VGA_unit|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~8_combout\ = (\VGA_unit|SRAM_address\(6) & ((GND) # (!\VGA_unit|Add0~7\))) # (!\VGA_unit|SRAM_address\(6) & (\VGA_unit|Add0~7\ $ (GND)))
-- \VGA_unit|Add0~9\ = CARRY((\VGA_unit|SRAM_address\(6)) # (!\VGA_unit|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(6),
	datad => VCC,
	cin => \VGA_unit|Add0~7\,
	combout => \VGA_unit|Add0~8_combout\,
	cout => \VGA_unit|Add0~9\);

-- Location: LCCOMB_X42_Y14_N10
\VGA_unit|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~10_combout\ = (\VGA_unit|SRAM_address\(7) & (\VGA_unit|Add0~9\ & VCC)) # (!\VGA_unit|SRAM_address\(7) & (!\VGA_unit|Add0~9\))
-- \VGA_unit|Add0~11\ = CARRY((!\VGA_unit|SRAM_address\(7) & !\VGA_unit|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(7),
	datad => VCC,
	cin => \VGA_unit|Add0~9\,
	combout => \VGA_unit|Add0~10_combout\,
	cout => \VGA_unit|Add0~11\);

-- Location: LCCOMB_X42_Y14_N12
\VGA_unit|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~12_combout\ = (\VGA_unit|SRAM_address\(8) & ((GND) # (!\VGA_unit|Add0~11\))) # (!\VGA_unit|SRAM_address\(8) & (\VGA_unit|Add0~11\ $ (GND)))
-- \VGA_unit|Add0~13\ = CARRY((\VGA_unit|SRAM_address\(8)) # (!\VGA_unit|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(8),
	datad => VCC,
	cin => \VGA_unit|Add0~11\,
	combout => \VGA_unit|Add0~12_combout\,
	cout => \VGA_unit|Add0~13\);

-- Location: LCCOMB_X43_Y11_N30
\UART_unit|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~21_combout\ = (\UART_unit|SRAM_address\(8) & (\UART_unit|Add1~19\ $ (GND))) # (!\UART_unit|SRAM_address\(8) & (!\UART_unit|Add1~19\ & VCC))
-- \UART_unit|Add1~22\ = CARRY((\UART_unit|SRAM_address\(8) & !\UART_unit|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(8),
	datad => VCC,
	cin => \UART_unit|Add1~19\,
	combout => \UART_unit|Add1~21_combout\,
	cout => \UART_unit|Add1~22\);

-- Location: LCCOMB_X42_Y14_N14
\VGA_unit|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~14_combout\ = (\VGA_unit|SRAM_address\(9) & (\VGA_unit|Add0~13\ & VCC)) # (!\VGA_unit|SRAM_address\(9) & (!\VGA_unit|Add0~13\))
-- \VGA_unit|Add0~15\ = CARRY((!\VGA_unit|SRAM_address\(9) & !\VGA_unit|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(9),
	datad => VCC,
	cin => \VGA_unit|Add0~13\,
	combout => \VGA_unit|Add0~14_combout\,
	cout => \VGA_unit|Add0~15\);

-- Location: LCCOMB_X42_Y14_N16
\VGA_unit|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~16_combout\ = (\VGA_unit|SRAM_address\(10) & ((GND) # (!\VGA_unit|Add0~15\))) # (!\VGA_unit|SRAM_address\(10) & (\VGA_unit|Add0~15\ $ (GND)))
-- \VGA_unit|Add0~17\ = CARRY((\VGA_unit|SRAM_address\(10)) # (!\VGA_unit|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(10),
	datad => VCC,
	cin => \VGA_unit|Add0~15\,
	combout => \VGA_unit|Add0~16_combout\,
	cout => \VGA_unit|Add0~17\);

-- Location: LCCOMB_X41_Y13_N2
\VGA_unit|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~26_combout\ = (\VGA_unit|SRAM_address\(10) & (\VGA_unit|Add1~24\ $ (GND))) # (!\VGA_unit|SRAM_address\(10) & (!\VGA_unit|Add1~24\ & VCC))
-- \VGA_unit|Add1~27\ = CARRY((\VGA_unit|SRAM_address\(10) & !\VGA_unit|Add1~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(10),
	datad => VCC,
	cin => \VGA_unit|Add1~24\,
	combout => \VGA_unit|Add1~26_combout\,
	cout => \VGA_unit|Add1~27\);

-- Location: LCCOMB_X43_Y10_N4
\UART_unit|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~30_combout\ = (\UART_unit|SRAM_address\(11) & (!\UART_unit|Add1~28\)) # (!\UART_unit|SRAM_address\(11) & ((\UART_unit|Add1~28\) # (GND)))
-- \UART_unit|Add1~31\ = CARRY((!\UART_unit|Add1~28\) # (!\UART_unit|SRAM_address\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(11),
	datad => VCC,
	cin => \UART_unit|Add1~28\,
	combout => \UART_unit|Add1~30_combout\,
	cout => \UART_unit|Add1~31\);

-- Location: LCFF_X46_Y10_N7
\M1_unit|Yaddr[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[12]~39_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(12));

-- Location: LCFF_X47_Y10_N7
\M1_unit|Uaddr[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[12]~42_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(12));

-- Location: LCFF_X48_Y10_N7
\M1_unit|Vaddr[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[12]~39_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(12));

-- Location: LCCOMB_X43_Y10_N8
\UART_unit|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~36_combout\ = (\UART_unit|SRAM_address\(13) & (!\UART_unit|Add1~34\)) # (!\UART_unit|SRAM_address\(13) & ((\UART_unit|Add1~34\) # (GND)))
-- \UART_unit|Add1~37\ = CARRY((!\UART_unit|Add1~34\) # (!\UART_unit|SRAM_address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(13),
	datad => VCC,
	cin => \UART_unit|Add1~34\,
	combout => \UART_unit|Add1~36_combout\,
	cout => \UART_unit|Add1~37\);

-- Location: LCCOMB_X41_Y13_N10
\VGA_unit|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~38_combout\ = (\VGA_unit|SRAM_address\(14) & (\VGA_unit|Add1~36\ $ (GND))) # (!\VGA_unit|SRAM_address\(14) & (!\VGA_unit|Add1~36\ & VCC))
-- \VGA_unit|Add1~39\ = CARRY((\VGA_unit|SRAM_address\(14) & !\VGA_unit|Add1~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(14),
	datad => VCC,
	cin => \VGA_unit|Add1~36\,
	combout => \VGA_unit|Add1~38_combout\,
	cout => \VGA_unit|Add1~39\);

-- Location: LCCOMB_X43_Y10_N10
\UART_unit|Add1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~39_combout\ = (\UART_unit|SRAM_address\(14) & (\UART_unit|Add1~37\ $ (GND))) # (!\UART_unit|SRAM_address\(14) & (!\UART_unit|Add1~37\ & VCC))
-- \UART_unit|Add1~40\ = CARRY((\UART_unit|SRAM_address\(14) & !\UART_unit|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(14),
	datad => VCC,
	cin => \UART_unit|Add1~37\,
	combout => \UART_unit|Add1~39_combout\,
	cout => \UART_unit|Add1~40\);

-- Location: LCFF_X46_Y10_N13
\M1_unit|Yaddr[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[15]~45_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(15));

-- Location: LCFF_X47_Y10_N13
\M1_unit|Uaddr[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[15]~48_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(15));

-- Location: LCFF_X48_Y10_N13
\M1_unit|Vaddr[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[15]~45_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(15));

-- Location: LCCOMB_X43_Y10_N12
\UART_unit|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~42_combout\ = (\UART_unit|SRAM_address\(15) & (!\UART_unit|Add1~40\)) # (!\UART_unit|SRAM_address\(15) & ((\UART_unit|Add1~40\) # (GND)))
-- \UART_unit|Add1~43\ = CARRY((!\UART_unit|Add1~40\) # (!\UART_unit|SRAM_address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(15),
	datad => VCC,
	cin => \UART_unit|Add1~40\,
	combout => \UART_unit|Add1~42_combout\,
	cout => \UART_unit|Add1~43\);

-- Location: LCFF_X47_Y10_N15
\M1_unit|Uaddr[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[16]~50_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(16));

-- Location: LCFF_X47_Y10_N17
\M1_unit|Uaddr[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[17]~52_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(17));

-- Location: LCFF_X44_Y10_N5
\UART_unit|UART_rx_enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector7~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => top_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_rx_enable~regout\);

-- Location: LCFF_X46_Y13_N17
\UART_unit|UART_RX|clock_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[4]~21_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[8]~12_combout\,
	ena => \UART_unit|UART_RX|clock_count[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(4));

-- Location: LCFF_X46_Y13_N13
\UART_unit|UART_RX|clock_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[2]~17_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[8]~12_combout\,
	ena => \UART_unit|UART_RX|clock_count[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(2));

-- Location: LCFF_X46_Y13_N21
\UART_unit|UART_RX|clock_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[6]~25_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[8]~12_combout\,
	ena => \UART_unit|UART_RX|clock_count[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(6));

-- Location: LCFF_X47_Y11_N3
\M1_unit|SRAM_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector20~0_combout\,
	sdata => \M1_unit|Vaddr\(3),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(3));

-- Location: LCFF_X47_Y11_N21
\M1_unit|Uaddr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[3]~24_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(3));

-- Location: LCFF_X47_Y11_N17
\M1_unit|Uaddr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[1]~20_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(1));

-- Location: LCCOMB_X47_Y11_N16
\M1_unit|Uaddr[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[1]~20_combout\ = (\M1_unit|Uaddr\(1) & (!\M1_unit|Uaddr[0]~19\)) # (!\M1_unit|Uaddr\(1) & ((\M1_unit|Uaddr[0]~19\) # (GND)))
-- \M1_unit|Uaddr[1]~21\ = CARRY((!\M1_unit|Uaddr[0]~19\) # (!\M1_unit|Uaddr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(1),
	datad => VCC,
	cin => \M1_unit|Uaddr[0]~19\,
	combout => \M1_unit|Uaddr[1]~20_combout\,
	cout => \M1_unit|Uaddr[1]~21\);

-- Location: LCCOMB_X47_Y11_N20
\M1_unit|Uaddr[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[3]~24_combout\ = (\M1_unit|Uaddr\(3) & (!\M1_unit|Uaddr[2]~23\)) # (!\M1_unit|Uaddr\(3) & ((\M1_unit|Uaddr[2]~23\) # (GND)))
-- \M1_unit|Uaddr[3]~25\ = CARRY((!\M1_unit|Uaddr[2]~23\) # (!\M1_unit|Uaddr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(3),
	datad => VCC,
	cin => \M1_unit|Uaddr[2]~23\,
	combout => \M1_unit|Uaddr[3]~24_combout\,
	cout => \M1_unit|Uaddr[3]~25\);

-- Location: LCFF_X46_Y11_N21
\M1_unit|Yaddr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[3]~21_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(3));

-- Location: LCCOMB_X46_Y11_N20
\M1_unit|Yaddr[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[3]~21_combout\ = (\M1_unit|Yaddr\(3) & (\M1_unit|Yaddr[2]~20\ $ (GND))) # (!\M1_unit|Yaddr\(3) & (!\M1_unit|Yaddr[2]~20\ & VCC))
-- \M1_unit|Yaddr[3]~22\ = CARRY((\M1_unit|Yaddr\(3) & !\M1_unit|Yaddr[2]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Yaddr\(3),
	datad => VCC,
	cin => \M1_unit|Yaddr[2]~20\,
	combout => \M1_unit|Yaddr[3]~21_combout\,
	cout => \M1_unit|Yaddr[3]~22\);

-- Location: LCFF_X48_Y11_N21
\M1_unit|Vaddr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[3]~21_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(3));

-- Location: LCCOMB_X48_Y11_N20
\M1_unit|Vaddr[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[3]~21_combout\ = (\M1_unit|Vaddr\(3) & (\M1_unit|Vaddr[2]~20\ $ (GND))) # (!\M1_unit|Vaddr\(3) & (!\M1_unit|Vaddr[2]~20\ & VCC))
-- \M1_unit|Vaddr[3]~22\ = CARRY((\M1_unit|Vaddr\(3) & !\M1_unit|Vaddr[2]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Vaddr\(3),
	datad => VCC,
	cin => \M1_unit|Vaddr[2]~20\,
	combout => \M1_unit|Vaddr[3]~21_combout\,
	cout => \M1_unit|Vaddr[3]~22\);

-- Location: LCCOMB_X45_Y8_N6
\UART_timer[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[0]~26_combout\ = UART_timer(0) $ (VCC)
-- \UART_timer[0]~27\ = CARRY(UART_timer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(0),
	datad => VCC,
	combout => \UART_timer[0]~26_combout\,
	cout => \UART_timer[0]~27\);

-- Location: LCCOMB_X45_Y8_N10
\UART_timer[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[2]~30_combout\ = (UART_timer(2) & (\UART_timer[1]~29\ $ (GND))) # (!UART_timer(2) & (!\UART_timer[1]~29\ & VCC))
-- \UART_timer[2]~31\ = CARRY((UART_timer(2) & !\UART_timer[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(2),
	datad => VCC,
	cin => \UART_timer[1]~29\,
	combout => \UART_timer[2]~30_combout\,
	cout => \UART_timer[2]~31\);

-- Location: LCCOMB_X45_Y8_N12
\UART_timer[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[3]~32_combout\ = (UART_timer(3) & (!\UART_timer[2]~31\)) # (!UART_timer(3) & ((\UART_timer[2]~31\) # (GND)))
-- \UART_timer[3]~33\ = CARRY((!\UART_timer[2]~31\) # (!UART_timer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(3),
	datad => VCC,
	cin => \UART_timer[2]~31\,
	combout => \UART_timer[3]~32_combout\,
	cout => \UART_timer[3]~33\);

-- Location: LCCOMB_X45_Y8_N16
\UART_timer[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[5]~36_combout\ = (UART_timer(5) & (!\UART_timer[4]~35\)) # (!UART_timer(5) & ((\UART_timer[4]~35\) # (GND)))
-- \UART_timer[5]~37\ = CARRY((!\UART_timer[4]~35\) # (!UART_timer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(5),
	datad => VCC,
	cin => \UART_timer[4]~35\,
	combout => \UART_timer[5]~36_combout\,
	cout => \UART_timer[5]~37\);

-- Location: LCCOMB_X45_Y8_N20
\UART_timer[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[7]~40_combout\ = (UART_timer(7) & (!\UART_timer[6]~39\)) # (!UART_timer(7) & ((\UART_timer[6]~39\) # (GND)))
-- \UART_timer[7]~41\ = CARRY((!\UART_timer[6]~39\) # (!UART_timer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(7),
	datad => VCC,
	cin => \UART_timer[6]~39\,
	combout => \UART_timer[7]~40_combout\,
	cout => \UART_timer[7]~41\);

-- Location: LCCOMB_X45_Y8_N24
\UART_timer[9]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[9]~44_combout\ = (UART_timer(9) & (!\UART_timer[8]~43\)) # (!UART_timer(9) & ((\UART_timer[8]~43\) # (GND)))
-- \UART_timer[9]~45\ = CARRY((!\UART_timer[8]~43\) # (!UART_timer(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(9),
	datad => VCC,
	cin => \UART_timer[8]~43\,
	combout => \UART_timer[9]~44_combout\,
	cout => \UART_timer[9]~45\);

-- Location: LCCOMB_X45_Y7_N6
\UART_timer[16]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[16]~58_combout\ = (UART_timer(16) & (\UART_timer[15]~57\ $ (GND))) # (!UART_timer(16) & (!\UART_timer[15]~57\ & VCC))
-- \UART_timer[16]~59\ = CARRY((UART_timer(16) & !\UART_timer[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(16),
	datad => VCC,
	cin => \UART_timer[15]~57\,
	combout => \UART_timer[16]~58_combout\,
	cout => \UART_timer[16]~59\);

-- Location: LCCOMB_X45_Y7_N16
\UART_timer[21]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[21]~68_combout\ = (UART_timer(21) & (!\UART_timer[20]~67\)) # (!UART_timer(21) & ((\UART_timer[20]~67\) # (GND)))
-- \UART_timer[21]~69\ = CARRY((!\UART_timer[20]~67\) # (!UART_timer(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(21),
	datad => VCC,
	cin => \UART_timer[20]~67\,
	combout => \UART_timer[21]~68_combout\,
	cout => \UART_timer[21]~69\);

-- Location: LCFF_X43_Y12_N17
\UART_unit|new_line_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add0~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => top_state(0),
	ena => \UART_unit|new_line_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|new_line_count\(1));

-- Location: LCFF_X45_Y10_N11
\UART_unit|UART_rx_unload_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Selector26~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => top_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_rx_unload_data~regout\);

-- Location: LCCOMB_X47_Y11_N24
\M1_unit|Uaddr[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[5]~28_combout\ = (\M1_unit|Uaddr\(5) & (!\M1_unit|Uaddr[4]~27\)) # (!\M1_unit|Uaddr\(5) & ((\M1_unit|Uaddr[4]~27\) # (GND)))
-- \M1_unit|Uaddr[5]~29\ = CARRY((!\M1_unit|Uaddr[4]~27\) # (!\M1_unit|Uaddr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(5),
	datad => VCC,
	cin => \M1_unit|Uaddr[4]~27\,
	combout => \M1_unit|Uaddr[5]~28_combout\,
	cout => \M1_unit|Uaddr[5]~29\);

-- Location: LCCOMB_X46_Y10_N6
\M1_unit|Yaddr[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[12]~39_combout\ = (\M1_unit|Yaddr\(12) & (!\M1_unit|Yaddr[11]~38\)) # (!\M1_unit|Yaddr\(12) & ((\M1_unit|Yaddr[11]~38\) # (GND)))
-- \M1_unit|Yaddr[12]~40\ = CARRY((!\M1_unit|Yaddr[11]~38\) # (!\M1_unit|Yaddr\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Yaddr\(12),
	datad => VCC,
	cin => \M1_unit|Yaddr[11]~38\,
	combout => \M1_unit|Yaddr[12]~39_combout\,
	cout => \M1_unit|Yaddr[12]~40\);

-- Location: LCCOMB_X47_Y10_N6
\M1_unit|Uaddr[12]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[12]~42_combout\ = (\M1_unit|Uaddr\(12) & (\M1_unit|Uaddr[11]~41\ & VCC)) # (!\M1_unit|Uaddr\(12) & (!\M1_unit|Uaddr[11]~41\))
-- \M1_unit|Uaddr[12]~43\ = CARRY((!\M1_unit|Uaddr\(12) & !\M1_unit|Uaddr[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(12),
	datad => VCC,
	cin => \M1_unit|Uaddr[11]~41\,
	combout => \M1_unit|Uaddr[12]~42_combout\,
	cout => \M1_unit|Uaddr[12]~43\);

-- Location: LCCOMB_X48_Y10_N6
\M1_unit|Vaddr[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[12]~39_combout\ = (\M1_unit|Vaddr\(12) & (!\M1_unit|Vaddr[11]~38\)) # (!\M1_unit|Vaddr\(12) & ((\M1_unit|Vaddr[11]~38\) # (GND)))
-- \M1_unit|Vaddr[12]~40\ = CARRY((!\M1_unit|Vaddr[11]~38\) # (!\M1_unit|Vaddr\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Vaddr\(12),
	datad => VCC,
	cin => \M1_unit|Vaddr[11]~38\,
	combout => \M1_unit|Vaddr[12]~39_combout\,
	cout => \M1_unit|Vaddr[12]~40\);

-- Location: LCCOMB_X47_Y10_N10
\M1_unit|Uaddr[14]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[14]~46_combout\ = (\M1_unit|Uaddr\(14) & (\M1_unit|Uaddr[13]~45\ $ (GND))) # (!\M1_unit|Uaddr\(14) & (!\M1_unit|Uaddr[13]~45\ & VCC))
-- \M1_unit|Uaddr[14]~47\ = CARRY((\M1_unit|Uaddr\(14) & !\M1_unit|Uaddr[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(14),
	datad => VCC,
	cin => \M1_unit|Uaddr[13]~45\,
	combout => \M1_unit|Uaddr[14]~46_combout\,
	cout => \M1_unit|Uaddr[14]~47\);

-- Location: LCCOMB_X46_Y10_N12
\M1_unit|Yaddr[15]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[15]~45_combout\ = (\M1_unit|Yaddr\(15) & (\M1_unit|Yaddr[14]~44\ $ (GND))) # (!\M1_unit|Yaddr\(15) & (!\M1_unit|Yaddr[14]~44\ & VCC))
-- \M1_unit|Yaddr[15]~46\ = CARRY((\M1_unit|Yaddr\(15) & !\M1_unit|Yaddr[14]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Yaddr\(15),
	datad => VCC,
	cin => \M1_unit|Yaddr[14]~44\,
	combout => \M1_unit|Yaddr[15]~45_combout\,
	cout => \M1_unit|Yaddr[15]~46\);

-- Location: LCCOMB_X47_Y10_N12
\M1_unit|Uaddr[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[15]~48_combout\ = (\M1_unit|Uaddr\(15) & ((GND) # (!\M1_unit|Uaddr[14]~47\))) # (!\M1_unit|Uaddr\(15) & (\M1_unit|Uaddr[14]~47\ $ (GND)))
-- \M1_unit|Uaddr[15]~49\ = CARRY((\M1_unit|Uaddr\(15)) # (!\M1_unit|Uaddr[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(15),
	datad => VCC,
	cin => \M1_unit|Uaddr[14]~47\,
	combout => \M1_unit|Uaddr[15]~48_combout\,
	cout => \M1_unit|Uaddr[15]~49\);

-- Location: LCCOMB_X48_Y10_N12
\M1_unit|Vaddr[15]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[15]~45_combout\ = (\M1_unit|Vaddr\(15) & (\M1_unit|Vaddr[14]~44\ & VCC)) # (!\M1_unit|Vaddr\(15) & (!\M1_unit|Vaddr[14]~44\))
-- \M1_unit|Vaddr[15]~46\ = CARRY((!\M1_unit|Vaddr\(15) & !\M1_unit|Vaddr[14]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Vaddr\(15),
	datad => VCC,
	cin => \M1_unit|Vaddr[14]~44\,
	combout => \M1_unit|Vaddr[15]~45_combout\,
	cout => \M1_unit|Vaddr[15]~46\);

-- Location: LCCOMB_X47_Y10_N14
\M1_unit|Uaddr[16]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[16]~50_combout\ = (\M1_unit|Uaddr\(16) & (\M1_unit|Uaddr[15]~49\ $ (GND))) # (!\M1_unit|Uaddr\(16) & (!\M1_unit|Uaddr[15]~49\ & VCC))
-- \M1_unit|Uaddr[16]~51\ = CARRY((\M1_unit|Uaddr\(16) & !\M1_unit|Uaddr[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Uaddr\(16),
	datad => VCC,
	cin => \M1_unit|Uaddr[15]~49\,
	combout => \M1_unit|Uaddr[16]~50_combout\,
	cout => \M1_unit|Uaddr[16]~51\);

-- Location: LCCOMB_X47_Y10_N16
\M1_unit|Uaddr[17]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[17]~52_combout\ = \M1_unit|Uaddr\(17) $ (\M1_unit|Uaddr[16]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(17),
	cin => \M1_unit|Uaddr[16]~51\,
	combout => \M1_unit|Uaddr[17]~52_combout\);

-- Location: LCCOMB_X46_Y13_N12
\UART_unit|UART_RX|clock_count[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[2]~17_combout\ = (\UART_unit|UART_RX|clock_count\(2) & (\UART_unit|UART_RX|clock_count[1]~16\ $ (GND))) # (!\UART_unit|UART_RX|clock_count\(2) & (!\UART_unit|UART_RX|clock_count[1]~16\ & VCC))
-- \UART_unit|UART_RX|clock_count[2]~18\ = CARRY((\UART_unit|UART_RX|clock_count\(2) & !\UART_unit|UART_RX|clock_count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(2),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[1]~16\,
	combout => \UART_unit|UART_RX|clock_count[2]~17_combout\,
	cout => \UART_unit|UART_RX|clock_count[2]~18\);

-- Location: LCCOMB_X46_Y13_N16
\UART_unit|UART_RX|clock_count[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[4]~21_combout\ = (\UART_unit|UART_RX|clock_count\(4) & (\UART_unit|UART_RX|clock_count[3]~20\ $ (GND))) # (!\UART_unit|UART_RX|clock_count\(4) & (!\UART_unit|UART_RX|clock_count[3]~20\ & VCC))
-- \UART_unit|UART_RX|clock_count[4]~22\ = CARRY((\UART_unit|UART_RX|clock_count\(4) & !\UART_unit|UART_RX|clock_count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(4),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[3]~20\,
	combout => \UART_unit|UART_RX|clock_count[4]~21_combout\,
	cout => \UART_unit|UART_RX|clock_count[4]~22\);

-- Location: LCCOMB_X46_Y13_N20
\UART_unit|UART_RX|clock_count[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[6]~25_combout\ = (\UART_unit|UART_RX|clock_count\(6) & (\UART_unit|UART_RX|clock_count[5]~24\ $ (GND))) # (!\UART_unit|UART_RX|clock_count\(6) & (!\UART_unit|UART_RX|clock_count[5]~24\ & VCC))
-- \UART_unit|UART_RX|clock_count[6]~26\ = CARRY((\UART_unit|UART_RX|clock_count\(6) & !\UART_unit|UART_RX|clock_count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(6),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[5]~24\,
	combout => \UART_unit|UART_RX|clock_count[6]~25_combout\,
	cout => \UART_unit|UART_RX|clock_count[6]~26\);

-- Location: LCFF_X36_Y7_N21
\PB_unit|clock_1kHz_div_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[10]~36_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(10));

-- Location: LCFF_X36_Y7_N25
\PB_unit|clock_1kHz_div_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[12]~40_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(12));

-- Location: LCFF_X36_Y7_N7
\PB_unit|clock_1kHz_div_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[3]~22_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(3));

-- Location: LCFF_X36_Y7_N11
\PB_unit|clock_1kHz_div_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[5]~26_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(5));

-- Location: LCFF_X36_Y7_N17
\PB_unit|clock_1kHz_div_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[8]~32_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(8));

-- Location: LCCOMB_X36_Y7_N6
\PB_unit|clock_1kHz_div_count[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[3]~22_combout\ = (\PB_unit|clock_1kHz_div_count\(3) & (!\PB_unit|clock_1kHz_div_count[2]~21\)) # (!\PB_unit|clock_1kHz_div_count\(3) & ((\PB_unit|clock_1kHz_div_count[2]~21\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[3]~23\ = CARRY((!\PB_unit|clock_1kHz_div_count[2]~21\) # (!\PB_unit|clock_1kHz_div_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(3),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[2]~21\,
	combout => \PB_unit|clock_1kHz_div_count[3]~22_combout\,
	cout => \PB_unit|clock_1kHz_div_count[3]~23\);

-- Location: LCCOMB_X36_Y7_N10
\PB_unit|clock_1kHz_div_count[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[5]~26_combout\ = (\PB_unit|clock_1kHz_div_count\(5) & (!\PB_unit|clock_1kHz_div_count[4]~25\)) # (!\PB_unit|clock_1kHz_div_count\(5) & ((\PB_unit|clock_1kHz_div_count[4]~25\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[5]~27\ = CARRY((!\PB_unit|clock_1kHz_div_count[4]~25\) # (!\PB_unit|clock_1kHz_div_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(5),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[4]~25\,
	combout => \PB_unit|clock_1kHz_div_count[5]~26_combout\,
	cout => \PB_unit|clock_1kHz_div_count[5]~27\);

-- Location: LCCOMB_X36_Y7_N16
\PB_unit|clock_1kHz_div_count[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[8]~32_combout\ = (\PB_unit|clock_1kHz_div_count\(8) & (\PB_unit|clock_1kHz_div_count[7]~31\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(8) & (!\PB_unit|clock_1kHz_div_count[7]~31\ & VCC))
-- \PB_unit|clock_1kHz_div_count[8]~33\ = CARRY((\PB_unit|clock_1kHz_div_count\(8) & !\PB_unit|clock_1kHz_div_count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(8),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[7]~31\,
	combout => \PB_unit|clock_1kHz_div_count[8]~32_combout\,
	cout => \PB_unit|clock_1kHz_div_count[8]~33\);

-- Location: LCCOMB_X36_Y7_N20
\PB_unit|clock_1kHz_div_count[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[10]~36_combout\ = (\PB_unit|clock_1kHz_div_count\(10) & (\PB_unit|clock_1kHz_div_count[9]~35\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(10) & (!\PB_unit|clock_1kHz_div_count[9]~35\ & VCC))
-- \PB_unit|clock_1kHz_div_count[10]~37\ = CARRY((\PB_unit|clock_1kHz_div_count\(10) & !\PB_unit|clock_1kHz_div_count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(10),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[9]~35\,
	combout => \PB_unit|clock_1kHz_div_count[10]~36_combout\,
	cout => \PB_unit|clock_1kHz_div_count[10]~37\);

-- Location: LCCOMB_X36_Y7_N24
\PB_unit|clock_1kHz_div_count[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[12]~40_combout\ = (\PB_unit|clock_1kHz_div_count\(12) & (\PB_unit|clock_1kHz_div_count[11]~39\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(12) & (!\PB_unit|clock_1kHz_div_count[11]~39\ & VCC))
-- \PB_unit|clock_1kHz_div_count[12]~41\ = CARRY((\PB_unit|clock_1kHz_div_count\(12) & !\PB_unit|clock_1kHz_div_count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(12),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[11]~39\,
	combout => \PB_unit|clock_1kHz_div_count[12]~40_combout\,
	cout => \PB_unit|clock_1kHz_div_count[12]~41\);

-- Location: LCFF_X44_Y10_N3
\UART_unit|SRAM_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~23_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(8));

-- Location: LCFF_X41_Y14_N9
\VGA_unit|SRAM_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~28_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(10));

-- Location: LCCOMB_X43_Y8_N16
\SRAM_address[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[10]~14_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & ((\VGA_unit|SRAM_address\(10)))) # (!\SRAM_address~0_combout\ & (\M1_unit|SRAM_address\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address\(10),
	datab => \SRAM_address~1_combout\,
	datac => \VGA_unit|SRAM_address\(10),
	datad => \SRAM_address~0_combout\,
	combout => \SRAM_address[10]~14_combout\);

-- Location: LCFF_X44_Y10_N17
\UART_unit|SRAM_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~32_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(11));

-- Location: LCFF_X48_Y11_N11
\M1_unit|state~12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|state~16_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state~12_regout\);

-- Location: LCCOMB_X44_Y7_N20
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!top_state(0) & (!top_state(2) & top_state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => top_state(2),
	datad => top_state(1),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X44_Y11_N22
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\UART_unit|SRAM_address\(8) & (!\UART_unit|SRAM_address\(7) & (!\UART_unit|SRAM_address\(9) & !\UART_unit|SRAM_address\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(8),
	datab => \UART_unit|SRAM_address\(7),
	datac => \UART_unit|SRAM_address\(9),
	datad => \UART_unit|SRAM_address\(6),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X45_Y8_N0
\always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (UART_timer(2) & (UART_timer(3) & (UART_timer(1) & UART_timer(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(2),
	datab => UART_timer(3),
	datac => UART_timer(1),
	datad => UART_timer(0),
	combout => \always0~0_combout\);

-- Location: LCCOMB_X45_Y8_N2
\always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (!UART_timer(7) & (UART_timer(4) & (UART_timer(5) & UART_timer(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(7),
	datab => UART_timer(4),
	datac => UART_timer(5),
	datad => UART_timer(6),
	combout => \always0~1_combout\);

-- Location: LCCOMB_X45_Y8_N4
\always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = (!UART_timer(11) & (!UART_timer(10) & (!UART_timer(9) & !UART_timer(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(11),
	datab => UART_timer(10),
	datac => UART_timer(9),
	datad => UART_timer(8),
	combout => \always0~2_combout\);

-- Location: LCCOMB_X45_Y7_N26
\always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~3_combout\ = (UART_timer(12) & (UART_timer(13) & (UART_timer(15) & UART_timer(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(12),
	datab => UART_timer(13),
	datac => UART_timer(15),
	datad => UART_timer(14),
	combout => \always0~3_combout\);

-- Location: LCCOMB_X44_Y7_N10
\always0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~4_combout\ = (\always0~3_combout\ & (\always0~1_combout\ & (\always0~2_combout\ & \always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~3_combout\,
	datab => \always0~1_combout\,
	datac => \always0~2_combout\,
	datad => \always0~0_combout\,
	combout => \always0~4_combout\);

-- Location: LCCOMB_X44_Y11_N10
\UART_unit|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~2_combout\ = (((!\UART_unit|SRAM_address\(6)) # (!\UART_unit|SRAM_address\(9))) # (!\UART_unit|SRAM_address\(7))) # (!\UART_unit|SRAM_address\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(8),
	datab => \UART_unit|SRAM_address\(7),
	datac => \UART_unit|SRAM_address\(9),
	datad => \UART_unit|SRAM_address\(6),
	combout => \UART_unit|LessThan1~2_combout\);

-- Location: LCFF_X42_Y8_N3
UART_rx_enable : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Equal2~1_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_rx_enable~regout\);

-- Location: LCCOMB_X46_Y11_N10
\M1_unit|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector15~0_combout\ = (\M1_unit|WideOr4~combout\ & ((\M1_unit|Uaddr\(8)))) # (!\M1_unit|WideOr4~combout\ & (\M1_unit|Yaddr\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Yaddr\(8),
	datab => \M1_unit|WideOr4~combout\,
	datad => \M1_unit|Uaddr\(8),
	combout => \M1_unit|Selector15~0_combout\);

-- Location: LCCOMB_X44_Y10_N2
\UART_unit|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~23_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~21_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|Add1~21_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|Add1~0_combout\,
	combout => \UART_unit|Add1~23_combout\);

-- Location: LCCOMB_X41_Y14_N8
\VGA_unit|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~28_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Add0~16_combout\)) # (!\VGA_unit|Equal1~1_combout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & 
-- (((\VGA_unit|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal1~1_combout\,
	datab => \VGA_unit|Add1~26_combout\,
	datac => \VGA_unit|Add0~16_combout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	combout => \VGA_unit|Add1~28_combout\);

-- Location: LCCOMB_X46_Y11_N12
\M1_unit|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector13~0_combout\ = (\M1_unit|WideOr4~combout\ & (!\M1_unit|Uaddr\(10))) # (!\M1_unit|WideOr4~combout\ & ((\M1_unit|Yaddr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(10),
	datab => \M1_unit|Yaddr\(10),
	datad => \M1_unit|WideOr4~combout\,
	combout => \M1_unit|Selector13~0_combout\);

-- Location: LCCOMB_X46_Y10_N26
\M1_unit|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector12~0_combout\ = (\M1_unit|WideOr4~combout\ & ((\M1_unit|Uaddr\(11)))) # (!\M1_unit|WideOr4~combout\ & (\M1_unit|Yaddr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Yaddr\(11),
	datab => \M1_unit|WideOr4~combout\,
	datad => \M1_unit|Uaddr\(11),
	combout => \M1_unit|Selector12~0_combout\);

-- Location: LCCOMB_X44_Y10_N16
\UART_unit|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~32_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~30_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|Add1~30_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|Add1~0_combout\,
	combout => \UART_unit|Add1~32_combout\);

-- Location: LCCOMB_X47_Y10_N28
\M1_unit|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector11~0_combout\ = (\M1_unit|WideOr4~combout\ & ((!\M1_unit|Uaddr\(12)))) # (!\M1_unit|WideOr4~combout\ & (\M1_unit|Yaddr\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr4~combout\,
	datab => \M1_unit|Yaddr\(12),
	datad => \M1_unit|Uaddr\(12),
	combout => \M1_unit|Selector11~0_combout\);

-- Location: LCCOMB_X46_Y10_N28
\M1_unit|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector10~0_combout\ = (\M1_unit|WideOr4~combout\ & (\M1_unit|Uaddr\(13))) # (!\M1_unit|WideOr4~combout\ & ((\M1_unit|Yaddr\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr4~combout\,
	datab => \M1_unit|Uaddr\(13),
	datad => \M1_unit|Yaddr\(13),
	combout => \M1_unit|Selector10~0_combout\);

-- Location: LCCOMB_X47_Y10_N24
\M1_unit|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector8~0_combout\ = (\M1_unit|WideOr4~combout\ & ((!\M1_unit|Uaddr\(15)))) # (!\M1_unit|WideOr4~combout\ & (\M1_unit|Yaddr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr4~combout\,
	datab => \M1_unit|Yaddr\(15),
	datad => \M1_unit|Uaddr\(15),
	combout => \M1_unit|Selector8~0_combout\);

-- Location: LCCOMB_X46_Y13_N2
\UART_unit|UART_RX|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Equal2~1_combout\ = (!\UART_unit|UART_RX|clock_count\(2) & (!\UART_unit|UART_RX|clock_count\(1) & (!\UART_unit|UART_RX|clock_count\(6) & \UART_unit|UART_RX|clock_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(2),
	datab => \UART_unit|UART_RX|clock_count\(1),
	datac => \UART_unit|UART_RX|clock_count\(6),
	datad => \UART_unit|UART_RX|clock_count\(5),
	combout => \UART_unit|UART_RX|Equal2~1_combout\);

-- Location: LCCOMB_X34_Y21_N16
\VGA_unit|VGA_unit|oVGA_V_SYNC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(0) & (\VGA_unit|VGA_unit|counter_enable~regout\ & (!\VGA_unit|VGA_unit|H_Cont\(3) & !\VGA_unit|VGA_unit|H_Cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(0),
	datab => \VGA_unit|VGA_unit|counter_enable~regout\,
	datac => \VGA_unit|VGA_unit|H_Cont\(3),
	datad => \VGA_unit|VGA_unit|H_Cont\(2),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\);

-- Location: LCCOMB_X35_Y21_N26
\VGA_unit|VGA_unit|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan7~0_combout\ = ((\VGA_unit|VGA_unit|LessThan6~1_combout\ & !\VGA_unit|VGA_unit|V_Cont\(0))) # (!\VGA_unit|VGA_unit|V_Cont\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan6~1_combout\,
	datab => \VGA_unit|VGA_unit|V_Cont\(0),
	datac => \VGA_unit|VGA_unit|V_Cont\(9),
	combout => \VGA_unit|VGA_unit|LessThan7~0_combout\);

-- Location: LCCOMB_X32_Y21_N6
\VGA_unit|VGA_unit|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan4~0_combout\ = ((!\VGA_unit|VGA_unit|H_Cont\(4) & (!\VGA_unit|VGA_unit|H_Cont\(5) & !\VGA_unit|VGA_unit|H_Cont\(6)))) # (!\VGA_unit|VGA_unit|H_Cont\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(4),
	datab => \VGA_unit|VGA_unit|H_Cont\(5),
	datac => \VGA_unit|VGA_unit|H_Cont\(7),
	datad => \VGA_unit|VGA_unit|H_Cont\(6),
	combout => \VGA_unit|VGA_unit|LessThan4~0_combout\);

-- Location: LCFF_X33_Y21_N15
\VGA_unit|VGA_red[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~13_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(4));

-- Location: LCFF_X29_Y22_N3
\VGA_unit|VGA_red[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~19_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(6));

-- Location: LCFF_X29_Y22_N15
\VGA_unit|VGA_red[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~25_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(8));

-- Location: LCFF_X29_Y22_N11
\VGA_unit|VGA_green[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~5_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(2));

-- Location: LCFF_X29_Y21_N11
\VGA_unit|VGA_green[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~17_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(6));

-- Location: LCFF_X29_Y21_N13
\VGA_unit|VGA_blue[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~5_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(3));

-- Location: LCFF_X29_Y21_N15
\VGA_unit|VGA_blue[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~8_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(4));

-- Location: LCFF_X32_Y21_N3
\VGA_unit|VGA_blue[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~14_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(6));

-- Location: LCFF_X32_Y21_N5
\VGA_unit|VGA_blue[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~17_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(7));

-- Location: LCCOMB_X35_Y21_N12
\VGA_unit|VGA_unit|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan2~1_combout\ = ((!\VGA_unit|VGA_unit|V_Cont\(2) & ((!\VGA_unit|VGA_unit|V_Cont\(1)) # (!\VGA_unit|VGA_unit|V_Cont\(0))))) # (!\VGA_unit|VGA_unit|V_Cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(3),
	datab => \VGA_unit|VGA_unit|V_Cont\(0),
	datac => \VGA_unit|VGA_unit|V_Cont\(2),
	datad => \VGA_unit|VGA_unit|V_Cont\(1),
	combout => \VGA_unit|VGA_unit|LessThan2~1_combout\);

-- Location: LCCOMB_X36_Y21_N16
\VGA_unit|VGA_SRAM_state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~20_combout\ = (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_SRAM_state~17_regout\) # ((\VGA_unit|VGA_SRAM_state~15_regout\) # (\VGA_unit|VGA_SRAM_state~16_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_SRAM_state~15_regout\,
	datac => \VGA_unit|VGA_SRAM_state~14_regout\,
	datad => \VGA_unit|VGA_SRAM_state~16_regout\,
	combout => \VGA_unit|VGA_SRAM_state~20_combout\);

-- Location: LCCOMB_X36_Y21_N6
\VGA_unit|VGA_SRAM_state~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~27_combout\ = (\VGA_unit|VGA_SRAM_state~16_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (!\VGA_unit|VGA_SRAM_state~15_regout\ & !\VGA_enable~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & 
-- (\VGA_unit|VGA_SRAM_state~15_regout\ & \VGA_enable~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~15_regout\,
	datac => \VGA_enable~regout\,
	datad => \VGA_unit|VGA_SRAM_state~16_regout\,
	combout => \VGA_unit|VGA_SRAM_state~27_combout\);

-- Location: LCCOMB_X34_Y21_N12
\VGA_unit|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|LessThan2~0_combout\ = (((\VGA_unit|VGA_unit|H_Cont\(4)) # (!\VGA_unit|VGA_unit|H_Cont\(2))) # (!\VGA_unit|VGA_unit|H_Cont\(3))) # (!\VGA_unit|VGA_unit|H_Cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(1),
	datab => \VGA_unit|VGA_unit|H_Cont\(3),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(2),
	combout => \VGA_unit|LessThan2~0_combout\);

-- Location: LCCOMB_X47_Y11_N4
\M1_unit|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|WideOr5~0_combout\ = (\M1_unit|state~12_regout\ & ((\M1_unit|state~10_regout\))) # (!\M1_unit|state~12_regout\ & (!\M1_unit|state~11_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|state~11_regout\,
	datac => \M1_unit|state~12_regout\,
	datad => \M1_unit|state~10_regout\,
	combout => \M1_unit|WideOr5~0_combout\);

-- Location: LCCOMB_X48_Y11_N10
\M1_unit|state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|state~16_combout\ = (\M1_unit|state~12_regout\) # ((\M1_unit|state~10_regout\ & \M1_unit|state~11_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|state~10_regout\,
	datac => \M1_unit|state~12_regout\,
	datad => \M1_unit|state~11_regout\,
	combout => \M1_unit|state~16_combout\);

-- Location: LCCOMB_X37_Y7_N14
\PB_unit|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|WideOr0~1_combout\ = (\PB_unit|debounce_shift_reg[0][4]~regout\) # ((\PB_unit|debounce_shift_reg[0][2]~regout\) # ((\PB_unit|debounce_shift_reg[0][5]~regout\) # (\PB_unit|debounce_shift_reg[0][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|debounce_shift_reg[0][4]~regout\,
	datab => \PB_unit|debounce_shift_reg[0][2]~regout\,
	datac => \PB_unit|debounce_shift_reg[0][5]~regout\,
	datad => \PB_unit|debounce_shift_reg[0][3]~regout\,
	combout => \PB_unit|WideOr0~1_combout\);

-- Location: LCCOMB_X45_Y10_N20
\UART_unit|UART_SRAM_state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~17_combout\ = (\UART_unit|UART_SRAM_state~12_regout\ & (\UART_unit|UART_SRAM_state~11_regout\ & \UART_unit|UART_SRAM_state~13_regout\)) # (!\UART_unit|UART_SRAM_state~12_regout\ & ((\UART_unit|UART_SRAM_state~11_regout\) # 
-- (\UART_unit|UART_SRAM_state~13_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_SRAM_state~12_regout\,
	datac => \UART_unit|UART_SRAM_state~11_regout\,
	datad => \UART_unit|UART_SRAM_state~13_regout\,
	combout => \UART_unit|UART_SRAM_state~17_combout\);

-- Location: LCCOMB_X45_Y10_N22
\UART_unit|UART_SRAM_state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~18_combout\ = (!\UART_unit|UART_SRAM_state~11_regout\ & (\UART_unit|UART_SRAM_state~12_regout\ & ((!\UART_unit|new_line_count\(0)) # (!\UART_unit|new_line_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|new_line_count\(1),
	datab => \UART_unit|UART_SRAM_state~11_regout\,
	datac => \UART_unit|new_line_count\(0),
	datad => \UART_unit|UART_SRAM_state~12_regout\,
	combout => \UART_unit|UART_SRAM_state~18_combout\);

-- Location: LCCOMB_X45_Y10_N16
\UART_unit|UART_SRAM_state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~19_combout\ = (!\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state~17_combout\) # ((\UART_unit|UART_SRAM_state~18_combout\ & !\UART_unit|UART_SRAM_state~13_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Empty~regout\,
	datab => \UART_unit|UART_SRAM_state~18_combout\,
	datac => \UART_unit|UART_SRAM_state~17_combout\,
	datad => \UART_unit|UART_SRAM_state~13_regout\,
	combout => \UART_unit|UART_SRAM_state~19_combout\);

-- Location: LCCOMB_X42_Y8_N2
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!top_state(1) & (!top_state(2) & top_state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => top_state(1),
	datac => top_state(2),
	datad => top_state(0),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X46_Y13_N4
\UART_unit|UART_RX|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|always0~1_combout\ = (\UART_unit|UART_RX|clock_count\(6) & !\UART_unit|UART_RX|clock_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(6),
	datac => \UART_unit|UART_RX|clock_count\(8),
	combout => \UART_unit|UART_RX|always0~1_combout\);

-- Location: LCCOMB_X45_Y13_N14
\UART_unit|UART_RX|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector3~1_combout\ = (\UART_unit|UART_RX|RXC_state~8_regout\ & (!\UART_unit|UART_RX|RXC_state~9_regout\ & ((\UART_unit|UART_RX|RX_data_in~regout\) # (\UART_unit|UART_RX|always0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RX_data_in~regout\,
	datab => \UART_unit|UART_RX|always0~2_combout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|RXC_state~9_regout\,
	combout => \UART_unit|UART_RX|Selector3~1_combout\);

-- Location: LCCOMB_X45_Y13_N24
\UART_unit|UART_RX|RXC_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RXC_state~12_combout\ = (\UART_unit|UART_RX|Selector3~0_combout\) # ((!\UART_unit|UART_RX|Selector3~1_combout\ & ((\UART_unit|UART_RX|RXC_state~8_regout\) # (!\UART_unit|UART_RX|Frame_error[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Frame_error[1]~6_combout\,
	datab => \UART_unit|UART_RX|Selector3~0_combout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|Selector3~1_combout\,
	combout => \UART_unit|UART_RX|RXC_state~12_combout\);

-- Location: LCCOMB_X45_Y13_N20
\UART_unit|UART_RX|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector3~2_combout\ = ((\UART_unit|UART_RX|Selector3~1_combout\) # (\UART_unit|UART_RX|Selector3~0_combout\)) # (!\UART_unit|UART_RX|Frame_error[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Frame_error[1]~6_combout\,
	datac => \UART_unit|UART_RX|Selector3~1_combout\,
	datad => \UART_unit|UART_RX|Selector3~0_combout\,
	combout => \UART_unit|UART_RX|Selector3~2_combout\);

-- Location: LCCOMB_X45_Y10_N2
\UART_unit|UART_SRAM_state.S_US_IDLE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state.S_US_IDLE~0_combout\ = (!\UART_unit|UART_SRAM_state~12_regout\ & (!\UART_unit|UART_SRAM_state~11_regout\ & !\UART_unit|UART_SRAM_state~13_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_SRAM_state~12_regout\,
	datac => \UART_unit|UART_SRAM_state~11_regout\,
	datad => \UART_unit|UART_SRAM_state~13_regout\,
	combout => \UART_unit|UART_SRAM_state.S_US_IDLE~0_combout\);

-- Location: LCCOMB_X44_Y10_N22
\UART_unit|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector7~1_combout\ = ((\UART_unit|Selector7~0_combout\ & (!\UART_unit|LessThan1~5_combout\ & !\UART_unit|UART_SRAM_state.S_US_IDLE~0_combout\))) # (!\UART_unit|SRAM_address[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address[0]~0_combout\,
	datab => \UART_unit|Selector7~0_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|UART_SRAM_state.S_US_IDLE~0_combout\,
	combout => \UART_unit|Selector7~1_combout\);

-- Location: LCCOMB_X44_Y10_N4
\UART_unit|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector7~2_combout\ = (\UART_unit|Selector7~1_combout\ & ((\UART_unit|UART_SRAM_state.S_US_IDLE~0_combout\))) # (!\UART_unit|Selector7~1_combout\ & (\UART_unit|UART_rx_enable~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|Selector7~1_combout\,
	datac => \UART_unit|UART_rx_enable~regout\,
	datad => \UART_unit|UART_SRAM_state.S_US_IDLE~0_combout\,
	combout => \UART_unit|Selector7~2_combout\);

-- Location: LCCOMB_X33_Y21_N10
\VGA_unit|always0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~3_combout\ = (\VGA_unit|Equal0~2_combout\ & (\VGA_unit|VGA_unit|H_Cont\(9) $ (((!\VGA_unit|VGA_unit|Add0~0_combout\ & !\VGA_unit|VGA_unit|H_Cont\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add0~0_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(8),
	datac => \VGA_unit|VGA_unit|H_Cont\(9),
	datad => \VGA_unit|Equal0~2_combout\,
	combout => \VGA_unit|always0~3_combout\);

-- Location: LCFF_X30_Y21_N3
\VGA_unit|VGA_sram_data[2][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(8),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][8]~regout\);

-- Location: LCFF_X30_Y21_N29
\VGA_unit|VGA_sram_data[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[1][0]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][0]~regout\);

-- Location: LCCOMB_X30_Y21_N2
\VGA_unit|VGA_red~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~5_combout\ = (\VGA_unit|VGA_SRAM_state~14_regout\ & (((\VGA_unit|VGA_sram_data[2][8]~regout\)))) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_sram_data[1][0]~regout\))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[2][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~17_regout\,
	datac => \VGA_unit|VGA_sram_data[2][8]~regout\,
	datad => \VGA_unit|VGA_sram_data[1][0]~regout\,
	combout => \VGA_unit|VGA_red~5_combout\);

-- Location: LCFF_X30_Y21_N23
\VGA_unit|VGA_sram_data[2][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[2][9]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][9]~regout\);

-- Location: LCFF_X30_Y21_N1
\VGA_unit|VGA_sram_data[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(1),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][1]~regout\);

-- Location: LCCOMB_X30_Y21_N0
\VGA_unit|VGA_red~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~8_combout\ = (\VGA_unit|VGA_SRAM_state~14_regout\ & (((\VGA_unit|VGA_sram_data[2][9]~regout\)))) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][1]~regout\)) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_sram_data[2][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~17_regout\,
	datac => \VGA_unit|VGA_sram_data[1][1]~regout\,
	datad => \VGA_unit|VGA_sram_data[2][9]~regout\,
	combout => \VGA_unit|VGA_red~8_combout\);

-- Location: LCFF_X30_Y21_N19
\VGA_unit|VGA_sram_data[2][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[2][10]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][10]~regout\);

-- Location: LCFF_X30_Y21_N21
\VGA_unit|VGA_sram_data[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(2),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][2]~regout\);

-- Location: LCCOMB_X30_Y21_N20
\VGA_unit|VGA_red~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~11_combout\ = (\VGA_unit|VGA_SRAM_state~14_regout\ & (((\VGA_unit|VGA_sram_data[2][10]~regout\)))) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][2]~regout\)) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_sram_data[2][10]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~17_regout\,
	datac => \VGA_unit|VGA_sram_data[1][2]~regout\,
	datad => \VGA_unit|VGA_sram_data[2][10]~regout\,
	combout => \VGA_unit|VGA_red~11_combout\);

-- Location: LCCOMB_X33_Y21_N20
\VGA_unit|VGA_red~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~12_combout\ = (\VGA_unit|VGA_red~4_combout\ & ((\VGA_unit|VGA_red~11_combout\) # ((\VGA_unit|always0~6_combout\ & \VGA_unit|always0~5_combout\)))) # (!\VGA_unit|VGA_red~4_combout\ & (\VGA_unit|always0~6_combout\ & 
-- ((\VGA_unit|always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~4_combout\,
	datab => \VGA_unit|always0~6_combout\,
	datac => \VGA_unit|VGA_red~11_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_red~12_combout\);

-- Location: LCCOMB_X33_Y21_N14
\VGA_unit|VGA_red~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~13_combout\ = (\VGA_unit|VGA_red~12_combout\) # ((\VGA_unit|Equal3~2_combout\) # (\VGA_unit|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~12_combout\,
	datac => \VGA_unit|Equal3~2_combout\,
	datad => \VGA_unit|Equal2~2_combout\,
	combout => \VGA_unit|VGA_red~13_combout\);

-- Location: LCFF_X30_Y21_N27
\VGA_unit|VGA_sram_data[2][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(12),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][12]~regout\);

-- Location: LCFF_X30_Y21_N5
\VGA_unit|VGA_sram_data[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(4),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][4]~regout\);

-- Location: LCCOMB_X30_Y21_N4
\VGA_unit|VGA_red~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~17_combout\ = (\VGA_unit|VGA_SRAM_state~14_regout\ & (((\VGA_unit|VGA_sram_data[2][12]~regout\)))) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][4]~regout\)) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_sram_data[2][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~17_regout\,
	datac => \VGA_unit|VGA_sram_data[1][4]~regout\,
	datad => \VGA_unit|VGA_sram_data[2][12]~regout\,
	combout => \VGA_unit|VGA_red~17_combout\);

-- Location: LCCOMB_X29_Y22_N26
\VGA_unit|VGA_red~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~18_combout\ = (\VGA_unit|always0~6_combout\ & ((\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~17_combout\ & \VGA_unit|VGA_red~4_combout\)))) # (!\VGA_unit|always0~6_combout\ & (\VGA_unit|VGA_red~17_combout\ & 
-- (\VGA_unit|VGA_red~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~6_combout\,
	datab => \VGA_unit|VGA_red~17_combout\,
	datac => \VGA_unit|VGA_red~4_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_red~18_combout\);

-- Location: LCCOMB_X29_Y22_N2
\VGA_unit|VGA_red~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~19_combout\ = (\VGA_unit|Equal2~2_combout\) # ((\VGA_unit|VGA_red~18_combout\) # (\VGA_unit|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal2~2_combout\,
	datab => \VGA_unit|VGA_red~18_combout\,
	datad => \VGA_unit|Equal3~2_combout\,
	combout => \VGA_unit|VGA_red~19_combout\);

-- Location: LCFF_X30_Y21_N11
\VGA_unit|VGA_sram_data[2][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(14),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][14]~regout\);

-- Location: LCFF_X30_Y21_N13
\VGA_unit|VGA_sram_data[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(6),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][6]~regout\);

-- Location: LCCOMB_X30_Y21_N12
\VGA_unit|VGA_red~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~23_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[2][14]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[1][6]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[2][14]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_sram_data[2][14]~regout\,
	datab => \VGA_unit|VGA_SRAM_state~17_regout\,
	datac => \VGA_unit|VGA_sram_data[1][6]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_red~23_combout\);

-- Location: LCCOMB_X29_Y22_N22
\VGA_unit|VGA_red~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~24_combout\ = (\VGA_unit|always0~6_combout\ & ((\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~4_combout\ & \VGA_unit|VGA_red~23_combout\)))) # (!\VGA_unit|always0~6_combout\ & (\VGA_unit|VGA_red~4_combout\ & 
-- (\VGA_unit|VGA_red~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~6_combout\,
	datab => \VGA_unit|VGA_red~4_combout\,
	datac => \VGA_unit|VGA_red~23_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_red~24_combout\);

-- Location: LCCOMB_X29_Y22_N14
\VGA_unit|VGA_red~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~25_combout\ = (\VGA_unit|Equal2~2_combout\) # ((\VGA_unit|VGA_red~24_combout\) # (\VGA_unit|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal2~2_combout\,
	datab => \VGA_unit|VGA_red~24_combout\,
	datad => \VGA_unit|Equal3~2_combout\,
	combout => \VGA_unit|VGA_red~25_combout\);

-- Location: LCFF_X27_Y21_N5
\VGA_unit|VGA_sram_data[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[2][0]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][0]~regout\);

-- Location: LCFF_X28_Y21_N1
\VGA_unit|VGA_sram_data[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(8),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][8]~regout\);

-- Location: LCCOMB_X28_Y21_N0
\VGA_unit|VGA_green~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~3_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[2][0]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][8]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[2][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[2][0]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][8]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_green~3_combout\);

-- Location: LCCOMB_X29_Y22_N18
\VGA_unit|VGA_green~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~4_combout\ = (\VGA_unit|always0~6_combout\ & ((\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~4_combout\ & \VGA_unit|VGA_green~3_combout\)))) # (!\VGA_unit|always0~6_combout\ & (\VGA_unit|VGA_red~4_combout\ & 
-- (\VGA_unit|VGA_green~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~6_combout\,
	datab => \VGA_unit|VGA_red~4_combout\,
	datac => \VGA_unit|VGA_green~3_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_green~4_combout\);

-- Location: LCCOMB_X29_Y22_N10
\VGA_unit|VGA_green~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~5_combout\ = (\VGA_unit|Equal2~2_combout\) # ((\VGA_unit|VGA_green~4_combout\) # (\VGA_unit|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal2~2_combout\,
	datab => \VGA_unit|VGA_green~4_combout\,
	datad => \VGA_unit|Equal3~2_combout\,
	combout => \VGA_unit|VGA_green~5_combout\);

-- Location: LCFF_X27_Y21_N23
\VGA_unit|VGA_sram_data[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[2][1]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][1]~regout\);

-- Location: LCFF_X28_Y21_N11
\VGA_unit|VGA_sram_data[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(9),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][9]~regout\);

-- Location: LCCOMB_X28_Y21_N10
\VGA_unit|VGA_green~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~6_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[2][1]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][9]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[2][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[2][1]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][9]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_green~6_combout\);

-- Location: LCFF_X27_Y21_N17
\VGA_unit|VGA_sram_data[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[2][2]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][2]~regout\);

-- Location: LCFF_X28_Y21_N5
\VGA_unit|VGA_sram_data[0][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(10),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][10]~regout\);

-- Location: LCCOMB_X28_Y21_N4
\VGA_unit|VGA_green~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~9_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[2][2]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][10]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[2][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[2][2]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][10]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_green~9_combout\);

-- Location: LCFF_X27_Y21_N11
\VGA_unit|VGA_sram_data[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(3),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][3]~regout\);

-- Location: LCFF_X28_Y21_N15
\VGA_unit|VGA_sram_data[0][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(11),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][11]~regout\);

-- Location: LCCOMB_X28_Y21_N14
\VGA_unit|VGA_green~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~12_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[2][3]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][11]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[2][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[2][3]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][11]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_green~12_combout\);

-- Location: LCFF_X27_Y21_N13
\VGA_unit|VGA_sram_data[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(4),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][4]~regout\);

-- Location: LCFF_X28_Y21_N25
\VGA_unit|VGA_sram_data[0][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(12),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][12]~regout\);

-- Location: LCCOMB_X28_Y21_N24
\VGA_unit|VGA_green~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~15_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[2][4]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][12]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[2][4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[2][4]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][12]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_green~15_combout\);

-- Location: LCCOMB_X29_Y21_N26
\VGA_unit|VGA_green~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~16_combout\ = (\VGA_unit|always0~5_combout\ & ((\VGA_unit|always0~6_combout\) # ((\VGA_unit|VGA_red~4_combout\ & \VGA_unit|VGA_green~15_combout\)))) # (!\VGA_unit|always0~5_combout\ & (\VGA_unit|VGA_red~4_combout\ & 
-- ((\VGA_unit|VGA_green~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~5_combout\,
	datab => \VGA_unit|VGA_red~4_combout\,
	datac => \VGA_unit|always0~6_combout\,
	datad => \VGA_unit|VGA_green~15_combout\,
	combout => \VGA_unit|VGA_green~16_combout\);

-- Location: LCCOMB_X29_Y21_N10
\VGA_unit|VGA_green~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~17_combout\ = (\VGA_unit|VGA_green~16_combout\) # ((\VGA_unit|Equal2~2_combout\) # (\VGA_unit|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green~16_combout\,
	datac => \VGA_unit|Equal2~2_combout\,
	datad => \VGA_unit|Equal3~2_combout\,
	combout => \VGA_unit|VGA_green~17_combout\);

-- Location: LCFF_X28_Y21_N19
\VGA_unit|VGA_sram_data[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(5),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][5]~regout\);

-- Location: LCFF_X28_Y21_N13
\VGA_unit|VGA_sram_data[0][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(13),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][13]~regout\);

-- Location: LCCOMB_X28_Y21_N12
\VGA_unit|VGA_green~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~18_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[2][5]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][13]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[2][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[2][5]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][13]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_green~18_combout\);

-- Location: LCFF_X27_Y21_N15
\VGA_unit|VGA_sram_data[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(7),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][7]~regout\);

-- Location: LCFF_X28_Y21_N3
\VGA_unit|VGA_sram_data[0][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(15),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][15]~regout\);

-- Location: LCCOMB_X28_Y21_N2
\VGA_unit|VGA_green~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~24_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[2][7]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][15]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[2][7]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[2][7]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][15]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_green~24_combout\);

-- Location: LCFF_X27_Y21_N27
\VGA_unit|VGA_sram_data[1][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(9),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][9]~regout\);

-- Location: LCFF_X28_Y21_N31
\VGA_unit|VGA_sram_data[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(1),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][1]~regout\);

-- Location: LCCOMB_X28_Y21_N30
\VGA_unit|VGA_blue~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~3_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[1][9]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][1]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][9]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[1][9]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][1]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_blue~3_combout\);

-- Location: LCCOMB_X29_Y21_N28
\VGA_unit|VGA_blue~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~4_combout\ = (\VGA_unit|always0~6_combout\ & ((\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~4_combout\ & \VGA_unit|VGA_blue~3_combout\)))) # (!\VGA_unit|always0~6_combout\ & (\VGA_unit|VGA_red~4_combout\ & 
-- (\VGA_unit|VGA_blue~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~6_combout\,
	datab => \VGA_unit|VGA_red~4_combout\,
	datac => \VGA_unit|VGA_blue~3_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~4_combout\);

-- Location: LCCOMB_X29_Y21_N12
\VGA_unit|VGA_blue~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~5_combout\ = (\VGA_unit|VGA_blue~4_combout\) # ((\VGA_unit|Equal2~2_combout\) # (\VGA_unit|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_blue~4_combout\,
	datac => \VGA_unit|Equal2~2_combout\,
	datad => \VGA_unit|Equal3~2_combout\,
	combout => \VGA_unit|VGA_blue~5_combout\);

-- Location: LCFF_X27_Y21_N29
\VGA_unit|VGA_sram_data[1][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(10),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][10]~regout\);

-- Location: LCFF_X28_Y21_N9
\VGA_unit|VGA_sram_data[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(2),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][2]~regout\);

-- Location: LCCOMB_X28_Y21_N8
\VGA_unit|VGA_blue~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~6_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[1][10]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][2]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][10]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[1][10]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][2]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_blue~6_combout\);

-- Location: LCCOMB_X29_Y21_N6
\VGA_unit|VGA_blue~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~7_combout\ = (\VGA_unit|VGA_blue~6_combout\ & ((\VGA_unit|VGA_red~4_combout\) # ((\VGA_unit|always0~6_combout\ & \VGA_unit|always0~5_combout\)))) # (!\VGA_unit|VGA_blue~6_combout\ & (((\VGA_unit|always0~6_combout\ & 
-- \VGA_unit|always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue~6_combout\,
	datab => \VGA_unit|VGA_red~4_combout\,
	datac => \VGA_unit|always0~6_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~7_combout\);

-- Location: LCCOMB_X29_Y21_N14
\VGA_unit|VGA_blue~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~8_combout\ = (\VGA_unit|VGA_blue~7_combout\) # ((\VGA_unit|Equal3~2_combout\) # (\VGA_unit|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue~7_combout\,
	datab => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|Equal2~2_combout\,
	combout => \VGA_unit|VGA_blue~8_combout\);

-- Location: LCFF_X27_Y21_N9
\VGA_unit|VGA_sram_data[1][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[1][12]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][12]~regout\);

-- Location: LCFF_X21_Y17_N1
\VGA_unit|VGA_sram_data[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(4),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][4]~regout\);

-- Location: LCCOMB_X21_Y17_N0
\VGA_unit|VGA_blue~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~12_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[1][12]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][4]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][12]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[1][12]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][4]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_blue~12_combout\);

-- Location: LCCOMB_X32_Y21_N16
\VGA_unit|VGA_blue~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~13_combout\ = (\VGA_unit|VGA_blue~12_combout\ & ((\VGA_unit|VGA_red~4_combout\) # ((\VGA_unit|always0~6_combout\ & \VGA_unit|always0~5_combout\)))) # (!\VGA_unit|VGA_blue~12_combout\ & (\VGA_unit|always0~6_combout\ & 
-- ((\VGA_unit|always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue~12_combout\,
	datab => \VGA_unit|always0~6_combout\,
	datac => \VGA_unit|VGA_red~4_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~13_combout\);

-- Location: LCCOMB_X32_Y21_N2
\VGA_unit|VGA_blue~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~14_combout\ = (\VGA_unit|Equal2~2_combout\) # ((\VGA_unit|Equal3~2_combout\) # (\VGA_unit|VGA_blue~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal2~2_combout\,
	datab => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|VGA_blue~13_combout\,
	combout => \VGA_unit|VGA_blue~14_combout\);

-- Location: LCFF_X27_Y21_N19
\VGA_unit|VGA_sram_data[1][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(13),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][13]~regout\);

-- Location: LCFF_X28_Y21_N27
\VGA_unit|VGA_sram_data[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(5),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][5]~regout\);

-- Location: LCCOMB_X28_Y21_N26
\VGA_unit|VGA_blue~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~15_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[1][13]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][5]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][13]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[1][13]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][5]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_blue~15_combout\);

-- Location: LCCOMB_X32_Y21_N10
\VGA_unit|VGA_blue~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~16_combout\ = (\VGA_unit|VGA_red~4_combout\ & ((\VGA_unit|VGA_blue~15_combout\) # ((\VGA_unit|always0~6_combout\ & \VGA_unit|always0~5_combout\)))) # (!\VGA_unit|VGA_red~4_combout\ & (\VGA_unit|always0~6_combout\ & 
-- ((\VGA_unit|always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~4_combout\,
	datab => \VGA_unit|always0~6_combout\,
	datac => \VGA_unit|VGA_blue~15_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~16_combout\);

-- Location: LCCOMB_X32_Y21_N4
\VGA_unit|VGA_blue~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~17_combout\ = (\VGA_unit|VGA_blue~16_combout\) # ((\VGA_unit|Equal3~2_combout\) # (\VGA_unit|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue~16_combout\,
	datab => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|Equal2~2_combout\,
	combout => \VGA_unit|VGA_blue~17_combout\);

-- Location: LCFF_X27_Y21_N21
\VGA_unit|VGA_sram_data[1][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[1][14]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][14]~regout\);

-- Location: LCFF_X28_Y21_N21
\VGA_unit|VGA_sram_data[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(6),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][6]~regout\);

-- Location: LCCOMB_X28_Y21_N20
\VGA_unit|VGA_blue~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~18_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[1][14]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][6]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][14]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[1][14]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][6]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_blue~18_combout\);

-- Location: LCCOMB_X32_Y21_N12
\VGA_unit|VGA_blue~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~19_combout\ = (\VGA_unit|always0~5_combout\ & ((\VGA_unit|always0~6_combout\) # ((\VGA_unit|VGA_blue~18_combout\ & \VGA_unit|VGA_red~4_combout\)))) # (!\VGA_unit|always0~5_combout\ & (\VGA_unit|VGA_blue~18_combout\ & 
-- (\VGA_unit|VGA_red~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~5_combout\,
	datab => \VGA_unit|VGA_blue~18_combout\,
	datac => \VGA_unit|VGA_red~4_combout\,
	datad => \VGA_unit|always0~6_combout\,
	combout => \VGA_unit|VGA_blue~19_combout\);

-- Location: LCCOMB_X47_Y11_N2
\M1_unit|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector20~0_combout\ = (\M1_unit|WideOr4~combout\ & (\M1_unit|Uaddr\(3))) # (!\M1_unit|WideOr4~combout\ & ((\M1_unit|Yaddr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr4~combout\,
	datab => \M1_unit|Uaddr\(3),
	datad => \M1_unit|Yaddr\(3),
	combout => \M1_unit|Selector20~0_combout\);

-- Location: LCFF_X44_Y12_N25
\UART_unit|UART_RX|RX_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|RX_data[7]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(7));

-- Location: LCCOMB_X44_Y12_N10
\UART_unit|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|always0~0_combout\ = (!\UART_unit|UART_RX|RX_data\(7) & (!\UART_unit|UART_RX|RX_data\(6) & ((!\UART_unit|new_line_count\(0)) # (!\UART_unit|new_line_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RX_data\(7),
	datab => \UART_unit|new_line_count\(1),
	datac => \UART_unit|UART_RX|RX_data\(6),
	datad => \UART_unit|new_line_count\(0),
	combout => \UART_unit|always0~0_combout\);

-- Location: LCCOMB_X43_Y12_N16
\UART_unit|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add0~0_combout\ = (\UART_unit|new_line_count\(1)) # ((\UART_unit|always0~2_combout\ & \UART_unit|new_line_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|always0~2_combout\,
	datac => \UART_unit|new_line_count\(1),
	datad => \UART_unit|new_line_count\(0),
	combout => \UART_unit|Add0~0_combout\);

-- Location: LCCOMB_X45_Y10_N12
\UART_unit|UART_SRAM_state.S_US_IDLE~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state.S_US_IDLE~1_combout\ = (!\UART_unit|UART_SRAM_state~12_regout\ & !\UART_unit|UART_SRAM_state~13_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_SRAM_state~12_regout\,
	datad => \UART_unit|UART_SRAM_state~13_regout\,
	combout => \UART_unit|UART_SRAM_state.S_US_IDLE~1_combout\);

-- Location: LCCOMB_X45_Y10_N10
\UART_unit|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector26~0_combout\ = (\UART_unit|UART_SRAM_state~11_regout\ & (((\UART_unit|UART_rx_unload_data~regout\) # (\UART_unit|UART_RX|Empty~regout\)))) # (!\UART_unit|UART_SRAM_state~11_regout\ & (\UART_unit|UART_rx_unload_data~regout\ & 
-- ((\UART_unit|UART_SRAM_state.S_US_IDLE~1_combout\) # (\UART_unit|UART_RX|Empty~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_IDLE~1_combout\,
	datab => \UART_unit|UART_SRAM_state~11_regout\,
	datac => \UART_unit|UART_rx_unload_data~regout\,
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|Selector26~0_combout\);

-- Location: LCCOMB_X45_Y12_N20
\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\ = (!\UART_unit|UART_RX|RXC_state~8_regout\ & \UART_unit|UART_RX|RXC_state~9_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|RXC_state~9_regout\,
	combout => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\);

-- Location: LCFF_X42_Y12_N9
\UART_unit|SRAM_write_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_unit|SRAM_write_data~5_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \UART_unit|SRAM_write_data[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(12));

-- Location: LCCOMB_X37_Y7_N10
\PB_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|Equal0~0_combout\ = (!\PB_unit|clock_1kHz_div_count\(11) & (!\PB_unit|clock_1kHz_div_count\(12) & (!\PB_unit|clock_1kHz_div_count\(10) & !\PB_unit|clock_1kHz_div_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(11),
	datab => \PB_unit|clock_1kHz_div_count\(12),
	datac => \PB_unit|clock_1kHz_div_count\(10),
	datad => \PB_unit|clock_1kHz_div_count\(9),
	combout => \PB_unit|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y7_N16
\PB_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|Equal0~1_combout\ = (!\PB_unit|clock_1kHz_div_count\(3) & !\PB_unit|clock_1kHz_div_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PB_unit|clock_1kHz_div_count\(3),
	datad => \PB_unit|clock_1kHz_div_count\(4),
	combout => \PB_unit|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y7_N20
\PB_unit|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|Equal0~2_combout\ = (!\PB_unit|clock_1kHz_div_count\(0) & (!\PB_unit|clock_1kHz_div_count\(1) & (\PB_unit|Equal0~1_combout\ & \PB_unit|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(0),
	datab => \PB_unit|clock_1kHz_div_count\(1),
	datac => \PB_unit|Equal0~1_combout\,
	datad => \PB_unit|Equal0~0_combout\,
	combout => \PB_unit|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y7_N28
\PB_unit|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|LessThan0~0_combout\ = ((!\PB_unit|clock_1kHz_div_count\(1)) # (!\PB_unit|clock_1kHz_div_count\(0))) # (!\PB_unit|clock_1kHz_div_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(2),
	datac => \PB_unit|clock_1kHz_div_count\(0),
	datad => \PB_unit|clock_1kHz_div_count\(1),
	combout => \PB_unit|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y7_N8
\PB_unit|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|LessThan0~1_combout\ = (!\PB_unit|clock_1kHz_div_count\(6) & (((\PB_unit|LessThan0~0_combout\ & \PB_unit|Equal0~1_combout\)) # (!\PB_unit|clock_1kHz_div_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(6),
	datab => \PB_unit|LessThan0~0_combout\,
	datac => \PB_unit|Equal0~1_combout\,
	datad => \PB_unit|clock_1kHz_div_count\(5),
	combout => \PB_unit|LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y7_N12
\PB_unit|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|LessThan0~2_combout\ = (\PB_unit|Equal0~0_combout\ & (((\PB_unit|LessThan0~1_combout\) # (!\PB_unit|clock_1kHz_div_count\(8))) # (!\PB_unit|clock_1kHz_div_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(7),
	datab => \PB_unit|clock_1kHz_div_count\(8),
	datac => \PB_unit|LessThan0~1_combout\,
	datad => \PB_unit|Equal0~0_combout\,
	combout => \PB_unit|LessThan0~2_combout\);

-- Location: LCCOMB_X46_Y10_N24
\M1_unit|Vaddr[13]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[13]~_wirecell_combout\ = !\M1_unit|Vaddr\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1_unit|Vaddr\(13),
	combout => \M1_unit|Vaddr[13]~_wirecell_combout\);

-- Location: LCCOMB_X47_Y10_N30
\M1_unit|Vaddr[15]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[15]~_wirecell_combout\ = !\M1_unit|Vaddr\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1_unit|Vaddr\(15),
	combout => \M1_unit|Vaddr[15]~_wirecell_combout\);

-- Location: LCCOMB_X46_Y11_N14
\M1_unit|Vaddr[8]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[8]~_wirecell_combout\ = !\M1_unit|Vaddr\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \M1_unit|Vaddr\(8),
	combout => \M1_unit|Vaddr[8]~_wirecell_combout\);

-- Location: LCCOMB_X27_Y21_N4
\VGA_unit|VGA_sram_data[2][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[2][0]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(0),
	combout => \VGA_unit|VGA_sram_data[2][0]~feeder_combout\);

-- Location: LCCOMB_X30_Y21_N28
\VGA_unit|VGA_sram_data[1][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[1][0]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(0),
	combout => \VGA_unit|VGA_sram_data[1][0]~feeder_combout\);

-- Location: LCCOMB_X27_Y21_N22
\VGA_unit|VGA_sram_data[2][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[2][1]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(1),
	combout => \VGA_unit|VGA_sram_data[2][1]~feeder_combout\);

-- Location: LCCOMB_X27_Y21_N16
\VGA_unit|VGA_sram_data[2][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[2][2]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(2),
	combout => \VGA_unit|VGA_sram_data[2][2]~feeder_combout\);

-- Location: LCCOMB_X30_Y21_N22
\VGA_unit|VGA_sram_data[2][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[2][9]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(9),
	combout => \VGA_unit|VGA_sram_data[2][9]~feeder_combout\);

-- Location: LCCOMB_X30_Y21_N18
\VGA_unit|VGA_sram_data[2][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[2][10]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(10),
	combout => \VGA_unit|VGA_sram_data[2][10]~feeder_combout\);

-- Location: LCCOMB_X27_Y21_N8
\VGA_unit|VGA_sram_data[1][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[1][12]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(12),
	combout => \VGA_unit|VGA_sram_data[1][12]~feeder_combout\);

-- Location: LCCOMB_X27_Y21_N20
\VGA_unit|VGA_sram_data[1][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[1][14]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(14),
	combout => \VGA_unit|VGA_sram_data[1][14]~feeder_combout\);

-- Location: LCCOMB_X44_Y12_N24
\UART_unit|UART_RX|RX_data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RX_data[7]~feeder_combout\ = \UART_unit|UART_RX|data_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|UART_RX|data_buffer\(7),
	combout => \UART_unit|UART_RX|RX_data[7]~feeder_combout\);

-- Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[0]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(0),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(0),
	combout => \SRAM_DATA_IO[0]~0\);

-- Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[1]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(1),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(1),
	combout => \SRAM_DATA_IO[1]~1\);

-- Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[2]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(2),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(2),
	combout => \SRAM_DATA_IO[2]~2\);

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[3]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(3),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(3),
	combout => \SRAM_DATA_IO[3]~3\);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[4]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(4),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(4),
	combout => \SRAM_DATA_IO[4]~4\);

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[5]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(5),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(5),
	combout => \SRAM_DATA_IO[5]~5\);

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[6]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(6),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(6),
	combout => \SRAM_DATA_IO[6]~6\);

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[7]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(7),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(7),
	combout => \SRAM_DATA_IO[7]~7\);

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[8]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(8),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(8),
	combout => \SRAM_DATA_IO[8]~8\);

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[9]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(9),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(9),
	combout => \SRAM_DATA_IO[9]~9\);

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[10]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(10),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(10),
	combout => \SRAM_DATA_IO[10]~10\);

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[11]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(11),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(11),
	combout => \SRAM_DATA_IO[11]~11\);

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[12]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(12),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(12),
	combout => \SRAM_DATA_IO[12]~12\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[13]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(13),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(13),
	combout => \SRAM_DATA_IO[13]~13\);

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[14]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(14),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(14),
	combout => \SRAM_DATA_IO[14]~14\);

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DATA_IO[15]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SRAM_unit|SRAM_write_data_buf\(15),
	oe => \SRAM_unit|SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DATA_IO(15),
	combout => \SRAM_DATA_IO[15]~15\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50_I~I\ : cycloneii_io
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
	padio => ww_CLOCK_50_I,
	combout => \CLOCK_50_I~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50_I~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50_I~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50_I~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y10_N0
\UART_unit|UART_SRAM_state~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~16_combout\ = (\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state~13_regout\) # ((\UART_unit|UART_SRAM_state~11_regout\ & \UART_unit|UART_SRAM_state~12_regout\)))) # (!\UART_unit|UART_RX|Empty~regout\ & 
-- (\UART_unit|UART_SRAM_state~13_regout\ & ((\UART_unit|UART_SRAM_state~11_regout\) # (!\UART_unit|UART_SRAM_state~12_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Empty~regout\,
	datab => \UART_unit|UART_SRAM_state~11_regout\,
	datac => \UART_unit|UART_SRAM_state~13_regout\,
	datad => \UART_unit|UART_SRAM_state~12_regout\,
	combout => \UART_unit|UART_SRAM_state~16_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[17]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(17),
	combout => \SWITCH_I~combout\(17));

-- Location: PLL_1
\SRAM_unit|Clock_100_PLL_inst|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "auto",
	c0_high => 4,
	c0_initial => 1,
	c0_low => 4,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 5370,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => \SWITCH_I~combout\(17),
	inclk => \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_INCLK_bus\,
	locked => \SRAM_unit|Clock_100_PLL_inst|altpll_component|_locked\,
	clk => \SRAM_unit|Clock_100_PLL_inst|altpll_component|pll_CLK_bus\);

-- Location: LCCOMB_X21_Y1_N12
resetn : cycloneii_lcell_comb
-- Equation(s):
-- \resetn~combout\ = (\SWITCH_I~combout\(17)) # (!\SRAM_unit|Clock_100_PLL_inst|altpll_component|_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWITCH_I~combout\(17),
	datac => \SRAM_unit|Clock_100_PLL_inst|altpll_component|_locked\,
	combout => \resetn~combout\);

-- Location: CLKCTRL_G14
\resetn~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \resetn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \resetn~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y8_N8
\UART_timer[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[1]~28_combout\ = (UART_timer(1) & (!\UART_timer[0]~27\)) # (!UART_timer(1) & ((\UART_timer[0]~27\) # (GND)))
-- \UART_timer[1]~29\ = CARRY((!\UART_timer[0]~27\) # (!UART_timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(1),
	datad => VCC,
	cin => \UART_timer[0]~27\,
	combout => \UART_timer[1]~28_combout\,
	cout => \UART_timer[1]~29\);

-- Location: LCCOMB_X45_Y10_N28
\UART_unit|SRAM_we_n~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_we_n~0_combout\ = ((\UART_unit|UART_SRAM_state~12_regout\) # ((!\UART_unit|UART_SRAM_state~13_regout\) # (!\UART_unit|UART_SRAM_state~11_regout\))) # (!\UART_unit|UART_RX|Empty~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Empty~regout\,
	datab => \UART_unit|UART_SRAM_state~12_regout\,
	datac => \UART_unit|UART_SRAM_state~11_regout\,
	datad => \UART_unit|UART_SRAM_state~13_regout\,
	combout => \UART_unit|SRAM_we_n~0_combout\);

-- Location: LCCOMB_X44_Y10_N30
\UART_unit|SRAM_we_n~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_we_n~1_combout\ = (!top_state(0) & (!\UART_unit|Selector7~0_combout\ & ((\UART_unit|SRAM_we_n~regout\) # (!\UART_unit|SRAM_we_n~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => \UART_unit|SRAM_we_n~0_combout\,
	datac => \UART_unit|SRAM_we_n~regout\,
	datad => \UART_unit|Selector7~0_combout\,
	combout => \UART_unit|SRAM_we_n~1_combout\);

-- Location: LCFF_X44_Y10_N31
\UART_unit|SRAM_we_n\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_we_n~1_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_we_n~regout\);

-- Location: LCCOMB_X44_Y10_N12
\always0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~9_combout\ = (top_state(0)) # (\UART_unit|SRAM_we_n~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => top_state(0),
	datad => \UART_unit|SRAM_we_n~regout\,
	combout => \always0~9_combout\);

-- Location: LCFF_X45_Y8_N9
\UART_timer[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[1]~28_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(1));

-- Location: LCCOMB_X45_Y8_N14
\UART_timer[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[4]~34_combout\ = (UART_timer(4) & (\UART_timer[3]~33\ $ (GND))) # (!UART_timer(4) & (!\UART_timer[3]~33\ & VCC))
-- \UART_timer[4]~35\ = CARRY((UART_timer(4) & !\UART_timer[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(4),
	datad => VCC,
	cin => \UART_timer[3]~33\,
	combout => \UART_timer[4]~34_combout\,
	cout => \UART_timer[4]~35\);

-- Location: LCFF_X45_Y8_N15
\UART_timer[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[4]~34_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(4));

-- Location: LCCOMB_X45_Y8_N18
\UART_timer[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[6]~38_combout\ = (UART_timer(6) & (\UART_timer[5]~37\ $ (GND))) # (!UART_timer(6) & (!\UART_timer[5]~37\ & VCC))
-- \UART_timer[6]~39\ = CARRY((UART_timer(6) & !\UART_timer[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(6),
	datad => VCC,
	cin => \UART_timer[5]~37\,
	combout => \UART_timer[6]~38_combout\,
	cout => \UART_timer[6]~39\);

-- Location: LCFF_X45_Y8_N19
\UART_timer[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[6]~38_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(6));

-- Location: LCCOMB_X45_Y8_N22
\UART_timer[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[8]~42_combout\ = (UART_timer(8) & (\UART_timer[7]~41\ $ (GND))) # (!UART_timer(8) & (!\UART_timer[7]~41\ & VCC))
-- \UART_timer[8]~43\ = CARRY((UART_timer(8) & !\UART_timer[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(8),
	datad => VCC,
	cin => \UART_timer[7]~41\,
	combout => \UART_timer[8]~42_combout\,
	cout => \UART_timer[8]~43\);

-- Location: LCFF_X45_Y8_N23
\UART_timer[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[8]~42_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(8));

-- Location: LCCOMB_X45_Y8_N26
\UART_timer[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[10]~46_combout\ = (UART_timer(10) & (\UART_timer[9]~45\ $ (GND))) # (!UART_timer(10) & (!\UART_timer[9]~45\ & VCC))
-- \UART_timer[10]~47\ = CARRY((UART_timer(10) & !\UART_timer[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(10),
	datad => VCC,
	cin => \UART_timer[9]~45\,
	combout => \UART_timer[10]~46_combout\,
	cout => \UART_timer[10]~47\);

-- Location: LCFF_X45_Y8_N27
\UART_timer[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[10]~46_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(10));

-- Location: LCCOMB_X45_Y8_N28
\UART_timer[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[11]~48_combout\ = (UART_timer(11) & (!\UART_timer[10]~47\)) # (!UART_timer(11) & ((\UART_timer[10]~47\) # (GND)))
-- \UART_timer[11]~49\ = CARRY((!\UART_timer[10]~47\) # (!UART_timer(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(11),
	datad => VCC,
	cin => \UART_timer[10]~47\,
	combout => \UART_timer[11]~48_combout\,
	cout => \UART_timer[11]~49\);

-- Location: LCFF_X45_Y8_N29
\UART_timer[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[11]~48_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(11));

-- Location: LCCOMB_X45_Y8_N30
\UART_timer[12]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[12]~50_combout\ = (UART_timer(12) & (\UART_timer[11]~49\ $ (GND))) # (!UART_timer(12) & (!\UART_timer[11]~49\ & VCC))
-- \UART_timer[12]~51\ = CARRY((UART_timer(12) & !\UART_timer[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(12),
	datad => VCC,
	cin => \UART_timer[11]~49\,
	combout => \UART_timer[12]~50_combout\,
	cout => \UART_timer[12]~51\);

-- Location: LCFF_X45_Y8_N31
\UART_timer[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[12]~50_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(12));

-- Location: LCCOMB_X45_Y7_N0
\UART_timer[13]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[13]~52_combout\ = (UART_timer(13) & (!\UART_timer[12]~51\)) # (!UART_timer(13) & ((\UART_timer[12]~51\) # (GND)))
-- \UART_timer[13]~53\ = CARRY((!\UART_timer[12]~51\) # (!UART_timer(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(13),
	datad => VCC,
	cin => \UART_timer[12]~51\,
	combout => \UART_timer[13]~52_combout\,
	cout => \UART_timer[13]~53\);

-- Location: LCFF_X45_Y7_N1
\UART_timer[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[13]~52_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(13));

-- Location: LCCOMB_X45_Y7_N2
\UART_timer[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[14]~54_combout\ = (UART_timer(14) & (\UART_timer[13]~53\ $ (GND))) # (!UART_timer(14) & (!\UART_timer[13]~53\ & VCC))
-- \UART_timer[14]~55\ = CARRY((UART_timer(14) & !\UART_timer[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(14),
	datad => VCC,
	cin => \UART_timer[13]~53\,
	combout => \UART_timer[14]~54_combout\,
	cout => \UART_timer[14]~55\);

-- Location: LCFF_X45_Y7_N3
\UART_timer[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[14]~54_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(14));

-- Location: LCCOMB_X45_Y7_N4
\UART_timer[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[15]~56_combout\ = (UART_timer(15) & (!\UART_timer[14]~55\)) # (!UART_timer(15) & ((\UART_timer[14]~55\) # (GND)))
-- \UART_timer[15]~57\ = CARRY((!\UART_timer[14]~55\) # (!UART_timer(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(15),
	datad => VCC,
	cin => \UART_timer[14]~55\,
	combout => \UART_timer[15]~56_combout\,
	cout => \UART_timer[15]~57\);

-- Location: LCFF_X45_Y7_N5
\UART_timer[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[15]~56_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(15));

-- Location: LCCOMB_X45_Y7_N8
\UART_timer[17]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[17]~60_combout\ = (UART_timer(17) & (!\UART_timer[16]~59\)) # (!UART_timer(17) & ((\UART_timer[16]~59\) # (GND)))
-- \UART_timer[17]~61\ = CARRY((!\UART_timer[16]~59\) # (!UART_timer(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(17),
	datad => VCC,
	cin => \UART_timer[16]~59\,
	combout => \UART_timer[17]~60_combout\,
	cout => \UART_timer[17]~61\);

-- Location: LCFF_X45_Y7_N9
\UART_timer[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[17]~60_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(17));

-- Location: LCCOMB_X45_Y7_N10
\UART_timer[18]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[18]~62_combout\ = (UART_timer(18) & (\UART_timer[17]~61\ $ (GND))) # (!UART_timer(18) & (!\UART_timer[17]~61\ & VCC))
-- \UART_timer[18]~63\ = CARRY((UART_timer(18) & !\UART_timer[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(18),
	datad => VCC,
	cin => \UART_timer[17]~61\,
	combout => \UART_timer[18]~62_combout\,
	cout => \UART_timer[18]~63\);

-- Location: LCCOMB_X45_Y7_N12
\UART_timer[19]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[19]~64_combout\ = (UART_timer(19) & (!\UART_timer[18]~63\)) # (!UART_timer(19) & ((\UART_timer[18]~63\) # (GND)))
-- \UART_timer[19]~65\ = CARRY((!\UART_timer[18]~63\) # (!UART_timer(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(19),
	datad => VCC,
	cin => \UART_timer[18]~63\,
	combout => \UART_timer[19]~64_combout\,
	cout => \UART_timer[19]~65\);

-- Location: LCCOMB_X45_Y7_N14
\UART_timer[20]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[20]~66_combout\ = (UART_timer(20) & (\UART_timer[19]~65\ $ (GND))) # (!UART_timer(20) & (!\UART_timer[19]~65\ & VCC))
-- \UART_timer[20]~67\ = CARRY((UART_timer(20) & !\UART_timer[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(20),
	datad => VCC,
	cin => \UART_timer[19]~65\,
	combout => \UART_timer[20]~66_combout\,
	cout => \UART_timer[20]~67\);

-- Location: LCFF_X45_Y7_N15
\UART_timer[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[20]~66_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(20));

-- Location: LCCOMB_X45_Y7_N18
\UART_timer[22]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[22]~70_combout\ = (UART_timer(22) & (\UART_timer[21]~69\ $ (GND))) # (!UART_timer(22) & (!\UART_timer[21]~69\ & VCC))
-- \UART_timer[22]~71\ = CARRY((UART_timer(22) & !\UART_timer[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(22),
	datad => VCC,
	cin => \UART_timer[21]~69\,
	combout => \UART_timer[22]~70_combout\,
	cout => \UART_timer[22]~71\);

-- Location: LCFF_X45_Y7_N19
\UART_timer[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[22]~70_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(22));

-- Location: LCCOMB_X45_Y7_N20
\UART_timer[23]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[23]~72_combout\ = (UART_timer(23) & (!\UART_timer[22]~71\)) # (!UART_timer(23) & ((\UART_timer[22]~71\) # (GND)))
-- \UART_timer[23]~73\ = CARRY((!\UART_timer[22]~71\) # (!UART_timer(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(23),
	datad => VCC,
	cin => \UART_timer[22]~71\,
	combout => \UART_timer[23]~72_combout\,
	cout => \UART_timer[23]~73\);

-- Location: LCCOMB_X45_Y7_N22
\UART_timer[24]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[24]~74_combout\ = (UART_timer(24) & (\UART_timer[23]~73\ $ (GND))) # (!UART_timer(24) & (!\UART_timer[23]~73\ & VCC))
-- \UART_timer[24]~75\ = CARRY((UART_timer(24) & !\UART_timer[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_timer(24),
	datad => VCC,
	cin => \UART_timer[23]~73\,
	combout => \UART_timer[24]~74_combout\,
	cout => \UART_timer[24]~75\);

-- Location: LCFF_X45_Y7_N23
\UART_timer[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[24]~74_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(24));

-- Location: LCCOMB_X45_Y7_N24
\UART_timer[25]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_timer[25]~76_combout\ = UART_timer(25) $ (\UART_timer[24]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(25),
	cin => \UART_timer[24]~75\,
	combout => \UART_timer[25]~76_combout\);

-- Location: LCFF_X45_Y7_N25
\UART_timer[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[25]~76_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(25));

-- Location: LCCOMB_X45_Y7_N28
\always0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~7_combout\ = (UART_timer(25) & !UART_timer(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => UART_timer(25),
	datad => UART_timer(24),
	combout => \always0~7_combout\);

-- Location: LCFF_X45_Y7_N11
\UART_timer[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[18]~62_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(18));

-- Location: LCFF_X45_Y7_N13
\UART_timer[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[19]~64_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(19));

-- Location: LCCOMB_X44_Y7_N4
\always0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~5_combout\ = (!UART_timer(16) & (!UART_timer(18) & (UART_timer(17) & UART_timer(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(16),
	datab => UART_timer(18),
	datac => UART_timer(17),
	datad => UART_timer(19),
	combout => \always0~5_combout\);

-- Location: LCFF_X45_Y7_N21
\UART_timer[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_timer[23]~72_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \always0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_timer(23));

-- Location: LCCOMB_X44_Y7_N6
\always0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~6_combout\ = (UART_timer(21) & (UART_timer(23) & (UART_timer(20) & UART_timer(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_timer(21),
	datab => UART_timer(23),
	datac => UART_timer(20),
	datad => UART_timer(22),
	combout => \always0~6_combout\);

-- Location: LCCOMB_X44_Y7_N24
\always0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \always0~8_combout\ = (\always0~4_combout\ & (\always0~7_combout\ & (\always0~5_combout\ & \always0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4_combout\,
	datab => \always0~7_combout\,
	datac => \always0~5_combout\,
	datad => \always0~6_combout\,
	combout => \always0~8_combout\);

-- Location: LCCOMB_X44_Y7_N0
\top_state[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \top_state[2]~5_combout\ = (\top_state[1]~4_combout\ & (((top_state(2))))) # (!\top_state[1]~4_combout\ & (top_state(0) & (!top_state(2) & top_state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => \top_state[1]~4_combout\,
	datac => top_state(2),
	datad => top_state(1),
	combout => \top_state[2]~5_combout\);

-- Location: LCFF_X44_Y7_N1
\top_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \top_state[2]~5_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => top_state(2));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[0]~I\ : cycloneii_io
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
	padio => ww_PUSH_BUTTON_I(0),
	combout => \PUSH_BUTTON_I~combout\(0));

-- Location: LCCOMB_X38_Y7_N2
\PB_unit|debounce_shift_reg[0][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][0]~0_combout\ = !\PUSH_BUTTON_I~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PUSH_BUTTON_I~combout\(0),
	combout => \PB_unit|debounce_shift_reg[0][0]~0_combout\);

-- Location: LCCOMB_X36_Y7_N0
\PB_unit|clock_1kHz_div_count[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[0]~16_combout\ = \PB_unit|clock_1kHz_div_count\(0) $ (VCC)
-- \PB_unit|clock_1kHz_div_count[0]~17\ = CARRY(\PB_unit|clock_1kHz_div_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(0),
	datad => VCC,
	combout => \PB_unit|clock_1kHz_div_count[0]~16_combout\,
	cout => \PB_unit|clock_1kHz_div_count[0]~17\);

-- Location: LCCOMB_X36_Y7_N26
\PB_unit|clock_1kHz_div_count[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[13]~42_combout\ = (\PB_unit|clock_1kHz_div_count\(13) & (!\PB_unit|clock_1kHz_div_count[12]~41\)) # (!\PB_unit|clock_1kHz_div_count\(13) & ((\PB_unit|clock_1kHz_div_count[12]~41\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[13]~43\ = CARRY((!\PB_unit|clock_1kHz_div_count[12]~41\) # (!\PB_unit|clock_1kHz_div_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(13),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[12]~41\,
	combout => \PB_unit|clock_1kHz_div_count[13]~42_combout\,
	cout => \PB_unit|clock_1kHz_div_count[13]~43\);

-- Location: LCCOMB_X36_Y7_N28
\PB_unit|clock_1kHz_div_count[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[14]~44_combout\ = (\PB_unit|clock_1kHz_div_count\(14) & (\PB_unit|clock_1kHz_div_count[13]~43\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(14) & (!\PB_unit|clock_1kHz_div_count[13]~43\ & VCC))
-- \PB_unit|clock_1kHz_div_count[14]~45\ = CARRY((\PB_unit|clock_1kHz_div_count\(14) & !\PB_unit|clock_1kHz_div_count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(14),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[13]~43\,
	combout => \PB_unit|clock_1kHz_div_count[14]~44_combout\,
	cout => \PB_unit|clock_1kHz_div_count[14]~45\);

-- Location: LCFF_X36_Y7_N29
\PB_unit|clock_1kHz_div_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[14]~44_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(14));

-- Location: LCCOMB_X36_Y7_N30
\PB_unit|clock_1kHz_div_count[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[15]~46_combout\ = \PB_unit|clock_1kHz_div_count[14]~45\ $ (\PB_unit|clock_1kHz_div_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|clock_1kHz_div_count\(15),
	cin => \PB_unit|clock_1kHz_div_count[14]~45\,
	combout => \PB_unit|clock_1kHz_div_count[15]~46_combout\);

-- Location: LCFF_X36_Y7_N31
\PB_unit|clock_1kHz_div_count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[15]~46_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(15));

-- Location: LCCOMB_X37_Y7_N30
\PB_unit|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|LessThan0~3_combout\ = (\PB_unit|clock_1kHz_div_count\(15)) # ((!\PB_unit|LessThan0~2_combout\ & (\PB_unit|clock_1kHz_div_count\(14) & \PB_unit|clock_1kHz_div_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|LessThan0~2_combout\,
	datab => \PB_unit|clock_1kHz_div_count\(14),
	datac => \PB_unit|clock_1kHz_div_count\(15),
	datad => \PB_unit|clock_1kHz_div_count\(13),
	combout => \PB_unit|LessThan0~3_combout\);

-- Location: LCFF_X36_Y7_N1
\PB_unit|clock_1kHz_div_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[0]~16_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(0));

-- Location: LCCOMB_X36_Y7_N2
\PB_unit|clock_1kHz_div_count[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[1]~18_combout\ = (\PB_unit|clock_1kHz_div_count\(1) & (!\PB_unit|clock_1kHz_div_count[0]~17\)) # (!\PB_unit|clock_1kHz_div_count\(1) & ((\PB_unit|clock_1kHz_div_count[0]~17\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[1]~19\ = CARRY((!\PB_unit|clock_1kHz_div_count[0]~17\) # (!\PB_unit|clock_1kHz_div_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(1),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[0]~17\,
	combout => \PB_unit|clock_1kHz_div_count[1]~18_combout\,
	cout => \PB_unit|clock_1kHz_div_count[1]~19\);

-- Location: LCFF_X36_Y7_N3
\PB_unit|clock_1kHz_div_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[1]~18_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(1));

-- Location: LCCOMB_X36_Y7_N4
\PB_unit|clock_1kHz_div_count[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[2]~20_combout\ = (\PB_unit|clock_1kHz_div_count\(2) & (\PB_unit|clock_1kHz_div_count[1]~19\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(2) & (!\PB_unit|clock_1kHz_div_count[1]~19\ & VCC))
-- \PB_unit|clock_1kHz_div_count[2]~21\ = CARRY((\PB_unit|clock_1kHz_div_count\(2) & !\PB_unit|clock_1kHz_div_count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(2),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[1]~19\,
	combout => \PB_unit|clock_1kHz_div_count[2]~20_combout\,
	cout => \PB_unit|clock_1kHz_div_count[2]~21\);

-- Location: LCFF_X36_Y7_N5
\PB_unit|clock_1kHz_div_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[2]~20_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(2));

-- Location: LCCOMB_X36_Y7_N8
\PB_unit|clock_1kHz_div_count[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[4]~24_combout\ = (\PB_unit|clock_1kHz_div_count\(4) & (\PB_unit|clock_1kHz_div_count[3]~23\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(4) & (!\PB_unit|clock_1kHz_div_count[3]~23\ & VCC))
-- \PB_unit|clock_1kHz_div_count[4]~25\ = CARRY((\PB_unit|clock_1kHz_div_count\(4) & !\PB_unit|clock_1kHz_div_count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(4),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[3]~23\,
	combout => \PB_unit|clock_1kHz_div_count[4]~24_combout\,
	cout => \PB_unit|clock_1kHz_div_count[4]~25\);

-- Location: LCFF_X36_Y7_N9
\PB_unit|clock_1kHz_div_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[4]~24_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(4));

-- Location: LCCOMB_X36_Y7_N12
\PB_unit|clock_1kHz_div_count[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[6]~28_combout\ = (\PB_unit|clock_1kHz_div_count\(6) & (\PB_unit|clock_1kHz_div_count[5]~27\ $ (GND))) # (!\PB_unit|clock_1kHz_div_count\(6) & (!\PB_unit|clock_1kHz_div_count[5]~27\ & VCC))
-- \PB_unit|clock_1kHz_div_count[6]~29\ = CARRY((\PB_unit|clock_1kHz_div_count\(6) & !\PB_unit|clock_1kHz_div_count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(6),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[5]~27\,
	combout => \PB_unit|clock_1kHz_div_count[6]~28_combout\,
	cout => \PB_unit|clock_1kHz_div_count[6]~29\);

-- Location: LCCOMB_X36_Y7_N14
\PB_unit|clock_1kHz_div_count[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[7]~30_combout\ = (\PB_unit|clock_1kHz_div_count\(7) & (!\PB_unit|clock_1kHz_div_count[6]~29\)) # (!\PB_unit|clock_1kHz_div_count\(7) & ((\PB_unit|clock_1kHz_div_count[6]~29\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[7]~31\ = CARRY((!\PB_unit|clock_1kHz_div_count[6]~29\) # (!\PB_unit|clock_1kHz_div_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(7),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[6]~29\,
	combout => \PB_unit|clock_1kHz_div_count[7]~30_combout\,
	cout => \PB_unit|clock_1kHz_div_count[7]~31\);

-- Location: LCFF_X36_Y7_N15
\PB_unit|clock_1kHz_div_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[7]~30_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(7));

-- Location: LCCOMB_X36_Y7_N18
\PB_unit|clock_1kHz_div_count[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[9]~34_combout\ = (\PB_unit|clock_1kHz_div_count\(9) & (!\PB_unit|clock_1kHz_div_count[8]~33\)) # (!\PB_unit|clock_1kHz_div_count\(9) & ((\PB_unit|clock_1kHz_div_count[8]~33\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[9]~35\ = CARRY((!\PB_unit|clock_1kHz_div_count[8]~33\) # (!\PB_unit|clock_1kHz_div_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(9),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[8]~33\,
	combout => \PB_unit|clock_1kHz_div_count[9]~34_combout\,
	cout => \PB_unit|clock_1kHz_div_count[9]~35\);

-- Location: LCFF_X36_Y7_N19
\PB_unit|clock_1kHz_div_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[9]~34_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(9));

-- Location: LCCOMB_X36_Y7_N22
\PB_unit|clock_1kHz_div_count[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz_div_count[11]~38_combout\ = (\PB_unit|clock_1kHz_div_count\(11) & (!\PB_unit|clock_1kHz_div_count[10]~37\)) # (!\PB_unit|clock_1kHz_div_count\(11) & ((\PB_unit|clock_1kHz_div_count[10]~37\) # (GND)))
-- \PB_unit|clock_1kHz_div_count[11]~39\ = CARRY((!\PB_unit|clock_1kHz_div_count[10]~37\) # (!\PB_unit|clock_1kHz_div_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PB_unit|clock_1kHz_div_count\(11),
	datad => VCC,
	cin => \PB_unit|clock_1kHz_div_count[10]~37\,
	combout => \PB_unit|clock_1kHz_div_count[11]~38_combout\,
	cout => \PB_unit|clock_1kHz_div_count[11]~39\);

-- Location: LCFF_X36_Y7_N23
\PB_unit|clock_1kHz_div_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[11]~38_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(11));

-- Location: LCFF_X36_Y7_N27
\PB_unit|clock_1kHz_div_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[13]~42_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(13));

-- Location: LCCOMB_X37_Y7_N22
\PB_unit|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|Equal0~4_combout\ = (!\PB_unit|clock_1kHz_div_count\(8) & (!\PB_unit|clock_1kHz_div_count\(13) & (!\PB_unit|clock_1kHz_div_count\(15) & !\PB_unit|clock_1kHz_div_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(8),
	datab => \PB_unit|clock_1kHz_div_count\(13),
	datac => \PB_unit|clock_1kHz_div_count\(15),
	datad => \PB_unit|clock_1kHz_div_count\(14),
	combout => \PB_unit|Equal0~4_combout\);

-- Location: LCFF_X36_Y7_N13
\PB_unit|clock_1kHz_div_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz_div_count[6]~28_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \PB_unit|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_div_count\(6));

-- Location: LCCOMB_X37_Y7_N18
\PB_unit|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|Equal0~3_combout\ = (!\PB_unit|clock_1kHz_div_count\(5) & (!\PB_unit|clock_1kHz_div_count\(7) & (!\PB_unit|clock_1kHz_div_count\(2) & !\PB_unit|clock_1kHz_div_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz_div_count\(5),
	datab => \PB_unit|clock_1kHz_div_count\(7),
	datac => \PB_unit|clock_1kHz_div_count\(2),
	datad => \PB_unit|clock_1kHz_div_count\(6),
	combout => \PB_unit|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y7_N24
\PB_unit|clock_1kHz~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|clock_1kHz~0_combout\ = \PB_unit|clock_1kHz~regout\ $ (((\PB_unit|Equal0~2_combout\ & (\PB_unit|Equal0~4_combout\ & \PB_unit|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|Equal0~2_combout\,
	datab => \PB_unit|Equal0~4_combout\,
	datac => \PB_unit|clock_1kHz~regout\,
	datad => \PB_unit|Equal0~3_combout\,
	combout => \PB_unit|clock_1kHz~0_combout\);

-- Location: LCFF_X37_Y7_N25
\PB_unit|clock_1kHz\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|clock_1kHz~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz~regout\);

-- Location: LCFF_X37_Y7_N5
\PB_unit|clock_1kHz_buf\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \PB_unit|clock_1kHz~regout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|clock_1kHz_buf~regout\);

-- Location: LCCOMB_X37_Y7_N4
\PB_unit|always3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|always3~0_combout\ = (!\PB_unit|clock_1kHz~regout\ & \PB_unit|clock_1kHz_buf~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|clock_1kHz~regout\,
	datac => \PB_unit|clock_1kHz_buf~regout\,
	combout => \PB_unit|always3~0_combout\);

-- Location: LCFF_X38_Y7_N3
\PB_unit|debounce_shift_reg[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][0]~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][0]~regout\);

-- Location: LCCOMB_X38_Y7_N0
\PB_unit|debounce_shift_reg[0][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][1]~feeder_combout\ = \PB_unit|debounce_shift_reg[0][0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|debounce_shift_reg[0][0]~regout\,
	combout => \PB_unit|debounce_shift_reg[0][1]~feeder_combout\);

-- Location: LCFF_X38_Y7_N1
\PB_unit|debounce_shift_reg[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][1]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][1]~regout\);

-- Location: LCCOMB_X38_Y7_N30
\PB_unit|debounce_shift_reg[0][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][2]~feeder_combout\ = \PB_unit|debounce_shift_reg[0][1]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|debounce_shift_reg[0][1]~regout\,
	combout => \PB_unit|debounce_shift_reg[0][2]~feeder_combout\);

-- Location: LCFF_X38_Y7_N31
\PB_unit|debounce_shift_reg[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][2]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][2]~regout\);

-- Location: LCCOMB_X38_Y7_N4
\PB_unit|debounce_shift_reg[0][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][3]~feeder_combout\ = \PB_unit|debounce_shift_reg[0][2]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|debounce_shift_reg[0][2]~regout\,
	combout => \PB_unit|debounce_shift_reg[0][3]~feeder_combout\);

-- Location: LCFF_X38_Y7_N5
\PB_unit|debounce_shift_reg[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][3]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][3]~regout\);

-- Location: LCFF_X38_Y7_N27
\PB_unit|debounce_shift_reg[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \PB_unit|debounce_shift_reg[0][3]~regout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][4]~regout\);

-- Location: LCFF_X37_Y7_N15
\PB_unit|debounce_shift_reg[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \PB_unit|debounce_shift_reg[0][4]~regout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][5]~regout\);

-- Location: LCFF_X37_Y7_N1
\PB_unit|debounce_shift_reg[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \PB_unit|debounce_shift_reg[0][5]~regout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][6]~regout\);

-- Location: LCCOMB_X37_Y7_N2
\PB_unit|debounce_shift_reg[0][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][7]~feeder_combout\ = \PB_unit|debounce_shift_reg[0][6]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|debounce_shift_reg[0][6]~regout\,
	combout => \PB_unit|debounce_shift_reg[0][7]~feeder_combout\);

-- Location: LCFF_X37_Y7_N3
\PB_unit|debounce_shift_reg[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][7]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][7]~regout\);

-- Location: LCCOMB_X37_Y7_N26
\PB_unit|debounce_shift_reg[0][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|debounce_shift_reg[0][8]~feeder_combout\ = \PB_unit|debounce_shift_reg[0][7]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_unit|debounce_shift_reg[0][7]~regout\,
	combout => \PB_unit|debounce_shift_reg[0][8]~feeder_combout\);

-- Location: LCFF_X37_Y7_N27
\PB_unit|debounce_shift_reg[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|debounce_shift_reg[0][8]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][8]~regout\);

-- Location: LCFF_X37_Y7_N7
\PB_unit|debounce_shift_reg[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \PB_unit|debounce_shift_reg[0][8]~regout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \PB_unit|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|debounce_shift_reg[0][9]~regout\);

-- Location: LCCOMB_X37_Y7_N6
\PB_unit|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|WideOr0~0_combout\ = (\PB_unit|debounce_shift_reg[0][8]~regout\) # ((\PB_unit|debounce_shift_reg[0][7]~regout\) # ((\PB_unit|debounce_shift_reg[0][9]~regout\) # (\PB_unit|debounce_shift_reg[0][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|debounce_shift_reg[0][8]~regout\,
	datab => \PB_unit|debounce_shift_reg[0][7]~regout\,
	datac => \PB_unit|debounce_shift_reg[0][9]~regout\,
	datad => \PB_unit|debounce_shift_reg[0][6]~regout\,
	combout => \PB_unit|WideOr0~0_combout\);

-- Location: LCCOMB_X38_Y7_N24
\PB_unit|WideOr0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PB_unit|WideOr0~2_combout\ = (\PB_unit|WideOr0~1_combout\) # ((\PB_unit|debounce_shift_reg[0][0]~regout\) # ((\PB_unit|WideOr0~0_combout\) # (\PB_unit|debounce_shift_reg[0][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|WideOr0~1_combout\,
	datab => \PB_unit|debounce_shift_reg[0][0]~regout\,
	datac => \PB_unit|WideOr0~0_combout\,
	datad => \PB_unit|debounce_shift_reg[0][1]~regout\,
	combout => \PB_unit|WideOr0~2_combout\);

-- Location: LCFF_X38_Y7_N25
\PB_unit|push_button_status[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \PB_unit|WideOr0~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|push_button_status\(0));

-- Location: LCFF_X44_Y7_N17
\PB_unit|push_button_status_buf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \PB_unit|push_button_status\(0),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PB_unit|push_button_status_buf\(0));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UART_RX_I~I\ : cycloneii_io
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
	padio => ww_UART_RX_I,
	combout => \UART_RX_I~combout\);

-- Location: LCCOMB_X44_Y7_N16
\top_state[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \top_state[1]~2_combout\ = (\UART_RX_I~combout\ & ((\PB_unit|push_button_status_buf\(0)) # (!\PB_unit|push_button_status\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_unit|push_button_status\(0),
	datac => \PB_unit|push_button_status_buf\(0),
	datad => \UART_RX_I~combout\,
	combout => \top_state[1]~2_combout\);

-- Location: LCCOMB_X44_Y7_N28
\Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (!top_state(0) & (!top_state(2) & (!\top_state[1]~2_combout\ & !top_state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => top_state(2),
	datac => \top_state[1]~2_combout\,
	datad => top_state(1),
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X44_Y7_N12
\Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\Selector4~1_combout\) # ((\Selector4~0_combout\ & (!\Equal1~5_combout\ & \always0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \Equal1~5_combout\,
	datac => \always0~8_combout\,
	datad => \Selector4~1_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCFF_X44_Y7_N13
\top_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector4~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => top_state(0));

-- Location: LCFF_X45_Y10_N1
\UART_unit|UART_SRAM_state~13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_SRAM_state~16_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => top_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state~13_regout\);

-- Location: LCCOMB_X45_Y10_N24
\UART_unit|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector7~0_combout\ = (!\UART_unit|UART_RX|Empty~regout\ & (\UART_unit|UART_SRAM_state~12_regout\ & \UART_unit|UART_SRAM_state~13_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Empty~regout\,
	datab => \UART_unit|UART_SRAM_state~12_regout\,
	datad => \UART_unit|UART_SRAM_state~13_regout\,
	combout => \UART_unit|Selector7~0_combout\);

-- Location: LCCOMB_X43_Y11_N14
\UART_unit|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~1_combout\ = \UART_unit|SRAM_address\(0) $ (VCC)
-- \UART_unit|Add1~2\ = CARRY(\UART_unit|SRAM_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(0),
	datad => VCC,
	combout => \UART_unit|Add1~1_combout\,
	cout => \UART_unit|Add1~2\);

-- Location: LCCOMB_X43_Y11_N2
\UART_unit|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~54_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~1_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|Add1~0_combout\,
	datac => \UART_unit|Add1~1_combout\,
	combout => \UART_unit|Add1~54_combout\);

-- Location: LCCOMB_X45_Y10_N4
\UART_unit|SRAM_address[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[0]~0_combout\ = ((\UART_unit|UART_SRAM_state~12_regout\) # ((\UART_unit|UART_SRAM_state~11_regout\) # (\UART_unit|UART_SRAM_state~13_regout\))) # (!\UART_rx_enable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_rx_enable~regout\,
	datab => \UART_unit|UART_SRAM_state~12_regout\,
	datac => \UART_unit|UART_SRAM_state~11_regout\,
	datad => \UART_unit|UART_SRAM_state~13_regout\,
	combout => \UART_unit|SRAM_address[0]~0_combout\);

-- Location: LCCOMB_X44_Y10_N26
\UART_unit|SRAM_address[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_address[0]~1_combout\ = (\UART_unit|Selector7~0_combout\) # ((top_state(0)) # (!\UART_unit|SRAM_address[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|Selector7~0_combout\,
	datac => top_state(0),
	datad => \UART_unit|SRAM_address[0]~0_combout\,
	combout => \UART_unit|SRAM_address[0]~1_combout\);

-- Location: LCFF_X43_Y11_N3
\UART_unit|SRAM_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~54_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(0));

-- Location: LCCOMB_X43_Y11_N16
\UART_unit|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~3_combout\ = (\UART_unit|SRAM_address\(1) & (!\UART_unit|Add1~2\)) # (!\UART_unit|SRAM_address\(1) & ((\UART_unit|Add1~2\) # (GND)))
-- \UART_unit|Add1~4\ = CARRY((!\UART_unit|Add1~2\) # (!\UART_unit|SRAM_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(1),
	datad => VCC,
	cin => \UART_unit|Add1~2\,
	combout => \UART_unit|Add1~3_combout\,
	cout => \UART_unit|Add1~4\);

-- Location: LCCOMB_X43_Y11_N18
\UART_unit|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~5_combout\ = (\UART_unit|SRAM_address\(2) & (\UART_unit|Add1~4\ $ (GND))) # (!\UART_unit|SRAM_address\(2) & (!\UART_unit|Add1~4\ & VCC))
-- \UART_unit|Add1~6\ = CARRY((\UART_unit|SRAM_address\(2) & !\UART_unit|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(2),
	datad => VCC,
	cin => \UART_unit|Add1~4\,
	combout => \UART_unit|Add1~5_combout\,
	cout => \UART_unit|Add1~6\);

-- Location: LCCOMB_X44_Y11_N24
\UART_unit|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~52_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~5_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datac => \UART_unit|Add1~0_combout\,
	datad => \UART_unit|Add1~5_combout\,
	combout => \UART_unit|Add1~52_combout\);

-- Location: LCFF_X44_Y11_N25
\UART_unit|SRAM_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~52_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(2));

-- Location: LCCOMB_X43_Y11_N20
\UART_unit|Add1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~7_combout\ = (\UART_unit|SRAM_address\(3) & (!\UART_unit|Add1~6\)) # (!\UART_unit|SRAM_address\(3) & ((\UART_unit|Add1~6\) # (GND)))
-- \UART_unit|Add1~8\ = CARRY((!\UART_unit|Add1~6\) # (!\UART_unit|SRAM_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(3),
	datad => VCC,
	cin => \UART_unit|Add1~6\,
	combout => \UART_unit|Add1~7_combout\,
	cout => \UART_unit|Add1~8\);

-- Location: LCCOMB_X44_Y11_N14
\UART_unit|Add1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~51_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~7_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|Add1~0_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|Add1~7_combout\,
	combout => \UART_unit|Add1~51_combout\);

-- Location: LCFF_X44_Y11_N15
\UART_unit|SRAM_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~51_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(3));

-- Location: LCCOMB_X43_Y11_N22
\UART_unit|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~9_combout\ = (\UART_unit|SRAM_address\(4) & (\UART_unit|Add1~8\ $ (GND))) # (!\UART_unit|SRAM_address\(4) & (!\UART_unit|Add1~8\ & VCC))
-- \UART_unit|Add1~10\ = CARRY((\UART_unit|SRAM_address\(4) & !\UART_unit|Add1~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(4),
	datad => VCC,
	cin => \UART_unit|Add1~8\,
	combout => \UART_unit|Add1~9_combout\,
	cout => \UART_unit|Add1~10\);

-- Location: LCCOMB_X43_Y11_N24
\UART_unit|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~12_combout\ = (\UART_unit|SRAM_address\(5) & (!\UART_unit|Add1~10\)) # (!\UART_unit|SRAM_address\(5) & ((\UART_unit|Add1~10\) # (GND)))
-- \UART_unit|Add1~13\ = CARRY((!\UART_unit|Add1~10\) # (!\UART_unit|SRAM_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(5),
	datad => VCC,
	cin => \UART_unit|Add1~10\,
	combout => \UART_unit|Add1~12_combout\,
	cout => \UART_unit|Add1~13\);

-- Location: LCCOMB_X44_Y11_N30
\UART_unit|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~14_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~12_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datac => \UART_unit|Add1~0_combout\,
	datad => \UART_unit|Add1~12_combout\,
	combout => \UART_unit|Add1~14_combout\);

-- Location: LCFF_X44_Y11_N31
\UART_unit|SRAM_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~14_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(5));

-- Location: LCCOMB_X43_Y11_N26
\UART_unit|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~15_combout\ = (\UART_unit|SRAM_address\(6) & (\UART_unit|Add1~13\ $ (GND))) # (!\UART_unit|SRAM_address\(6) & (!\UART_unit|Add1~13\ & VCC))
-- \UART_unit|Add1~16\ = CARRY((\UART_unit|SRAM_address\(6) & !\UART_unit|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(6),
	datad => VCC,
	cin => \UART_unit|Add1~13\,
	combout => \UART_unit|Add1~15_combout\,
	cout => \UART_unit|Add1~16\);

-- Location: LCCOMB_X44_Y10_N6
\UART_unit|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~17_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~15_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|Add1~15_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|Add1~0_combout\,
	combout => \UART_unit|Add1~17_combout\);

-- Location: LCFF_X44_Y10_N7
\UART_unit|SRAM_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~17_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(6));

-- Location: LCCOMB_X43_Y11_N28
\UART_unit|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~18_combout\ = (\UART_unit|SRAM_address\(7) & (!\UART_unit|Add1~16\)) # (!\UART_unit|SRAM_address\(7) & ((\UART_unit|Add1~16\) # (GND)))
-- \UART_unit|Add1~19\ = CARRY((!\UART_unit|Add1~16\) # (!\UART_unit|SRAM_address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(7),
	datad => VCC,
	cin => \UART_unit|Add1~16\,
	combout => \UART_unit|Add1~18_combout\,
	cout => \UART_unit|Add1~19\);

-- Location: LCCOMB_X43_Y10_N0
\UART_unit|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~24_combout\ = (\UART_unit|SRAM_address\(9) & (!\UART_unit|Add1~22\)) # (!\UART_unit|SRAM_address\(9) & ((\UART_unit|Add1~22\) # (GND)))
-- \UART_unit|Add1~25\ = CARRY((!\UART_unit|Add1~22\) # (!\UART_unit|SRAM_address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(9),
	datad => VCC,
	cin => \UART_unit|Add1~22\,
	combout => \UART_unit|Add1~24_combout\,
	cout => \UART_unit|Add1~25\);

-- Location: LCCOMB_X44_Y10_N28
\UART_unit|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~26_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~24_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|Add1~24_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|Add1~0_combout\,
	combout => \UART_unit|Add1~26_combout\);

-- Location: LCFF_X44_Y10_N29
\UART_unit|SRAM_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~26_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(9));

-- Location: LCCOMB_X43_Y10_N2
\UART_unit|Add1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~27_combout\ = (\UART_unit|SRAM_address\(10) & (\UART_unit|Add1~25\ $ (GND))) # (!\UART_unit|SRAM_address\(10) & (!\UART_unit|Add1~25\ & VCC))
-- \UART_unit|Add1~28\ = CARRY((\UART_unit|SRAM_address\(10) & !\UART_unit|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(10),
	datad => VCC,
	cin => \UART_unit|Add1~25\,
	combout => \UART_unit|Add1~27_combout\,
	cout => \UART_unit|Add1~28\);

-- Location: LCCOMB_X44_Y10_N14
\UART_unit|Add1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~29_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~27_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|Add1~27_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|Add1~0_combout\,
	combout => \UART_unit|Add1~29_combout\);

-- Location: LCFF_X44_Y10_N15
\UART_unit|SRAM_address[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~29_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(10));

-- Location: LCCOMB_X43_Y10_N6
\UART_unit|Add1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~33_combout\ = (\UART_unit|SRAM_address\(12) & (\UART_unit|Add1~31\ $ (GND))) # (!\UART_unit|SRAM_address\(12) & (!\UART_unit|Add1~31\ & VCC))
-- \UART_unit|Add1~34\ = CARRY((\UART_unit|SRAM_address\(12) & !\UART_unit|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(12),
	datad => VCC,
	cin => \UART_unit|Add1~31\,
	combout => \UART_unit|Add1~33_combout\,
	cout => \UART_unit|Add1~34\);

-- Location: LCCOMB_X44_Y10_N10
\UART_unit|Add1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~35_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~33_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|Add1~33_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|Add1~0_combout\,
	combout => \UART_unit|Add1~35_combout\);

-- Location: LCFF_X44_Y10_N11
\UART_unit|SRAM_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~35_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(12));

-- Location: LCCOMB_X44_Y10_N20
\UART_unit|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~38_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~36_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|Add1~36_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|Add1~0_combout\,
	combout => \UART_unit|Add1~38_combout\);

-- Location: LCFF_X44_Y10_N21
\UART_unit|SRAM_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~38_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(13));

-- Location: LCCOMB_X44_Y11_N2
\UART_unit|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~1_combout\ = (((!\UART_unit|SRAM_address\(13)) # (!\UART_unit|SRAM_address\(10))) # (!\UART_unit|SRAM_address\(12))) # (!\UART_unit|SRAM_address\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(11),
	datab => \UART_unit|SRAM_address\(12),
	datac => \UART_unit|SRAM_address\(10),
	datad => \UART_unit|SRAM_address\(13),
	combout => \UART_unit|LessThan1~1_combout\);

-- Location: LCCOMB_X43_Y10_N28
\UART_unit|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~44_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~42_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|Add1~42_combout\,
	datab => \UART_unit|Add1~0_combout\,
	datad => \UART_unit|LessThan1~5_combout\,
	combout => \UART_unit|Add1~44_combout\);

-- Location: LCFF_X43_Y10_N29
\UART_unit|SRAM_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~44_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(15));

-- Location: LCCOMB_X43_Y10_N26
\UART_unit|Add1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~41_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~39_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|Add1~39_combout\,
	datab => \UART_unit|Add1~0_combout\,
	datad => \UART_unit|LessThan1~5_combout\,
	combout => \UART_unit|Add1~41_combout\);

-- Location: LCFF_X43_Y10_N27
\UART_unit|SRAM_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~41_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(14));

-- Location: LCCOMB_X43_Y10_N14
\UART_unit|Add1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~45_combout\ = (\UART_unit|SRAM_address\(16) & (\UART_unit|Add1~43\ $ (GND))) # (!\UART_unit|SRAM_address\(16) & (!\UART_unit|Add1~43\ & VCC))
-- \UART_unit|Add1~46\ = CARRY((\UART_unit|SRAM_address\(16) & !\UART_unit|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(16),
	datad => VCC,
	cin => \UART_unit|Add1~43\,
	combout => \UART_unit|Add1~45_combout\,
	cout => \UART_unit|Add1~46\);

-- Location: LCCOMB_X43_Y10_N30
\UART_unit|Add1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~47_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~45_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|Add1~0_combout\,
	datac => \UART_unit|Add1~45_combout\,
	datad => \UART_unit|LessThan1~5_combout\,
	combout => \UART_unit|Add1~47_combout\);

-- Location: LCFF_X43_Y10_N31
\UART_unit|SRAM_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~47_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(16));

-- Location: LCCOMB_X44_Y11_N8
\UART_unit|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~0_combout\ = (((!\UART_unit|SRAM_address\(15)) # (!\UART_unit|SRAM_address\(14))) # (!\UART_unit|SRAM_address\(16))) # (!\UART_unit|SRAM_address\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(17),
	datab => \UART_unit|SRAM_address\(16),
	datac => \UART_unit|SRAM_address\(14),
	datad => \UART_unit|SRAM_address\(15),
	combout => \UART_unit|LessThan1~0_combout\);

-- Location: LCCOMB_X44_Y11_N26
\UART_unit|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~11_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~9_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|Add1~0_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|Add1~9_combout\,
	combout => \UART_unit|Add1~11_combout\);

-- Location: LCFF_X44_Y11_N27
\UART_unit|SRAM_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~11_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(4));

-- Location: LCCOMB_X44_Y11_N0
\UART_unit|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~3_combout\ = (((!\UART_unit|SRAM_address\(5)) # (!\UART_unit|SRAM_address\(3))) # (!\UART_unit|SRAM_address\(4))) # (!\UART_unit|SRAM_address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(2),
	datab => \UART_unit|SRAM_address\(4),
	datac => \UART_unit|SRAM_address\(3),
	datad => \UART_unit|SRAM_address\(5),
	combout => \UART_unit|LessThan1~3_combout\);

-- Location: LCCOMB_X44_Y11_N12
\UART_unit|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~4_combout\ = (\UART_unit|LessThan1~2_combout\) # ((\UART_unit|LessThan1~1_combout\) # ((\UART_unit|LessThan1~0_combout\) # (\UART_unit|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~2_combout\,
	datab => \UART_unit|LessThan1~1_combout\,
	datac => \UART_unit|LessThan1~0_combout\,
	datad => \UART_unit|LessThan1~3_combout\,
	combout => \UART_unit|LessThan1~4_combout\);

-- Location: LCCOMB_X44_Y11_N16
\UART_unit|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|LessThan1~5_combout\ = ((\UART_unit|LessThan1~4_combout\) # (!\UART_unit|SRAM_address\(1))) # (!\UART_unit|SRAM_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|SRAM_address\(0),
	datac => \UART_unit|SRAM_address\(1),
	datad => \UART_unit|LessThan1~4_combout\,
	combout => \UART_unit|LessThan1~5_combout\);

-- Location: LCCOMB_X44_Y10_N18
\UART_unit|UART_SRAM_state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~20_combout\ = (\UART_unit|UART_SRAM_state~19_combout\) # ((\UART_unit|Selector3~1_combout\) # ((\UART_unit|Selector7~0_combout\ & \UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state~19_combout\,
	datab => \UART_unit|Selector7~0_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|Selector3~1_combout\,
	combout => \UART_unit|UART_SRAM_state~20_combout\);

-- Location: LCFF_X44_Y10_N19
\UART_unit|UART_SRAM_state~11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_SRAM_state~20_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => top_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state~11_regout\);

-- Location: LCCOMB_X46_Y13_N8
\UART_unit|UART_RX|clock_count[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[0]~10_combout\ = \UART_unit|UART_RX|clock_count\(0) $ (VCC)
-- \UART_unit|UART_RX|clock_count[0]~11\ = CARRY(\UART_unit|UART_RX|clock_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|clock_count\(0),
	datad => VCC,
	combout => \UART_unit|UART_RX|clock_count[0]~10_combout\,
	cout => \UART_unit|UART_RX|clock_count[0]~11\);

-- Location: LCCOMB_X45_Y13_N30
\UART_unit|UART_RX|clock_count[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[8]~12_combout\ = (\UART_unit|UART_RX|RXC_state~8_regout\ & (((\UART_unit|UART_RX|always0~2_combout\ & !\UART_unit|UART_RX|RXC_state~9_regout\)))) # (!\UART_unit|UART_RX|RXC_state~8_regout\ & 
-- ((\UART_unit|UART_RX|Equal2~2_combout\) # ((!\UART_unit|UART_RX|RXC_state~9_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Equal2~2_combout\,
	datab => \UART_unit|UART_RX|always0~2_combout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|RXC_state~9_regout\,
	combout => \UART_unit|UART_RX|clock_count[8]~12_combout\);

-- Location: LCFF_X45_Y12_N1
\UART_unit|UART_RX|RX_data_in\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_RX_I~combout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data_in~regout\);

-- Location: LCCOMB_X45_Y13_N0
\UART_unit|UART_RX|clock_count[8]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[8]~13_combout\ = (!\UART_unit|UART_RX|RXC_state~9_regout\ & ((\UART_unit|UART_RX|RX_data_in~regout\) # ((!\UART_unit|UART_rx_enable~regout\ & !\UART_unit|UART_RX|RXC_state~8_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_rx_enable~regout\,
	datab => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|RX_data_in~regout\,
	combout => \UART_unit|UART_RX|clock_count[8]~13_combout\);

-- Location: LCCOMB_X45_Y13_N26
\UART_unit|UART_RX|clock_count[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[8]~14_combout\ = (!\UART_unit|UART_RX|clock_count[8]~13_combout\ & (((!\UART_unit|UART_RX|RXC_state~8_regout\) # (!\UART_unit|UART_RX|RXC_state~9_regout\)) # (!\UART_unit|UART_RX|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Equal2~2_combout\,
	datab => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|clock_count[8]~13_combout\,
	combout => \UART_unit|UART_RX|clock_count[8]~14_combout\);

-- Location: LCFF_X46_Y13_N9
\UART_unit|UART_RX|clock_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[0]~10_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[8]~12_combout\,
	ena => \UART_unit|UART_RX|clock_count[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(0));

-- Location: LCCOMB_X46_Y13_N10
\UART_unit|UART_RX|clock_count[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[1]~15_combout\ = (\UART_unit|UART_RX|clock_count\(1) & (!\UART_unit|UART_RX|clock_count[0]~11\)) # (!\UART_unit|UART_RX|clock_count\(1) & ((\UART_unit|UART_RX|clock_count[0]~11\) # (GND)))
-- \UART_unit|UART_RX|clock_count[1]~16\ = CARRY((!\UART_unit|UART_RX|clock_count[0]~11\) # (!\UART_unit|UART_RX|clock_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|clock_count\(1),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[0]~11\,
	combout => \UART_unit|UART_RX|clock_count[1]~15_combout\,
	cout => \UART_unit|UART_RX|clock_count[1]~16\);

-- Location: LCFF_X46_Y13_N11
\UART_unit|UART_RX|clock_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[1]~15_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[8]~12_combout\,
	ena => \UART_unit|UART_RX|clock_count[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(1));

-- Location: LCCOMB_X46_Y13_N14
\UART_unit|UART_RX|clock_count[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[3]~19_combout\ = (\UART_unit|UART_RX|clock_count\(3) & (!\UART_unit|UART_RX|clock_count[2]~18\)) # (!\UART_unit|UART_RX|clock_count\(3) & ((\UART_unit|UART_RX|clock_count[2]~18\) # (GND)))
-- \UART_unit|UART_RX|clock_count[3]~20\ = CARRY((!\UART_unit|UART_RX|clock_count[2]~18\) # (!\UART_unit|UART_RX|clock_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|clock_count\(3),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[2]~18\,
	combout => \UART_unit|UART_RX|clock_count[3]~19_combout\,
	cout => \UART_unit|UART_RX|clock_count[3]~20\);

-- Location: LCFF_X46_Y13_N15
\UART_unit|UART_RX|clock_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[3]~19_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[8]~12_combout\,
	ena => \UART_unit|UART_RX|clock_count[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(3));

-- Location: LCCOMB_X46_Y13_N18
\UART_unit|UART_RX|clock_count[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[5]~23_combout\ = (\UART_unit|UART_RX|clock_count\(5) & (!\UART_unit|UART_RX|clock_count[4]~22\)) # (!\UART_unit|UART_RX|clock_count\(5) & ((\UART_unit|UART_RX|clock_count[4]~22\) # (GND)))
-- \UART_unit|UART_RX|clock_count[5]~24\ = CARRY((!\UART_unit|UART_RX|clock_count[4]~22\) # (!\UART_unit|UART_RX|clock_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|clock_count\(5),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[4]~22\,
	combout => \UART_unit|UART_RX|clock_count[5]~23_combout\,
	cout => \UART_unit|UART_RX|clock_count[5]~24\);

-- Location: LCFF_X46_Y13_N19
\UART_unit|UART_RX|clock_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[5]~23_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[8]~12_combout\,
	ena => \UART_unit|UART_RX|clock_count[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(5));

-- Location: LCCOMB_X46_Y13_N22
\UART_unit|UART_RX|clock_count[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[7]~27_combout\ = (\UART_unit|UART_RX|clock_count\(7) & (!\UART_unit|UART_RX|clock_count[6]~26\)) # (!\UART_unit|UART_RX|clock_count\(7) & ((\UART_unit|UART_RX|clock_count[6]~26\) # (GND)))
-- \UART_unit|UART_RX|clock_count[7]~28\ = CARRY((!\UART_unit|UART_RX|clock_count[6]~26\) # (!\UART_unit|UART_RX|clock_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|clock_count\(7),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[6]~26\,
	combout => \UART_unit|UART_RX|clock_count[7]~27_combout\,
	cout => \UART_unit|UART_RX|clock_count[7]~28\);

-- Location: LCFF_X46_Y13_N23
\UART_unit|UART_RX|clock_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[7]~27_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[8]~12_combout\,
	ena => \UART_unit|UART_RX|clock_count[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(7));

-- Location: LCCOMB_X46_Y13_N0
\UART_unit|UART_RX|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Equal2~0_combout\ = (\UART_unit|UART_RX|clock_count\(4) & (!\UART_unit|UART_RX|clock_count\(3) & (\UART_unit|UART_RX|clock_count\(0) & \UART_unit|UART_RX|clock_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(4),
	datab => \UART_unit|UART_RX|clock_count\(3),
	datac => \UART_unit|UART_RX|clock_count\(0),
	datad => \UART_unit|UART_RX|clock_count\(7),
	combout => \UART_unit|UART_RX|Equal2~0_combout\);

-- Location: LCCOMB_X46_Y13_N24
\UART_unit|UART_RX|clock_count[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[8]~29_combout\ = (\UART_unit|UART_RX|clock_count\(8) & (\UART_unit|UART_RX|clock_count[7]~28\ $ (GND))) # (!\UART_unit|UART_RX|clock_count\(8) & (!\UART_unit|UART_RX|clock_count[7]~28\ & VCC))
-- \UART_unit|UART_RX|clock_count[8]~30\ = CARRY((\UART_unit|UART_RX|clock_count\(8) & !\UART_unit|UART_RX|clock_count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(8),
	datad => VCC,
	cin => \UART_unit|UART_RX|clock_count[7]~28\,
	combout => \UART_unit|UART_RX|clock_count[8]~29_combout\,
	cout => \UART_unit|UART_RX|clock_count[8]~30\);

-- Location: LCCOMB_X46_Y13_N26
\UART_unit|UART_RX|clock_count[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[9]~31_combout\ = \UART_unit|UART_RX|clock_count[8]~30\ $ (\UART_unit|UART_RX|clock_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|UART_RX|clock_count\(9),
	cin => \UART_unit|UART_RX|clock_count[8]~30\,
	combout => \UART_unit|UART_RX|clock_count[9]~31_combout\);

-- Location: LCFF_X46_Y13_N27
\UART_unit|UART_RX|clock_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[9]~31_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[8]~12_combout\,
	ena => \UART_unit|UART_RX|clock_count[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(9));

-- Location: LCCOMB_X45_Y12_N0
\UART_unit|UART_RX|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|always0~0_combout\ = (\UART_unit|UART_RX|clock_count\(2) & (\UART_unit|UART_RX|clock_count\(1) & (!\UART_unit|UART_RX|RX_data_in~regout\ & !\UART_unit|UART_RX|clock_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|clock_count\(2),
	datab => \UART_unit|UART_RX|clock_count\(1),
	datac => \UART_unit|UART_RX|RX_data_in~regout\,
	datad => \UART_unit|UART_RX|clock_count\(5),
	combout => \UART_unit|UART_RX|always0~0_combout\);

-- Location: LCCOMB_X45_Y13_N4
\UART_unit|UART_RX|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|always0~2_combout\ = (\UART_unit|UART_RX|always0~1_combout\ & (\UART_unit|UART_RX|Equal2~0_combout\ & (!\UART_unit|UART_RX|clock_count\(9) & \UART_unit|UART_RX|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|always0~1_combout\,
	datab => \UART_unit|UART_RX|Equal2~0_combout\,
	datac => \UART_unit|UART_RX|clock_count\(9),
	datad => \UART_unit|UART_RX|always0~0_combout\,
	combout => \UART_unit|UART_RX|always0~2_combout\);

-- Location: LCCOMB_X46_Y12_N12
\UART_unit|UART_RX|Selector16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector16~4_combout\ = (\UART_unit|UART_RX|RXC_state~9_regout\ & (!\UART_unit|UART_RX|RXC_state~8_regout\ & (\UART_unit|UART_RX|data_count\(0) $ (!\UART_unit|UART_RX|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state~9_regout\,
	datab => \UART_unit|UART_RX|RXC_state~8_regout\,
	datac => \UART_unit|UART_RX|data_count\(0),
	datad => \UART_unit|UART_RX|Equal1~0_combout\,
	combout => \UART_unit|UART_RX|Selector16~4_combout\);

-- Location: LCCOMB_X45_Y13_N10
\UART_unit|UART_RX|Frame_error[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Frame_error[1]~6_combout\ = ((\UART_unit|UART_RX|RXC_state~9_regout\) # ((\UART_unit|UART_RX|RXC_state~8_regout\) # (\UART_unit|UART_RX|RX_data_in~regout\))) # (!\UART_unit|UART_rx_enable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_rx_enable~regout\,
	datab => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|RX_data_in~regout\,
	combout => \UART_unit|UART_RX|Frame_error[1]~6_combout\);

-- Location: LCCOMB_X45_Y13_N28
\UART_unit|UART_RX|clock_count[8]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|clock_count[8]~33_combout\ = (\UART_unit|UART_RX|RXC_state~8_regout\ & (((\UART_unit|UART_RX|always0~2_combout\ & !\UART_unit|UART_RX|RXC_state~9_regout\)))) # (!\UART_unit|UART_RX|RXC_state~8_regout\ & 
-- (\UART_unit|UART_RX|Equal2~2_combout\ & ((\UART_unit|UART_RX|RXC_state~9_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Equal2~2_combout\,
	datab => \UART_unit|UART_RX|always0~2_combout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|RXC_state~9_regout\,
	combout => \UART_unit|UART_RX|clock_count[8]~33_combout\);

-- Location: LCCOMB_X45_Y12_N14
\UART_unit|UART_RX|data_count[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|data_count[1]~0_combout\ = (\UART_unit|UART_RX|clock_count[8]~33_combout\) # (!\UART_unit|UART_RX|Frame_error[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|Frame_error[1]~6_combout\,
	datac => \UART_unit|UART_RX|clock_count[8]~33_combout\,
	combout => \UART_unit|UART_RX|data_count[1]~0_combout\);

-- Location: LCFF_X46_Y12_N13
\UART_unit|UART_RX|data_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector16~4_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|data_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_count\(0));

-- Location: LCCOMB_X46_Y12_N0
\UART_unit|UART_RX|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector14~0_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\ & ((\UART_unit|UART_RX|data_count\(2)) # ((\UART_unit|UART_RX|data_count\(1) & \UART_unit|UART_RX|data_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\,
	datab => \UART_unit|UART_RX|data_count\(1),
	datac => \UART_unit|UART_RX|data_count\(2),
	datad => \UART_unit|UART_RX|data_count\(0),
	combout => \UART_unit|UART_RX|Selector14~0_combout\);

-- Location: LCFF_X46_Y12_N1
\UART_unit|UART_RX|data_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector14~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|data_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_count\(2));

-- Location: LCCOMB_X46_Y12_N2
\UART_unit|UART_RX|Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector15~2_combout\ = (\UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\ & ((\UART_unit|UART_RX|data_count\(1) & ((\UART_unit|UART_RX|data_count\(2)) # (!\UART_unit|UART_RX|data_count\(0)))) # 
-- (!\UART_unit|UART_RX|data_count\(1) & ((\UART_unit|UART_RX|data_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\,
	datab => \UART_unit|UART_RX|data_count\(2),
	datac => \UART_unit|UART_RX|data_count\(1),
	datad => \UART_unit|UART_RX|data_count\(0),
	combout => \UART_unit|UART_RX|Selector15~2_combout\);

-- Location: LCFF_X46_Y12_N3
\UART_unit|UART_RX|data_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector15~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|data_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_count\(1));

-- Location: LCCOMB_X46_Y12_N22
\UART_unit|UART_RX|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Equal1~0_combout\ = (\UART_unit|UART_RX|data_count\(0) & (\UART_unit|UART_RX|data_count\(1) & \UART_unit|UART_RX|data_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|data_count\(0),
	datab => \UART_unit|UART_RX|data_count\(1),
	datad => \UART_unit|UART_RX|data_count\(2),
	combout => \UART_unit|UART_RX|Equal1~0_combout\);

-- Location: LCCOMB_X45_Y13_N2
\UART_unit|UART_RX|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector3~0_combout\ = (\UART_unit|UART_RX|Equal2~2_combout\ & (\UART_unit|UART_RX|RXC_state~9_regout\ & (!\UART_unit|UART_RX|RXC_state~8_regout\ & \UART_unit|UART_RX|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Equal2~2_combout\,
	datab => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|Equal1~0_combout\,
	combout => \UART_unit|UART_RX|Selector3~0_combout\);

-- Location: LCCOMB_X45_Y13_N18
\UART_unit|UART_RX|RXC_state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RXC_state~13_combout\ = (\UART_unit|UART_RX|Selector3~0_combout\) # ((\UART_unit|UART_RX|RXC_state~8_regout\ & (!\UART_unit|UART_RX|RXC_state~9_regout\ & \UART_unit|UART_RX|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state~8_regout\,
	datab => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|always0~2_combout\,
	datad => \UART_unit|UART_RX|Selector3~0_combout\,
	combout => \UART_unit|UART_RX|RXC_state~13_combout\);

-- Location: LCCOMB_X45_Y13_N8
\UART_unit|UART_RX|Frame_error[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Frame_error[1]~14_combout\ = ((!\UART_unit|UART_RX|RXC_state~8_regout\) # (!\UART_unit|UART_RX|RXC_state~9_regout\)) # (!\UART_unit|UART_RX|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Equal2~2_combout\,
	datab => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	combout => \UART_unit|UART_RX|Frame_error[1]~14_combout\);

-- Location: LCCOMB_X45_Y10_N26
\UART_unit|UART_RX|RXC_state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RXC_state~14_combout\ = (\UART_unit|UART_RX|Frame_error[1]~14_combout\ & ((\UART_unit|UART_RX|Selector3~2_combout\ & (\UART_unit|UART_RX|RXC_state~13_combout\)) # (!\UART_unit|UART_RX|Selector3~2_combout\ & 
-- ((\UART_unit|UART_RX|RXC_state~9_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Selector3~2_combout\,
	datab => \UART_unit|UART_RX|RXC_state~13_combout\,
	datac => \UART_unit|UART_RX|RXC_state~9_regout\,
	datad => \UART_unit|UART_RX|Frame_error[1]~14_combout\,
	combout => \UART_unit|UART_RX|RXC_state~14_combout\);

-- Location: LCFF_X45_Y10_N27
\UART_unit|UART_RX|RXC_state~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|RXC_state~14_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RXC_state~9_regout\);

-- Location: LCFF_X46_Y13_N25
\UART_unit|UART_RX|clock_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|clock_count[8]~29_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|clock_count[8]~12_combout\,
	ena => \UART_unit|UART_RX|clock_count[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|clock_count\(8));

-- Location: LCCOMB_X45_Y13_N12
\UART_unit|UART_RX|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Equal2~2_combout\ = (\UART_unit|UART_RX|Equal2~1_combout\ & (\UART_unit|UART_RX|Equal2~0_combout\ & (!\UART_unit|UART_RX|clock_count\(9) & \UART_unit|UART_RX|clock_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Equal2~1_combout\,
	datab => \UART_unit|UART_RX|Equal2~0_combout\,
	datac => \UART_unit|UART_RX|clock_count\(9),
	datad => \UART_unit|UART_RX|clock_count\(8),
	combout => \UART_unit|UART_RX|Equal2~2_combout\);

-- Location: LCCOMB_X45_Y13_N16
\UART_unit|UART_RX|RXC_state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RXC_state~15_combout\ = (\UART_unit|UART_RX|RXC_state~12_combout\ & (((!\UART_unit|UART_RX|Equal2~2_combout\) # (!\UART_unit|UART_RX|RXC_state~8_regout\)) # (!\UART_unit|UART_RX|RXC_state~9_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state~12_combout\,
	datab => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|Equal2~2_combout\,
	combout => \UART_unit|UART_RX|RXC_state~15_combout\);

-- Location: LCFF_X45_Y13_N17
\UART_unit|UART_RX|RXC_state~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|RXC_state~15_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RXC_state~8_regout\);

-- Location: LCCOMB_X45_Y12_N24
\UART_unit|UART_RX|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector22~0_combout\ = (\UART_unit|UART_RX|RXC_state~9_regout\ & (!\UART_unit|UART_RX|RXC_state~8_regout\ & \UART_unit|UART_RX|RX_data_in~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|RX_data_in~regout\,
	combout => \UART_unit|UART_RX|Selector22~0_combout\);

-- Location: LCFF_X45_Y12_N25
\UART_unit|UART_RX|data_buffer[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector22~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(7));

-- Location: LCCOMB_X45_Y12_N10
\UART_unit|UART_RX|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector23~0_combout\ = (\UART_unit|UART_RX|RXC_state~9_regout\ & (!\UART_unit|UART_RX|RXC_state~8_regout\ & \UART_unit|UART_RX|data_buffer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|data_buffer\(7),
	combout => \UART_unit|UART_RX|Selector23~0_combout\);

-- Location: LCFF_X45_Y12_N11
\UART_unit|UART_RX|data_buffer[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector23~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(6));

-- Location: LCCOMB_X45_Y12_N30
\UART_unit|UART_RX|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector24~0_combout\ = (\UART_unit|UART_RX|RXC_state~9_regout\ & (!\UART_unit|UART_RX|RXC_state~8_regout\ & \UART_unit|UART_RX|data_buffer\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|data_buffer\(6),
	combout => \UART_unit|UART_RX|Selector24~0_combout\);

-- Location: LCFF_X45_Y12_N31
\UART_unit|UART_RX|data_buffer[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector24~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(5));

-- Location: LCCOMB_X45_Y12_N16
\UART_unit|UART_RX|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector25~0_combout\ = (\UART_unit|UART_RX|RXC_state~9_regout\ & (!\UART_unit|UART_RX|RXC_state~8_regout\ & \UART_unit|UART_RX|data_buffer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|data_buffer\(5),
	combout => \UART_unit|UART_RX|Selector25~0_combout\);

-- Location: LCFF_X45_Y12_N17
\UART_unit|UART_RX|data_buffer[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector25~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(4));

-- Location: LCCOMB_X45_Y12_N4
\UART_unit|UART_RX|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector26~0_combout\ = (\UART_unit|UART_RX|RXC_state~9_regout\ & (!\UART_unit|UART_RX|RXC_state~8_regout\ & \UART_unit|UART_RX|data_buffer\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|data_buffer\(4),
	combout => \UART_unit|UART_RX|Selector26~0_combout\);

-- Location: LCFF_X45_Y12_N5
\UART_unit|UART_RX|data_buffer[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector26~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(3));

-- Location: LCCOMB_X45_Y12_N26
\UART_unit|UART_RX|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector27~0_combout\ = (\UART_unit|UART_RX|RXC_state~9_regout\ & (\UART_unit|UART_RX|data_buffer\(3) & !\UART_unit|UART_RX|RXC_state~8_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state~9_regout\,
	datab => \UART_unit|UART_RX|data_buffer\(3),
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	combout => \UART_unit|UART_RX|Selector27~0_combout\);

-- Location: LCFF_X45_Y12_N27
\UART_unit|UART_RX|data_buffer[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector27~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(2));

-- Location: LCCOMB_X45_Y12_N12
\UART_unit|UART_RX|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector28~0_combout\ = (\UART_unit|UART_RX|RXC_state~9_regout\ & (!\UART_unit|UART_RX|RXC_state~8_regout\ & \UART_unit|UART_RX|data_buffer\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|data_buffer\(2),
	combout => \UART_unit|UART_RX|Selector28~0_combout\);

-- Location: LCFF_X45_Y12_N13
\UART_unit|UART_RX|data_buffer[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector28~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(1));

-- Location: LCCOMB_X45_Y12_N22
\UART_unit|UART_RX|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Selector29~0_combout\ = (\UART_unit|UART_RX|RXC_state~9_regout\ & (!\UART_unit|UART_RX|RXC_state~8_regout\ & \UART_unit|UART_RX|data_buffer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|data_buffer\(1),
	combout => \UART_unit|UART_RX|Selector29~0_combout\);

-- Location: LCFF_X45_Y12_N23
\UART_unit|UART_RX|data_buffer[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Selector29~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|clock_count[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|data_buffer\(0));

-- Location: LCCOMB_X44_Y12_N22
\UART_unit|UART_RX|RX_data[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RX_data[0]~feeder_combout\ = \UART_unit|UART_RX|data_buffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|UART_RX|data_buffer\(0),
	combout => \UART_unit|UART_RX|RX_data[0]~feeder_combout\);

-- Location: LCCOMB_X45_Y13_N22
\UART_unit|UART_RX|RX_data[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RX_data[7]~0_combout\ = (\UART_unit|UART_RX|RX_data_in~regout\ & (\UART_unit|UART_RX|RXC_state~9_regout\ & (\UART_unit|UART_RX|RXC_state~8_regout\ & \UART_unit|UART_RX|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RX_data_in~regout\,
	datab => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|Equal2~2_combout\,
	combout => \UART_unit|UART_RX|RX_data[7]~0_combout\);

-- Location: LCFF_X44_Y12_N23
\UART_unit|UART_RX|RX_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|RX_data[0]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(0));

-- Location: LCFF_X44_Y12_N5
\UART_unit|UART_RX|RX_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_unit|UART_RX|data_buffer\(1),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(1));

-- Location: LCCOMB_X44_Y12_N30
\UART_unit|UART_RX|RX_data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RX_data[5]~feeder_combout\ = \UART_unit|UART_RX|data_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|UART_RX|data_buffer\(5),
	combout => \UART_unit|UART_RX|RX_data[5]~feeder_combout\);

-- Location: LCFF_X44_Y12_N31
\UART_unit|UART_RX|RX_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|RX_data[5]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(5));

-- Location: LCFF_X44_Y12_N3
\UART_unit|UART_RX|RX_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_unit|UART_RX|data_buffer\(2),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(2));

-- Location: LCFF_X44_Y12_N1
\UART_unit|UART_RX|RX_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_unit|UART_RX|data_buffer\(4),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(4));

-- Location: LCCOMB_X44_Y12_N2
\UART_unit|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|always0~1_combout\ = (\UART_unit|UART_RX|RX_data\(3) & (!\UART_unit|UART_RX|RX_data\(5) & (!\UART_unit|UART_RX|RX_data\(2) & !\UART_unit|UART_RX|RX_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RX_data\(3),
	datab => \UART_unit|UART_RX|RX_data\(5),
	datac => \UART_unit|UART_RX|RX_data\(2),
	datad => \UART_unit|UART_RX|RX_data\(4),
	combout => \UART_unit|always0~1_combout\);

-- Location: LCCOMB_X44_Y12_N4
\UART_unit|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|always0~2_combout\ = (\UART_unit|always0~0_combout\ & (!\UART_unit|UART_RX|RX_data\(0) & (\UART_unit|UART_RX|RX_data\(1) & \UART_unit|always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|always0~0_combout\,
	datab => \UART_unit|UART_RX|RX_data\(0),
	datac => \UART_unit|UART_RX|RX_data\(1),
	datad => \UART_unit|always0~1_combout\,
	combout => \UART_unit|always0~2_combout\);

-- Location: LCCOMB_X43_Y12_N10
\UART_unit|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add0~1_combout\ = \UART_unit|new_line_count\(0) $ (\UART_unit|always0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|new_line_count\(0),
	datad => \UART_unit|always0~2_combout\,
	combout => \UART_unit|Add0~1_combout\);

-- Location: LCCOMB_X45_Y10_N6
\UART_unit|UART_RX|Empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Empty~0_combout\ = (\UART_unit|UART_rx_unload_data~regout\ & (\UART_unit|UART_RX|RX_data_in~regout\ & ((!\UART_unit|UART_RX|Frame_error[1]~14_combout\)))) # (!\UART_unit|UART_rx_unload_data~regout\ & ((\UART_unit|UART_RX|Empty~regout\) 
-- # ((\UART_unit|UART_RX|RX_data_in~regout\ & !\UART_unit|UART_RX|Frame_error[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_rx_unload_data~regout\,
	datab => \UART_unit|UART_RX|RX_data_in~regout\,
	datac => \UART_unit|UART_RX|Empty~regout\,
	datad => \UART_unit|UART_RX|Frame_error[1]~14_combout\,
	combout => \UART_unit|UART_RX|Empty~0_combout\);

-- Location: LCFF_X45_Y10_N7
\UART_unit|UART_RX|Empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Empty~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|Empty~regout\);

-- Location: LCCOMB_X45_Y10_N14
\UART_unit|new_line_count[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|new_line_count[1]~0_combout\ = (top_state(0)) # ((\UART_unit|UART_SRAM_state.S_US_IDLE~1_combout\ & (\UART_unit|UART_SRAM_state~11_regout\ & \UART_unit|UART_RX|Empty~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state.S_US_IDLE~1_combout\,
	datab => \UART_unit|UART_SRAM_state~11_regout\,
	datac => top_state(0),
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|new_line_count[1]~0_combout\);

-- Location: LCFF_X43_Y12_N11
\UART_unit|new_line_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add0~1_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => top_state(0),
	ena => \UART_unit|new_line_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|new_line_count\(0));

-- Location: LCCOMB_X45_Y10_N8
\UART_unit|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector3~0_combout\ = (\UART_unit|UART_SRAM_state~11_regout\) # ((\UART_unit|new_line_count\(1) & (\UART_unit|new_line_count\(0) & !\UART_unit|UART_SRAM_state~13_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|new_line_count\(1),
	datab => \UART_unit|UART_SRAM_state~11_regout\,
	datac => \UART_unit|new_line_count\(0),
	datad => \UART_unit|UART_SRAM_state~13_regout\,
	combout => \UART_unit|Selector3~0_combout\);

-- Location: LCCOMB_X45_Y10_N18
\UART_unit|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Selector3~1_combout\ = ((!\UART_unit|UART_RX|Empty~regout\ & (\UART_unit|Selector3~0_combout\ & \UART_unit|UART_SRAM_state~12_regout\))) # (!\UART_unit|SRAM_address[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Empty~regout\,
	datab => \UART_unit|Selector3~0_combout\,
	datac => \UART_unit|SRAM_address[0]~0_combout\,
	datad => \UART_unit|UART_SRAM_state~12_regout\,
	combout => \UART_unit|Selector3~1_combout\);

-- Location: LCCOMB_X45_Y10_N30
\UART_unit|UART_SRAM_state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~14_combout\ = (\UART_unit|UART_RX|Empty~regout\ & ((\UART_unit|UART_SRAM_state~12_regout\ & ((\UART_unit|UART_SRAM_state~13_regout\) # (!\UART_unit|UART_SRAM_state~11_regout\))) # (!\UART_unit|UART_SRAM_state~12_regout\ & 
-- (\UART_unit|UART_SRAM_state~11_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Empty~regout\,
	datab => \UART_unit|UART_SRAM_state~12_regout\,
	datac => \UART_unit|UART_SRAM_state~11_regout\,
	datad => \UART_unit|UART_SRAM_state~13_regout\,
	combout => \UART_unit|UART_SRAM_state~14_combout\);

-- Location: LCCOMB_X44_Y10_N24
\UART_unit|UART_SRAM_state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_SRAM_state~15_combout\ = (\UART_unit|Selector3~1_combout\) # ((\UART_unit|UART_SRAM_state~14_combout\) # ((\UART_unit|Selector7~0_combout\ & \UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|Selector7~0_combout\,
	datab => \UART_unit|Selector3~1_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|UART_SRAM_state~14_combout\,
	combout => \UART_unit|UART_SRAM_state~15_combout\);

-- Location: LCFF_X44_Y10_N25
\UART_unit|UART_SRAM_state~12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_SRAM_state~15_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => top_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_SRAM_state~12_regout\);

-- Location: LCCOMB_X43_Y12_N20
\UART_unit|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~0_combout\ = (\UART_unit|UART_SRAM_state~13_regout\ & (\UART_unit|UART_SRAM_state~12_regout\ & !top_state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state~13_regout\,
	datab => \UART_unit|UART_SRAM_state~12_regout\,
	datac => top_state(0),
	combout => \UART_unit|Add1~0_combout\);

-- Location: LCCOMB_X43_Y11_N4
\UART_unit|Add1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~53_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~3_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|LessThan1~5_combout\,
	datab => \UART_unit|Add1~0_combout\,
	datac => \UART_unit|Add1~3_combout\,
	combout => \UART_unit|Add1~53_combout\);

-- Location: LCFF_X43_Y11_N5
\UART_unit|SRAM_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~53_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(1));

-- Location: LCCOMB_X44_Y11_N20
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\UART_unit|SRAM_address\(17) & (!\UART_unit|SRAM_address\(16) & (!\UART_unit|SRAM_address\(14) & !\UART_unit|SRAM_address\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(17),
	datab => \UART_unit|SRAM_address\(16),
	datac => \UART_unit|SRAM_address\(14),
	datad => \UART_unit|SRAM_address\(15),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X44_Y11_N28
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\UART_unit|SRAM_address\(11) & (!\UART_unit|SRAM_address\(12) & (!\UART_unit|SRAM_address\(10) & !\UART_unit|SRAM_address\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(11),
	datab => \UART_unit|SRAM_address\(12),
	datac => \UART_unit|SRAM_address\(10),
	datad => \UART_unit|SRAM_address\(13),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X44_Y11_N6
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\UART_unit|SRAM_address\(2) & (!\UART_unit|SRAM_address\(4) & (!\UART_unit|SRAM_address\(3) & !\UART_unit|SRAM_address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(2),
	datab => \UART_unit|SRAM_address\(4),
	datac => \UART_unit|SRAM_address\(3),
	datad => \UART_unit|SRAM_address\(5),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X44_Y7_N22
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (\Equal1~0_combout\ & (\Equal1~1_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X44_Y7_N8
\Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\UART_unit|SRAM_address\(0) & (!\UART_unit|SRAM_address\(1) & \Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(0),
	datac => \UART_unit|SRAM_address\(1),
	datad => \Equal1~4_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X44_Y7_N26
\top_state[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \top_state[1]~3_combout\ = (!top_state(0) & (!top_state(1) & ((top_state(2)) # (\top_state[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => top_state(2),
	datac => \top_state[1]~2_combout\,
	datad => top_state(1),
	combout => \top_state[1]~3_combout\);

-- Location: LCCOMB_X44_Y7_N2
\top_state[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \top_state[1]~4_combout\ = (\top_state[1]~3_combout\) # ((\Selector4~0_combout\ & ((\Equal1~5_combout\) # (!\always0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \Equal1~5_combout\,
	datac => \always0~8_combout\,
	datad => \top_state[1]~3_combout\,
	combout => \top_state[1]~4_combout\);

-- Location: LCCOMB_X44_Y7_N18
\top_state[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \top_state[1]~6_combout\ = (\top_state[1]~4_combout\ & (((top_state(1))))) # (!\top_state[1]~4_combout\ & (!top_state(2) & (top_state(0) $ (top_state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => \top_state[1]~4_combout\,
	datac => top_state(1),
	datad => top_state(2),
	combout => \top_state[1]~6_combout\);

-- Location: LCFF_X44_Y7_N19
\top_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \top_state[1]~6_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => top_state(1));

-- Location: LCCOMB_X44_Y12_N8
\UART_unit|SRAM_write_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~0_combout\ = (!top_state(0) & \UART_unit|UART_RX|RX_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => top_state(0),
	datad => \UART_unit|UART_RX|RX_data\(0),
	combout => \UART_unit|SRAM_write_data~0_combout\);

-- Location: LCCOMB_X43_Y12_N14
\UART_unit|SRAM_write_data[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[0]~feeder_combout\ = \UART_unit|SRAM_write_data~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|SRAM_write_data~0_combout\,
	combout => \UART_unit|SRAM_write_data[0]~feeder_combout\);

-- Location: LCCOMB_X43_Y12_N30
\UART_unit|SRAM_write_data[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[1]~1_combout\ = (top_state(0)) # ((\UART_unit|UART_SRAM_state~13_regout\ & (\UART_unit|UART_SRAM_state~11_regout\ & \UART_unit|UART_RX|Empty~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state~13_regout\,
	datab => \UART_unit|UART_SRAM_state~11_regout\,
	datac => top_state(0),
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|SRAM_write_data[1]~1_combout\);

-- Location: LCFF_X43_Y12_N15
\UART_unit|SRAM_write_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data[0]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(0));

-- Location: LCCOMB_X42_Y8_N30
\SRAM_write_data[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[0]~0_combout\ = (!top_state(2) & (\UART_unit|SRAM_write_data\(0) & (top_state(1) $ (top_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(2),
	datab => top_state(1),
	datac => \UART_unit|SRAM_write_data\(0),
	datad => top_state(0),
	combout => \SRAM_write_data[0]~0_combout\);

-- Location: LCFF_X42_Y8_N31
\SRAM_unit|SRAM_write_data_buf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[0]~0_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(0));

-- Location: LCCOMB_X44_Y10_N8
\SRAM_we_n~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_we_n~0_combout\ = (top_state(2)) # ((top_state(1) $ (!top_state(0))) # (!\UART_unit|SRAM_we_n~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(1),
	datab => top_state(0),
	datac => top_state(2),
	datad => \UART_unit|SRAM_we_n~regout\,
	combout => \SRAM_we_n~0_combout\);

-- Location: LCCOMB_X42_Y8_N8
\SRAM_unit|SRAM_WE_N_O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_WE_N_O~0_combout\ = !\SRAM_we_n~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_we_n~0_combout\,
	combout => \SRAM_unit|SRAM_WE_N_O~0_combout\);

-- Location: LCFF_X42_Y8_N9
\SRAM_unit|SRAM_WE_N_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_WE_N_O~0_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_WE_N_O~regout\);

-- Location: LCCOMB_X43_Y12_N8
\UART_unit|SRAM_write_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~2_combout\ = (!top_state(0) & \UART_unit|UART_RX|RX_data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => top_state(0),
	datad => \UART_unit|UART_RX|RX_data\(1),
	combout => \UART_unit|SRAM_write_data~2_combout\);

-- Location: LCFF_X43_Y12_N9
\UART_unit|SRAM_write_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(1));

-- Location: LCCOMB_X42_Y8_N16
\SRAM_write_data[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[1]~1_combout\ = (!top_state(2) & (\UART_unit|SRAM_write_data\(1) & (top_state(1) $ (top_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(2),
	datab => top_state(1),
	datac => \UART_unit|SRAM_write_data\(1),
	datad => top_state(0),
	combout => \SRAM_write_data[1]~1_combout\);

-- Location: LCFF_X42_Y8_N17
\SRAM_unit|SRAM_write_data_buf[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[1]~1_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(1));

-- Location: LCCOMB_X43_Y12_N18
\UART_unit|SRAM_write_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~3_combout\ = (!top_state(0) & \UART_unit|UART_RX|RX_data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => top_state(0),
	datad => \UART_unit|UART_RX|RX_data\(2),
	combout => \UART_unit|SRAM_write_data~3_combout\);

-- Location: LCFF_X43_Y12_N19
\UART_unit|SRAM_write_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~3_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(2));

-- Location: LCCOMB_X42_Y8_N18
\SRAM_write_data[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[2]~2_combout\ = (\UART_unit|SRAM_write_data\(2) & (!top_state(2) & (top_state(0) $ (top_state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => \UART_unit|SRAM_write_data\(2),
	datac => top_state(2),
	datad => top_state(1),
	combout => \SRAM_write_data[2]~2_combout\);

-- Location: LCFF_X42_Y8_N19
\SRAM_unit|SRAM_write_data_buf[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[2]~2_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(2));

-- Location: LCCOMB_X44_Y12_N12
\UART_unit|UART_RX|RX_data[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RX_data[3]~feeder_combout\ = \UART_unit|UART_RX|data_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|UART_RX|data_buffer\(3),
	combout => \UART_unit|UART_RX|RX_data[3]~feeder_combout\);

-- Location: LCFF_X44_Y12_N13
\UART_unit|UART_RX|RX_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|RX_data[3]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(3));

-- Location: LCCOMB_X44_Y12_N6
\UART_unit|SRAM_write_data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~4_combout\ = (!top_state(0) & \UART_unit|UART_RX|RX_data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => top_state(0),
	datad => \UART_unit|UART_RX|RX_data\(3),
	combout => \UART_unit|SRAM_write_data~4_combout\);

-- Location: LCCOMB_X43_Y12_N12
\UART_unit|SRAM_write_data[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[3]~feeder_combout\ = \UART_unit|SRAM_write_data~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|SRAM_write_data~4_combout\,
	combout => \UART_unit|SRAM_write_data[3]~feeder_combout\);

-- Location: LCFF_X43_Y12_N13
\UART_unit|SRAM_write_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data[3]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(3));

-- Location: LCCOMB_X42_Y8_N20
\SRAM_write_data[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[3]~3_combout\ = (!top_state(2) & (\UART_unit|SRAM_write_data\(3) & (top_state(1) $ (top_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(2),
	datab => top_state(1),
	datac => \UART_unit|SRAM_write_data\(3),
	datad => top_state(0),
	combout => \SRAM_write_data[3]~3_combout\);

-- Location: LCFF_X42_Y8_N21
\SRAM_unit|SRAM_write_data_buf[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[3]~3_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(3));

-- Location: LCCOMB_X43_Y12_N22
\UART_unit|SRAM_write_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~5_combout\ = (\UART_unit|UART_RX|RX_data\(4) & !top_state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|RX_data\(4),
	datac => top_state(0),
	combout => \UART_unit|SRAM_write_data~5_combout\);

-- Location: LCFF_X43_Y12_N23
\UART_unit|SRAM_write_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~5_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(4));

-- Location: LCCOMB_X42_Y8_N22
\SRAM_write_data[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[4]~4_combout\ = (\UART_unit|SRAM_write_data\(4) & (!top_state(2) & (top_state(0) $ (top_state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => \UART_unit|SRAM_write_data\(4),
	datac => top_state(2),
	datad => top_state(1),
	combout => \SRAM_write_data[4]~4_combout\);

-- Location: LCFF_X42_Y8_N23
\SRAM_unit|SRAM_write_data_buf[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[4]~4_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(4));

-- Location: LCCOMB_X44_Y12_N16
\UART_unit|SRAM_write_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~6_combout\ = (!top_state(0) & \UART_unit|UART_RX|RX_data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => top_state(0),
	datad => \UART_unit|UART_RX|RX_data\(5),
	combout => \UART_unit|SRAM_write_data~6_combout\);

-- Location: LCCOMB_X43_Y12_N24
\UART_unit|SRAM_write_data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[5]~feeder_combout\ = \UART_unit|SRAM_write_data~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|SRAM_write_data~6_combout\,
	combout => \UART_unit|SRAM_write_data[5]~feeder_combout\);

-- Location: LCFF_X43_Y12_N25
\UART_unit|SRAM_write_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data[5]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(5));

-- Location: LCCOMB_X42_Y8_N0
\SRAM_write_data[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[5]~5_combout\ = (\UART_unit|SRAM_write_data\(5) & (!top_state(2) & (top_state(0) $ (top_state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => \UART_unit|SRAM_write_data\(5),
	datac => top_state(2),
	datad => top_state(1),
	combout => \SRAM_write_data[5]~5_combout\);

-- Location: LCFF_X42_Y8_N1
\SRAM_unit|SRAM_write_data_buf[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[5]~5_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(5));

-- Location: LCFF_X44_Y12_N11
\UART_unit|UART_RX|RX_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_unit|UART_RX|data_buffer\(6),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \UART_unit|UART_RX|RX_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|RX_data\(6));

-- Location: LCCOMB_X44_Y12_N18
\UART_unit|SRAM_write_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~7_combout\ = (!top_state(0) & \UART_unit|UART_RX|RX_data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => top_state(0),
	datad => \UART_unit|UART_RX|RX_data\(6),
	combout => \UART_unit|SRAM_write_data~7_combout\);

-- Location: LCCOMB_X43_Y12_N26
\UART_unit|SRAM_write_data[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[6]~feeder_combout\ = \UART_unit|SRAM_write_data~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|SRAM_write_data~7_combout\,
	combout => \UART_unit|SRAM_write_data[6]~feeder_combout\);

-- Location: LCFF_X43_Y12_N27
\UART_unit|SRAM_write_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data[6]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(6));

-- Location: LCCOMB_X42_Y8_N26
\SRAM_write_data[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[6]~6_combout\ = (\UART_unit|SRAM_write_data\(6) & (!top_state(2) & (top_state(0) $ (top_state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => \UART_unit|SRAM_write_data\(6),
	datac => top_state(2),
	datad => top_state(1),
	combout => \SRAM_write_data[6]~6_combout\);

-- Location: LCFF_X42_Y8_N27
\SRAM_unit|SRAM_write_data_buf[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[6]~6_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(6));

-- Location: LCCOMB_X44_Y12_N20
\UART_unit|SRAM_write_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data~8_combout\ = (\UART_unit|UART_RX|RX_data\(7) & !top_state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|RX_data\(7),
	datac => top_state(0),
	combout => \UART_unit|SRAM_write_data~8_combout\);

-- Location: LCCOMB_X43_Y12_N28
\UART_unit|SRAM_write_data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[7]~feeder_combout\ = \UART_unit|SRAM_write_data~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|SRAM_write_data~8_combout\,
	combout => \UART_unit|SRAM_write_data[7]~feeder_combout\);

-- Location: LCFF_X43_Y12_N29
\UART_unit|SRAM_write_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data[7]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(7));

-- Location: LCCOMB_X42_Y8_N4
\SRAM_write_data[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[7]~7_combout\ = (!top_state(2) & (\UART_unit|SRAM_write_data\(7) & (top_state(1) $ (top_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(2),
	datab => top_state(1),
	datac => \UART_unit|SRAM_write_data\(7),
	datad => top_state(0),
	combout => \SRAM_write_data[7]~7_combout\);

-- Location: LCFF_X42_Y8_N5
\SRAM_unit|SRAM_write_data_buf[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[7]~7_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(7));

-- Location: LCCOMB_X44_Y12_N14
\UART_unit|SRAM_write_data[10]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[10]~9_combout\ = (top_state(0)) # ((\UART_unit|UART_SRAM_state~11_regout\ & (\UART_unit|UART_SRAM_state~12_regout\ & \UART_unit|UART_RX|Empty~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_SRAM_state~11_regout\,
	datab => \UART_unit|UART_SRAM_state~12_regout\,
	datac => top_state(0),
	datad => \UART_unit|UART_RX|Empty~regout\,
	combout => \UART_unit|SRAM_write_data[10]~9_combout\);

-- Location: LCFF_X44_Y12_N9
\UART_unit|SRAM_write_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(8));

-- Location: LCCOMB_X42_Y8_N6
\SRAM_write_data[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[8]~8_combout\ = (!top_state(2) & (\UART_unit|SRAM_write_data\(8) & (top_state(0) $ (top_state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => top_state(1),
	datac => top_state(2),
	datad => \UART_unit|SRAM_write_data\(8),
	combout => \SRAM_write_data[8]~8_combout\);

-- Location: LCFF_X42_Y8_N7
\SRAM_unit|SRAM_write_data_buf[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[8]~8_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(8));

-- Location: LCCOMB_X44_Y12_N26
\UART_unit|SRAM_write_data[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[9]~feeder_combout\ = \UART_unit|SRAM_write_data~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|SRAM_write_data~2_combout\,
	combout => \UART_unit|SRAM_write_data[9]~feeder_combout\);

-- Location: LCFF_X44_Y12_N27
\UART_unit|SRAM_write_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data[9]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(9));

-- Location: LCCOMB_X42_Y8_N24
\SRAM_write_data[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[9]~9_combout\ = (!top_state(2) & (\UART_unit|SRAM_write_data\(9) & (top_state(0) $ (top_state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => top_state(1),
	datac => top_state(2),
	datad => \UART_unit|SRAM_write_data\(9),
	combout => \SRAM_write_data[9]~9_combout\);

-- Location: LCFF_X42_Y8_N25
\SRAM_unit|SRAM_write_data_buf[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[9]~9_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(9));

-- Location: LCCOMB_X44_Y12_N28
\UART_unit|SRAM_write_data[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|SRAM_write_data[10]~feeder_combout\ = \UART_unit|SRAM_write_data~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|SRAM_write_data~3_combout\,
	combout => \UART_unit|SRAM_write_data[10]~feeder_combout\);

-- Location: LCFF_X44_Y12_N29
\UART_unit|SRAM_write_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data[10]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(10));

-- Location: LCCOMB_X42_Y8_N10
\SRAM_write_data[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[10]~10_combout\ = (!top_state(2) & (\UART_unit|SRAM_write_data\(10) & (top_state(0) $ (top_state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => top_state(1),
	datac => top_state(2),
	datad => \UART_unit|SRAM_write_data\(10),
	combout => \SRAM_write_data[10]~10_combout\);

-- Location: LCFF_X42_Y8_N11
\SRAM_unit|SRAM_write_data_buf[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[10]~10_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(10));

-- Location: LCFF_X44_Y12_N7
\UART_unit|SRAM_write_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~4_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(11));

-- Location: LCCOMB_X42_Y8_N12
\SRAM_write_data[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[11]~11_combout\ = (!top_state(2) & (\UART_unit|SRAM_write_data\(11) & (top_state(0) $ (top_state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => top_state(1),
	datac => top_state(2),
	datad => \UART_unit|SRAM_write_data\(11),
	combout => \SRAM_write_data[11]~11_combout\);

-- Location: LCFF_X42_Y8_N13
\SRAM_unit|SRAM_write_data_buf[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[11]~11_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(11));

-- Location: LCCOMB_X42_Y8_N14
\SRAM_write_data[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[12]~12_combout\ = (\UART_unit|SRAM_write_data\(12) & (!top_state(2) & (top_state(1) $ (top_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_write_data\(12),
	datab => top_state(1),
	datac => top_state(2),
	datad => top_state(0),
	combout => \SRAM_write_data[12]~12_combout\);

-- Location: LCFF_X42_Y8_N15
\SRAM_unit|SRAM_write_data_buf[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[12]~12_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(12));

-- Location: LCFF_X44_Y12_N17
\UART_unit|SRAM_write_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~6_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(13));

-- Location: LCCOMB_X20_Y17_N10
\SRAM_write_data[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[13]~13_combout\ = (!top_state(2) & (\UART_unit|SRAM_write_data\(13) & (top_state(1) $ (top_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(1),
	datab => top_state(2),
	datac => top_state(0),
	datad => \UART_unit|SRAM_write_data\(13),
	combout => \SRAM_write_data[13]~13_combout\);

-- Location: LCFF_X20_Y17_N11
\SRAM_unit|SRAM_write_data_buf[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[13]~13_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(13));

-- Location: LCFF_X44_Y12_N19
\UART_unit|SRAM_write_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~7_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(14));

-- Location: LCCOMB_X20_Y17_N4
\SRAM_write_data[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[14]~14_combout\ = (!top_state(2) & (\UART_unit|SRAM_write_data\(14) & (top_state(1) $ (top_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(1),
	datab => top_state(2),
	datac => top_state(0),
	datad => \UART_unit|SRAM_write_data\(14),
	combout => \SRAM_write_data[14]~14_combout\);

-- Location: LCFF_X20_Y17_N5
\SRAM_unit|SRAM_write_data_buf[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[14]~14_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(14));

-- Location: LCFF_X44_Y12_N21
\UART_unit|SRAM_write_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|SRAM_write_data~8_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_write_data[10]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_write_data\(15));

-- Location: LCCOMB_X20_Y17_N22
\SRAM_write_data[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_write_data[15]~15_combout\ = (!top_state(2) & (\UART_unit|SRAM_write_data\(15) & (top_state(0) $ (top_state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(0),
	datab => top_state(2),
	datac => \UART_unit|SRAM_write_data\(15),
	datad => top_state(1),
	combout => \SRAM_write_data[15]~15_combout\);

-- Location: LCFF_X20_Y17_N23
\SRAM_unit|SRAM_write_data_buf[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_write_data[15]~15_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_write_data_buf\(15));

-- Location: LCCOMB_X44_Y7_N30
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!top_state(2) & !top_state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => top_state(2),
	datad => top_state(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X44_Y7_N14
\VGA_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_enable~0_combout\ = (\Equal2~0_combout\ & ((top_state(1) & ((\VGA_enable~regout\))) # (!top_state(1) & (!\top_state[1]~2_combout\)))) # (!\Equal2~0_combout\ & (((\VGA_enable~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_state[1]~2_combout\,
	datab => \Equal2~0_combout\,
	datac => \VGA_enable~regout\,
	datad => top_state(1),
	combout => \VGA_enable~0_combout\);

-- Location: LCFF_X44_Y7_N15
VGA_enable : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_enable~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_enable~regout\);

-- Location: LCCOMB_X36_Y21_N30
\VGA_unit|VGA_SRAM_state~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~33_combout\ = (\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_enable~regout\ & ((\VGA_unit|VGA_SRAM_state~16_regout\))) # (!\VGA_enable~regout\ & (\VGA_unit|VGA_SRAM_state~15_regout\ & !\VGA_unit|VGA_SRAM_state~16_regout\)))) # 
-- (!\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_SRAM_state~16_regout\ & ((!\VGA_enable~regout\) # (!\VGA_unit|VGA_SRAM_state~15_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~15_regout\,
	datac => \VGA_enable~regout\,
	datad => \VGA_unit|VGA_SRAM_state~16_regout\,
	combout => \VGA_unit|VGA_SRAM_state~33_combout\);

-- Location: LCCOMB_X35_Y20_N6
\VGA_unit|VGA_unit|V_Cont[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[0]~10_combout\ = \VGA_unit|VGA_unit|V_Cont\(0) $ (VCC)
-- \VGA_unit|VGA_unit|V_Cont[0]~11\ = CARRY(\VGA_unit|VGA_unit|V_Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(0),
	datad => VCC,
	combout => \VGA_unit|VGA_unit|V_Cont[0]~10_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[0]~11\);

-- Location: LCCOMB_X35_Y20_N8
\VGA_unit|VGA_unit|V_Cont[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[1]~12_combout\ = (\VGA_unit|VGA_unit|V_Cont\(1) & (!\VGA_unit|VGA_unit|V_Cont[0]~11\)) # (!\VGA_unit|VGA_unit|V_Cont\(1) & ((\VGA_unit|VGA_unit|V_Cont[0]~11\) # (GND)))
-- \VGA_unit|VGA_unit|V_Cont[1]~13\ = CARRY((!\VGA_unit|VGA_unit|V_Cont[0]~11\) # (!\VGA_unit|VGA_unit|V_Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(1),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[0]~11\,
	combout => \VGA_unit|VGA_unit|V_Cont[1]~12_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[1]~13\);

-- Location: LCCOMB_X35_Y20_N16
\VGA_unit|VGA_unit|V_Cont[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[5]~20_combout\ = (\VGA_unit|VGA_unit|V_Cont\(5) & (!\VGA_unit|VGA_unit|V_Cont[4]~19\)) # (!\VGA_unit|VGA_unit|V_Cont\(5) & ((\VGA_unit|VGA_unit|V_Cont[4]~19\) # (GND)))
-- \VGA_unit|VGA_unit|V_Cont[5]~21\ = CARRY((!\VGA_unit|VGA_unit|V_Cont[4]~19\) # (!\VGA_unit|VGA_unit|V_Cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(5),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[4]~19\,
	combout => \VGA_unit|VGA_unit|V_Cont[5]~20_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[5]~21\);

-- Location: LCCOMB_X31_Y21_N6
\VGA_unit|VGA_unit|H_Cont[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[0]~10_combout\ = \VGA_unit|VGA_unit|H_Cont\(0) $ (VCC)
-- \VGA_unit|VGA_unit|H_Cont[0]~11\ = CARRY(\VGA_unit|VGA_unit|H_Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(0),
	datad => VCC,
	combout => \VGA_unit|VGA_unit|H_Cont[0]~10_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[0]~11\);

-- Location: LCCOMB_X31_Y21_N8
\VGA_unit|VGA_unit|H_Cont[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[1]~12_combout\ = (\VGA_unit|VGA_unit|H_Cont\(1) & (!\VGA_unit|VGA_unit|H_Cont[0]~11\)) # (!\VGA_unit|VGA_unit|H_Cont\(1) & ((\VGA_unit|VGA_unit|H_Cont[0]~11\) # (GND)))
-- \VGA_unit|VGA_unit|H_Cont[1]~13\ = CARRY((!\VGA_unit|VGA_unit|H_Cont[0]~11\) # (!\VGA_unit|VGA_unit|H_Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(1),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[0]~11\,
	combout => \VGA_unit|VGA_unit|H_Cont[1]~12_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[1]~13\);

-- Location: LCCOMB_X31_Y21_N16
\VGA_unit|VGA_unit|H_Cont[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[5]~20_combout\ = (\VGA_unit|VGA_unit|H_Cont\(5) & (!\VGA_unit|VGA_unit|H_Cont[4]~19\)) # (!\VGA_unit|VGA_unit|H_Cont\(5) & ((\VGA_unit|VGA_unit|H_Cont[4]~19\) # (GND)))
-- \VGA_unit|VGA_unit|H_Cont[5]~21\ = CARRY((!\VGA_unit|VGA_unit|H_Cont[4]~19\) # (!\VGA_unit|VGA_unit|H_Cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[4]~19\,
	combout => \VGA_unit|VGA_unit|H_Cont[5]~20_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[5]~21\);

-- Location: LCCOMB_X31_Y21_N18
\VGA_unit|VGA_unit|H_Cont[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[6]~22_combout\ = (\VGA_unit|VGA_unit|H_Cont\(6) & (\VGA_unit|VGA_unit|H_Cont[5]~21\ $ (GND))) # (!\VGA_unit|VGA_unit|H_Cont\(6) & (!\VGA_unit|VGA_unit|H_Cont[5]~21\ & VCC))
-- \VGA_unit|VGA_unit|H_Cont[6]~23\ = CARRY((\VGA_unit|VGA_unit|H_Cont\(6) & !\VGA_unit|VGA_unit|H_Cont[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(6),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[5]~21\,
	combout => \VGA_unit|VGA_unit|H_Cont[6]~22_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[6]~23\);

-- Location: LCCOMB_X34_Y21_N14
\VGA_unit|VGA_unit|counter_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|counter_enable~0_combout\ = !\VGA_unit|VGA_unit|counter_enable~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_unit|counter_enable~regout\,
	combout => \VGA_unit|VGA_unit|counter_enable~0_combout\);

-- Location: LCFF_X34_Y21_N15
\VGA_unit|VGA_unit|counter_enable\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|counter_enable~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|counter_enable~regout\);

-- Location: LCFF_X31_Y21_N19
\VGA_unit|VGA_unit|H_Cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[6]~22_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(6));

-- Location: LCCOMB_X31_Y21_N20
\VGA_unit|VGA_unit|H_Cont[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[7]~24_combout\ = (\VGA_unit|VGA_unit|H_Cont\(7) & (!\VGA_unit|VGA_unit|H_Cont[6]~23\)) # (!\VGA_unit|VGA_unit|H_Cont\(7) & ((\VGA_unit|VGA_unit|H_Cont[6]~23\) # (GND)))
-- \VGA_unit|VGA_unit|H_Cont[7]~25\ = CARRY((!\VGA_unit|VGA_unit|H_Cont[6]~23\) # (!\VGA_unit|VGA_unit|H_Cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(7),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[6]~23\,
	combout => \VGA_unit|VGA_unit|H_Cont[7]~24_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[7]~25\);

-- Location: LCCOMB_X31_Y21_N22
\VGA_unit|VGA_unit|H_Cont[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[8]~26_combout\ = (\VGA_unit|VGA_unit|H_Cont\(8) & (\VGA_unit|VGA_unit|H_Cont[7]~25\ $ (GND))) # (!\VGA_unit|VGA_unit|H_Cont\(8) & (!\VGA_unit|VGA_unit|H_Cont[7]~25\ & VCC))
-- \VGA_unit|VGA_unit|H_Cont[8]~27\ = CARRY((\VGA_unit|VGA_unit|H_Cont\(8) & !\VGA_unit|VGA_unit|H_Cont[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(8),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[7]~25\,
	combout => \VGA_unit|VGA_unit|H_Cont[8]~26_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[8]~27\);

-- Location: LCFF_X31_Y21_N23
\VGA_unit|VGA_unit|H_Cont[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[8]~26_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(8));

-- Location: LCFF_X31_Y21_N21
\VGA_unit|VGA_unit|H_Cont[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[7]~24_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(7));

-- Location: LCCOMB_X31_Y21_N12
\VGA_unit|VGA_unit|H_Cont[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[3]~16_combout\ = (\VGA_unit|VGA_unit|H_Cont\(3) & (!\VGA_unit|VGA_unit|H_Cont[2]~15\)) # (!\VGA_unit|VGA_unit|H_Cont\(3) & ((\VGA_unit|VGA_unit|H_Cont[2]~15\) # (GND)))
-- \VGA_unit|VGA_unit|H_Cont[3]~17\ = CARRY((!\VGA_unit|VGA_unit|H_Cont[2]~15\) # (!\VGA_unit|VGA_unit|H_Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(3),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[2]~15\,
	combout => \VGA_unit|VGA_unit|H_Cont[3]~16_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[3]~17\);

-- Location: LCFF_X31_Y21_N13
\VGA_unit|VGA_unit|H_Cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[3]~16_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(3));

-- Location: LCCOMB_X31_Y21_N10
\VGA_unit|VGA_unit|H_Cont[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[2]~14_combout\ = (\VGA_unit|VGA_unit|H_Cont\(2) & (\VGA_unit|VGA_unit|H_Cont[1]~13\ $ (GND))) # (!\VGA_unit|VGA_unit|H_Cont\(2) & (!\VGA_unit|VGA_unit|H_Cont[1]~13\ & VCC))
-- \VGA_unit|VGA_unit|H_Cont[2]~15\ = CARRY((\VGA_unit|VGA_unit|H_Cont\(2) & !\VGA_unit|VGA_unit|H_Cont[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(2),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[1]~13\,
	combout => \VGA_unit|VGA_unit|H_Cont[2]~14_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[2]~15\);

-- Location: LCFF_X31_Y21_N11
\VGA_unit|VGA_unit|H_Cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[2]~14_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(2));

-- Location: LCCOMB_X34_Y21_N2
\VGA_unit|VGA_unit|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan0~0_combout\ = (((!\VGA_unit|VGA_unit|H_Cont\(2)) # (!\VGA_unit|VGA_unit|H_Cont\(4))) # (!\VGA_unit|VGA_unit|H_Cont\(3))) # (!\VGA_unit|VGA_unit|H_Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(0),
	datab => \VGA_unit|VGA_unit|H_Cont\(3),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(2),
	combout => \VGA_unit|VGA_unit|LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y21_N4
\VGA_unit|VGA_unit|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan0~1_combout\ = (\VGA_unit|VGA_unit|H_Cont\(7)) # ((\VGA_unit|VGA_unit|H_Cont\(6)) # ((\VGA_unit|VGA_unit|H_Cont\(1) & !\VGA_unit|VGA_unit|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(1),
	datab => \VGA_unit|VGA_unit|H_Cont\(7),
	datac => \VGA_unit|VGA_unit|H_Cont\(6),
	datad => \VGA_unit|VGA_unit|LessThan0~0_combout\,
	combout => \VGA_unit|VGA_unit|LessThan0~1_combout\);

-- Location: LCCOMB_X34_Y21_N22
\VGA_unit|VGA_unit|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan0~2_combout\ = (\VGA_unit|VGA_unit|H_Cont\(9) & (\VGA_unit|VGA_unit|H_Cont\(8) & ((\VGA_unit|VGA_unit|LessThan0~1_combout\) # (\VGA_unit|VGA_unit|H_Cont\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(9),
	datab => \VGA_unit|VGA_unit|H_Cont\(8),
	datac => \VGA_unit|VGA_unit|LessThan0~1_combout\,
	datad => \VGA_unit|VGA_unit|H_Cont\(5),
	combout => \VGA_unit|VGA_unit|LessThan0~2_combout\);

-- Location: LCFF_X31_Y21_N9
\VGA_unit|VGA_unit|H_Cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[1]~12_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(1));

-- Location: LCCOMB_X31_Y21_N14
\VGA_unit|VGA_unit|H_Cont[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[4]~18_combout\ = (\VGA_unit|VGA_unit|H_Cont\(4) & (\VGA_unit|VGA_unit|H_Cont[3]~17\ $ (GND))) # (!\VGA_unit|VGA_unit|H_Cont\(4) & (!\VGA_unit|VGA_unit|H_Cont[3]~17\ & VCC))
-- \VGA_unit|VGA_unit|H_Cont[4]~19\ = CARRY((\VGA_unit|VGA_unit|H_Cont\(4) & !\VGA_unit|VGA_unit|H_Cont[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|H_Cont[3]~17\,
	combout => \VGA_unit|VGA_unit|H_Cont[4]~18_combout\,
	cout => \VGA_unit|VGA_unit|H_Cont[4]~19\);

-- Location: LCFF_X31_Y21_N15
\VGA_unit|VGA_unit|H_Cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[4]~18_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(4));

-- Location: LCFF_X31_Y21_N17
\VGA_unit|VGA_unit|H_Cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[5]~20_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(5));

-- Location: LCCOMB_X32_Y21_N18
\VGA_unit|VGA_unit|oVGA_V_SYNC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(4) & (!\VGA_unit|VGA_unit|H_Cont\(5) & (!\VGA_unit|VGA_unit|H_Cont\(7) & !\VGA_unit|VGA_unit|H_Cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(4),
	datab => \VGA_unit|VGA_unit|H_Cont\(5),
	datac => \VGA_unit|VGA_unit|H_Cont\(7),
	datad => \VGA_unit|VGA_unit|H_Cont\(6),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\);

-- Location: LCCOMB_X31_Y21_N24
\VGA_unit|VGA_unit|H_Cont[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|H_Cont[9]~28_combout\ = \VGA_unit|VGA_unit|H_Cont\(9) $ (\VGA_unit|VGA_unit|H_Cont[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(9),
	cin => \VGA_unit|VGA_unit|H_Cont[8]~27\,
	combout => \VGA_unit|VGA_unit|H_Cont[9]~28_combout\);

-- Location: LCFF_X31_Y21_N25
\VGA_unit|VGA_unit|H_Cont[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[9]~28_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(9));

-- Location: LCCOMB_X34_Y21_N20
\VGA_unit|VGA_unit|oVGA_V_SYNC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(9) & !\VGA_unit|VGA_unit|H_Cont\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_unit|H_Cont\(9),
	datad => \VGA_unit|VGA_unit|H_Cont\(8),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\);

-- Location: LCCOMB_X34_Y21_N10
\VGA_unit|VGA_unit|oVGA_V_SYNC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ = (\VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\ & (\VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\ & (\VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\ & !\VGA_unit|VGA_unit|H_Cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_V_SYNC~2_combout\,
	datab => \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\,
	datac => \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\,
	datad => \VGA_unit|VGA_unit|H_Cont\(1),
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\);

-- Location: LCFF_X35_Y20_N17
\VGA_unit|VGA_unit|V_Cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[5]~20_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(5));

-- Location: LCCOMB_X35_Y20_N20
\VGA_unit|VGA_unit|V_Cont[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[7]~24_combout\ = (\VGA_unit|VGA_unit|V_Cont\(7) & (!\VGA_unit|VGA_unit|V_Cont[6]~23\)) # (!\VGA_unit|VGA_unit|V_Cont\(7) & ((\VGA_unit|VGA_unit|V_Cont[6]~23\) # (GND)))
-- \VGA_unit|VGA_unit|V_Cont[7]~25\ = CARRY((!\VGA_unit|VGA_unit|V_Cont[6]~23\) # (!\VGA_unit|VGA_unit|V_Cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(7),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[6]~23\,
	combout => \VGA_unit|VGA_unit|V_Cont[7]~24_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[7]~25\);

-- Location: LCCOMB_X35_Y20_N22
\VGA_unit|VGA_unit|V_Cont[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[8]~26_combout\ = (\VGA_unit|VGA_unit|V_Cont\(8) & (\VGA_unit|VGA_unit|V_Cont[7]~25\ $ (GND))) # (!\VGA_unit|VGA_unit|V_Cont\(8) & (!\VGA_unit|VGA_unit|V_Cont[7]~25\ & VCC))
-- \VGA_unit|VGA_unit|V_Cont[8]~27\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(8) & !\VGA_unit|VGA_unit|V_Cont[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(8),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[7]~25\,
	combout => \VGA_unit|VGA_unit|V_Cont[8]~26_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[8]~27\);

-- Location: LCFF_X35_Y20_N23
\VGA_unit|VGA_unit|V_Cont[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[8]~26_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(8));

-- Location: LCCOMB_X35_Y20_N24
\VGA_unit|VGA_unit|V_Cont[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[9]~28_combout\ = \VGA_unit|VGA_unit|V_Cont\(9) $ (\VGA_unit|VGA_unit|V_Cont[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(9),
	cin => \VGA_unit|VGA_unit|V_Cont[8]~27\,
	combout => \VGA_unit|VGA_unit|V_Cont[9]~28_combout\);

-- Location: LCFF_X35_Y20_N25
\VGA_unit|VGA_unit|V_Cont[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[9]~28_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(9));

-- Location: LCCOMB_X35_Y21_N28
\VGA_unit|VGA_unit|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan2~0_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(8) & (!\VGA_unit|VGA_unit|V_Cont\(6) & (!\VGA_unit|VGA_unit|V_Cont\(7) & !\VGA_unit|VGA_unit|V_Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(8),
	datab => \VGA_unit|VGA_unit|V_Cont\(6),
	datac => \VGA_unit|VGA_unit|V_Cont\(7),
	datad => \VGA_unit|VGA_unit|V_Cont\(4),
	combout => \VGA_unit|VGA_unit|LessThan2~0_combout\);

-- Location: LCCOMB_X35_Y21_N14
\VGA_unit|VGA_unit|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan2~2_combout\ = (\VGA_unit|VGA_unit|V_Cont\(9) & (((\VGA_unit|VGA_unit|V_Cont\(5)) # (!\VGA_unit|VGA_unit|LessThan2~0_combout\)) # (!\VGA_unit|VGA_unit|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan2~1_combout\,
	datab => \VGA_unit|VGA_unit|V_Cont\(5),
	datac => \VGA_unit|VGA_unit|V_Cont\(9),
	datad => \VGA_unit|VGA_unit|LessThan2~0_combout\,
	combout => \VGA_unit|VGA_unit|LessThan2~2_combout\);

-- Location: LCFF_X35_Y20_N9
\VGA_unit|VGA_unit|V_Cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[1]~12_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(1));

-- Location: LCCOMB_X35_Y20_N10
\VGA_unit|VGA_unit|V_Cont[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[2]~14_combout\ = (\VGA_unit|VGA_unit|V_Cont\(2) & (\VGA_unit|VGA_unit|V_Cont[1]~13\ $ (GND))) # (!\VGA_unit|VGA_unit|V_Cont\(2) & (!\VGA_unit|VGA_unit|V_Cont[1]~13\ & VCC))
-- \VGA_unit|VGA_unit|V_Cont[2]~15\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(2) & !\VGA_unit|VGA_unit|V_Cont[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(2),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[1]~13\,
	combout => \VGA_unit|VGA_unit|V_Cont[2]~14_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[2]~15\);

-- Location: LCCOMB_X35_Y20_N12
\VGA_unit|VGA_unit|V_Cont[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[3]~16_combout\ = (\VGA_unit|VGA_unit|V_Cont\(3) & (!\VGA_unit|VGA_unit|V_Cont[2]~15\)) # (!\VGA_unit|VGA_unit|V_Cont\(3) & ((\VGA_unit|VGA_unit|V_Cont[2]~15\) # (GND)))
-- \VGA_unit|VGA_unit|V_Cont[3]~17\ = CARRY((!\VGA_unit|VGA_unit|V_Cont[2]~15\) # (!\VGA_unit|VGA_unit|V_Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(3),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[2]~15\,
	combout => \VGA_unit|VGA_unit|V_Cont[3]~16_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[3]~17\);

-- Location: LCCOMB_X35_Y20_N14
\VGA_unit|VGA_unit|V_Cont[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[4]~18_combout\ = (\VGA_unit|VGA_unit|V_Cont\(4) & (\VGA_unit|VGA_unit|V_Cont[3]~17\ $ (GND))) # (!\VGA_unit|VGA_unit|V_Cont\(4) & (!\VGA_unit|VGA_unit|V_Cont[3]~17\ & VCC))
-- \VGA_unit|VGA_unit|V_Cont[4]~19\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(4) & !\VGA_unit|VGA_unit|V_Cont[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(4),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[3]~17\,
	combout => \VGA_unit|VGA_unit|V_Cont[4]~18_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[4]~19\);

-- Location: LCFF_X35_Y20_N15
\VGA_unit|VGA_unit|V_Cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[4]~18_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(4));

-- Location: LCCOMB_X35_Y20_N18
\VGA_unit|VGA_unit|V_Cont[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|V_Cont[6]~22_combout\ = (\VGA_unit|VGA_unit|V_Cont\(6) & (\VGA_unit|VGA_unit|V_Cont[5]~21\ $ (GND))) # (!\VGA_unit|VGA_unit|V_Cont\(6) & (!\VGA_unit|VGA_unit|V_Cont[5]~21\ & VCC))
-- \VGA_unit|VGA_unit|V_Cont[6]~23\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(6) & !\VGA_unit|VGA_unit|V_Cont[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(6),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|V_Cont[5]~21\,
	combout => \VGA_unit|VGA_unit|V_Cont[6]~22_combout\,
	cout => \VGA_unit|VGA_unit|V_Cont[6]~23\);

-- Location: LCFF_X35_Y20_N19
\VGA_unit|VGA_unit|V_Cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[6]~22_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(6));

-- Location: LCFF_X35_Y20_N21
\VGA_unit|VGA_unit|V_Cont[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[7]~24_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(7));

-- Location: LCFF_X35_Y20_N13
\VGA_unit|VGA_unit|V_Cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[3]~16_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(3));

-- Location: LCFF_X35_Y20_N7
\VGA_unit|VGA_unit|V_Cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[0]~10_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(0));

-- Location: LCCOMB_X36_Y18_N0
\VGA_unit|VGA_unit|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~0_combout\ = \VGA_unit|VGA_unit|V_Cont\(0) $ (VCC)
-- \VGA_unit|VGA_unit|Add1~1\ = CARRY(\VGA_unit|VGA_unit|V_Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(0),
	datad => VCC,
	combout => \VGA_unit|VGA_unit|Add1~0_combout\,
	cout => \VGA_unit|VGA_unit|Add1~1\);

-- Location: LCCOMB_X36_Y18_N2
\VGA_unit|VGA_unit|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~2_combout\ = (\VGA_unit|VGA_unit|V_Cont\(1) & (\VGA_unit|VGA_unit|Add1~1\ & VCC)) # (!\VGA_unit|VGA_unit|V_Cont\(1) & (!\VGA_unit|VGA_unit|Add1~1\))
-- \VGA_unit|VGA_unit|Add1~3\ = CARRY((!\VGA_unit|VGA_unit|V_Cont\(1) & !\VGA_unit|VGA_unit|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(1),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~1\,
	combout => \VGA_unit|VGA_unit|Add1~2_combout\,
	cout => \VGA_unit|VGA_unit|Add1~3\);

-- Location: LCCOMB_X36_Y18_N4
\VGA_unit|VGA_unit|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~4_combout\ = (\VGA_unit|VGA_unit|V_Cont\(2) & ((GND) # (!\VGA_unit|VGA_unit|Add1~3\))) # (!\VGA_unit|VGA_unit|V_Cont\(2) & (\VGA_unit|VGA_unit|Add1~3\ $ (GND)))
-- \VGA_unit|VGA_unit|Add1~5\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(2)) # (!\VGA_unit|VGA_unit|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(2),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~3\,
	combout => \VGA_unit|VGA_unit|Add1~4_combout\,
	cout => \VGA_unit|VGA_unit|Add1~5\);

-- Location: LCCOMB_X36_Y18_N6
\VGA_unit|VGA_unit|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~6_combout\ = (\VGA_unit|VGA_unit|V_Cont\(3) & (\VGA_unit|VGA_unit|Add1~5\ & VCC)) # (!\VGA_unit|VGA_unit|V_Cont\(3) & (!\VGA_unit|VGA_unit|Add1~5\))
-- \VGA_unit|VGA_unit|Add1~7\ = CARRY((!\VGA_unit|VGA_unit|V_Cont\(3) & !\VGA_unit|VGA_unit|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(3),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~5\,
	combout => \VGA_unit|VGA_unit|Add1~6_combout\,
	cout => \VGA_unit|VGA_unit|Add1~7\);

-- Location: LCCOMB_X36_Y18_N8
\VGA_unit|VGA_unit|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~8_combout\ = (\VGA_unit|VGA_unit|V_Cont\(4) & ((GND) # (!\VGA_unit|VGA_unit|Add1~7\))) # (!\VGA_unit|VGA_unit|V_Cont\(4) & (\VGA_unit|VGA_unit|Add1~7\ $ (GND)))
-- \VGA_unit|VGA_unit|Add1~9\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(4)) # (!\VGA_unit|VGA_unit|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(4),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~7\,
	combout => \VGA_unit|VGA_unit|Add1~8_combout\,
	cout => \VGA_unit|VGA_unit|Add1~9\);

-- Location: LCCOMB_X36_Y18_N10
\VGA_unit|VGA_unit|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~10_combout\ = (\VGA_unit|VGA_unit|V_Cont\(5) & (!\VGA_unit|VGA_unit|Add1~9\)) # (!\VGA_unit|VGA_unit|V_Cont\(5) & ((\VGA_unit|VGA_unit|Add1~9\) # (GND)))
-- \VGA_unit|VGA_unit|Add1~11\ = CARRY((!\VGA_unit|VGA_unit|Add1~9\) # (!\VGA_unit|VGA_unit|V_Cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(5),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~9\,
	combout => \VGA_unit|VGA_unit|Add1~10_combout\,
	cout => \VGA_unit|VGA_unit|Add1~11\);

-- Location: LCCOMB_X36_Y18_N12
\VGA_unit|VGA_unit|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~12_combout\ = (\VGA_unit|VGA_unit|V_Cont\(6) & ((GND) # (!\VGA_unit|VGA_unit|Add1~11\))) # (!\VGA_unit|VGA_unit|V_Cont\(6) & (\VGA_unit|VGA_unit|Add1~11\ $ (GND)))
-- \VGA_unit|VGA_unit|Add1~13\ = CARRY((\VGA_unit|VGA_unit|V_Cont\(6)) # (!\VGA_unit|VGA_unit|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(6),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~11\,
	combout => \VGA_unit|VGA_unit|Add1~12_combout\,
	cout => \VGA_unit|VGA_unit|Add1~13\);

-- Location: LCCOMB_X36_Y18_N14
\VGA_unit|VGA_unit|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~14_combout\ = (\VGA_unit|VGA_unit|V_Cont\(7) & (\VGA_unit|VGA_unit|Add1~13\ & VCC)) # (!\VGA_unit|VGA_unit|V_Cont\(7) & (!\VGA_unit|VGA_unit|Add1~13\))
-- \VGA_unit|VGA_unit|Add1~15\ = CARRY((!\VGA_unit|VGA_unit|V_Cont\(7) & !\VGA_unit|VGA_unit|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|V_Cont\(7),
	datad => VCC,
	cin => \VGA_unit|VGA_unit|Add1~13\,
	combout => \VGA_unit|VGA_unit|Add1~14_combout\,
	cout => \VGA_unit|VGA_unit|Add1~15\);

-- Location: LCCOMB_X40_Y14_N12
\VGA_unit|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~0_combout\ = (\VGA_unit|VGA_unit|Add1~16_combout\ & (\VGA_unit|VGA_unit|Add1~10_combout\ & ((\VGA_unit|VGA_unit|Add1~8_combout\) # (\VGA_unit|VGA_unit|Add1~6_combout\)))) # (!\VGA_unit|VGA_unit|Add1~16_combout\ & 
-- (((!\VGA_unit|VGA_unit|Add1~6_combout\) # (!\VGA_unit|VGA_unit|Add1~8_combout\)) # (!\VGA_unit|VGA_unit|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~16_combout\,
	datab => \VGA_unit|VGA_unit|Add1~10_combout\,
	datac => \VGA_unit|VGA_unit|Add1~8_combout\,
	datad => \VGA_unit|VGA_unit|Add1~6_combout\,
	combout => \VGA_unit|always0~0_combout\);

-- Location: LCCOMB_X40_Y14_N30
\VGA_unit|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~1_combout\ = (\VGA_unit|VGA_unit|Add1~16_combout\ & (((\VGA_unit|VGA_unit|Add1~12_combout\ & \VGA_unit|always0~0_combout\)))) # (!\VGA_unit|VGA_unit|Add1~16_combout\ & (!\VGA_unit|VGA_unit|Add1~14_combout\ & 
-- ((\VGA_unit|always0~0_combout\) # (!\VGA_unit|VGA_unit|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~16_combout\,
	datab => \VGA_unit|VGA_unit|Add1~14_combout\,
	datac => \VGA_unit|VGA_unit|Add1~12_combout\,
	datad => \VGA_unit|always0~0_combout\,
	combout => \VGA_unit|always0~1_combout\);

-- Location: LCCOMB_X40_Y15_N16
\VGA_unit|VGA_SRAM_state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~21_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & ((!\VGA_unit|VGA_unit|Add1~14_combout\) # (!\VGA_unit|VGA_unit|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~16_combout\,
	datab => \VGA_unit|VGA_unit|Add1~14_combout\,
	datac => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	combout => \VGA_unit|VGA_SRAM_state~21_combout\);

-- Location: LCCOMB_X33_Y21_N24
\VGA_unit|VGA_unit|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add0~0_combout\ = (\VGA_unit|VGA_unit|H_Cont\(7) & ((\VGA_unit|VGA_unit|H_Cont\(5)) # ((\VGA_unit|VGA_unit|H_Cont\(4)) # (\VGA_unit|VGA_unit|H_Cont\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(7),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(6),
	combout => \VGA_unit|VGA_unit|Add0~0_combout\);

-- Location: LCCOMB_X33_Y21_N12
\VGA_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal0~0_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(1) & (!\VGA_unit|VGA_unit|H_Cont\(6) & (\VGA_unit|VGA_unit|H_Cont\(5) $ (\VGA_unit|VGA_unit|H_Cont\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(4),
	datac => \VGA_unit|VGA_unit|H_Cont\(1),
	datad => \VGA_unit|VGA_unit|H_Cont\(6),
	combout => \VGA_unit|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y21_N30
\VGA_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal0~1_combout\ = (\VGA_unit|Equal0~0_combout\ & (\VGA_unit|VGA_unit|H_Cont\(9) $ (((\VGA_unit|VGA_unit|H_Cont\(8)) # (\VGA_unit|VGA_unit|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(9),
	datab => \VGA_unit|VGA_unit|H_Cont\(8),
	datac => \VGA_unit|VGA_unit|Add0~0_combout\,
	datad => \VGA_unit|Equal0~0_combout\,
	combout => \VGA_unit|Equal0~1_combout\);

-- Location: LCFF_X31_Y21_N7
\VGA_unit|VGA_unit|H_Cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|H_Cont[0]~10_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan0~2_combout\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|H_Cont\(0));

-- Location: LCCOMB_X33_Y21_N0
\VGA_unit|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal0~2_combout\ = (\VGA_unit|VGA_unit|H_Cont\(2) & (\VGA_unit|VGA_unit|H_Cont\(3) & (!\VGA_unit|VGA_unit|H_Cont\(4) & \VGA_unit|VGA_unit|H_Cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(2),
	datab => \VGA_unit|VGA_unit|H_Cont\(3),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(0),
	combout => \VGA_unit|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y21_N18
\VGA_unit|VGA_unit|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add0~1_combout\ = \VGA_unit|VGA_unit|H_Cont\(8) $ (\VGA_unit|VGA_unit|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(8),
	datac => \VGA_unit|VGA_unit|Add0~0_combout\,
	combout => \VGA_unit|VGA_unit|Add0~1_combout\);

-- Location: LCCOMB_X40_Y14_N10
\VGA_unit|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal0~3_combout\ = (\VGA_unit|VGA_unit|Add0~2_combout\ & (\VGA_unit|Equal0~1_combout\ & (\VGA_unit|Equal0~2_combout\ & \VGA_unit|VGA_unit|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add0~2_combout\,
	datab => \VGA_unit|Equal0~1_combout\,
	datac => \VGA_unit|Equal0~2_combout\,
	datad => \VGA_unit|VGA_unit|Add0~1_combout\,
	combout => \VGA_unit|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y14_N6
\VGA_unit|VGA_SRAM_state~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~22_combout\ = (!\VGA_unit|VGA_unit|Add1~18_combout\ & (!\VGA_unit|always0~1_combout\ & (\VGA_unit|VGA_SRAM_state~21_combout\ & \VGA_unit|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~18_combout\,
	datab => \VGA_unit|always0~1_combout\,
	datac => \VGA_unit|VGA_SRAM_state~21_combout\,
	datad => \VGA_unit|Equal0~3_combout\,
	combout => \VGA_unit|VGA_SRAM_state~22_combout\);

-- Location: LCCOMB_X36_Y21_N24
\VGA_unit|VGA_SRAM_state~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~23_combout\ = (\VGA_enable~regout\ & (((\VGA_unit|VGA_SRAM_state~14_regout\)))) # (!\VGA_enable~regout\ & ((\VGA_unit|VGA_SRAM_state~20_combout\) # ((\VGA_unit|VGA_SRAM_state~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~20_combout\,
	datab => \VGA_enable~regout\,
	datac => \VGA_unit|VGA_SRAM_state~14_regout\,
	datad => \VGA_unit|VGA_SRAM_state~22_combout\,
	combout => \VGA_unit|VGA_SRAM_state~23_combout\);

-- Location: LCFF_X36_Y21_N25
\VGA_unit|VGA_SRAM_state~14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_SRAM_state~23_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state~14_regout\);

-- Location: LCCOMB_X36_Y21_N20
\VGA_unit|VGA_SRAM_state~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~26_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & (!\VGA_enable~regout\ & \VGA_unit|VGA_SRAM_state~14_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_enable~regout\,
	datac => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_SRAM_state~26_combout\);

-- Location: LCCOMB_X34_Y21_N6
\VGA_unit|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|LessThan2~1_combout\ = (\VGA_unit|VGA_unit|H_Cont\(7) & ((\VGA_unit|VGA_unit|H_Cont\(5)) # ((\VGA_unit|VGA_unit|H_Cont\(4)) # (\VGA_unit|VGA_unit|H_Cont\(6))))) # (!\VGA_unit|VGA_unit|H_Cont\(7) & (((!\VGA_unit|VGA_unit|H_Cont\(5) & 
-- !\VGA_unit|VGA_unit|H_Cont\(4))) # (!\VGA_unit|VGA_unit|H_Cont\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(7),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(6),
	combout => \VGA_unit|LessThan2~1_combout\);

-- Location: LCCOMB_X34_Y21_N8
\VGA_unit|VGA_SRAM_state~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~28_combout\ = (\VGA_unit|LessThan2~1_combout\) # ((\VGA_unit|LessThan2~0_combout\ & (\VGA_unit|VGA_unit|H_Cont\(4) $ (\VGA_unit|VGA_unit|H_Cont\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|LessThan2~0_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(4),
	datac => \VGA_unit|VGA_unit|H_Cont\(5),
	datad => \VGA_unit|LessThan2~1_combout\,
	combout => \VGA_unit|VGA_SRAM_state~28_combout\);

-- Location: LCCOMB_X36_Y21_N0
\VGA_unit|VGA_SRAM_state~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~29_combout\ = (\VGA_unit|VGA_SRAM_state~28_combout\ & (\VGA_unit|VGA_unit|H_Cont\(9) $ (((\VGA_unit|VGA_unit|Add0~0_combout\) # (\VGA_unit|VGA_unit|H_Cont\(8)))))) # (!\VGA_unit|VGA_SRAM_state~28_combout\ & 
-- (!\VGA_unit|VGA_unit|H_Cont\(9) & (\VGA_unit|VGA_unit|Add0~0_combout\ $ (\VGA_unit|VGA_unit|H_Cont\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add0~0_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(9),
	datac => \VGA_unit|VGA_unit|H_Cont\(8),
	datad => \VGA_unit|VGA_SRAM_state~28_combout\,
	combout => \VGA_unit|VGA_SRAM_state~29_combout\);

-- Location: LCCOMB_X36_Y21_N22
\VGA_unit|VGA_SRAM_state~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~35_combout\ = (\VGA_unit|VGA_SRAM_state~27_combout\) # ((\VGA_unit|VGA_SRAM_state~33_combout\) # ((\VGA_unit|VGA_SRAM_state~26_combout\ & \VGA_unit|VGA_SRAM_state~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~27_combout\,
	datab => \VGA_unit|VGA_SRAM_state~33_combout\,
	datac => \VGA_unit|VGA_SRAM_state~26_combout\,
	datad => \VGA_unit|VGA_SRAM_state~29_combout\,
	combout => \VGA_unit|VGA_SRAM_state~35_combout\);

-- Location: LCFF_X36_Y21_N23
\VGA_unit|VGA_SRAM_state~16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_SRAM_state~35_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state~16_regout\);

-- Location: LCCOMB_X36_Y21_N4
\VGA_unit|VGA_SRAM_state~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~31_combout\ = (\VGA_unit|VGA_SRAM_state~16_regout\ & (\VGA_unit|VGA_SRAM_state~15_regout\ & (\VGA_unit|VGA_SRAM_state~14_regout\ $ (\VGA_enable~regout\)))) # (!\VGA_unit|VGA_SRAM_state~16_regout\ & 
-- (\VGA_unit|VGA_SRAM_state~14_regout\ & ((!\VGA_enable~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~15_regout\,
	datac => \VGA_enable~regout\,
	datad => \VGA_unit|VGA_SRAM_state~16_regout\,
	combout => \VGA_unit|VGA_SRAM_state~31_combout\);

-- Location: LCCOMB_X36_Y21_N26
\VGA_unit|VGA_SRAM_state~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~30_combout\ = (\VGA_unit|VGA_SRAM_state~27_combout\) # ((\VGA_unit|VGA_SRAM_state~26_combout\ & \VGA_unit|VGA_SRAM_state~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~27_combout\,
	datac => \VGA_unit|VGA_SRAM_state~26_combout\,
	datad => \VGA_unit|VGA_SRAM_state~29_combout\,
	combout => \VGA_unit|VGA_SRAM_state~30_combout\);

-- Location: LCCOMB_X36_Y21_N28
\VGA_unit|VGA_SRAM_state~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~32_combout\ = (\VGA_unit|VGA_SRAM_state~30_combout\) # ((\VGA_unit|VGA_SRAM_state~31_combout\ & (!\VGA_unit|VGA_SRAM_state~17_regout\ & !\VGA_unit|VGA_SRAM_state~15_regout\)) # (!\VGA_unit|VGA_SRAM_state~31_combout\ & 
-- ((\VGA_unit|VGA_SRAM_state~15_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_SRAM_state~31_combout\,
	datac => \VGA_unit|VGA_SRAM_state~15_regout\,
	datad => \VGA_unit|VGA_SRAM_state~30_combout\,
	combout => \VGA_unit|VGA_SRAM_state~32_combout\);

-- Location: LCFF_X36_Y21_N29
\VGA_unit|VGA_SRAM_state~15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_SRAM_state~32_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state~15_regout\);

-- Location: LCCOMB_X36_Y21_N2
\VGA_unit|VGA_SRAM_state~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~24_combout\ = (\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_SRAM_state~15_regout\ & (!\VGA_enable~regout\ & \VGA_unit|VGA_SRAM_state~16_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~15_regout\,
	datac => \VGA_enable~regout\,
	datad => \VGA_unit|VGA_SRAM_state~16_regout\,
	combout => \VGA_unit|VGA_SRAM_state~24_combout\);

-- Location: LCCOMB_X36_Y21_N10
\VGA_unit|VGA_SRAM_state~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~25_combout\ = (\VGA_unit|VGA_SRAM_state~24_combout\) # ((\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_enable~regout\) # (!\VGA_unit|VGA_SRAM_state~14_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_enable~regout\,
	datac => \VGA_unit|VGA_SRAM_state~17_regout\,
	datad => \VGA_unit|VGA_SRAM_state~24_combout\,
	combout => \VGA_unit|VGA_SRAM_state~25_combout\);

-- Location: LCFF_X36_Y21_N11
\VGA_unit|VGA_SRAM_state~17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_SRAM_state~25_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_SRAM_state~17_regout\);

-- Location: LCCOMB_X41_Y13_N26
\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ = (!\VGA_unit|VGA_SRAM_state~14_regout\ & (!\VGA_unit|VGA_SRAM_state~15_regout\ & (!\VGA_unit|VGA_SRAM_state~17_regout\ & !\VGA_unit|VGA_SRAM_state~16_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~15_regout\,
	datac => \VGA_unit|VGA_SRAM_state~17_regout\,
	datad => \VGA_unit|VGA_SRAM_state~16_regout\,
	combout => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\);

-- Location: LCCOMB_X40_Y14_N14
\VGA_unit|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal1~0_combout\ = (\VGA_unit|VGA_unit|Add1~8_combout\ & (\VGA_unit|VGA_unit|Add1~10_combout\ & (\VGA_unit|VGA_unit|Add1~12_combout\ & \VGA_unit|VGA_unit|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~8_combout\,
	datab => \VGA_unit|VGA_unit|Add1~10_combout\,
	datac => \VGA_unit|VGA_unit|Add1~12_combout\,
	datad => \VGA_unit|VGA_unit|Add1~6_combout\,
	combout => \VGA_unit|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y18_N20
\VGA_unit|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal2~0_combout\ = (!\VGA_unit|VGA_unit|Add1~16_combout\ & (!\VGA_unit|VGA_unit|Add1~2_combout\ & (!\VGA_unit|VGA_unit|Add1~14_combout\ & !\VGA_unit|VGA_unit|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~16_combout\,
	datab => \VGA_unit|VGA_unit|Add1~2_combout\,
	datac => \VGA_unit|VGA_unit|Add1~14_combout\,
	datad => \VGA_unit|VGA_unit|Add1~0_combout\,
	combout => \VGA_unit|Equal2~0_combout\);

-- Location: LCCOMB_X40_Y14_N8
\VGA_unit|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal1~1_combout\ = (\VGA_unit|VGA_unit|Add1~18_combout\) # ((\VGA_unit|VGA_unit|Add1~4_combout\) # ((!\VGA_unit|Equal2~0_combout\) # (!\VGA_unit|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~18_combout\,
	datab => \VGA_unit|VGA_unit|Add1~4_combout\,
	datac => \VGA_unit|Equal1~0_combout\,
	datad => \VGA_unit|Equal2~0_combout\,
	combout => \VGA_unit|Equal1~1_combout\);

-- Location: LCCOMB_X42_Y14_N0
\VGA_unit|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~0_combout\ = \VGA_unit|SRAM_address\(2) $ (VCC)
-- \VGA_unit|Add0~1\ = CARRY(\VGA_unit|SRAM_address\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(2),
	datad => VCC,
	combout => \VGA_unit|Add0~0_combout\,
	cout => \VGA_unit|Add0~1\);

-- Location: LCCOMB_X42_Y14_N4
\VGA_unit|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~4_combout\ = (\VGA_unit|SRAM_address\(4) & ((GND) # (!\VGA_unit|Add0~3\))) # (!\VGA_unit|SRAM_address\(4) & (\VGA_unit|Add0~3\ $ (GND)))
-- \VGA_unit|Add0~5\ = CARRY((\VGA_unit|SRAM_address\(4)) # (!\VGA_unit|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(4),
	datad => VCC,
	cin => \VGA_unit|Add0~3\,
	combout => \VGA_unit|Add0~4_combout\,
	cout => \VGA_unit|Add0~5\);

-- Location: LCCOMB_X40_Y14_N24
\VGA_unit|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~10_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Equal1~1_combout\ & \VGA_unit|Add0~4_combout\)))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (\VGA_unit|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Add1~8_combout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datac => \VGA_unit|Equal1~1_combout\,
	datad => \VGA_unit|Add0~4_combout\,
	combout => \VGA_unit|Add1~10_combout\);

-- Location: LCCOMB_X41_Y13_N20
\VGA_unit|SRAM_address[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|SRAM_address[4]~0_combout\ = (!\VGA_enable~regout\ & ((!\VGA_unit|VGA_SRAM_state~15_regout\) # (!\VGA_unit|VGA_SRAM_state~14_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~15_regout\,
	datad => \VGA_enable~regout\,
	combout => \VGA_unit|SRAM_address[4]~0_combout\);

-- Location: LCCOMB_X36_Y18_N18
\VGA_unit|VGA_unit|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add1~18_combout\ = \VGA_unit|VGA_unit|V_Cont\(9) $ (!\VGA_unit|VGA_unit|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(9),
	cin => \VGA_unit|VGA_unit|Add1~17\,
	combout => \VGA_unit|VGA_unit|Add1~18_combout\);

-- Location: LCCOMB_X40_Y14_N0
\VGA_unit|SRAM_address[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|SRAM_address[4]~1_combout\ = (\VGA_unit|VGA_unit|Add1~18_combout\) # ((\VGA_unit|always0~1_combout\) # ((\VGA_unit|VGA_unit|Add1~16_combout\ & \VGA_unit|VGA_unit|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~16_combout\,
	datab => \VGA_unit|VGA_unit|Add1~14_combout\,
	datac => \VGA_unit|VGA_unit|Add1~18_combout\,
	datad => \VGA_unit|always0~1_combout\,
	combout => \VGA_unit|SRAM_address[4]~1_combout\);

-- Location: LCCOMB_X40_Y14_N26
\VGA_unit|SRAM_address[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|SRAM_address[4]~2_combout\ = (\VGA_unit|SRAM_address[4]~0_combout\ & (((\VGA_unit|Equal0~3_combout\ & !\VGA_unit|SRAM_address[4]~1_combout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal0~3_combout\,
	datab => \VGA_unit|SRAM_address[4]~0_combout\,
	datac => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datad => \VGA_unit|SRAM_address[4]~1_combout\,
	combout => \VGA_unit|SRAM_address[4]~2_combout\);

-- Location: LCFF_X40_Y14_N25
\VGA_unit|SRAM_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~10_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(4));

-- Location: LCCOMB_X41_Y14_N14
\VGA_unit|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~0_combout\ = \VGA_unit|SRAM_address\(0) $ (VCC)
-- \VGA_unit|Add1~1\ = CARRY(\VGA_unit|SRAM_address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(0),
	datad => VCC,
	combout => \VGA_unit|Add1~0_combout\,
	cout => \VGA_unit|Add1~1\);

-- Location: LCCOMB_X41_Y14_N4
\VGA_unit|Add1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~53_combout\ = (\VGA_unit|Add1~0_combout\ & !\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|Add1~0_combout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	combout => \VGA_unit|Add1~53_combout\);

-- Location: LCCOMB_X40_Y14_N20
\VGA_unit|SRAM_address[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|SRAM_address[1]~3_combout\ = (\VGA_unit|SRAM_address[4]~0_combout\ & (((\VGA_unit|Equal0~3_combout\ & !\VGA_unit|Equal1~1_combout\)) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal0~3_combout\,
	datab => \VGA_unit|SRAM_address[4]~0_combout\,
	datac => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datad => \VGA_unit|Equal1~1_combout\,
	combout => \VGA_unit|SRAM_address[1]~3_combout\);

-- Location: LCFF_X41_Y14_N5
\VGA_unit|SRAM_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~53_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(0));

-- Location: LCCOMB_X41_Y14_N16
\VGA_unit|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~2_combout\ = (\VGA_unit|SRAM_address\(1) & (!\VGA_unit|Add1~1\)) # (!\VGA_unit|SRAM_address\(1) & ((\VGA_unit|Add1~1\) # (GND)))
-- \VGA_unit|Add1~3\ = CARRY((!\VGA_unit|Add1~1\) # (!\VGA_unit|SRAM_address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(1),
	datad => VCC,
	cin => \VGA_unit|Add1~1\,
	combout => \VGA_unit|Add1~2_combout\,
	cout => \VGA_unit|Add1~3\);

-- Location: LCCOMB_X41_Y14_N2
\VGA_unit|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~52_combout\ = (\VGA_unit|Add1~2_combout\ & !\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|Add1~2_combout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	combout => \VGA_unit|Add1~52_combout\);

-- Location: LCFF_X41_Y14_N3
\VGA_unit|SRAM_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~52_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(1));

-- Location: LCCOMB_X41_Y14_N18
\VGA_unit|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~4_combout\ = (\VGA_unit|SRAM_address\(2) & (\VGA_unit|Add1~3\ $ (GND))) # (!\VGA_unit|SRAM_address\(2) & (!\VGA_unit|Add1~3\ & VCC))
-- \VGA_unit|Add1~5\ = CARRY((\VGA_unit|SRAM_address\(2) & !\VGA_unit|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(2),
	datad => VCC,
	cin => \VGA_unit|Add1~3\,
	combout => \VGA_unit|Add1~4_combout\,
	cout => \VGA_unit|Add1~5\);

-- Location: LCCOMB_X41_Y14_N0
\VGA_unit|Add1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~51_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (\VGA_unit|Equal1~1_combout\ & ((\VGA_unit|Add0~0_combout\)))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal1~1_combout\,
	datab => \VGA_unit|Add1~4_combout\,
	datac => \VGA_unit|Add0~0_combout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	combout => \VGA_unit|Add1~51_combout\);

-- Location: LCFF_X41_Y14_N1
\VGA_unit|SRAM_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~51_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(2));

-- Location: LCCOMB_X41_Y14_N20
\VGA_unit|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~6_combout\ = (\VGA_unit|SRAM_address\(3) & (!\VGA_unit|Add1~5\)) # (!\VGA_unit|SRAM_address\(3) & ((\VGA_unit|Add1~5\) # (GND)))
-- \VGA_unit|Add1~7\ = CARRY((!\VGA_unit|Add1~5\) # (!\VGA_unit|SRAM_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(3),
	datad => VCC,
	cin => \VGA_unit|Add1~5\,
	combout => \VGA_unit|Add1~6_combout\,
	cout => \VGA_unit|Add1~7\);

-- Location: LCCOMB_X41_Y14_N24
\VGA_unit|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~11_combout\ = (\VGA_unit|SRAM_address\(5) & (!\VGA_unit|Add1~9\)) # (!\VGA_unit|SRAM_address\(5) & ((\VGA_unit|Add1~9\) # (GND)))
-- \VGA_unit|Add1~12\ = CARRY((!\VGA_unit|Add1~9\) # (!\VGA_unit|SRAM_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(5),
	datad => VCC,
	cin => \VGA_unit|Add1~9\,
	combout => \VGA_unit|Add1~11_combout\,
	cout => \VGA_unit|Add1~12\);

-- Location: LCCOMB_X40_Y14_N18
\VGA_unit|Add1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~13_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (\VGA_unit|Add0~6_combout\ & (\VGA_unit|Equal1~1_combout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Add0~6_combout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datac => \VGA_unit|Equal1~1_combout\,
	datad => \VGA_unit|Add1~11_combout\,
	combout => \VGA_unit|Add1~13_combout\);

-- Location: LCFF_X40_Y14_N19
\VGA_unit|SRAM_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~13_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(5));

-- Location: LCCOMB_X41_Y14_N26
\VGA_unit|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~14_combout\ = (\VGA_unit|SRAM_address\(6) & (\VGA_unit|Add1~12\ $ (GND))) # (!\VGA_unit|SRAM_address\(6) & (!\VGA_unit|Add1~12\ & VCC))
-- \VGA_unit|Add1~15\ = CARRY((\VGA_unit|SRAM_address\(6) & !\VGA_unit|Add1~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(6),
	datad => VCC,
	cin => \VGA_unit|Add1~12\,
	combout => \VGA_unit|Add1~14_combout\,
	cout => \VGA_unit|Add1~15\);

-- Location: LCCOMB_X40_Y14_N4
\VGA_unit|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~16_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (\VGA_unit|Add0~8_combout\ & (\VGA_unit|Equal1~1_combout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Add0~8_combout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datac => \VGA_unit|Equal1~1_combout\,
	datad => \VGA_unit|Add1~14_combout\,
	combout => \VGA_unit|Add1~16_combout\);

-- Location: LCFF_X40_Y14_N5
\VGA_unit|SRAM_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~16_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(6));

-- Location: LCCOMB_X44_Y8_N24
\SRAM_address~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address~0_combout\ = (top_state(2) & ((top_state(0)) # (top_state(1)))) # (!top_state(2) & ((!top_state(1)) # (!top_state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => top_state(2),
	datac => top_state(0),
	datad => top_state(1),
	combout => \SRAM_address~0_combout\);

-- Location: LCCOMB_X42_Y8_N28
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!top_state(2) & ((\M1_start~regout\) # ((top_state(1) & top_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => top_state(2),
	datab => top_state(1),
	datac => \M1_start~regout\,
	datad => top_state(0),
	combout => \Selector5~0_combout\);

-- Location: LCFF_X42_Y8_N29
M1_start : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_start~regout\);

-- Location: LCCOMB_X48_Y11_N0
\M1_unit|state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|state~15_combout\ = (\M1_unit|state~10_regout\ & (!\M1_unit|state~12_regout\ & !\M1_unit|state~11_regout\)) # (!\M1_unit|state~10_regout\ & ((\M1_unit|state~11_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state~12_regout\,
	datab => \M1_unit|state~10_regout\,
	datac => \M1_unit|state~11_regout\,
	combout => \M1_unit|state~15_combout\);

-- Location: LCFF_X48_Y11_N1
\M1_unit|state~11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|state~15_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state~11_regout\);

-- Location: LCCOMB_X48_Y11_N4
\M1_unit|state~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|state~17_combout\ = (\M1_unit|state~12_regout\) # ((!\M1_unit|state~10_regout\ & ((\M1_start~regout\) # (\M1_unit|state~11_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state~12_regout\,
	datab => \M1_start~regout\,
	datac => \M1_unit|state~10_regout\,
	datad => \M1_unit|state~11_regout\,
	combout => \M1_unit|state~17_combout\);

-- Location: LCFF_X48_Y11_N5
\M1_unit|state~10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|state~17_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|state~10_regout\);

-- Location: LCCOMB_X48_Y11_N8
\M1_unit|Yaddr[0]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[0]~51_combout\ = \M1_unit|Yaddr\(0) $ (((!\M1_unit|state~12_regout\ & (\M1_unit|state~10_regout\ & !\M1_unit|state~11_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state~12_regout\,
	datab => \M1_unit|state~10_regout\,
	datac => \M1_unit|Yaddr\(0),
	datad => \M1_unit|state~11_regout\,
	combout => \M1_unit|Yaddr[0]~51_combout\);

-- Location: LCFF_X48_Y11_N9
\M1_unit|Yaddr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[0]~51_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(0));

-- Location: LCCOMB_X46_Y11_N16
\M1_unit|Yaddr[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[1]~17_combout\ = (\M1_unit|Yaddr\(1) & (\M1_unit|Yaddr\(0) $ (VCC))) # (!\M1_unit|Yaddr\(1) & (\M1_unit|Yaddr\(0) & VCC))
-- \M1_unit|Yaddr[1]~18\ = CARRY((\M1_unit|Yaddr\(1) & \M1_unit|Yaddr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Yaddr\(1),
	datab => \M1_unit|Yaddr\(0),
	datad => VCC,
	combout => \M1_unit|Yaddr[1]~17_combout\,
	cout => \M1_unit|Yaddr[1]~18\);

-- Location: LCCOMB_X46_Y11_N18
\M1_unit|Yaddr[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[2]~19_combout\ = (\M1_unit|Yaddr\(2) & (!\M1_unit|Yaddr[1]~18\)) # (!\M1_unit|Yaddr\(2) & ((\M1_unit|Yaddr[1]~18\) # (GND)))
-- \M1_unit|Yaddr[2]~20\ = CARRY((!\M1_unit|Yaddr[1]~18\) # (!\M1_unit|Yaddr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Yaddr\(2),
	datad => VCC,
	cin => \M1_unit|Yaddr[1]~18\,
	combout => \M1_unit|Yaddr[2]~19_combout\,
	cout => \M1_unit|Yaddr[2]~20\);

-- Location: LCCOMB_X46_Y11_N4
\M1_unit|state.LI0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|state.LI0~0_combout\ = (!\M1_unit|state~12_regout\ & (\M1_unit|state~10_regout\ & !\M1_unit|state~11_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state~12_regout\,
	datab => \M1_unit|state~10_regout\,
	datac => \M1_unit|state~11_regout\,
	combout => \M1_unit|state.LI0~0_combout\);

-- Location: LCFF_X46_Y11_N19
\M1_unit|Yaddr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[2]~19_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(2));

-- Location: LCCOMB_X46_Y11_N22
\M1_unit|Yaddr[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[4]~23_combout\ = (\M1_unit|Yaddr\(4) & (!\M1_unit|Yaddr[3]~22\)) # (!\M1_unit|Yaddr\(4) & ((\M1_unit|Yaddr[3]~22\) # (GND)))
-- \M1_unit|Yaddr[4]~24\ = CARRY((!\M1_unit|Yaddr[3]~22\) # (!\M1_unit|Yaddr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Yaddr\(4),
	datad => VCC,
	cin => \M1_unit|Yaddr[3]~22\,
	combout => \M1_unit|Yaddr[4]~23_combout\,
	cout => \M1_unit|Yaddr[4]~24\);

-- Location: LCFF_X46_Y11_N23
\M1_unit|Yaddr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[4]~23_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(4));

-- Location: LCCOMB_X46_Y11_N24
\M1_unit|Yaddr[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[5]~25_combout\ = (\M1_unit|Yaddr\(5) & (\M1_unit|Yaddr[4]~24\ $ (GND))) # (!\M1_unit|Yaddr\(5) & (!\M1_unit|Yaddr[4]~24\ & VCC))
-- \M1_unit|Yaddr[5]~26\ = CARRY((\M1_unit|Yaddr\(5) & !\M1_unit|Yaddr[4]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Yaddr\(5),
	datad => VCC,
	cin => \M1_unit|Yaddr[4]~24\,
	combout => \M1_unit|Yaddr[5]~25_combout\,
	cout => \M1_unit|Yaddr[5]~26\);

-- Location: LCCOMB_X46_Y11_N26
\M1_unit|Yaddr[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[6]~27_combout\ = (\M1_unit|Yaddr\(6) & (!\M1_unit|Yaddr[5]~26\)) # (!\M1_unit|Yaddr\(6) & ((\M1_unit|Yaddr[5]~26\) # (GND)))
-- \M1_unit|Yaddr[6]~28\ = CARRY((!\M1_unit|Yaddr[5]~26\) # (!\M1_unit|Yaddr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Yaddr\(6),
	datad => VCC,
	cin => \M1_unit|Yaddr[5]~26\,
	combout => \M1_unit|Yaddr[6]~27_combout\,
	cout => \M1_unit|Yaddr[6]~28\);

-- Location: LCFF_X46_Y11_N27
\M1_unit|Yaddr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[6]~27_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(6));

-- Location: LCCOMB_X46_Y11_N0
\M1_unit|WideOr4\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|WideOr4~combout\ = (\M1_unit|state~11_regout\) # ((\M1_unit|state~12_regout\ & !\M1_unit|state~10_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state~12_regout\,
	datab => \M1_unit|state~10_regout\,
	datac => \M1_unit|state~11_regout\,
	combout => \M1_unit|WideOr4~combout\);

-- Location: LCCOMB_X46_Y11_N8
\M1_unit|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector17~0_combout\ = (\M1_unit|WideOr4~combout\ & (\M1_unit|Uaddr\(6))) # (!\M1_unit|WideOr4~combout\ & ((\M1_unit|Yaddr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(6),
	datab => \M1_unit|Yaddr\(6),
	datad => \M1_unit|WideOr4~combout\,
	combout => \M1_unit|Selector17~0_combout\);

-- Location: LCCOMB_X48_Y11_N2
\M1_unit|Vaddr[0]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[0]~51_combout\ = \M1_unit|Vaddr\(0) $ (((\M1_unit|state~12_regout\ & \M1_unit|state~10_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state~12_regout\,
	datab => \M1_unit|state~10_regout\,
	datac => \M1_unit|Vaddr\(0),
	combout => \M1_unit|Vaddr[0]~51_combout\);

-- Location: LCFF_X48_Y11_N3
\M1_unit|Vaddr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[0]~51_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(0));

-- Location: LCCOMB_X48_Y11_N16
\M1_unit|Vaddr[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[1]~17_combout\ = (\M1_unit|Vaddr\(1) & (\M1_unit|Vaddr\(0) $ (VCC))) # (!\M1_unit|Vaddr\(1) & (\M1_unit|Vaddr\(0) & VCC))
-- \M1_unit|Vaddr[1]~18\ = CARRY((\M1_unit|Vaddr\(1) & \M1_unit|Vaddr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Vaddr\(1),
	datab => \M1_unit|Vaddr\(0),
	datad => VCC,
	combout => \M1_unit|Vaddr[1]~17_combout\,
	cout => \M1_unit|Vaddr[1]~18\);

-- Location: LCCOMB_X48_Y11_N18
\M1_unit|Vaddr[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[2]~19_combout\ = (\M1_unit|Vaddr\(2) & (!\M1_unit|Vaddr[1]~18\)) # (!\M1_unit|Vaddr\(2) & ((\M1_unit|Vaddr[1]~18\) # (GND)))
-- \M1_unit|Vaddr[2]~20\ = CARRY((!\M1_unit|Vaddr[1]~18\) # (!\M1_unit|Vaddr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Vaddr\(2),
	datad => VCC,
	cin => \M1_unit|Vaddr[1]~18\,
	combout => \M1_unit|Vaddr[2]~19_combout\,
	cout => \M1_unit|Vaddr[2]~20\);

-- Location: LCCOMB_X48_Y11_N6
\M1_unit|state.LI4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|state.LI4~0_combout\ = (\M1_unit|state~12_regout\ & \M1_unit|state~10_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state~12_regout\,
	datac => \M1_unit|state~10_regout\,
	combout => \M1_unit|state.LI4~0_combout\);

-- Location: LCFF_X48_Y11_N19
\M1_unit|Vaddr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[2]~19_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(2));

-- Location: LCCOMB_X48_Y11_N22
\M1_unit|Vaddr[4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[4]~23_combout\ = (\M1_unit|Vaddr\(4) & (!\M1_unit|Vaddr[3]~22\)) # (!\M1_unit|Vaddr\(4) & ((\M1_unit|Vaddr[3]~22\) # (GND)))
-- \M1_unit|Vaddr[4]~24\ = CARRY((!\M1_unit|Vaddr[3]~22\) # (!\M1_unit|Vaddr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Vaddr\(4),
	datad => VCC,
	cin => \M1_unit|Vaddr[3]~22\,
	combout => \M1_unit|Vaddr[4]~23_combout\,
	cout => \M1_unit|Vaddr[4]~24\);

-- Location: LCFF_X48_Y11_N23
\M1_unit|Vaddr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[4]~23_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(4));

-- Location: LCCOMB_X48_Y11_N24
\M1_unit|Vaddr[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[5]~25_combout\ = (\M1_unit|Vaddr\(5) & (\M1_unit|Vaddr[4]~24\ $ (GND))) # (!\M1_unit|Vaddr\(5) & (!\M1_unit|Vaddr[4]~24\ & VCC))
-- \M1_unit|Vaddr[5]~26\ = CARRY((\M1_unit|Vaddr\(5) & !\M1_unit|Vaddr[4]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Vaddr\(5),
	datad => VCC,
	cin => \M1_unit|Vaddr[4]~24\,
	combout => \M1_unit|Vaddr[5]~25_combout\,
	cout => \M1_unit|Vaddr[5]~26\);

-- Location: LCCOMB_X48_Y11_N26
\M1_unit|Vaddr[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[6]~27_combout\ = (\M1_unit|Vaddr\(6) & (!\M1_unit|Vaddr[5]~26\)) # (!\M1_unit|Vaddr\(6) & ((\M1_unit|Vaddr[5]~26\) # (GND)))
-- \M1_unit|Vaddr[6]~28\ = CARRY((!\M1_unit|Vaddr[5]~26\) # (!\M1_unit|Vaddr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Vaddr\(6),
	datad => VCC,
	cin => \M1_unit|Vaddr[5]~26\,
	combout => \M1_unit|Vaddr[6]~27_combout\,
	cout => \M1_unit|Vaddr[6]~28\);

-- Location: LCFF_X48_Y11_N27
\M1_unit|Vaddr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[6]~27_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(6));

-- Location: LCCOMB_X46_Y11_N2
\M1_unit|state.IDLE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|state.IDLE~0_combout\ = (\M1_unit|state~12_regout\) # ((\M1_unit|state~10_regout\) # (\M1_unit|state~11_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|state~12_regout\,
	datab => \M1_unit|state~10_regout\,
	datac => \M1_unit|state~11_regout\,
	combout => \M1_unit|state.IDLE~0_combout\);

-- Location: LCFF_X46_Y11_N9
\M1_unit|SRAM_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector17~0_combout\,
	sdata => \M1_unit|Vaddr\(6),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(6));

-- Location: LCCOMB_X40_Y8_N30
\SRAM_address[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[6]~6_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & (\VGA_unit|SRAM_address\(6))) # (!\SRAM_address~0_combout\ & ((\M1_unit|SRAM_address\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address~1_combout\,
	datab => \VGA_unit|SRAM_address\(6),
	datac => \SRAM_address~0_combout\,
	datad => \M1_unit|SRAM_address\(6),
	combout => \SRAM_address[6]~6_combout\);

-- Location: LCCOMB_X44_Y8_N18
\SRAM_address~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address~1_combout\ = (!top_state(2) & (top_state(0) $ (top_state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => top_state(2),
	datac => top_state(0),
	datad => top_state(1),
	combout => \SRAM_address~1_combout\);

-- Location: LCCOMB_X40_Y8_N16
\SRAM_address[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[6]~7_combout\ = (\SRAM_address[6]~6_combout\) # ((\SRAM_address~1_combout\ & \UART_unit|SRAM_address\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_address[6]~6_combout\,
	datac => \SRAM_address~1_combout\,
	datad => \UART_unit|SRAM_address\(6),
	combout => \SRAM_address[6]~7_combout\);

-- Location: LCFF_X46_Y11_N25
\M1_unit|Yaddr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[5]~25_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(5));

-- Location: LCCOMB_X47_Y11_N10
\M1_unit|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector18~0_combout\ = (\M1_unit|WideOr4~combout\ & (\M1_unit|Uaddr\(5))) # (!\M1_unit|WideOr4~combout\ & ((\M1_unit|Yaddr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(5),
	datab => \M1_unit|WideOr4~combout\,
	datad => \M1_unit|Yaddr\(5),
	combout => \M1_unit|Selector18~0_combout\);

-- Location: LCFF_X48_Y11_N25
\M1_unit|Vaddr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[5]~25_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(5));

-- Location: LCFF_X47_Y11_N11
\M1_unit|SRAM_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector18~0_combout\,
	sdata => \M1_unit|Vaddr\(5),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(5));

-- Location: LCCOMB_X40_Y8_N12
\SRAM_address[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[5]~4_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & (\VGA_unit|SRAM_address\(5))) # (!\SRAM_address~0_combout\ & ((\M1_unit|SRAM_address\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address~0_combout\,
	datab => \VGA_unit|SRAM_address\(5),
	datac => \SRAM_address~1_combout\,
	datad => \M1_unit|SRAM_address\(5),
	combout => \SRAM_address[5]~4_combout\);

-- Location: LCCOMB_X43_Y11_N8
\SRAM_address[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[5]~5_combout\ = (\SRAM_address[5]~4_combout\) # ((\SRAM_address~1_combout\ & \UART_unit|SRAM_address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_address~1_combout\,
	datac => \SRAM_address[5]~4_combout\,
	datad => \UART_unit|SRAM_address\(5),
	combout => \SRAM_address[5]~5_combout\);

-- Location: LCCOMB_X41_Y14_N28
\VGA_unit|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~17_combout\ = (\VGA_unit|SRAM_address\(7) & (!\VGA_unit|Add1~15\)) # (!\VGA_unit|SRAM_address\(7) & ((\VGA_unit|Add1~15\) # (GND)))
-- \VGA_unit|Add1~18\ = CARRY((!\VGA_unit|Add1~15\) # (!\VGA_unit|SRAM_address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(7),
	datad => VCC,
	cin => \VGA_unit|Add1~15\,
	combout => \VGA_unit|Add1~17_combout\,
	cout => \VGA_unit|Add1~18\);

-- Location: LCCOMB_X40_Y14_N22
\VGA_unit|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~19_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (\VGA_unit|Add0~10_combout\ & (\VGA_unit|Equal1~1_combout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Add1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Add0~10_combout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datac => \VGA_unit|Equal1~1_combout\,
	datad => \VGA_unit|Add1~17_combout\,
	combout => \VGA_unit|Add1~19_combout\);

-- Location: LCFF_X40_Y14_N23
\VGA_unit|SRAM_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~19_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(7));

-- Location: LCCOMB_X46_Y11_N28
\M1_unit|Yaddr[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[7]~29_combout\ = (\M1_unit|Yaddr\(7) & (\M1_unit|Yaddr[6]~28\ $ (GND))) # (!\M1_unit|Yaddr\(7) & (!\M1_unit|Yaddr[6]~28\ & VCC))
-- \M1_unit|Yaddr[7]~30\ = CARRY((\M1_unit|Yaddr\(7) & !\M1_unit|Yaddr[6]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Yaddr\(7),
	datad => VCC,
	cin => \M1_unit|Yaddr[6]~28\,
	combout => \M1_unit|Yaddr[7]~29_combout\,
	cout => \M1_unit|Yaddr[7]~30\);

-- Location: LCFF_X46_Y11_N29
\M1_unit|Yaddr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[7]~29_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(7));

-- Location: LCCOMB_X47_Y11_N14
\M1_unit|Uaddr[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[0]~18_combout\ = (\M1_unit|WideOr5~0_combout\ & (\M1_unit|Uaddr\(0) & VCC)) # (!\M1_unit|WideOr5~0_combout\ & (\M1_unit|Uaddr\(0) $ (VCC)))
-- \M1_unit|Uaddr[0]~19\ = CARRY((!\M1_unit|WideOr5~0_combout\ & \M1_unit|Uaddr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr5~0_combout\,
	datab => \M1_unit|Uaddr\(0),
	datad => VCC,
	combout => \M1_unit|Uaddr[0]~18_combout\,
	cout => \M1_unit|Uaddr[0]~19\);

-- Location: LCFF_X47_Y11_N15
\M1_unit|Uaddr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[0]~18_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(0));

-- Location: LCCOMB_X47_Y11_N18
\M1_unit|Uaddr[2]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[2]~22_combout\ = (\M1_unit|Uaddr\(2) & (\M1_unit|Uaddr[1]~21\ $ (GND))) # (!\M1_unit|Uaddr\(2) & (!\M1_unit|Uaddr[1]~21\ & VCC))
-- \M1_unit|Uaddr[2]~23\ = CARRY((\M1_unit|Uaddr\(2) & !\M1_unit|Uaddr[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Uaddr\(2),
	datad => VCC,
	cin => \M1_unit|Uaddr[1]~21\,
	combout => \M1_unit|Uaddr[2]~22_combout\,
	cout => \M1_unit|Uaddr[2]~23\);

-- Location: LCFF_X47_Y11_N19
\M1_unit|Uaddr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[2]~22_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(2));

-- Location: LCCOMB_X47_Y11_N22
\M1_unit|Uaddr[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[4]~26_combout\ = (\M1_unit|Uaddr\(4) & (\M1_unit|Uaddr[3]~25\ $ (GND))) # (!\M1_unit|Uaddr\(4) & (!\M1_unit|Uaddr[3]~25\ & VCC))
-- \M1_unit|Uaddr[4]~27\ = CARRY((\M1_unit|Uaddr\(4) & !\M1_unit|Uaddr[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Uaddr\(4),
	datad => VCC,
	cin => \M1_unit|Uaddr[3]~25\,
	combout => \M1_unit|Uaddr[4]~26_combout\,
	cout => \M1_unit|Uaddr[4]~27\);

-- Location: LCFF_X47_Y11_N23
\M1_unit|Uaddr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[4]~26_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(4));

-- Location: LCCOMB_X47_Y11_N26
\M1_unit|Uaddr[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[6]~30_combout\ = (\M1_unit|Uaddr\(6) & (\M1_unit|Uaddr[5]~29\ $ (GND))) # (!\M1_unit|Uaddr\(6) & (!\M1_unit|Uaddr[5]~29\ & VCC))
-- \M1_unit|Uaddr[6]~31\ = CARRY((\M1_unit|Uaddr\(6) & !\M1_unit|Uaddr[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Uaddr\(6),
	datad => VCC,
	cin => \M1_unit|Uaddr[5]~29\,
	combout => \M1_unit|Uaddr[6]~30_combout\,
	cout => \M1_unit|Uaddr[6]~31\);

-- Location: LCFF_X47_Y11_N27
\M1_unit|Uaddr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[6]~30_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(6));

-- Location: LCCOMB_X47_Y11_N28
\M1_unit|Uaddr[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[7]~32_combout\ = (\M1_unit|Uaddr\(7) & (!\M1_unit|Uaddr[6]~31\)) # (!\M1_unit|Uaddr\(7) & ((\M1_unit|Uaddr[6]~31\) # (GND)))
-- \M1_unit|Uaddr[7]~33\ = CARRY((!\M1_unit|Uaddr[6]~31\) # (!\M1_unit|Uaddr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Uaddr\(7),
	datad => VCC,
	cin => \M1_unit|Uaddr[6]~31\,
	combout => \M1_unit|Uaddr[7]~32_combout\,
	cout => \M1_unit|Uaddr[7]~33\);

-- Location: LCFF_X47_Y11_N29
\M1_unit|Uaddr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[7]~32_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(7));

-- Location: LCCOMB_X47_Y11_N12
\M1_unit|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector16~0_combout\ = (\M1_unit|WideOr4~combout\ & ((\M1_unit|Uaddr\(7)))) # (!\M1_unit|WideOr4~combout\ & (\M1_unit|Yaddr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr4~combout\,
	datab => \M1_unit|Yaddr\(7),
	datad => \M1_unit|Uaddr\(7),
	combout => \M1_unit|Selector16~0_combout\);

-- Location: LCCOMB_X48_Y11_N28
\M1_unit|Vaddr[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[7]~29_combout\ = (\M1_unit|Vaddr\(7) & (\M1_unit|Vaddr[6]~28\ $ (GND))) # (!\M1_unit|Vaddr\(7) & (!\M1_unit|Vaddr[6]~28\ & VCC))
-- \M1_unit|Vaddr[7]~30\ = CARRY((\M1_unit|Vaddr\(7) & !\M1_unit|Vaddr[6]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Vaddr\(7),
	datad => VCC,
	cin => \M1_unit|Vaddr[6]~28\,
	combout => \M1_unit|Vaddr[7]~29_combout\,
	cout => \M1_unit|Vaddr[7]~30\);

-- Location: LCFF_X48_Y11_N29
\M1_unit|Vaddr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[7]~29_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(7));

-- Location: LCFF_X47_Y11_N13
\M1_unit|SRAM_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector16~0_combout\,
	sdata => \M1_unit|Vaddr\(7),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(7));

-- Location: LCCOMB_X40_Y8_N26
\SRAM_address[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[7]~8_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & (\VGA_unit|SRAM_address\(7))) # (!\SRAM_address~0_combout\ & ((\M1_unit|SRAM_address\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address~0_combout\,
	datab => \VGA_unit|SRAM_address\(7),
	datac => \SRAM_address~1_combout\,
	datad => \M1_unit|SRAM_address\(7),
	combout => \SRAM_address[7]~8_combout\);

-- Location: LCCOMB_X44_Y10_N0
\UART_unit|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~20_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~18_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|Add1~18_combout\,
	datac => \UART_unit|LessThan1~5_combout\,
	datad => \UART_unit|Add1~0_combout\,
	combout => \UART_unit|Add1~20_combout\);

-- Location: LCFF_X44_Y10_N1
\UART_unit|SRAM_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~20_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(7));

-- Location: LCCOMB_X40_Y8_N4
\SRAM_address[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[7]~9_combout\ = (\SRAM_address[7]~8_combout\) # ((\SRAM_address~1_combout\ & \UART_unit|SRAM_address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_address[7]~8_combout\,
	datac => \SRAM_address~1_combout\,
	datad => \UART_unit|SRAM_address\(7),
	combout => \SRAM_address[7]~9_combout\);

-- Location: LCCOMB_X47_Y11_N8
\M1_unit|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector19~0_combout\ = (\M1_unit|WideOr4~combout\ & ((\M1_unit|Uaddr\(4)))) # (!\M1_unit|WideOr4~combout\ & (\M1_unit|Yaddr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr4~combout\,
	datab => \M1_unit|Yaddr\(4),
	datad => \M1_unit|Uaddr\(4),
	combout => \M1_unit|Selector19~0_combout\);

-- Location: LCFF_X47_Y11_N9
\M1_unit|SRAM_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector19~0_combout\,
	sdata => \M1_unit|Vaddr\(4),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(4));

-- Location: LCCOMB_X40_Y8_N0
\SRAM_address[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[4]~2_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & (\VGA_unit|SRAM_address\(4))) # (!\SRAM_address~0_combout\ & ((\M1_unit|SRAM_address\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address~1_combout\,
	datab => \VGA_unit|SRAM_address\(4),
	datac => \SRAM_address~0_combout\,
	datad => \M1_unit|SRAM_address\(4),
	combout => \SRAM_address[4]~2_combout\);

-- Location: LCCOMB_X40_Y8_N10
\SRAM_address[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[4]~3_combout\ = (\SRAM_address[4]~2_combout\) # ((\UART_unit|SRAM_address\(4) & \SRAM_address~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(4),
	datab => \SRAM_address[4]~2_combout\,
	datac => \SRAM_address~1_combout\,
	combout => \SRAM_address[4]~3_combout\);

-- Location: LCCOMB_X40_Y8_N14
\unit0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr6~0_combout\ = (\SRAM_address[6]~7_combout\ & (!\SRAM_address[5]~5_combout\ & (\SRAM_address[7]~9_combout\ $ (!\SRAM_address[4]~3_combout\)))) # (!\SRAM_address[6]~7_combout\ & (\SRAM_address[4]~3_combout\ & (\SRAM_address[5]~5_combout\ $ 
-- (!\SRAM_address[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[6]~7_combout\,
	datab => \SRAM_address[5]~5_combout\,
	datac => \SRAM_address[7]~9_combout\,
	datad => \SRAM_address[4]~3_combout\,
	combout => \unit0|WideOr6~0_combout\);

-- Location: LCCOMB_X40_Y8_N8
\unit0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr5~0_combout\ = (\SRAM_address[5]~5_combout\ & ((\SRAM_address[4]~3_combout\ & ((\SRAM_address[7]~9_combout\))) # (!\SRAM_address[4]~3_combout\ & (\SRAM_address[6]~7_combout\)))) # (!\SRAM_address[5]~5_combout\ & (\SRAM_address[6]~7_combout\ & 
-- (\SRAM_address[7]~9_combout\ $ (\SRAM_address[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[6]~7_combout\,
	datab => \SRAM_address[5]~5_combout\,
	datac => \SRAM_address[7]~9_combout\,
	datad => \SRAM_address[4]~3_combout\,
	combout => \unit0|WideOr5~0_combout\);

-- Location: LCCOMB_X40_Y8_N2
\unit0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr4~0_combout\ = (\SRAM_address[6]~7_combout\ & (\SRAM_address[7]~9_combout\ & ((\SRAM_address[5]~5_combout\) # (!\SRAM_address[4]~3_combout\)))) # (!\SRAM_address[6]~7_combout\ & (\SRAM_address[5]~5_combout\ & (!\SRAM_address[7]~9_combout\ & 
-- !\SRAM_address[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[6]~7_combout\,
	datab => \SRAM_address[5]~5_combout\,
	datac => \SRAM_address[7]~9_combout\,
	datad => \SRAM_address[4]~3_combout\,
	combout => \unit0|WideOr4~0_combout\);

-- Location: LCCOMB_X40_Y8_N20
\unit0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr3~0_combout\ = (\SRAM_address[4]~3_combout\ & (\SRAM_address[6]~7_combout\ $ ((!\SRAM_address[5]~5_combout\)))) # (!\SRAM_address[4]~3_combout\ & ((\SRAM_address[6]~7_combout\ & (!\SRAM_address[5]~5_combout\ & !\SRAM_address[7]~9_combout\)) # 
-- (!\SRAM_address[6]~7_combout\ & (\SRAM_address[5]~5_combout\ & \SRAM_address[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[6]~7_combout\,
	datab => \SRAM_address[5]~5_combout\,
	datac => \SRAM_address[7]~9_combout\,
	datad => \SRAM_address[4]~3_combout\,
	combout => \unit0|WideOr3~0_combout\);

-- Location: LCCOMB_X40_Y8_N6
\unit0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr2~0_combout\ = (\SRAM_address[5]~5_combout\ & (((!\SRAM_address[7]~9_combout\ & \SRAM_address[4]~3_combout\)))) # (!\SRAM_address[5]~5_combout\ & ((\SRAM_address[6]~7_combout\ & (!\SRAM_address[7]~9_combout\)) # (!\SRAM_address[6]~7_combout\ 
-- & ((\SRAM_address[4]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[6]~7_combout\,
	datab => \SRAM_address[5]~5_combout\,
	datac => \SRAM_address[7]~9_combout\,
	datad => \SRAM_address[4]~3_combout\,
	combout => \unit0|WideOr2~0_combout\);

-- Location: LCCOMB_X40_Y8_N24
\unit0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr1~0_combout\ = (\SRAM_address[6]~7_combout\ & (\SRAM_address[4]~3_combout\ & (\SRAM_address[5]~5_combout\ $ (\SRAM_address[7]~9_combout\)))) # (!\SRAM_address[6]~7_combout\ & (!\SRAM_address[7]~9_combout\ & ((\SRAM_address[5]~5_combout\) # 
-- (\SRAM_address[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[6]~7_combout\,
	datab => \SRAM_address[5]~5_combout\,
	datac => \SRAM_address[7]~9_combout\,
	datad => \SRAM_address[4]~3_combout\,
	combout => \unit0|WideOr1~0_combout\);

-- Location: LCCOMB_X40_Y8_N18
\unit0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr0~0_combout\ = (\SRAM_address[4]~3_combout\ & ((\SRAM_address[7]~9_combout\) # (\SRAM_address[6]~7_combout\ $ (\SRAM_address[5]~5_combout\)))) # (!\SRAM_address[4]~3_combout\ & ((\SRAM_address[5]~5_combout\) # (\SRAM_address[6]~7_combout\ $ 
-- (\SRAM_address[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[6]~7_combout\,
	datab => \SRAM_address[5]~5_combout\,
	datac => \SRAM_address[7]~9_combout\,
	datad => \SRAM_address[4]~3_combout\,
	combout => \unit0|WideOr0~0_combout\);

-- Location: LCCOMB_X41_Y14_N30
\VGA_unit|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~20_combout\ = (\VGA_unit|SRAM_address\(8) & (\VGA_unit|Add1~18\ $ (GND))) # (!\VGA_unit|SRAM_address\(8) & (!\VGA_unit|Add1~18\ & VCC))
-- \VGA_unit|Add1~21\ = CARRY((\VGA_unit|SRAM_address\(8) & !\VGA_unit|Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(8),
	datad => VCC,
	cin => \VGA_unit|Add1~18\,
	combout => \VGA_unit|Add1~20_combout\,
	cout => \VGA_unit|Add1~21\);

-- Location: LCCOMB_X40_Y14_N16
\VGA_unit|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~22_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (\VGA_unit|Add0~12_combout\ & (\VGA_unit|Equal1~1_combout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Add0~12_combout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datac => \VGA_unit|Equal1~1_combout\,
	datad => \VGA_unit|Add1~20_combout\,
	combout => \VGA_unit|Add1~22_combout\);

-- Location: LCFF_X40_Y14_N17
\VGA_unit|SRAM_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~22_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(8));

-- Location: LCCOMB_X43_Y11_N0
\SRAM_address[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[8]~10_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & ((\VGA_unit|SRAM_address\(8)))) # (!\SRAM_address~0_combout\ & (\M1_unit|SRAM_address\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address\(8),
	datab => \SRAM_address~1_combout\,
	datac => \VGA_unit|SRAM_address\(8),
	datad => \SRAM_address~0_combout\,
	combout => \SRAM_address[8]~10_combout\);

-- Location: LCCOMB_X43_Y11_N6
\SRAM_address[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[8]~11_combout\ = (\SRAM_address[8]~10_combout\) # ((\UART_unit|SRAM_address\(8) & \SRAM_address~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(8),
	datab => \SRAM_address[8]~10_combout\,
	datac => \SRAM_address~1_combout\,
	combout => \SRAM_address[8]~11_combout\);

-- Location: LCCOMB_X43_Y8_N18
\SRAM_address[10]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[10]~15_combout\ = (\SRAM_address[10]~14_combout\) # ((\SRAM_address~1_combout\ & \UART_unit|SRAM_address\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[10]~14_combout\,
	datab => \SRAM_address~1_combout\,
	datad => \UART_unit|SRAM_address\(10),
	combout => \SRAM_address[10]~15_combout\);

-- Location: LCCOMB_X41_Y13_N0
\VGA_unit|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~23_combout\ = (\VGA_unit|SRAM_address\(9) & (!\VGA_unit|Add1~21\)) # (!\VGA_unit|SRAM_address\(9) & ((\VGA_unit|Add1~21\) # (GND)))
-- \VGA_unit|Add1~24\ = CARRY((!\VGA_unit|Add1~21\) # (!\VGA_unit|SRAM_address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(9),
	datad => VCC,
	cin => \VGA_unit|Add1~21\,
	combout => \VGA_unit|Add1~23_combout\,
	cout => \VGA_unit|Add1~24\);

-- Location: LCCOMB_X40_Y14_N2
\VGA_unit|Add1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~25_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & ((\VGA_unit|Add0~14_combout\) # ((!\VGA_unit|Equal1~1_combout\)))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & 
-- (((\VGA_unit|Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Add0~14_combout\,
	datab => \VGA_unit|Equal1~1_combout\,
	datac => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datad => \VGA_unit|Add1~23_combout\,
	combout => \VGA_unit|Add1~25_combout\);

-- Location: LCFF_X40_Y14_N3
\VGA_unit|SRAM_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~25_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(9));

-- Location: LCCOMB_X47_Y11_N30
\M1_unit|Uaddr[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[8]~34_combout\ = (\M1_unit|Uaddr\(8) & (\M1_unit|Uaddr[7]~33\ $ (GND))) # (!\M1_unit|Uaddr\(8) & (!\M1_unit|Uaddr[7]~33\ & VCC))
-- \M1_unit|Uaddr[8]~35\ = CARRY((\M1_unit|Uaddr\(8) & !\M1_unit|Uaddr[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Uaddr\(8),
	datad => VCC,
	cin => \M1_unit|Uaddr[7]~33\,
	combout => \M1_unit|Uaddr[8]~34_combout\,
	cout => \M1_unit|Uaddr[8]~35\);

-- Location: LCFF_X47_Y11_N31
\M1_unit|Uaddr[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[8]~34_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(8));

-- Location: LCCOMB_X47_Y10_N0
\M1_unit|Uaddr[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[9]~36_combout\ = (\M1_unit|Uaddr\(9) & ((GND) # (!\M1_unit|Uaddr[8]~35\))) # (!\M1_unit|Uaddr\(9) & (\M1_unit|Uaddr[8]~35\ $ (GND)))
-- \M1_unit|Uaddr[9]~37\ = CARRY((\M1_unit|Uaddr\(9)) # (!\M1_unit|Uaddr[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Uaddr\(9),
	datad => VCC,
	cin => \M1_unit|Uaddr[8]~35\,
	combout => \M1_unit|Uaddr[9]~36_combout\,
	cout => \M1_unit|Uaddr[9]~37\);

-- Location: LCFF_X47_Y10_N1
\M1_unit|Uaddr[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[9]~36_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(9));

-- Location: LCCOMB_X47_Y10_N18
\M1_unit|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector14~0_combout\ = (\M1_unit|WideOr4~combout\ & ((!\M1_unit|Uaddr\(9)))) # (!\M1_unit|WideOr4~combout\ & (\M1_unit|Yaddr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Yaddr\(9),
	datab => \M1_unit|Uaddr\(9),
	datad => \M1_unit|WideOr4~combout\,
	combout => \M1_unit|Selector14~0_combout\);

-- Location: LCCOMB_X48_Y11_N30
\M1_unit|Vaddr[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[8]~31_combout\ = (\M1_unit|Vaddr\(8) & ((GND) # (!\M1_unit|Vaddr[7]~30\))) # (!\M1_unit|Vaddr\(8) & (\M1_unit|Vaddr[7]~30\ $ (GND)))
-- \M1_unit|Vaddr[8]~32\ = CARRY((\M1_unit|Vaddr\(8)) # (!\M1_unit|Vaddr[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Vaddr\(8),
	datad => VCC,
	cin => \M1_unit|Vaddr[7]~30\,
	combout => \M1_unit|Vaddr[8]~31_combout\,
	cout => \M1_unit|Vaddr[8]~32\);

-- Location: LCFF_X48_Y11_N31
\M1_unit|Vaddr[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[8]~31_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(8));

-- Location: LCCOMB_X48_Y10_N0
\M1_unit|Vaddr[9]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[9]~33_combout\ = (\M1_unit|Vaddr\(9) & (\M1_unit|Vaddr[8]~32\ $ (GND))) # (!\M1_unit|Vaddr\(9) & (!\M1_unit|Vaddr[8]~32\ & VCC))
-- \M1_unit|Vaddr[9]~34\ = CARRY((\M1_unit|Vaddr\(9) & !\M1_unit|Vaddr[8]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Vaddr\(9),
	datad => VCC,
	cin => \M1_unit|Vaddr[8]~32\,
	combout => \M1_unit|Vaddr[9]~33_combout\,
	cout => \M1_unit|Vaddr[9]~34\);

-- Location: LCFF_X48_Y10_N1
\M1_unit|Vaddr[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[9]~33_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(9));

-- Location: LCFF_X47_Y10_N19
\M1_unit|SRAM_address[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector14~0_combout\,
	sdata => \M1_unit|Vaddr\(9),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(9));

-- Location: LCCOMB_X40_Y8_N28
\SRAM_address[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[9]~12_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & (\VGA_unit|SRAM_address\(9))) # (!\SRAM_address~0_combout\ & ((\M1_unit|SRAM_address\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address~1_combout\,
	datab => \VGA_unit|SRAM_address\(9),
	datac => \SRAM_address~0_combout\,
	datad => \M1_unit|SRAM_address\(9),
	combout => \SRAM_address[9]~12_combout\);

-- Location: LCCOMB_X40_Y8_N22
\SRAM_address[9]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[9]~13_combout\ = (\SRAM_address[9]~12_combout\) # ((\UART_unit|SRAM_address\(9) & \SRAM_address~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(9),
	datab => \SRAM_address[9]~12_combout\,
	datac => \SRAM_address~1_combout\,
	combout => \SRAM_address[9]~13_combout\);

-- Location: LCCOMB_X42_Y14_N18
\VGA_unit|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~18_combout\ = (\VGA_unit|SRAM_address\(11) & (\VGA_unit|Add0~17\ & VCC)) # (!\VGA_unit|SRAM_address\(11) & (!\VGA_unit|Add0~17\))
-- \VGA_unit|Add0~19\ = CARRY((!\VGA_unit|SRAM_address\(11) & !\VGA_unit|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(11),
	datad => VCC,
	cin => \VGA_unit|Add0~17\,
	combout => \VGA_unit|Add0~18_combout\,
	cout => \VGA_unit|Add0~19\);

-- Location: LCCOMB_X41_Y13_N4
\VGA_unit|Add1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~29_combout\ = (\VGA_unit|SRAM_address\(11) & (!\VGA_unit|Add1~27\)) # (!\VGA_unit|SRAM_address\(11) & ((\VGA_unit|Add1~27\) # (GND)))
-- \VGA_unit|Add1~30\ = CARRY((!\VGA_unit|Add1~27\) # (!\VGA_unit|SRAM_address\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(11),
	datad => VCC,
	cin => \VGA_unit|Add1~27\,
	combout => \VGA_unit|Add1~29_combout\,
	cout => \VGA_unit|Add1~30\);

-- Location: LCCOMB_X41_Y14_N10
\VGA_unit|Add1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~31_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & ((\VGA_unit|Add0~18_combout\) # ((!\VGA_unit|Equal1~1_combout\)))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & 
-- (((\VGA_unit|Add1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datab => \VGA_unit|Add0~18_combout\,
	datac => \VGA_unit|Add1~29_combout\,
	datad => \VGA_unit|Equal1~1_combout\,
	combout => \VGA_unit|Add1~31_combout\);

-- Location: LCFF_X41_Y14_N11
\VGA_unit|SRAM_address[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~31_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(11));

-- Location: LCCOMB_X43_Y8_N28
\SRAM_address[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[11]~16_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & ((\VGA_unit|SRAM_address\(11)))) # (!\SRAM_address~0_combout\ & (\M1_unit|SRAM_address\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address\(11),
	datab => \SRAM_address~0_combout\,
	datac => \VGA_unit|SRAM_address\(11),
	datad => \SRAM_address~1_combout\,
	combout => \SRAM_address[11]~16_combout\);

-- Location: LCCOMB_X43_Y8_N22
\SRAM_address[11]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[11]~17_combout\ = (\SRAM_address[11]~16_combout\) # ((\UART_unit|SRAM_address\(11) & \SRAM_address~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(11),
	datab => \SRAM_address[11]~16_combout\,
	datad => \SRAM_address~1_combout\,
	combout => \SRAM_address[11]~17_combout\);

-- Location: LCCOMB_X43_Y8_N8
\unit1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr6~0_combout\ = (\SRAM_address[10]~15_combout\ & (!\SRAM_address[9]~13_combout\ & (\SRAM_address[8]~11_combout\ $ (!\SRAM_address[11]~17_combout\)))) # (!\SRAM_address[10]~15_combout\ & (\SRAM_address[8]~11_combout\ & 
-- (\SRAM_address[9]~13_combout\ $ (!\SRAM_address[11]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[8]~11_combout\,
	datab => \SRAM_address[10]~15_combout\,
	datac => \SRAM_address[9]~13_combout\,
	datad => \SRAM_address[11]~17_combout\,
	combout => \unit1|WideOr6~0_combout\);

-- Location: LCCOMB_X43_Y8_N26
\unit1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr5~0_combout\ = (\SRAM_address[9]~13_combout\ & ((\SRAM_address[8]~11_combout\ & ((\SRAM_address[11]~17_combout\))) # (!\SRAM_address[8]~11_combout\ & (\SRAM_address[10]~15_combout\)))) # (!\SRAM_address[9]~13_combout\ & 
-- (\SRAM_address[10]~15_combout\ & (\SRAM_address[8]~11_combout\ $ (\SRAM_address[11]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[8]~11_combout\,
	datab => \SRAM_address[10]~15_combout\,
	datac => \SRAM_address[9]~13_combout\,
	datad => \SRAM_address[11]~17_combout\,
	combout => \unit1|WideOr5~0_combout\);

-- Location: LCCOMB_X43_Y8_N4
\unit1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr4~0_combout\ = (\SRAM_address[10]~15_combout\ & (\SRAM_address[11]~17_combout\ & ((\SRAM_address[9]~13_combout\) # (!\SRAM_address[8]~11_combout\)))) # (!\SRAM_address[10]~15_combout\ & (!\SRAM_address[8]~11_combout\ & 
-- (\SRAM_address[9]~13_combout\ & !\SRAM_address[11]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[8]~11_combout\,
	datab => \SRAM_address[10]~15_combout\,
	datac => \SRAM_address[9]~13_combout\,
	datad => \SRAM_address[11]~17_combout\,
	combout => \unit1|WideOr4~0_combout\);

-- Location: LCCOMB_X43_Y8_N30
\unit1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr3~0_combout\ = (\SRAM_address[8]~11_combout\ & (\SRAM_address[10]~15_combout\ $ ((!\SRAM_address[9]~13_combout\)))) # (!\SRAM_address[8]~11_combout\ & ((\SRAM_address[10]~15_combout\ & (!\SRAM_address[9]~13_combout\ & 
-- !\SRAM_address[11]~17_combout\)) # (!\SRAM_address[10]~15_combout\ & (\SRAM_address[9]~13_combout\ & \SRAM_address[11]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[8]~11_combout\,
	datab => \SRAM_address[10]~15_combout\,
	datac => \SRAM_address[9]~13_combout\,
	datad => \SRAM_address[11]~17_combout\,
	combout => \unit1|WideOr3~0_combout\);

-- Location: LCCOMB_X43_Y8_N0
\unit1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr2~0_combout\ = (\SRAM_address[9]~13_combout\ & (\SRAM_address[8]~11_combout\ & ((!\SRAM_address[11]~17_combout\)))) # (!\SRAM_address[9]~13_combout\ & ((\SRAM_address[10]~15_combout\ & ((!\SRAM_address[11]~17_combout\))) # 
-- (!\SRAM_address[10]~15_combout\ & (\SRAM_address[8]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[8]~11_combout\,
	datab => \SRAM_address[10]~15_combout\,
	datac => \SRAM_address[9]~13_combout\,
	datad => \SRAM_address[11]~17_combout\,
	combout => \unit1|WideOr2~0_combout\);

-- Location: LCCOMB_X43_Y8_N10
\unit1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr1~0_combout\ = (\SRAM_address[8]~11_combout\ & (\SRAM_address[11]~17_combout\ $ (((\SRAM_address[9]~13_combout\) # (!\SRAM_address[10]~15_combout\))))) # (!\SRAM_address[8]~11_combout\ & (!\SRAM_address[10]~15_combout\ & 
-- (\SRAM_address[9]~13_combout\ & !\SRAM_address[11]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[8]~11_combout\,
	datab => \SRAM_address[10]~15_combout\,
	datac => \SRAM_address[9]~13_combout\,
	datad => \SRAM_address[11]~17_combout\,
	combout => \unit1|WideOr1~0_combout\);

-- Location: LCCOMB_X43_Y8_N20
\unit1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr0~0_combout\ = (\SRAM_address[8]~11_combout\ & ((\SRAM_address[11]~17_combout\) # (\SRAM_address[10]~15_combout\ $ (\SRAM_address[9]~13_combout\)))) # (!\SRAM_address[8]~11_combout\ & ((\SRAM_address[9]~13_combout\) # 
-- (\SRAM_address[10]~15_combout\ $ (\SRAM_address[11]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[8]~11_combout\,
	datab => \SRAM_address[10]~15_combout\,
	datac => \SRAM_address[9]~13_combout\,
	datad => \SRAM_address[11]~17_combout\,
	combout => \unit1|WideOr0~0_combout\);

-- Location: LCCOMB_X42_Y14_N20
\VGA_unit|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~20_combout\ = (\VGA_unit|SRAM_address\(12) & ((GND) # (!\VGA_unit|Add0~19\))) # (!\VGA_unit|SRAM_address\(12) & (\VGA_unit|Add0~19\ $ (GND)))
-- \VGA_unit|Add0~21\ = CARRY((\VGA_unit|SRAM_address\(12)) # (!\VGA_unit|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(12),
	datad => VCC,
	cin => \VGA_unit|Add0~19\,
	combout => \VGA_unit|Add0~20_combout\,
	cout => \VGA_unit|Add0~21\);

-- Location: LCCOMB_X42_Y14_N22
\VGA_unit|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~22_combout\ = (\VGA_unit|SRAM_address\(13) & (\VGA_unit|Add0~21\ & VCC)) # (!\VGA_unit|SRAM_address\(13) & (!\VGA_unit|Add0~21\))
-- \VGA_unit|Add0~23\ = CARRY((!\VGA_unit|SRAM_address\(13) & !\VGA_unit|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(13),
	datad => VCC,
	cin => \VGA_unit|Add0~21\,
	combout => \VGA_unit|Add0~22_combout\,
	cout => \VGA_unit|Add0~23\);

-- Location: LCCOMB_X41_Y13_N6
\VGA_unit|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~32_combout\ = (\VGA_unit|SRAM_address\(12) & (\VGA_unit|Add1~30\ $ (GND))) # (!\VGA_unit|SRAM_address\(12) & (!\VGA_unit|Add1~30\ & VCC))
-- \VGA_unit|Add1~33\ = CARRY((\VGA_unit|SRAM_address\(12) & !\VGA_unit|Add1~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(12),
	datad => VCC,
	cin => \VGA_unit|Add1~30\,
	combout => \VGA_unit|Add1~32_combout\,
	cout => \VGA_unit|Add1~33\);

-- Location: LCCOMB_X41_Y13_N8
\VGA_unit|Add1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~35_combout\ = (\VGA_unit|SRAM_address\(13) & (!\VGA_unit|Add1~33\)) # (!\VGA_unit|SRAM_address\(13) & ((\VGA_unit|Add1~33\) # (GND)))
-- \VGA_unit|Add1~36\ = CARRY((!\VGA_unit|Add1~33\) # (!\VGA_unit|SRAM_address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(13),
	datad => VCC,
	cin => \VGA_unit|Add1~33\,
	combout => \VGA_unit|Add1~35_combout\,
	cout => \VGA_unit|Add1~36\);

-- Location: LCCOMB_X41_Y14_N6
\VGA_unit|Add1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~37_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Add0~22_combout\)) # (!\VGA_unit|Equal1~1_combout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & 
-- (((\VGA_unit|Add1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datab => \VGA_unit|Equal1~1_combout\,
	datac => \VGA_unit|Add0~22_combout\,
	datad => \VGA_unit|Add1~35_combout\,
	combout => \VGA_unit|Add1~37_combout\);

-- Location: LCFF_X41_Y14_N7
\VGA_unit|SRAM_address[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~37_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(13));

-- Location: LCCOMB_X43_Y8_N2
\SRAM_address[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[13]~20_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & ((\VGA_unit|SRAM_address\(13)))) # (!\SRAM_address~0_combout\ & (\M1_unit|SRAM_address\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address\(13),
	datab => \SRAM_address~1_combout\,
	datac => \VGA_unit|SRAM_address\(13),
	datad => \SRAM_address~0_combout\,
	combout => \SRAM_address[13]~20_combout\);

-- Location: LCCOMB_X43_Y8_N12
\SRAM_address[13]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[13]~21_combout\ = (\SRAM_address[13]~20_combout\) # ((\SRAM_address~1_combout\ & \UART_unit|SRAM_address\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_address~1_combout\,
	datac => \SRAM_address[13]~20_combout\,
	datad => \UART_unit|SRAM_address\(13),
	combout => \SRAM_address[13]~21_combout\);

-- Location: LCCOMB_X41_Y14_N12
\VGA_unit|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~34_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & ((\VGA_unit|Add0~20_combout\) # ((!\VGA_unit|Equal1~1_combout\)))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & 
-- (((\VGA_unit|Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datab => \VGA_unit|Add0~20_combout\,
	datac => \VGA_unit|Add1~32_combout\,
	datad => \VGA_unit|Equal1~1_combout\,
	combout => \VGA_unit|Add1~34_combout\);

-- Location: LCFF_X41_Y14_N13
\VGA_unit|SRAM_address[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~34_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(12));

-- Location: LCCOMB_X43_Y8_N14
\SRAM_address[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[12]~18_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & ((\VGA_unit|SRAM_address\(12)))) # (!\SRAM_address~0_combout\ & (\M1_unit|SRAM_address\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address\(12),
	datab => \SRAM_address~1_combout\,
	datac => \VGA_unit|SRAM_address\(12),
	datad => \SRAM_address~0_combout\,
	combout => \SRAM_address[12]~18_combout\);

-- Location: LCCOMB_X43_Y8_N24
\SRAM_address[12]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[12]~19_combout\ = (\SRAM_address[12]~18_combout\) # ((\SRAM_address~1_combout\ & \UART_unit|SRAM_address\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_address~1_combout\,
	datac => \SRAM_address[12]~18_combout\,
	datad => \UART_unit|SRAM_address\(12),
	combout => \SRAM_address[12]~19_combout\);

-- Location: LCCOMB_X42_Y14_N24
\VGA_unit|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~24_combout\ = (\VGA_unit|SRAM_address\(14) & ((GND) # (!\VGA_unit|Add0~23\))) # (!\VGA_unit|SRAM_address\(14) & (\VGA_unit|Add0~23\ $ (GND)))
-- \VGA_unit|Add0~25\ = CARRY((\VGA_unit|SRAM_address\(14)) # (!\VGA_unit|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(14),
	datad => VCC,
	cin => \VGA_unit|Add0~23\,
	combout => \VGA_unit|Add0~24_combout\,
	cout => \VGA_unit|Add0~25\);

-- Location: LCCOMB_X41_Y13_N18
\VGA_unit|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~40_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Equal1~1_combout\ & \VGA_unit|Add0~24_combout\)))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (\VGA_unit|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Add1~38_combout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datac => \VGA_unit|Equal1~1_combout\,
	datad => \VGA_unit|Add0~24_combout\,
	combout => \VGA_unit|Add1~40_combout\);

-- Location: LCFF_X41_Y13_N19
\VGA_unit|SRAM_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~40_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(14));

-- Location: LCCOMB_X46_Y11_N30
\M1_unit|Yaddr[8]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[8]~31_combout\ = (\M1_unit|Yaddr\(8) & (!\M1_unit|Yaddr[7]~30\)) # (!\M1_unit|Yaddr\(8) & ((\M1_unit|Yaddr[7]~30\) # (GND)))
-- \M1_unit|Yaddr[8]~32\ = CARRY((!\M1_unit|Yaddr[7]~30\) # (!\M1_unit|Yaddr\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Yaddr\(8),
	datad => VCC,
	cin => \M1_unit|Yaddr[7]~30\,
	combout => \M1_unit|Yaddr[8]~31_combout\,
	cout => \M1_unit|Yaddr[8]~32\);

-- Location: LCFF_X46_Y11_N31
\M1_unit|Yaddr[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[8]~31_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(8));

-- Location: LCCOMB_X46_Y10_N0
\M1_unit|Yaddr[9]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[9]~33_combout\ = (\M1_unit|Yaddr\(9) & (\M1_unit|Yaddr[8]~32\ $ (GND))) # (!\M1_unit|Yaddr\(9) & (!\M1_unit|Yaddr[8]~32\ & VCC))
-- \M1_unit|Yaddr[9]~34\ = CARRY((\M1_unit|Yaddr\(9) & !\M1_unit|Yaddr[8]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Yaddr\(9),
	datad => VCC,
	cin => \M1_unit|Yaddr[8]~32\,
	combout => \M1_unit|Yaddr[9]~33_combout\,
	cout => \M1_unit|Yaddr[9]~34\);

-- Location: LCFF_X46_Y10_N1
\M1_unit|Yaddr[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[9]~33_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(9));

-- Location: LCCOMB_X46_Y10_N2
\M1_unit|Yaddr[10]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[10]~35_combout\ = (\M1_unit|Yaddr\(10) & (!\M1_unit|Yaddr[9]~34\)) # (!\M1_unit|Yaddr\(10) & ((\M1_unit|Yaddr[9]~34\) # (GND)))
-- \M1_unit|Yaddr[10]~36\ = CARRY((!\M1_unit|Yaddr[9]~34\) # (!\M1_unit|Yaddr\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Yaddr\(10),
	datad => VCC,
	cin => \M1_unit|Yaddr[9]~34\,
	combout => \M1_unit|Yaddr[10]~35_combout\,
	cout => \M1_unit|Yaddr[10]~36\);

-- Location: LCFF_X46_Y10_N3
\M1_unit|Yaddr[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[10]~35_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(10));

-- Location: LCCOMB_X46_Y10_N4
\M1_unit|Yaddr[11]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[11]~37_combout\ = (\M1_unit|Yaddr\(11) & (\M1_unit|Yaddr[10]~36\ $ (GND))) # (!\M1_unit|Yaddr\(11) & (!\M1_unit|Yaddr[10]~36\ & VCC))
-- \M1_unit|Yaddr[11]~38\ = CARRY((\M1_unit|Yaddr\(11) & !\M1_unit|Yaddr[10]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Yaddr\(11),
	datad => VCC,
	cin => \M1_unit|Yaddr[10]~36\,
	combout => \M1_unit|Yaddr[11]~37_combout\,
	cout => \M1_unit|Yaddr[11]~38\);

-- Location: LCFF_X46_Y10_N5
\M1_unit|Yaddr[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[11]~37_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(11));

-- Location: LCCOMB_X46_Y10_N8
\M1_unit|Yaddr[13]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[13]~41_combout\ = (\M1_unit|Yaddr\(13) & (\M1_unit|Yaddr[12]~40\ $ (GND))) # (!\M1_unit|Yaddr\(13) & (!\M1_unit|Yaddr[12]~40\ & VCC))
-- \M1_unit|Yaddr[13]~42\ = CARRY((\M1_unit|Yaddr\(13) & !\M1_unit|Yaddr[12]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Yaddr\(13),
	datad => VCC,
	cin => \M1_unit|Yaddr[12]~40\,
	combout => \M1_unit|Yaddr[13]~41_combout\,
	cout => \M1_unit|Yaddr[13]~42\);

-- Location: LCFF_X46_Y10_N9
\M1_unit|Yaddr[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[13]~41_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(13));

-- Location: LCCOMB_X46_Y10_N10
\M1_unit|Yaddr[14]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[14]~43_combout\ = (\M1_unit|Yaddr\(14) & (!\M1_unit|Yaddr[13]~42\)) # (!\M1_unit|Yaddr\(14) & ((\M1_unit|Yaddr[13]~42\) # (GND)))
-- \M1_unit|Yaddr[14]~44\ = CARRY((!\M1_unit|Yaddr[13]~42\) # (!\M1_unit|Yaddr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Yaddr\(14),
	datad => VCC,
	cin => \M1_unit|Yaddr[13]~42\,
	combout => \M1_unit|Yaddr[14]~43_combout\,
	cout => \M1_unit|Yaddr[14]~44\);

-- Location: LCFF_X46_Y10_N11
\M1_unit|Yaddr[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[14]~43_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(14));

-- Location: LCCOMB_X47_Y10_N2
\M1_unit|Uaddr[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[10]~38_combout\ = (\M1_unit|Uaddr\(10) & (\M1_unit|Uaddr[9]~37\ & VCC)) # (!\M1_unit|Uaddr\(10) & (!\M1_unit|Uaddr[9]~37\))
-- \M1_unit|Uaddr[10]~39\ = CARRY((!\M1_unit|Uaddr\(10) & !\M1_unit|Uaddr[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Uaddr\(10),
	datad => VCC,
	cin => \M1_unit|Uaddr[9]~37\,
	combout => \M1_unit|Uaddr[10]~38_combout\,
	cout => \M1_unit|Uaddr[10]~39\);

-- Location: LCFF_X47_Y10_N3
\M1_unit|Uaddr[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[10]~38_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(10));

-- Location: LCCOMB_X47_Y10_N4
\M1_unit|Uaddr[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[11]~40_combout\ = (\M1_unit|Uaddr\(11) & (!\M1_unit|Uaddr[10]~39\)) # (!\M1_unit|Uaddr\(11) & ((\M1_unit|Uaddr[10]~39\) # (GND)))
-- \M1_unit|Uaddr[11]~41\ = CARRY((!\M1_unit|Uaddr[10]~39\) # (!\M1_unit|Uaddr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Uaddr\(11),
	datad => VCC,
	cin => \M1_unit|Uaddr[10]~39\,
	combout => \M1_unit|Uaddr[11]~40_combout\,
	cout => \M1_unit|Uaddr[11]~41\);

-- Location: LCFF_X47_Y10_N5
\M1_unit|Uaddr[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[11]~40_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(11));

-- Location: LCCOMB_X47_Y10_N8
\M1_unit|Uaddr[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Uaddr[13]~44_combout\ = (\M1_unit|Uaddr\(13) & (!\M1_unit|Uaddr[12]~43\)) # (!\M1_unit|Uaddr\(13) & ((\M1_unit|Uaddr[12]~43\) # (GND)))
-- \M1_unit|Uaddr[13]~45\ = CARRY((!\M1_unit|Uaddr[12]~43\) # (!\M1_unit|Uaddr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Uaddr\(13),
	datad => VCC,
	cin => \M1_unit|Uaddr[12]~43\,
	combout => \M1_unit|Uaddr[13]~44_combout\,
	cout => \M1_unit|Uaddr[13]~45\);

-- Location: LCFF_X47_Y10_N9
\M1_unit|Uaddr[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[13]~44_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(13));

-- Location: LCFF_X47_Y10_N11
\M1_unit|Uaddr[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Uaddr[14]~46_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Uaddr\(14));

-- Location: LCCOMB_X47_Y10_N22
\M1_unit|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector9~0_combout\ = (\M1_unit|WideOr4~combout\ & ((\M1_unit|Uaddr\(14)))) # (!\M1_unit|WideOr4~combout\ & (\M1_unit|Yaddr\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr4~combout\,
	datab => \M1_unit|Yaddr\(14),
	datad => \M1_unit|Uaddr\(14),
	combout => \M1_unit|Selector9~0_combout\);

-- Location: LCCOMB_X48_Y10_N2
\M1_unit|Vaddr[10]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[10]~35_combout\ = (\M1_unit|Vaddr\(10) & (!\M1_unit|Vaddr[9]~34\)) # (!\M1_unit|Vaddr\(10) & ((\M1_unit|Vaddr[9]~34\) # (GND)))
-- \M1_unit|Vaddr[10]~36\ = CARRY((!\M1_unit|Vaddr[9]~34\) # (!\M1_unit|Vaddr\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Vaddr\(10),
	datad => VCC,
	cin => \M1_unit|Vaddr[9]~34\,
	combout => \M1_unit|Vaddr[10]~35_combout\,
	cout => \M1_unit|Vaddr[10]~36\);

-- Location: LCFF_X48_Y10_N3
\M1_unit|Vaddr[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[10]~35_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(10));

-- Location: LCCOMB_X48_Y10_N4
\M1_unit|Vaddr[11]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[11]~37_combout\ = (\M1_unit|Vaddr\(11) & (\M1_unit|Vaddr[10]~36\ $ (GND))) # (!\M1_unit|Vaddr\(11) & (!\M1_unit|Vaddr[10]~36\ & VCC))
-- \M1_unit|Vaddr[11]~38\ = CARRY((\M1_unit|Vaddr\(11) & !\M1_unit|Vaddr[10]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Vaddr\(11),
	datad => VCC,
	cin => \M1_unit|Vaddr[10]~36\,
	combout => \M1_unit|Vaddr[11]~37_combout\,
	cout => \M1_unit|Vaddr[11]~38\);

-- Location: LCFF_X48_Y10_N5
\M1_unit|Vaddr[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[11]~37_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(11));

-- Location: LCCOMB_X48_Y10_N8
\M1_unit|Vaddr[13]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[13]~41_combout\ = (\M1_unit|Vaddr\(13) & (\M1_unit|Vaddr[12]~40\ & VCC)) # (!\M1_unit|Vaddr\(13) & (!\M1_unit|Vaddr[12]~40\))
-- \M1_unit|Vaddr[13]~42\ = CARRY((!\M1_unit|Vaddr\(13) & !\M1_unit|Vaddr[12]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Vaddr\(13),
	datad => VCC,
	cin => \M1_unit|Vaddr[12]~40\,
	combout => \M1_unit|Vaddr[13]~41_combout\,
	cout => \M1_unit|Vaddr[13]~42\);

-- Location: LCFF_X48_Y10_N9
\M1_unit|Vaddr[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[13]~41_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(13));

-- Location: LCCOMB_X48_Y10_N10
\M1_unit|Vaddr[14]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[14]~43_combout\ = (\M1_unit|Vaddr\(14) & ((GND) # (!\M1_unit|Vaddr[13]~42\))) # (!\M1_unit|Vaddr\(14) & (\M1_unit|Vaddr[13]~42\ $ (GND)))
-- \M1_unit|Vaddr[14]~44\ = CARRY((\M1_unit|Vaddr\(14)) # (!\M1_unit|Vaddr[13]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Vaddr\(14),
	datad => VCC,
	cin => \M1_unit|Vaddr[13]~42\,
	combout => \M1_unit|Vaddr[14]~43_combout\,
	cout => \M1_unit|Vaddr[14]~44\);

-- Location: LCFF_X48_Y10_N11
\M1_unit|Vaddr[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[14]~43_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(14));

-- Location: LCCOMB_X47_Y10_N20
\M1_unit|Vaddr[14]~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[14]~_wirecell_combout\ = !\M1_unit|Vaddr\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M1_unit|Vaddr\(14),
	combout => \M1_unit|Vaddr[14]~_wirecell_combout\);

-- Location: LCFF_X47_Y10_N23
\M1_unit|SRAM_address[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector9~0_combout\,
	sdata => \M1_unit|Vaddr[14]~_wirecell_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(14));

-- Location: LCCOMB_X44_Y8_N4
\SRAM_address[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[14]~22_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & (\VGA_unit|SRAM_address\(14))) # (!\SRAM_address~0_combout\ & ((\M1_unit|SRAM_address\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address~0_combout\,
	datab => \SRAM_address~1_combout\,
	datac => \VGA_unit|SRAM_address\(14),
	datad => \M1_unit|SRAM_address\(14),
	combout => \SRAM_address[14]~22_combout\);

-- Location: LCCOMB_X43_Y8_N6
\SRAM_address[14]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[14]~23_combout\ = (\SRAM_address[14]~22_combout\) # ((\UART_unit|SRAM_address\(14) & \SRAM_address~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|SRAM_address\(14),
	datab => \SRAM_address~1_combout\,
	datad => \SRAM_address[14]~22_combout\,
	combout => \SRAM_address[14]~23_combout\);

-- Location: LCCOMB_X42_Y14_N26
\VGA_unit|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~26_combout\ = (\VGA_unit|SRAM_address\(15) & (\VGA_unit|Add0~25\ & VCC)) # (!\VGA_unit|SRAM_address\(15) & (!\VGA_unit|Add0~25\))
-- \VGA_unit|Add0~27\ = CARRY((!\VGA_unit|SRAM_address\(15) & !\VGA_unit|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(15),
	datad => VCC,
	cin => \VGA_unit|Add0~25\,
	combout => \VGA_unit|Add0~26_combout\,
	cout => \VGA_unit|Add0~27\);

-- Location: LCCOMB_X41_Y13_N12
\VGA_unit|Add1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~41_combout\ = (\VGA_unit|SRAM_address\(15) & (!\VGA_unit|Add1~39\)) # (!\VGA_unit|SRAM_address\(15) & ((\VGA_unit|Add1~39\) # (GND)))
-- \VGA_unit|Add1~42\ = CARRY((!\VGA_unit|Add1~39\) # (!\VGA_unit|SRAM_address\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(15),
	datad => VCC,
	cin => \VGA_unit|Add1~39\,
	combout => \VGA_unit|Add1~41_combout\,
	cout => \VGA_unit|Add1~42\);

-- Location: LCCOMB_X41_Y13_N28
\VGA_unit|Add1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~43_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (\VGA_unit|Equal1~1_combout\ & (\VGA_unit|Add0~26_combout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Add1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal1~1_combout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datac => \VGA_unit|Add0~26_combout\,
	datad => \VGA_unit|Add1~41_combout\,
	combout => \VGA_unit|Add1~43_combout\);

-- Location: LCFF_X41_Y13_N29
\VGA_unit|SRAM_address[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~43_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(15));

-- Location: LCCOMB_X44_Y8_N30
\SRAM_address[15]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[15]~24_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & ((\VGA_unit|SRAM_address\(15)))) # (!\SRAM_address~0_combout\ & (\M1_unit|SRAM_address\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address\(15),
	datab => \SRAM_address~1_combout\,
	datac => \SRAM_address~0_combout\,
	datad => \VGA_unit|SRAM_address\(15),
	combout => \SRAM_address[15]~24_combout\);

-- Location: LCCOMB_X44_Y8_N8
\SRAM_address[15]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[15]~25_combout\ = (\SRAM_address[15]~24_combout\) # ((\UART_unit|SRAM_address\(15) & \SRAM_address~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_address[15]~24_combout\,
	datac => \UART_unit|SRAM_address\(15),
	datad => \SRAM_address~1_combout\,
	combout => \SRAM_address[15]~25_combout\);

-- Location: LCCOMB_X44_Y8_N10
\unit2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr6~0_combout\ = (\SRAM_address[14]~23_combout\ & (!\SRAM_address[13]~21_combout\ & (\SRAM_address[12]~19_combout\ $ (!\SRAM_address[15]~25_combout\)))) # (!\SRAM_address[14]~23_combout\ & (\SRAM_address[12]~19_combout\ & 
-- (\SRAM_address[13]~21_combout\ $ (!\SRAM_address[15]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[13]~21_combout\,
	datab => \SRAM_address[12]~19_combout\,
	datac => \SRAM_address[14]~23_combout\,
	datad => \SRAM_address[15]~25_combout\,
	combout => \unit2|WideOr6~0_combout\);

-- Location: LCCOMB_X44_Y8_N12
\unit2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr5~0_combout\ = (\SRAM_address[13]~21_combout\ & ((\SRAM_address[12]~19_combout\ & ((\SRAM_address[15]~25_combout\))) # (!\SRAM_address[12]~19_combout\ & (\SRAM_address[14]~23_combout\)))) # (!\SRAM_address[13]~21_combout\ & 
-- (\SRAM_address[14]~23_combout\ & (\SRAM_address[12]~19_combout\ $ (\SRAM_address[15]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[13]~21_combout\,
	datab => \SRAM_address[12]~19_combout\,
	datac => \SRAM_address[14]~23_combout\,
	datad => \SRAM_address[15]~25_combout\,
	combout => \unit2|WideOr5~0_combout\);

-- Location: LCCOMB_X44_Y8_N22
\unit2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr4~0_combout\ = (\SRAM_address[14]~23_combout\ & (\SRAM_address[15]~25_combout\ & ((\SRAM_address[13]~21_combout\) # (!\SRAM_address[12]~19_combout\)))) # (!\SRAM_address[14]~23_combout\ & (\SRAM_address[13]~21_combout\ & 
-- (!\SRAM_address[12]~19_combout\ & !\SRAM_address[15]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[13]~21_combout\,
	datab => \SRAM_address[12]~19_combout\,
	datac => \SRAM_address[14]~23_combout\,
	datad => \SRAM_address[15]~25_combout\,
	combout => \unit2|WideOr4~0_combout\);

-- Location: LCCOMB_X44_Y8_N0
\unit2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr3~0_combout\ = (\SRAM_address[12]~19_combout\ & (\SRAM_address[13]~21_combout\ $ ((!\SRAM_address[14]~23_combout\)))) # (!\SRAM_address[12]~19_combout\ & ((\SRAM_address[13]~21_combout\ & (!\SRAM_address[14]~23_combout\ & 
-- \SRAM_address[15]~25_combout\)) # (!\SRAM_address[13]~21_combout\ & (\SRAM_address[14]~23_combout\ & !\SRAM_address[15]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[13]~21_combout\,
	datab => \SRAM_address[12]~19_combout\,
	datac => \SRAM_address[14]~23_combout\,
	datad => \SRAM_address[15]~25_combout\,
	combout => \unit2|WideOr3~0_combout\);

-- Location: LCCOMB_X44_Y8_N26
\unit2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr2~0_combout\ = (\SRAM_address[13]~21_combout\ & (\SRAM_address[12]~19_combout\ & ((!\SRAM_address[15]~25_combout\)))) # (!\SRAM_address[13]~21_combout\ & ((\SRAM_address[14]~23_combout\ & ((!\SRAM_address[15]~25_combout\))) # 
-- (!\SRAM_address[14]~23_combout\ & (\SRAM_address[12]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[13]~21_combout\,
	datab => \SRAM_address[12]~19_combout\,
	datac => \SRAM_address[14]~23_combout\,
	datad => \SRAM_address[15]~25_combout\,
	combout => \unit2|WideOr2~0_combout\);

-- Location: LCCOMB_X44_Y8_N20
\unit2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr1~0_combout\ = (\SRAM_address[13]~21_combout\ & (!\SRAM_address[15]~25_combout\ & ((\SRAM_address[12]~19_combout\) # (!\SRAM_address[14]~23_combout\)))) # (!\SRAM_address[13]~21_combout\ & (\SRAM_address[12]~19_combout\ & 
-- (\SRAM_address[14]~23_combout\ $ (!\SRAM_address[15]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[13]~21_combout\,
	datab => \SRAM_address[12]~19_combout\,
	datac => \SRAM_address[14]~23_combout\,
	datad => \SRAM_address[15]~25_combout\,
	combout => \unit2|WideOr1~0_combout\);

-- Location: LCCOMB_X44_Y8_N14
\unit2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit2|WideOr0~0_combout\ = (\SRAM_address[12]~19_combout\ & ((\SRAM_address[15]~25_combout\) # (\SRAM_address[13]~21_combout\ $ (\SRAM_address[14]~23_combout\)))) # (!\SRAM_address[12]~19_combout\ & ((\SRAM_address[13]~21_combout\) # 
-- (\SRAM_address[14]~23_combout\ $ (\SRAM_address[15]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[13]~21_combout\,
	datab => \SRAM_address[12]~19_combout\,
	datac => \SRAM_address[14]~23_combout\,
	datad => \SRAM_address[15]~25_combout\,
	combout => \unit2|WideOr0~0_combout\);

-- Location: LCCOMB_X43_Y10_N16
\UART_unit|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~48_combout\ = \UART_unit|Add1~46\ $ (\UART_unit|SRAM_address\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|SRAM_address\(17),
	cin => \UART_unit|Add1~46\,
	combout => \UART_unit|Add1~48_combout\);

-- Location: LCCOMB_X43_Y10_N18
\UART_unit|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|Add1~50_combout\ = (\UART_unit|Add1~0_combout\ & ((\UART_unit|Add1~48_combout\) # (!\UART_unit|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|Add1~0_combout\,
	datac => \UART_unit|Add1~48_combout\,
	datad => \UART_unit|LessThan1~5_combout\,
	combout => \UART_unit|Add1~50_combout\);

-- Location: LCFF_X43_Y10_N19
\UART_unit|SRAM_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|Add1~50_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \UART_unit|SRAM_address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|SRAM_address\(17));

-- Location: LCCOMB_X41_Y13_N14
\VGA_unit|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~44_combout\ = (\VGA_unit|SRAM_address\(16) & (\VGA_unit|Add1~42\ $ (GND))) # (!\VGA_unit|SRAM_address\(16) & (!\VGA_unit|Add1~42\ & VCC))
-- \VGA_unit|Add1~45\ = CARRY((\VGA_unit|SRAM_address\(16) & !\VGA_unit|Add1~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(16),
	datad => VCC,
	cin => \VGA_unit|Add1~42\,
	combout => \VGA_unit|Add1~44_combout\,
	cout => \VGA_unit|Add1~45\);

-- Location: LCCOMB_X42_Y14_N28
\VGA_unit|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~28_combout\ = (\VGA_unit|SRAM_address\(16) & ((GND) # (!\VGA_unit|Add0~27\))) # (!\VGA_unit|SRAM_address\(16) & (\VGA_unit|Add0~27\ $ (GND)))
-- \VGA_unit|Add0~29\ = CARRY((\VGA_unit|SRAM_address\(16)) # (!\VGA_unit|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(16),
	datad => VCC,
	cin => \VGA_unit|Add0~27\,
	combout => \VGA_unit|Add0~28_combout\,
	cout => \VGA_unit|Add0~29\);

-- Location: LCCOMB_X41_Y13_N30
\VGA_unit|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~46_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (\VGA_unit|Equal1~1_combout\ & ((\VGA_unit|Add0~28_combout\)))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal1~1_combout\,
	datab => \VGA_unit|Add1~44_combout\,
	datac => \VGA_unit|Add0~28_combout\,
	datad => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	combout => \VGA_unit|Add1~46_combout\);

-- Location: LCFF_X41_Y13_N31
\VGA_unit|SRAM_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~46_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(16));

-- Location: LCCOMB_X41_Y13_N16
\VGA_unit|Add1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~47_combout\ = \VGA_unit|SRAM_address\(17) $ (\VGA_unit|Add1~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(17),
	cin => \VGA_unit|Add1~45\,
	combout => \VGA_unit|Add1~47_combout\);

-- Location: LCCOMB_X42_Y14_N30
\VGA_unit|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add0~30_combout\ = \VGA_unit|SRAM_address\(17) $ (!\VGA_unit|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|SRAM_address\(17),
	cin => \VGA_unit|Add0~29\,
	combout => \VGA_unit|Add0~30_combout\);

-- Location: LCCOMB_X41_Y13_N24
\VGA_unit|Add1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~49_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Add0~30_combout\)) # (!\VGA_unit|Equal1~1_combout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & 
-- (((\VGA_unit|Add1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal1~1_combout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datac => \VGA_unit|Add1~47_combout\,
	datad => \VGA_unit|Add0~30_combout\,
	combout => \VGA_unit|Add1~49_combout\);

-- Location: LCFF_X41_Y13_N25
\VGA_unit|SRAM_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~49_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(17));

-- Location: LCCOMB_X46_Y10_N14
\M1_unit|Yaddr[16]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[16]~47_combout\ = (\M1_unit|Yaddr\(16) & (!\M1_unit|Yaddr[15]~46\)) # (!\M1_unit|Yaddr\(16) & ((\M1_unit|Yaddr[15]~46\) # (GND)))
-- \M1_unit|Yaddr[16]~48\ = CARRY((!\M1_unit|Yaddr[15]~46\) # (!\M1_unit|Yaddr\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Yaddr\(16),
	datad => VCC,
	cin => \M1_unit|Yaddr[15]~46\,
	combout => \M1_unit|Yaddr[16]~47_combout\,
	cout => \M1_unit|Yaddr[16]~48\);

-- Location: LCFF_X46_Y10_N15
\M1_unit|Yaddr[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[16]~47_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(16));

-- Location: LCCOMB_X46_Y10_N16
\M1_unit|Yaddr[17]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Yaddr[17]~49_combout\ = \M1_unit|Yaddr\(17) $ (!\M1_unit|Yaddr[16]~48\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Yaddr\(17),
	cin => \M1_unit|Yaddr[16]~48\,
	combout => \M1_unit|Yaddr[17]~49_combout\);

-- Location: LCFF_X46_Y10_N17
\M1_unit|Yaddr[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[17]~49_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(17));

-- Location: LCCOMB_X47_Y10_N26
\M1_unit|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector6~0_combout\ = (\M1_unit|WideOr4~combout\ & (\M1_unit|Uaddr\(17))) # (!\M1_unit|WideOr4~combout\ & ((\M1_unit|Yaddr\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(17),
	datab => \M1_unit|Yaddr\(17),
	datad => \M1_unit|WideOr4~combout\,
	combout => \M1_unit|Selector6~0_combout\);

-- Location: LCCOMB_X48_Y10_N14
\M1_unit|Vaddr[16]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[16]~47_combout\ = (\M1_unit|Vaddr\(16) & (!\M1_unit|Vaddr[15]~46\)) # (!\M1_unit|Vaddr\(16) & ((\M1_unit|Vaddr[15]~46\) # (GND)))
-- \M1_unit|Vaddr[16]~48\ = CARRY((!\M1_unit|Vaddr[15]~46\) # (!\M1_unit|Vaddr\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \M1_unit|Vaddr\(16),
	datad => VCC,
	cin => \M1_unit|Vaddr[15]~46\,
	combout => \M1_unit|Vaddr[16]~47_combout\,
	cout => \M1_unit|Vaddr[16]~48\);

-- Location: LCFF_X48_Y10_N15
\M1_unit|Vaddr[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[16]~47_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(16));

-- Location: LCCOMB_X48_Y10_N16
\M1_unit|Vaddr[17]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Vaddr[17]~49_combout\ = \M1_unit|Vaddr\(17) $ (!\M1_unit|Vaddr[16]~48\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Vaddr\(17),
	cin => \M1_unit|Vaddr[16]~48\,
	combout => \M1_unit|Vaddr[17]~49_combout\);

-- Location: LCFF_X48_Y10_N17
\M1_unit|Vaddr[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[17]~49_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(17));

-- Location: LCFF_X47_Y10_N27
\M1_unit|SRAM_address[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector6~0_combout\,
	sdata => \M1_unit|Vaddr\(17),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(17));

-- Location: LCCOMB_X43_Y10_N24
\SRAM_address[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[17]~28_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & (\VGA_unit|SRAM_address\(17))) # (!\SRAM_address~0_combout\ & ((\M1_unit|SRAM_address\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address~1_combout\,
	datab => \SRAM_address~0_combout\,
	datac => \VGA_unit|SRAM_address\(17),
	datad => \M1_unit|SRAM_address\(17),
	combout => \SRAM_address[17]~28_combout\);

-- Location: LCCOMB_X43_Y10_N20
\SRAM_address[17]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[17]~29_combout\ = (\SRAM_address[17]~28_combout\) # ((\SRAM_address~1_combout\ & \UART_unit|SRAM_address\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address~1_combout\,
	datab => \UART_unit|SRAM_address\(17),
	datac => \SRAM_address[17]~28_combout\,
	combout => \SRAM_address[17]~29_combout\);

-- Location: LCCOMB_X46_Y10_N22
\M1_unit|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector7~0_combout\ = (\M1_unit|WideOr4~combout\ & (\M1_unit|Uaddr\(16))) # (!\M1_unit|WideOr4~combout\ & ((\M1_unit|Yaddr\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(16),
	datab => \M1_unit|WideOr4~combout\,
	datad => \M1_unit|Yaddr\(16),
	combout => \M1_unit|Selector7~0_combout\);

-- Location: LCFF_X46_Y10_N23
\M1_unit|SRAM_address[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector7~0_combout\,
	sdata => \M1_unit|Vaddr\(16),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(16));

-- Location: LCCOMB_X44_Y8_N16
\SRAM_address[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[16]~26_combout\ = (!\SRAM_address~1_combout\ & ((\SRAM_address~0_combout\ & (\VGA_unit|SRAM_address\(16))) # (!\SRAM_address~0_combout\ & ((\M1_unit|SRAM_address\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address~0_combout\,
	datab => \SRAM_address~1_combout\,
	datac => \VGA_unit|SRAM_address\(16),
	datad => \M1_unit|SRAM_address\(16),
	combout => \SRAM_address[16]~26_combout\);

-- Location: LCCOMB_X44_Y8_N28
\unit3|Decoder0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~12_combout\ = (!\SRAM_address[17]~29_combout\ & ((\SRAM_address[16]~26_combout\) # ((\UART_unit|SRAM_address\(16) & \SRAM_address~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[17]~29_combout\,
	datab => \UART_unit|SRAM_address\(16),
	datac => \SRAM_address[16]~26_combout\,
	datad => \SRAM_address~1_combout\,
	combout => \unit3|Decoder0~12_combout\);

-- Location: LCCOMB_X44_Y8_N2
\SRAM_address[16]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_address[16]~27_combout\ = (\SRAM_address[16]~26_combout\) # ((\UART_unit|SRAM_address\(16) & \SRAM_address~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[16]~26_combout\,
	datac => \UART_unit|SRAM_address\(16),
	datad => \SRAM_address~1_combout\,
	combout => \SRAM_address[16]~27_combout\);

-- Location: LCCOMB_X43_Y10_N22
\unit3|Decoder0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~13_combout\ = (!\SRAM_address[16]~27_combout\ & ((\SRAM_address[17]~28_combout\) # ((\SRAM_address~1_combout\ & \UART_unit|SRAM_address\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address~1_combout\,
	datab => \UART_unit|SRAM_address\(17),
	datac => \SRAM_address[17]~28_combout\,
	datad => \SRAM_address[16]~27_combout\,
	combout => \unit3|Decoder0~13_combout\);

-- Location: LCCOMB_X44_Y8_N6
\unit3|Decoder0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|Decoder0~14_combout\ = (\SRAM_address[17]~29_combout\) # ((\SRAM_address[16]~26_combout\) # ((\UART_unit|SRAM_address\(16) & \SRAM_address~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_address[17]~29_combout\,
	datab => \UART_unit|SRAM_address\(16),
	datac => \SRAM_address[16]~26_combout\,
	datad => \SRAM_address~1_combout\,
	combout => \unit3|Decoder0~14_combout\);

-- Location: LCFF_X21_Y17_N7
\SRAM_unit|SRAM_read_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[0]~0\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(0));

-- Location: LCFF_X21_Y17_N5
\SRAM_unit|SRAM_read_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[3]~3\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(3));

-- Location: LCFF_X21_Y17_N17
\SRAM_unit|SRAM_read_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[1]~1\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(1));

-- Location: LCFF_X21_Y17_N11
\SRAM_unit|SRAM_read_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[2]~2\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(2));

-- Location: LCCOMB_X21_Y17_N30
\unit4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(3) & (\SRAM_unit|SRAM_read_data\(0) & (\SRAM_unit|SRAM_read_data\(1) $ (\SRAM_unit|SRAM_read_data\(2))))) # (!\SRAM_unit|SRAM_read_data\(3) & (!\SRAM_unit|SRAM_read_data\(1) & 
-- (\SRAM_unit|SRAM_read_data\(0) $ (\SRAM_unit|SRAM_read_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(0),
	datab => \SRAM_unit|SRAM_read_data\(3),
	datac => \SRAM_unit|SRAM_read_data\(1),
	datad => \SRAM_unit|SRAM_read_data\(2),
	combout => \unit4|WideOr6~0_combout\);

-- Location: LCCOMB_X21_Y17_N20
\unit4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(3) & ((\SRAM_unit|SRAM_read_data\(0) & (\SRAM_unit|SRAM_read_data\(1))) # (!\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(2)))))) # (!\SRAM_unit|SRAM_read_data\(3) & 
-- (\SRAM_unit|SRAM_read_data\(2) & (\SRAM_unit|SRAM_read_data\(0) $ (\SRAM_unit|SRAM_read_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(0),
	datab => \SRAM_unit|SRAM_read_data\(3),
	datac => \SRAM_unit|SRAM_read_data\(1),
	datad => \SRAM_unit|SRAM_read_data\(2),
	combout => \unit4|WideOr5~0_combout\);

-- Location: LCCOMB_X21_Y17_N28
\unit4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(3) & (\SRAM_unit|SRAM_read_data\(2) & ((\SRAM_unit|SRAM_read_data\(1)) # (!\SRAM_unit|SRAM_read_data\(0))))) # (!\SRAM_unit|SRAM_read_data\(3) & (!\SRAM_unit|SRAM_read_data\(0) & 
-- (\SRAM_unit|SRAM_read_data\(1) & !\SRAM_unit|SRAM_read_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(0),
	datab => \SRAM_unit|SRAM_read_data\(3),
	datac => \SRAM_unit|SRAM_read_data\(1),
	datad => \SRAM_unit|SRAM_read_data\(2),
	combout => \unit4|WideOr4~0_combout\);

-- Location: LCCOMB_X21_Y17_N16
\unit4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(0) & (\SRAM_unit|SRAM_read_data\(2) $ (((!\SRAM_unit|SRAM_read_data\(1)))))) # (!\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(2) & (!\SRAM_unit|SRAM_read_data\(3) & 
-- !\SRAM_unit|SRAM_read_data\(1))) # (!\SRAM_unit|SRAM_read_data\(2) & (\SRAM_unit|SRAM_read_data\(3) & \SRAM_unit|SRAM_read_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(2),
	datab => \SRAM_unit|SRAM_read_data\(3),
	datac => \SRAM_unit|SRAM_read_data\(1),
	datad => \SRAM_unit|SRAM_read_data\(0),
	combout => \unit4|WideOr3~0_combout\);

-- Location: LCCOMB_X21_Y17_N10
\unit4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(1) & (!\SRAM_unit|SRAM_read_data\(3) & ((\SRAM_unit|SRAM_read_data\(0))))) # (!\SRAM_unit|SRAM_read_data\(1) & ((\SRAM_unit|SRAM_read_data\(2) & (!\SRAM_unit|SRAM_read_data\(3))) # 
-- (!\SRAM_unit|SRAM_read_data\(2) & ((\SRAM_unit|SRAM_read_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(1),
	datab => \SRAM_unit|SRAM_read_data\(3),
	datac => \SRAM_unit|SRAM_read_data\(2),
	datad => \SRAM_unit|SRAM_read_data\(0),
	combout => \unit4|WideOr2~0_combout\);

-- Location: LCCOMB_X21_Y17_N4
\unit4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(0) & (\SRAM_unit|SRAM_read_data\(3) $ (((\SRAM_unit|SRAM_read_data\(1)) # (!\SRAM_unit|SRAM_read_data\(2)))))) # (!\SRAM_unit|SRAM_read_data\(0) & (\SRAM_unit|SRAM_read_data\(1) & 
-- (!\SRAM_unit|SRAM_read_data\(3) & !\SRAM_unit|SRAM_read_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(0),
	datab => \SRAM_unit|SRAM_read_data\(1),
	datac => \SRAM_unit|SRAM_read_data\(3),
	datad => \SRAM_unit|SRAM_read_data\(2),
	combout => \unit4|WideOr1~0_combout\);

-- Location: LCCOMB_X21_Y17_N6
\unit4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(3)) # (\SRAM_unit|SRAM_read_data\(1) $ (\SRAM_unit|SRAM_read_data\(2))))) # (!\SRAM_unit|SRAM_read_data\(0) & ((\SRAM_unit|SRAM_read_data\(1)) # 
-- (\SRAM_unit|SRAM_read_data\(3) $ (\SRAM_unit|SRAM_read_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(1),
	datab => \SRAM_unit|SRAM_read_data\(3),
	datac => \SRAM_unit|SRAM_read_data\(0),
	datad => \SRAM_unit|SRAM_read_data\(2),
	combout => \unit4|WideOr0~0_combout\);

-- Location: LCFF_X21_Y17_N15
\SRAM_unit|SRAM_read_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[4]~4\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(4));

-- Location: LCFF_X20_Y17_N17
\SRAM_unit|SRAM_read_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[7]~7\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(7));

-- Location: LCFF_X21_Y17_N25
\SRAM_unit|SRAM_read_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[6]~6\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(6));

-- Location: LCFF_X21_Y17_N23
\SRAM_unit|SRAM_read_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[5]~5\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(5));

-- Location: LCCOMB_X21_Y17_N12
\unit5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(7) & (\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(6) $ (\SRAM_unit|SRAM_read_data\(5))))) # (!\SRAM_unit|SRAM_read_data\(7) & (!\SRAM_unit|SRAM_read_data\(5) & 
-- (\SRAM_unit|SRAM_read_data\(4) $ (\SRAM_unit|SRAM_read_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(7),
	datac => \SRAM_unit|SRAM_read_data\(6),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr6~0_combout\);

-- Location: LCCOMB_X21_Y17_N26
\unit5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(7) & ((\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(5)))) # (!\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(6))))) # (!\SRAM_unit|SRAM_read_data\(7) & 
-- (\SRAM_unit|SRAM_read_data\(6) & (\SRAM_unit|SRAM_read_data\(4) $ (\SRAM_unit|SRAM_read_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(6),
	datab => \SRAM_unit|SRAM_read_data\(7),
	datac => \SRAM_unit|SRAM_read_data\(4),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr5~0_combout\);

-- Location: LCCOMB_X21_Y17_N2
\unit5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(7) & (\SRAM_unit|SRAM_read_data\(6) & ((\SRAM_unit|SRAM_read_data\(5)) # (!\SRAM_unit|SRAM_read_data\(4))))) # (!\SRAM_unit|SRAM_read_data\(7) & (!\SRAM_unit|SRAM_read_data\(4) & 
-- (!\SRAM_unit|SRAM_read_data\(6) & \SRAM_unit|SRAM_read_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(7),
	datac => \SRAM_unit|SRAM_read_data\(6),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr4~0_combout\);

-- Location: LCCOMB_X21_Y17_N14
\unit5|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(6) $ (((!\SRAM_unit|SRAM_read_data\(5)))))) # (!\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(6) & (!\SRAM_unit|SRAM_read_data\(7) & 
-- !\SRAM_unit|SRAM_read_data\(5))) # (!\SRAM_unit|SRAM_read_data\(6) & (\SRAM_unit|SRAM_read_data\(7) & \SRAM_unit|SRAM_read_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(6),
	datab => \SRAM_unit|SRAM_read_data\(7),
	datac => \SRAM_unit|SRAM_read_data\(4),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr3~0_combout\);

-- Location: LCCOMB_X21_Y17_N22
\unit5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(5) & (!\SRAM_unit|SRAM_read_data\(7) & (\SRAM_unit|SRAM_read_data\(4)))) # (!\SRAM_unit|SRAM_read_data\(5) & ((\SRAM_unit|SRAM_read_data\(6) & (!\SRAM_unit|SRAM_read_data\(7))) # 
-- (!\SRAM_unit|SRAM_read_data\(6) & ((\SRAM_unit|SRAM_read_data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(7),
	datab => \SRAM_unit|SRAM_read_data\(4),
	datac => \SRAM_unit|SRAM_read_data\(5),
	datad => \SRAM_unit|SRAM_read_data\(6),
	combout => \unit5|WideOr2~0_combout\);

-- Location: LCCOMB_X21_Y17_N24
\unit5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(4) & (\SRAM_unit|SRAM_read_data\(7) $ (((\SRAM_unit|SRAM_read_data\(5)) # (!\SRAM_unit|SRAM_read_data\(6)))))) # (!\SRAM_unit|SRAM_read_data\(4) & (!\SRAM_unit|SRAM_read_data\(7) & 
-- (!\SRAM_unit|SRAM_read_data\(6) & \SRAM_unit|SRAM_read_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(7),
	datab => \SRAM_unit|SRAM_read_data\(4),
	datac => \SRAM_unit|SRAM_read_data\(6),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr1~0_combout\);

-- Location: LCCOMB_X20_Y17_N16
\unit5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit5|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(7)) # (\SRAM_unit|SRAM_read_data\(6) $ (\SRAM_unit|SRAM_read_data\(5))))) # (!\SRAM_unit|SRAM_read_data\(4) & ((\SRAM_unit|SRAM_read_data\(5)) # 
-- (\SRAM_unit|SRAM_read_data\(6) $ (\SRAM_unit|SRAM_read_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(4),
	datab => \SRAM_unit|SRAM_read_data\(6),
	datac => \SRAM_unit|SRAM_read_data\(7),
	datad => \SRAM_unit|SRAM_read_data\(5),
	combout => \unit5|WideOr0~0_combout\);

-- Location: LCFF_X20_Y17_N15
\SRAM_unit|SRAM_read_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[10]~10\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(10));

-- Location: LCFF_X20_Y17_N27
\SRAM_unit|SRAM_read_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[8]~8\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(8));

-- Location: LCFF_X20_Y17_N1
\SRAM_unit|SRAM_read_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[11]~11\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(11));

-- Location: LCFF_X20_Y17_N29
\SRAM_unit|SRAM_read_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[9]~9\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(9));

-- Location: LCCOMB_X20_Y17_N0
\unit6|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(10) & (!\SRAM_unit|SRAM_read_data\(9) & (\SRAM_unit|SRAM_read_data\(8) $ (!\SRAM_unit|SRAM_read_data\(11))))) # (!\SRAM_unit|SRAM_read_data\(10) & (\SRAM_unit|SRAM_read_data\(8) & 
-- (\SRAM_unit|SRAM_read_data\(11) $ (!\SRAM_unit|SRAM_read_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(10),
	datab => \SRAM_unit|SRAM_read_data\(8),
	datac => \SRAM_unit|SRAM_read_data\(11),
	datad => \SRAM_unit|SRAM_read_data\(9),
	combout => \unit6|WideOr6~0_combout\);

-- Location: LCCOMB_X20_Y17_N14
\unit6|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(9) & ((\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(11)))) # (!\SRAM_unit|SRAM_read_data\(8) & (\SRAM_unit|SRAM_read_data\(10))))) # (!\SRAM_unit|SRAM_read_data\(9) & 
-- (\SRAM_unit|SRAM_read_data\(10) & (\SRAM_unit|SRAM_read_data\(8) $ (\SRAM_unit|SRAM_read_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(8),
	datab => \SRAM_unit|SRAM_read_data\(9),
	datac => \SRAM_unit|SRAM_read_data\(10),
	datad => \SRAM_unit|SRAM_read_data\(11),
	combout => \unit6|WideOr5~0_combout\);

-- Location: LCCOMB_X20_Y17_N2
\unit6|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(10) & (\SRAM_unit|SRAM_read_data\(11) & ((\SRAM_unit|SRAM_read_data\(9)) # (!\SRAM_unit|SRAM_read_data\(8))))) # (!\SRAM_unit|SRAM_read_data\(10) & (!\SRAM_unit|SRAM_read_data\(8) & 
-- (\SRAM_unit|SRAM_read_data\(9) & !\SRAM_unit|SRAM_read_data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(8),
	datab => \SRAM_unit|SRAM_read_data\(9),
	datac => \SRAM_unit|SRAM_read_data\(10),
	datad => \SRAM_unit|SRAM_read_data\(11),
	combout => \unit6|WideOr4~0_combout\);

-- Location: LCCOMB_X20_Y17_N20
\unit6|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(8) & (\SRAM_unit|SRAM_read_data\(9) $ ((!\SRAM_unit|SRAM_read_data\(10))))) # (!\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(9) & (!\SRAM_unit|SRAM_read_data\(10) & 
-- \SRAM_unit|SRAM_read_data\(11))) # (!\SRAM_unit|SRAM_read_data\(9) & (\SRAM_unit|SRAM_read_data\(10) & !\SRAM_unit|SRAM_read_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(8),
	datab => \SRAM_unit|SRAM_read_data\(9),
	datac => \SRAM_unit|SRAM_read_data\(10),
	datad => \SRAM_unit|SRAM_read_data\(11),
	combout => \unit6|WideOr3~0_combout\);

-- Location: LCCOMB_X20_Y17_N30
\unit6|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(9) & (\SRAM_unit|SRAM_read_data\(8) & ((!\SRAM_unit|SRAM_read_data\(11))))) # (!\SRAM_unit|SRAM_read_data\(9) & ((\SRAM_unit|SRAM_read_data\(10) & ((!\SRAM_unit|SRAM_read_data\(11)))) # 
-- (!\SRAM_unit|SRAM_read_data\(10) & (\SRAM_unit|SRAM_read_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(8),
	datab => \SRAM_unit|SRAM_read_data\(9),
	datac => \SRAM_unit|SRAM_read_data\(10),
	datad => \SRAM_unit|SRAM_read_data\(11),
	combout => \unit6|WideOr2~0_combout\);

-- Location: LCCOMB_X20_Y17_N26
\unit6|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(10) & (\SRAM_unit|SRAM_read_data\(8) & (\SRAM_unit|SRAM_read_data\(9) $ (\SRAM_unit|SRAM_read_data\(11))))) # (!\SRAM_unit|SRAM_read_data\(10) & (!\SRAM_unit|SRAM_read_data\(11) & 
-- ((\SRAM_unit|SRAM_read_data\(9)) # (\SRAM_unit|SRAM_read_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(10),
	datab => \SRAM_unit|SRAM_read_data\(9),
	datac => \SRAM_unit|SRAM_read_data\(8),
	datad => \SRAM_unit|SRAM_read_data\(11),
	combout => \unit6|WideOr1~0_combout\);

-- Location: LCCOMB_X20_Y17_N28
\unit6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit6|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(11)) # (\SRAM_unit|SRAM_read_data\(10) $ (\SRAM_unit|SRAM_read_data\(9))))) # (!\SRAM_unit|SRAM_read_data\(8) & ((\SRAM_unit|SRAM_read_data\(9)) # 
-- (\SRAM_unit|SRAM_read_data\(10) $ (\SRAM_unit|SRAM_read_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(10),
	datab => \SRAM_unit|SRAM_read_data\(8),
	datac => \SRAM_unit|SRAM_read_data\(9),
	datad => \SRAM_unit|SRAM_read_data\(11),
	combout => \unit6|WideOr0~0_combout\);

-- Location: LCFF_X20_Y17_N25
\SRAM_unit|SRAM_read_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[12]~12\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(12));

-- Location: LCFF_X20_Y17_N19
\SRAM_unit|SRAM_read_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[13]~13\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(13));

-- Location: LCFF_X20_Y17_N13
\SRAM_unit|SRAM_read_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[14]~14\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(14));

-- Location: LCFF_X20_Y17_N7
\SRAM_unit|SRAM_read_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_DATA_IO[15]~15\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_read_data\(15));

-- Location: LCCOMB_X20_Y17_N12
\unit7|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr6~0_combout\ = (\SRAM_unit|SRAM_read_data\(14) & (!\SRAM_unit|SRAM_read_data\(13) & (\SRAM_unit|SRAM_read_data\(12) $ (!\SRAM_unit|SRAM_read_data\(15))))) # (!\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(12) & 
-- (\SRAM_unit|SRAM_read_data\(13) $ (!\SRAM_unit|SRAM_read_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(12),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(14),
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \unit7|WideOr6~0_combout\);

-- Location: LCCOMB_X20_Y17_N24
\unit7|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr5~0_combout\ = (\SRAM_unit|SRAM_read_data\(13) & ((\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(15)))) # (!\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(14))))) # (!\SRAM_unit|SRAM_read_data\(13) & 
-- (\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(12) $ (\SRAM_unit|SRAM_read_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(14),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(12),
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \unit7|WideOr5~0_combout\);

-- Location: LCCOMB_X20_Y17_N18
\unit7|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr4~0_combout\ = (\SRAM_unit|SRAM_read_data\(15) & (\SRAM_unit|SRAM_read_data\(14) & ((\SRAM_unit|SRAM_read_data\(13)) # (!\SRAM_unit|SRAM_read_data\(12))))) # (!\SRAM_unit|SRAM_read_data\(15) & (!\SRAM_unit|SRAM_read_data\(12) & 
-- (\SRAM_unit|SRAM_read_data\(13) & !\SRAM_unit|SRAM_read_data\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(12),
	datab => \SRAM_unit|SRAM_read_data\(15),
	datac => \SRAM_unit|SRAM_read_data\(13),
	datad => \SRAM_unit|SRAM_read_data\(14),
	combout => \unit7|WideOr4~0_combout\);

-- Location: LCCOMB_X20_Y17_N8
\unit7|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr3~0_combout\ = (\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(14) $ ((!\SRAM_unit|SRAM_read_data\(13))))) # (!\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(14) & (!\SRAM_unit|SRAM_read_data\(13) & 
-- !\SRAM_unit|SRAM_read_data\(15))) # (!\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(13) & \SRAM_unit|SRAM_read_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(14),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(12),
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \unit7|WideOr3~0_combout\);

-- Location: LCCOMB_X20_Y21_N16
\unit7|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr2~0_combout\ = (\SRAM_unit|SRAM_read_data\(13) & (\SRAM_unit|SRAM_read_data\(12) & ((!\SRAM_unit|SRAM_read_data\(15))))) # (!\SRAM_unit|SRAM_read_data\(13) & ((\SRAM_unit|SRAM_read_data\(14) & ((!\SRAM_unit|SRAM_read_data\(15)))) # 
-- (!\SRAM_unit|SRAM_read_data\(14) & (\SRAM_unit|SRAM_read_data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(13),
	datab => \SRAM_unit|SRAM_read_data\(12),
	datac => \SRAM_unit|SRAM_read_data\(14),
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \unit7|WideOr2~0_combout\);

-- Location: LCCOMB_X20_Y17_N6
\unit7|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr1~0_combout\ = (\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(15) $ (((\SRAM_unit|SRAM_read_data\(13)) # (!\SRAM_unit|SRAM_read_data\(14)))))) # (!\SRAM_unit|SRAM_read_data\(12) & (\SRAM_unit|SRAM_read_data\(13) & 
-- (!\SRAM_unit|SRAM_read_data\(15) & !\SRAM_unit|SRAM_read_data\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(12),
	datab => \SRAM_unit|SRAM_read_data\(13),
	datac => \SRAM_unit|SRAM_read_data\(15),
	datad => \SRAM_unit|SRAM_read_data\(14),
	combout => \unit7|WideOr1~0_combout\);

-- Location: LCCOMB_X20_Y21_N2
\unit7|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit7|WideOr0~0_combout\ = (\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(15)) # (\SRAM_unit|SRAM_read_data\(13) $ (\SRAM_unit|SRAM_read_data\(14))))) # (!\SRAM_unit|SRAM_read_data\(12) & ((\SRAM_unit|SRAM_read_data\(13)) # 
-- (\SRAM_unit|SRAM_read_data\(14) $ (\SRAM_unit|SRAM_read_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_unit|SRAM_read_data\(13),
	datab => \SRAM_unit|SRAM_read_data\(12),
	datac => \SRAM_unit|SRAM_read_data\(14),
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \unit7|WideOr0~0_combout\);

-- Location: LCCOMB_X48_Y8_N12
\UART_unit|UART_RX|Frame_error[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Frame_error[0]~4_combout\ = (\UART_unit|UART_RX|Frame_error\(0) & (\UART_unit|UART_RX|RX_data_in~regout\ $ (GND))) # (!\UART_unit|UART_RX|Frame_error\(0) & (!\UART_unit|UART_RX|RX_data_in~regout\ & VCC))
-- \UART_unit|UART_RX|Frame_error[0]~5\ = CARRY((\UART_unit|UART_RX|Frame_error\(0) & !\UART_unit|UART_RX|RX_data_in~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Frame_error\(0),
	datab => \UART_unit|UART_RX|RX_data_in~regout\,
	datad => VCC,
	combout => \UART_unit|UART_RX|Frame_error[0]~4_combout\,
	cout => \UART_unit|UART_RX|Frame_error[0]~5\);

-- Location: LCCOMB_X45_Y12_N18
\UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~0_combout\ = (!\UART_unit|UART_RX|RXC_state~9_regout\) # (!\UART_unit|UART_RX|RXC_state~8_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|RXC_state~9_regout\,
	combout => \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~0_combout\);

-- Location: LCCOMB_X45_Y13_N6
\UART_unit|UART_RX|Frame_error[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Frame_error[1]~7_combout\ = ((\UART_unit|UART_RX|Equal2~2_combout\ & (\UART_unit|UART_RX|RXC_state~9_regout\ & \UART_unit|UART_RX|RXC_state~8_regout\))) # (!\UART_unit|UART_RX|Frame_error[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Equal2~2_combout\,
	datab => \UART_unit|UART_RX|RXC_state~9_regout\,
	datac => \UART_unit|UART_RX|RXC_state~8_regout\,
	datad => \UART_unit|UART_RX|Frame_error[1]~6_combout\,
	combout => \UART_unit|UART_RX|Frame_error[1]~7_combout\);

-- Location: LCFF_X48_Y8_N13
\UART_unit|UART_RX|Frame_error[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Frame_error[0]~4_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~0_combout\,
	ena => \UART_unit|UART_RX|Frame_error[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|Frame_error\(0));

-- Location: LCCOMB_X48_Y8_N14
\UART_unit|UART_RX|Frame_error[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Frame_error[1]~8_combout\ = (\UART_unit|UART_RX|Frame_error\(1) & (!\UART_unit|UART_RX|Frame_error[0]~5\)) # (!\UART_unit|UART_RX|Frame_error\(1) & ((\UART_unit|UART_RX|Frame_error[0]~5\) # (GND)))
-- \UART_unit|UART_RX|Frame_error[1]~9\ = CARRY((!\UART_unit|UART_RX|Frame_error[0]~5\) # (!\UART_unit|UART_RX|Frame_error\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_unit|UART_RX|Frame_error\(1),
	datad => VCC,
	cin => \UART_unit|UART_RX|Frame_error[0]~5\,
	combout => \UART_unit|UART_RX|Frame_error[1]~8_combout\,
	cout => \UART_unit|UART_RX|Frame_error[1]~9\);

-- Location: LCFF_X48_Y8_N15
\UART_unit|UART_RX|Frame_error[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Frame_error[1]~8_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~0_combout\,
	ena => \UART_unit|UART_RX|Frame_error[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|Frame_error\(1));

-- Location: LCCOMB_X48_Y8_N16
\UART_unit|UART_RX|Frame_error[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Frame_error[2]~10_combout\ = (\UART_unit|UART_RX|Frame_error\(2) & (\UART_unit|UART_RX|Frame_error[1]~9\ $ (GND))) # (!\UART_unit|UART_RX|Frame_error\(2) & (!\UART_unit|UART_RX|Frame_error[1]~9\ & VCC))
-- \UART_unit|UART_RX|Frame_error[2]~11\ = CARRY((\UART_unit|UART_RX|Frame_error\(2) & !\UART_unit|UART_RX|Frame_error[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_unit|UART_RX|Frame_error\(2),
	datad => VCC,
	cin => \UART_unit|UART_RX|Frame_error[1]~9\,
	combout => \UART_unit|UART_RX|Frame_error[2]~10_combout\,
	cout => \UART_unit|UART_RX|Frame_error[2]~11\);

-- Location: LCFF_X48_Y8_N17
\UART_unit|UART_RX|Frame_error[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Frame_error[2]~10_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~0_combout\,
	ena => \UART_unit|UART_RX|Frame_error[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|Frame_error\(2));

-- Location: LCCOMB_X48_Y8_N18
\UART_unit|UART_RX|Frame_error[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_unit|UART_RX|Frame_error[3]~12_combout\ = \UART_unit|UART_RX|Frame_error[2]~11\ $ (\UART_unit|UART_RX|Frame_error\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART_unit|UART_RX|Frame_error\(3),
	cin => \UART_unit|UART_RX|Frame_error[2]~11\,
	combout => \UART_unit|UART_RX|Frame_error[3]~12_combout\);

-- Location: LCFF_X48_Y8_N19
\UART_unit|UART_RX|Frame_error[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_unit|UART_RX|Frame_error[3]~12_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \UART_unit|UART_RX|RXC_state.S_RXC_STOP_BIT~0_combout\,
	ena => \UART_unit|UART_RX|Frame_error[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_unit|UART_RX|Frame_error\(3));

-- Location: LCCOMB_X34_Y21_N0
\VGA_unit|VGA_unit|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan1~0_combout\ = ((\VGA_unit|VGA_unit|H_Cont\(7)) # ((\VGA_unit|VGA_unit|H_Cont\(5) & \VGA_unit|VGA_unit|H_Cont\(6)))) # (!\VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_V_SYNC~0_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(7),
	datac => \VGA_unit|VGA_unit|H_Cont\(5),
	datad => \VGA_unit|VGA_unit|H_Cont\(6),
	combout => \VGA_unit|VGA_unit|LessThan1~0_combout\);

-- Location: LCFF_X34_Y21_N1
\VGA_unit|VGA_unit|oVGA_H_SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|LessThan1~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\);

-- Location: LCCOMB_X35_Y21_N24
\VGA_unit|VGA_unit|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~1_combout\ = (\VGA_unit|VGA_unit|LessThan6~0_combout\ & (!\VGA_unit|VGA_unit|V_Cont\(5) & \VGA_unit|VGA_unit|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan6~0_combout\,
	datac => \VGA_unit|VGA_unit|V_Cont\(5),
	datad => \VGA_unit|VGA_unit|LessThan2~0_combout\,
	combout => \VGA_unit|VGA_unit|LessThan6~1_combout\);

-- Location: LCCOMB_X34_Y21_N18
\VGA_unit|VGA_unit|oVGA_V_SYNC~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\ = (\VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ & ((\VGA_unit|VGA_unit|V_Cont\(9)) # ((!\VGA_unit|VGA_unit|LessThan6~1_combout\)))) # (!\VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\ & 
-- (((\VGA_unit|VGA_unit|oVGA_V_SYNC~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	datab => \VGA_unit|VGA_unit|V_Cont\(9),
	datac => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\,
	datad => \VGA_unit|VGA_unit|LessThan6~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\);

-- Location: LCFF_X34_Y21_N19
\VGA_unit|VGA_unit|oVGA_V_SYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_V_SYNC~4_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\);

-- Location: LCCOMB_X34_Y21_N28
\VGA_unit|VGA_unit|oVGA_BLANK\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_BLANK~combout\ = (\VGA_unit|VGA_unit|oVGA_H_SYNC~regout\ & \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\,
	datad => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\,
	combout => \VGA_unit|VGA_unit|oVGA_BLANK~combout\);

-- Location: LCCOMB_X36_Y18_N26
\VGA_unit|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal3~1_combout\ = (\VGA_unit|VGA_unit|Add1~16_combout\ & (\VGA_unit|VGA_unit|Add1~4_combout\ & (\VGA_unit|VGA_unit|Add1~14_combout\ & \VGA_unit|VGA_unit|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~16_combout\,
	datab => \VGA_unit|VGA_unit|Add1~4_combout\,
	datac => \VGA_unit|VGA_unit|Add1~14_combout\,
	datad => \VGA_unit|VGA_unit|Add1~2_combout\,
	combout => \VGA_unit|Equal3~1_combout\);

-- Location: LCCOMB_X37_Y18_N24
\VGA_unit|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal3~0_combout\ = (\VGA_unit|VGA_unit|Add1~0_combout\ & (\VGA_unit|VGA_unit|Add1~8_combout\ & (\VGA_unit|VGA_unit|Add1~6_combout\ & \VGA_unit|VGA_unit|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~0_combout\,
	datab => \VGA_unit|VGA_unit|Add1~8_combout\,
	datac => \VGA_unit|VGA_unit|Add1~6_combout\,
	datad => \VGA_unit|VGA_unit|Add1~12_combout\,
	combout => \VGA_unit|Equal3~0_combout\);

-- Location: LCCOMB_X36_Y18_N28
\VGA_unit|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal3~2_combout\ = (!\VGA_unit|VGA_unit|Add1~10_combout\ & (!\VGA_unit|VGA_unit|Add1~18_combout\ & (\VGA_unit|Equal3~1_combout\ & \VGA_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~10_combout\,
	datab => \VGA_unit|VGA_unit|Add1~18_combout\,
	datac => \VGA_unit|Equal3~1_combout\,
	datad => \VGA_unit|Equal3~0_combout\,
	combout => \VGA_unit|Equal3~2_combout\);

-- Location: LCCOMB_X36_Y21_N8
\VGA_unit|VGA_red~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~0_combout\ = (\VGA_unit|VGA_SRAM_state~14_regout\) # ((!\VGA_unit|VGA_SRAM_state~17_regout\ & ((!\VGA_unit|VGA_SRAM_state~16_regout\) # (!\VGA_unit|VGA_SRAM_state~15_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_SRAM_state~15_regout\,
	datac => \VGA_unit|VGA_SRAM_state~14_regout\,
	datad => \VGA_unit|VGA_SRAM_state~16_regout\,
	combout => \VGA_unit|VGA_red~0_combout\);

-- Location: LCCOMB_X41_Y13_N22
\VGA_unit|VGA_red~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~1_combout\ = (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (\VGA_unit|VGA_red~0_combout\ & !\VGA_enable~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datac => \VGA_unit|VGA_red~0_combout\,
	datad => \VGA_enable~regout\,
	combout => \VGA_unit|VGA_red~1_combout\);

-- Location: LCCOMB_X32_Y21_N0
\VGA_unit|VGA_unit|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|Add0~2_combout\ = \VGA_unit|VGA_unit|H_Cont\(7) $ (((\VGA_unit|VGA_unit|H_Cont\(4)) # ((\VGA_unit|VGA_unit|H_Cont\(5)) # (\VGA_unit|VGA_unit|H_Cont\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(4),
	datab => \VGA_unit|VGA_unit|H_Cont\(5),
	datac => \VGA_unit|VGA_unit|H_Cont\(7),
	datad => \VGA_unit|VGA_unit|H_Cont\(6),
	combout => \VGA_unit|VGA_unit|Add0~2_combout\);

-- Location: LCCOMB_X32_Y21_N26
\VGA_unit|always0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~6_combout\ = (!\VGA_unit|VGA_unit|Add0~2_combout\ & (\VGA_unit|VGA_unit|H_Cont\(8) $ (\VGA_unit|VGA_unit|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|H_Cont\(8),
	datac => \VGA_unit|VGA_unit|Add0~2_combout\,
	datad => \VGA_unit|VGA_unit|Add0~0_combout\,
	combout => \VGA_unit|always0~6_combout\);

-- Location: LCCOMB_X32_Y21_N20
\VGA_unit|VGA_red~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~2_combout\ = (\VGA_unit|always0~5_combout\ & ((\VGA_unit|always0~6_combout\) # ((\VGA_unit|VGA_red\(1) & \VGA_unit|VGA_red~1_combout\)))) # (!\VGA_unit|always0~5_combout\ & (\VGA_unit|VGA_red\(1) & (\VGA_unit|VGA_red~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~5_combout\,
	datab => \VGA_unit|VGA_red\(1),
	datac => \VGA_unit|VGA_red~1_combout\,
	datad => \VGA_unit|always0~6_combout\,
	combout => \VGA_unit|VGA_red~2_combout\);

-- Location: LCCOMB_X32_Y21_N28
\VGA_unit|VGA_red~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~3_combout\ = (\VGA_unit|Equal2~2_combout\) # ((\VGA_unit|Equal3~2_combout\) # (\VGA_unit|VGA_red~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal2~2_combout\,
	datab => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|VGA_red~2_combout\,
	combout => \VGA_unit|VGA_red~3_combout\);

-- Location: LCFF_X32_Y21_N29
\VGA_unit|VGA_red[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~3_combout\,
	aclr => \resetn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(1));

-- Location: LCCOMB_X35_Y21_N4
\VGA_unit|VGA_unit|oVGA_R~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~0_combout\ = (\VGA_unit|VGA_unit|H_Cont\(9) & (((\VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\) # (!\VGA_unit|VGA_unit|H_Cont\(8))))) # (!\VGA_unit|VGA_unit|H_Cont\(9) & (((\VGA_unit|VGA_unit|H_Cont\(8))) # 
-- (!\VGA_unit|VGA_unit|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan4~0_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(9),
	datac => \VGA_unit|VGA_unit|H_Cont\(8),
	datad => \VGA_unit|VGA_unit|oVGA_V_SYNC~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~0_combout\);

-- Location: LCCOMB_X35_Y21_N8
\VGA_unit|VGA_unit|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~3_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(9) & (!\VGA_unit|VGA_unit|V_Cont\(6) & (!\VGA_unit|VGA_unit|V_Cont\(7) & !\VGA_unit|VGA_unit|V_Cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(9),
	datab => \VGA_unit|VGA_unit|V_Cont\(6),
	datac => \VGA_unit|VGA_unit|V_Cont\(7),
	datad => \VGA_unit|VGA_unit|V_Cont\(8),
	combout => \VGA_unit|VGA_unit|LessThan6~3_combout\);

-- Location: LCFF_X35_Y20_N11
\VGA_unit|VGA_unit|V_Cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|V_Cont[2]~14_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sclr => \VGA_unit|VGA_unit|LessThan2~2_combout\,
	ena => \VGA_unit|VGA_unit|oVGA_V_SYNC~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|V_Cont\(2));

-- Location: LCCOMB_X35_Y21_N6
\VGA_unit|VGA_unit|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~0_combout\ = (!\VGA_unit|VGA_unit|V_Cont\(3) & (!\VGA_unit|VGA_unit|V_Cont\(2) & !\VGA_unit|VGA_unit|V_Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(3),
	datac => \VGA_unit|VGA_unit|V_Cont\(2),
	datad => \VGA_unit|VGA_unit|V_Cont\(1),
	combout => \VGA_unit|VGA_unit|LessThan6~0_combout\);

-- Location: LCCOMB_X35_Y21_N22
\VGA_unit|VGA_unit|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|LessThan6~2_combout\ = ((!\VGA_unit|VGA_unit|V_Cont\(4) & (!\VGA_unit|VGA_unit|V_Cont\(0) & \VGA_unit|VGA_unit|LessThan6~0_combout\))) # (!\VGA_unit|VGA_unit|V_Cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|V_Cont\(4),
	datab => \VGA_unit|VGA_unit|V_Cont\(0),
	datac => \VGA_unit|VGA_unit|V_Cont\(5),
	datad => \VGA_unit|VGA_unit|LessThan6~0_combout\,
	combout => \VGA_unit|VGA_unit|LessThan6~2_combout\);

-- Location: LCCOMB_X35_Y21_N10
\VGA_unit|VGA_unit|oVGA_R~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~1_combout\ = (\VGA_unit|VGA_unit|LessThan7~0_combout\ & (\VGA_unit|VGA_unit|oVGA_R~0_combout\ & ((!\VGA_unit|VGA_unit|LessThan6~2_combout\) # (!\VGA_unit|VGA_unit|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|LessThan7~0_combout\,
	datab => \VGA_unit|VGA_unit|oVGA_R~0_combout\,
	datac => \VGA_unit|VGA_unit|LessThan6~3_combout\,
	datad => \VGA_unit|VGA_unit|LessThan6~2_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~1_combout\);

-- Location: LCCOMB_X35_Y21_N16
\VGA_unit|VGA_unit|oVGA_R~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~2_combout\ = (\VGA_unit|VGA_red\(1) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_red\(1),
	datad => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~2_combout\);

-- Location: LCFF_X35_Y21_N1
\VGA_unit|VGA_unit|oVGA_R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(0));

-- Location: LCFF_X35_Y21_N19
\VGA_unit|VGA_unit|oVGA_R[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(1));

-- Location: LCCOMB_X30_Y21_N24
\VGA_unit|VGA_red~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~4_combout\ = (!\VGA_unit|VGA_red~0_combout\ & !\VGA_enable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~0_combout\,
	datad => \VGA_enable~regout\,
	combout => \VGA_unit|VGA_red~4_combout\);

-- Location: LCCOMB_X33_Y21_N4
\VGA_unit|always0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~4_combout\ = (!\VGA_unit|VGA_unit|H_Cont\(2) & (!\VGA_unit|VGA_unit|H_Cont\(3) & (\VGA_unit|VGA_unit|H_Cont\(4) & !\VGA_unit|VGA_unit|H_Cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(2),
	datab => \VGA_unit|VGA_unit|H_Cont\(3),
	datac => \VGA_unit|VGA_unit|H_Cont\(4),
	datad => \VGA_unit|VGA_unit|H_Cont\(0),
	combout => \VGA_unit|always0~4_combout\);

-- Location: LCCOMB_X33_Y21_N8
\VGA_unit|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~2_combout\ = (\VGA_unit|VGA_unit|H_Cont\(1) & ((\VGA_unit|VGA_unit|H_Cont\(5) & (\VGA_unit|VGA_unit|H_Cont\(4) & \VGA_unit|VGA_unit|H_Cont\(6))) # (!\VGA_unit|VGA_unit|H_Cont\(5) & (!\VGA_unit|VGA_unit|H_Cont\(4) & 
-- !\VGA_unit|VGA_unit|H_Cont\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|H_Cont\(5),
	datab => \VGA_unit|VGA_unit|H_Cont\(4),
	datac => \VGA_unit|VGA_unit|H_Cont\(1),
	datad => \VGA_unit|VGA_unit|H_Cont\(6),
	combout => \VGA_unit|always0~2_combout\);

-- Location: LCCOMB_X33_Y21_N6
\VGA_unit|always0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|always0~5_combout\ = (\VGA_unit|always0~3_combout\ & ((\VGA_unit|always0~2_combout\) # ((\VGA_unit|always0~4_combout\ & \VGA_unit|Equal0~1_combout\)))) # (!\VGA_unit|always0~3_combout\ & (\VGA_unit|always0~4_combout\ & 
-- ((\VGA_unit|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~3_combout\,
	datab => \VGA_unit|always0~4_combout\,
	datac => \VGA_unit|always0~2_combout\,
	datad => \VGA_unit|Equal0~1_combout\,
	combout => \VGA_unit|always0~5_combout\);

-- Location: LCCOMB_X33_Y21_N16
\VGA_unit|VGA_red~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~6_combout\ = (\VGA_unit|VGA_red~5_combout\ & ((\VGA_unit|VGA_red~4_combout\) # ((\VGA_unit|always0~6_combout\ & \VGA_unit|always0~5_combout\)))) # (!\VGA_unit|VGA_red~5_combout\ & (\VGA_unit|always0~6_combout\ & 
-- ((\VGA_unit|always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~5_combout\,
	datab => \VGA_unit|always0~6_combout\,
	datac => \VGA_unit|VGA_red~4_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_red~6_combout\);

-- Location: LCCOMB_X36_Y18_N30
\VGA_unit|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal2~1_combout\ = (!\VGA_unit|VGA_unit|Add1~10_combout\ & (!\VGA_unit|VGA_unit|Add1~12_combout\ & (!\VGA_unit|VGA_unit|Add1~8_combout\ & !\VGA_unit|VGA_unit|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add1~10_combout\,
	datab => \VGA_unit|VGA_unit|Add1~12_combout\,
	datac => \VGA_unit|VGA_unit|Add1~8_combout\,
	datad => \VGA_unit|VGA_unit|Add1~6_combout\,
	combout => \VGA_unit|Equal2~1_combout\);

-- Location: LCCOMB_X36_Y18_N24
\VGA_unit|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Equal2~2_combout\ = (\VGA_unit|Equal2~0_combout\ & (\VGA_unit|Equal2~1_combout\ & (!\VGA_unit|VGA_unit|Add1~4_combout\ & !\VGA_unit|VGA_unit|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal2~0_combout\,
	datab => \VGA_unit|Equal2~1_combout\,
	datac => \VGA_unit|VGA_unit|Add1~4_combout\,
	datad => \VGA_unit|VGA_unit|Add1~18_combout\,
	combout => \VGA_unit|Equal2~2_combout\);

-- Location: LCCOMB_X33_Y21_N2
\VGA_unit|VGA_red~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~7_combout\ = (\VGA_unit|Equal3~2_combout\) # ((\VGA_unit|VGA_red~6_combout\) # (\VGA_unit|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|VGA_red~6_combout\,
	datad => \VGA_unit|Equal2~2_combout\,
	combout => \VGA_unit|VGA_red~7_combout\);

-- Location: LCCOMB_X33_Y21_N22
\VGA_unit|VGA_green[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green[7]~27_combout\ = (\VGA_unit|VGA_unit|Add0~2_combout\) # ((\VGA_unit|VGA_unit|H_Cont\(8) $ (!\VGA_unit|VGA_unit|Add0~0_combout\)) # (!\VGA_unit|always0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|Add0~2_combout\,
	datab => \VGA_unit|VGA_unit|H_Cont\(8),
	datac => \VGA_unit|VGA_unit|Add0~0_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_green[7]~27_combout\);

-- Location: LCCOMB_X36_Y18_N22
\VGA_unit|VGA_green[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green[7]~2_combout\ = (\VGA_unit|Equal2~2_combout\) # ((\VGA_unit|Equal3~2_combout\) # ((!\VGA_unit|VGA_green[7]~27_combout\) # (!\VGA_unit|VGA_red~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal2~2_combout\,
	datab => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|VGA_red~1_combout\,
	datad => \VGA_unit|VGA_green[7]~27_combout\,
	combout => \VGA_unit|VGA_green[7]~2_combout\);

-- Location: LCFF_X33_Y21_N3
\VGA_unit|VGA_red[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~7_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(2));

-- Location: LCCOMB_X34_Y21_N30
\VGA_unit|VGA_unit|oVGA_R~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~3_combout\ = (\VGA_unit|VGA_unit|oVGA_R~1_combout\ & \VGA_unit|VGA_red\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	datad => \VGA_unit|VGA_red\(2),
	combout => \VGA_unit|VGA_unit|oVGA_R~3_combout\);

-- Location: LCFF_X34_Y21_N31
\VGA_unit|VGA_unit|oVGA_R[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~3_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(2));

-- Location: LCCOMB_X33_Y21_N26
\VGA_unit|VGA_red~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~9_combout\ = (\VGA_unit|VGA_red~8_combout\ & ((\VGA_unit|VGA_red~4_combout\) # ((\VGA_unit|always0~6_combout\ & \VGA_unit|always0~5_combout\)))) # (!\VGA_unit|VGA_red~8_combout\ & (\VGA_unit|always0~6_combout\ & 
-- ((\VGA_unit|always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~8_combout\,
	datab => \VGA_unit|always0~6_combout\,
	datac => \VGA_unit|VGA_red~4_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_red~9_combout\);

-- Location: LCCOMB_X33_Y21_N28
\VGA_unit|VGA_red~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~10_combout\ = (\VGA_unit|VGA_red~9_combout\) # ((\VGA_unit|Equal3~2_combout\) # (\VGA_unit|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_red~9_combout\,
	datac => \VGA_unit|Equal3~2_combout\,
	datad => \VGA_unit|Equal2~2_combout\,
	combout => \VGA_unit|VGA_red~10_combout\);

-- Location: LCFF_X33_Y21_N29
\VGA_unit|VGA_red[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~10_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(3));

-- Location: LCCOMB_X34_Y21_N24
\VGA_unit|VGA_unit|oVGA_R~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~4_combout\ = (\VGA_unit|VGA_unit|oVGA_R~1_combout\ & \VGA_unit|VGA_red\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	datad => \VGA_unit|VGA_red\(3),
	combout => \VGA_unit|VGA_unit|oVGA_R~4_combout\);

-- Location: LCFF_X34_Y21_N25
\VGA_unit|VGA_unit|oVGA_R[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~4_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(3));

-- Location: LCCOMB_X34_Y21_N26
\VGA_unit|VGA_unit|oVGA_R~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~5_combout\ = (\VGA_unit|VGA_red\(4) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red\(4),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~5_combout\);

-- Location: LCFF_X34_Y21_N27
\VGA_unit|VGA_unit|oVGA_R[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~5_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(4));

-- Location: LCCOMB_X36_Y21_N12
\VGA_unit|VGA_SRAM_state~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_SRAM_state~34_combout\ = (!\VGA_unit|VGA_SRAM_state~15_regout\ & \VGA_unit|VGA_SRAM_state~16_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_SRAM_state~15_regout\,
	datad => \VGA_unit|VGA_SRAM_state~16_regout\,
	combout => \VGA_unit|VGA_SRAM_state~34_combout\);

-- Location: LCCOMB_X36_Y21_N14
\VGA_unit|VGA_sram_data[1][0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[1][0]~1_combout\ = (!\VGA_unit|VGA_SRAM_state~14_regout\ & (!\VGA_enable~regout\ & ((\VGA_unit|VGA_SRAM_state~34_combout\) # (\VGA_unit|VGA_SRAM_state~17_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~34_combout\,
	datac => \VGA_enable~regout\,
	datad => \VGA_unit|VGA_SRAM_state~17_regout\,
	combout => \VGA_unit|VGA_sram_data[1][0]~1_combout\);

-- Location: LCFF_X30_Y21_N9
\VGA_unit|VGA_sram_data[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(3),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][3]~regout\);

-- Location: LCCOMB_X30_Y21_N6
\VGA_unit|VGA_sram_data[2][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[2][11]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(11),
	combout => \VGA_unit|VGA_sram_data[2][11]~feeder_combout\);

-- Location: LCCOMB_X36_Y21_N18
\VGA_unit|VGA_sram_data[2][8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[2][8]~0_combout\ = (\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_SRAM_state~15_regout\ & !\VGA_enable~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~15_regout\,
	datac => \VGA_enable~regout\,
	combout => \VGA_unit|VGA_sram_data[2][8]~0_combout\);

-- Location: LCFF_X30_Y21_N7
\VGA_unit|VGA_sram_data[2][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[2][11]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][11]~regout\);

-- Location: LCCOMB_X30_Y21_N8
\VGA_unit|VGA_red~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~14_combout\ = (\VGA_unit|VGA_SRAM_state~14_regout\ & (((\VGA_unit|VGA_sram_data[2][11]~regout\)))) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][3]~regout\)) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_sram_data[2][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~17_regout\,
	datac => \VGA_unit|VGA_sram_data[1][3]~regout\,
	datad => \VGA_unit|VGA_sram_data[2][11]~regout\,
	combout => \VGA_unit|VGA_red~14_combout\);

-- Location: LCCOMB_X29_Y22_N8
\VGA_unit|VGA_red~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~15_combout\ = (\VGA_unit|always0~6_combout\ & ((\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~4_combout\ & \VGA_unit|VGA_red~14_combout\)))) # (!\VGA_unit|always0~6_combout\ & (\VGA_unit|VGA_red~4_combout\ & 
-- (\VGA_unit|VGA_red~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~6_combout\,
	datab => \VGA_unit|VGA_red~4_combout\,
	datac => \VGA_unit|VGA_red~14_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_red~15_combout\);

-- Location: LCCOMB_X29_Y22_N0
\VGA_unit|VGA_red~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~16_combout\ = (\VGA_unit|Equal3~2_combout\) # ((\VGA_unit|VGA_red~15_combout\) # (\VGA_unit|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|VGA_red~15_combout\,
	datad => \VGA_unit|Equal2~2_combout\,
	combout => \VGA_unit|VGA_red~16_combout\);

-- Location: LCFF_X29_Y22_N1
\VGA_unit|VGA_red[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~16_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(5));

-- Location: LCCOMB_X25_Y25_N16
\VGA_unit|VGA_unit|oVGA_R~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~6_combout\ = (\VGA_unit|VGA_unit|oVGA_R~1_combout\ & \VGA_unit|VGA_red\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	datac => \VGA_unit|VGA_red\(5),
	combout => \VGA_unit|VGA_unit|oVGA_R~6_combout\);

-- Location: LCFF_X25_Y25_N17
\VGA_unit|VGA_unit|oVGA_R[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~6_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(5));

-- Location: LCCOMB_X25_Y25_N18
\VGA_unit|VGA_unit|oVGA_R~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~7_combout\ = (\VGA_unit|VGA_red\(6) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red\(6),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~7_combout\);

-- Location: LCFF_X25_Y25_N19
\VGA_unit|VGA_unit|oVGA_R[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~7_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(6));

-- Location: LCFF_X30_Y21_N17
\VGA_unit|VGA_sram_data[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(5),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][5]~regout\);

-- Location: LCCOMB_X30_Y21_N30
\VGA_unit|VGA_sram_data[2][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[2][13]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(13),
	combout => \VGA_unit|VGA_sram_data[2][13]~feeder_combout\);

-- Location: LCFF_X30_Y21_N31
\VGA_unit|VGA_sram_data[2][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[2][13]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][13]~regout\);

-- Location: LCCOMB_X30_Y21_N16
\VGA_unit|VGA_red~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~20_combout\ = (\VGA_unit|VGA_SRAM_state~14_regout\ & (((\VGA_unit|VGA_sram_data[2][13]~regout\)))) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][5]~regout\)) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_sram_data[2][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~17_regout\,
	datac => \VGA_unit|VGA_sram_data[1][5]~regout\,
	datad => \VGA_unit|VGA_sram_data[2][13]~regout\,
	combout => \VGA_unit|VGA_red~20_combout\);

-- Location: LCCOMB_X29_Y22_N28
\VGA_unit|VGA_red~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~21_combout\ = (\VGA_unit|always0~6_combout\ & ((\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~4_combout\ & \VGA_unit|VGA_red~20_combout\)))) # (!\VGA_unit|always0~6_combout\ & (\VGA_unit|VGA_red~4_combout\ & 
-- (\VGA_unit|VGA_red~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~6_combout\,
	datab => \VGA_unit|VGA_red~4_combout\,
	datac => \VGA_unit|VGA_red~20_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_red~21_combout\);

-- Location: LCCOMB_X29_Y22_N4
\VGA_unit|VGA_red~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~22_combout\ = (\VGA_unit|Equal2~2_combout\) # ((\VGA_unit|VGA_red~21_combout\) # (\VGA_unit|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal2~2_combout\,
	datab => \VGA_unit|VGA_red~21_combout\,
	datad => \VGA_unit|Equal3~2_combout\,
	combout => \VGA_unit|VGA_red~22_combout\);

-- Location: LCFF_X29_Y22_N5
\VGA_unit|VGA_red[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~22_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(7));

-- Location: LCCOMB_X25_Y25_N20
\VGA_unit|VGA_unit|oVGA_R~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~8_combout\ = (\VGA_unit|VGA_unit|oVGA_R~1_combout\ & \VGA_unit|VGA_red\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	datac => \VGA_unit|VGA_red\(7),
	combout => \VGA_unit|VGA_unit|oVGA_R~8_combout\);

-- Location: LCFF_X25_Y25_N21
\VGA_unit|VGA_unit|oVGA_R[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~8_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(7));

-- Location: LCCOMB_X25_Y25_N22
\VGA_unit|VGA_unit|oVGA_R~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~9_combout\ = (\VGA_unit|VGA_red\(8) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red\(8),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~9_combout\);

-- Location: LCFF_X25_Y25_N23
\VGA_unit|VGA_unit|oVGA_R[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~9_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(8));

-- Location: LCFF_X27_Y21_N3
\VGA_unit|VGA_sram_data[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(7),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][7]~regout\);

-- Location: LCCOMB_X27_Y21_N0
\VGA_unit|VGA_sram_data[2][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[2][15]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \VGA_unit|VGA_sram_data[2][15]~feeder_combout\);

-- Location: LCFF_X27_Y21_N1
\VGA_unit|VGA_sram_data[2][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[2][15]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][15]~regout\);

-- Location: LCCOMB_X27_Y21_N2
\VGA_unit|VGA_red~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~26_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[2][15]~regout\))) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[1][7]~regout\)))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (((\VGA_unit|VGA_sram_data[2][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_SRAM_state~14_regout\,
	datac => \VGA_unit|VGA_sram_data[1][7]~regout\,
	datad => \VGA_unit|VGA_sram_data[2][15]~regout\,
	combout => \VGA_unit|VGA_red~26_combout\);

-- Location: LCCOMB_X29_Y22_N24
\VGA_unit|VGA_red~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~27_combout\ = (\VGA_unit|always0~6_combout\ & ((\VGA_unit|always0~5_combout\) # ((\VGA_unit|VGA_red~26_combout\ & \VGA_unit|VGA_red~4_combout\)))) # (!\VGA_unit|always0~6_combout\ & (\VGA_unit|VGA_red~26_combout\ & 
-- (\VGA_unit|VGA_red~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~6_combout\,
	datab => \VGA_unit|VGA_red~26_combout\,
	datac => \VGA_unit|VGA_red~4_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_red~27_combout\);

-- Location: LCCOMB_X29_Y22_N16
\VGA_unit|VGA_red~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_red~28_combout\ = (\VGA_unit|Equal3~2_combout\) # ((\VGA_unit|VGA_red~27_combout\) # (\VGA_unit|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|VGA_red~27_combout\,
	datad => \VGA_unit|Equal2~2_combout\,
	combout => \VGA_unit|VGA_red~28_combout\);

-- Location: LCFF_X29_Y22_N17
\VGA_unit|VGA_red[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_red~28_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_red\(9));

-- Location: LCCOMB_X25_Y25_N24
\VGA_unit|VGA_unit|oVGA_R~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_R~10_combout\ = (\VGA_unit|VGA_red\(9) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_red\(9),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_R~10_combout\);

-- Location: LCFF_X25_Y25_N25
\VGA_unit|VGA_unit|oVGA_R[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~10_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_R\(9));

-- Location: LCFF_X35_Y21_N21
\VGA_unit|VGA_unit|oVGA_G[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(0));

-- Location: LCFF_X35_Y21_N31
\VGA_unit|VGA_unit|oVGA_G[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(1));

-- Location: LCCOMB_X25_Y25_N10
\VGA_unit|VGA_unit|oVGA_G~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~0_combout\ = (\VGA_unit|VGA_green\(2) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_green\(2),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~0_combout\);

-- Location: LCFF_X25_Y25_N11
\VGA_unit|VGA_unit|oVGA_G[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(2));

-- Location: LCCOMB_X29_Y22_N20
\VGA_unit|VGA_green~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~7_combout\ = (\VGA_unit|VGA_green~6_combout\ & ((\VGA_unit|VGA_red~4_combout\) # ((\VGA_unit|always0~5_combout\ & \VGA_unit|always0~6_combout\)))) # (!\VGA_unit|VGA_green~6_combout\ & (\VGA_unit|always0~5_combout\ & 
-- ((\VGA_unit|always0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_green~6_combout\,
	datab => \VGA_unit|always0~5_combout\,
	datac => \VGA_unit|VGA_red~4_combout\,
	datad => \VGA_unit|always0~6_combout\,
	combout => \VGA_unit|VGA_green~7_combout\);

-- Location: LCCOMB_X29_Y22_N12
\VGA_unit|VGA_green~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~8_combout\ = (\VGA_unit|Equal3~2_combout\) # ((\VGA_unit|VGA_green~7_combout\) # (\VGA_unit|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|VGA_green~7_combout\,
	datad => \VGA_unit|Equal2~2_combout\,
	combout => \VGA_unit|VGA_green~8_combout\);

-- Location: LCFF_X29_Y22_N13
\VGA_unit|VGA_green[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~8_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(3));

-- Location: LCCOMB_X25_Y25_N28
\VGA_unit|VGA_unit|oVGA_G~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~1_combout\ = (\VGA_unit|VGA_unit|oVGA_R~1_combout\ & \VGA_unit|VGA_green\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	datac => \VGA_unit|VGA_green\(3),
	combout => \VGA_unit|VGA_unit|oVGA_G~1_combout\);

-- Location: LCFF_X25_Y25_N29
\VGA_unit|VGA_unit|oVGA_G[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~1_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(3));

-- Location: LCCOMB_X29_Y22_N30
\VGA_unit|VGA_green~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~10_combout\ = (\VGA_unit|VGA_green~9_combout\ & ((\VGA_unit|VGA_red~4_combout\) # ((\VGA_unit|always0~5_combout\ & \VGA_unit|always0~6_combout\)))) # (!\VGA_unit|VGA_green~9_combout\ & (\VGA_unit|always0~5_combout\ & 
-- ((\VGA_unit|always0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_green~9_combout\,
	datab => \VGA_unit|always0~5_combout\,
	datac => \VGA_unit|VGA_red~4_combout\,
	datad => \VGA_unit|always0~6_combout\,
	combout => \VGA_unit|VGA_green~10_combout\);

-- Location: LCCOMB_X29_Y22_N6
\VGA_unit|VGA_green~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~11_combout\ = (\VGA_unit|Equal2~2_combout\) # ((\VGA_unit|VGA_green~10_combout\) # (\VGA_unit|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal2~2_combout\,
	datab => \VGA_unit|VGA_green~10_combout\,
	datad => \VGA_unit|Equal3~2_combout\,
	combout => \VGA_unit|VGA_green~11_combout\);

-- Location: LCFF_X29_Y22_N7
\VGA_unit|VGA_green[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~11_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(4));

-- Location: LCCOMB_X25_Y25_N30
\VGA_unit|VGA_unit|oVGA_G~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~2_combout\ = (\VGA_unit|VGA_green\(4) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green\(4),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~2_combout\);

-- Location: LCFF_X25_Y25_N31
\VGA_unit|VGA_unit|oVGA_G[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(4));

-- Location: LCCOMB_X29_Y21_N24
\VGA_unit|VGA_green~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~13_combout\ = (\VGA_unit|VGA_green~12_combout\ & ((\VGA_unit|VGA_red~4_combout\) # ((\VGA_unit|always0~6_combout\ & \VGA_unit|always0~5_combout\)))) # (!\VGA_unit|VGA_green~12_combout\ & (((\VGA_unit|always0~6_combout\ & 
-- \VGA_unit|always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_green~12_combout\,
	datab => \VGA_unit|VGA_red~4_combout\,
	datac => \VGA_unit|always0~6_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_green~13_combout\);

-- Location: LCCOMB_X29_Y21_N16
\VGA_unit|VGA_green~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~14_combout\ = (\VGA_unit|Equal2~2_combout\) # ((\VGA_unit|Equal3~2_combout\) # (\VGA_unit|VGA_green~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal2~2_combout\,
	datab => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|VGA_green~13_combout\,
	combout => \VGA_unit|VGA_green~14_combout\);

-- Location: LCFF_X29_Y21_N17
\VGA_unit|VGA_green[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~14_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(5));

-- Location: LCCOMB_X25_Y25_N0
\VGA_unit|VGA_unit|oVGA_G~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~3_combout\ = (\VGA_unit|VGA_green\(5) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green\(5),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~3_combout\);

-- Location: LCFF_X25_Y25_N1
\VGA_unit|VGA_unit|oVGA_G[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~3_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(5));

-- Location: LCCOMB_X25_Y25_N26
\VGA_unit|VGA_unit|oVGA_G~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~4_combout\ = (\VGA_unit|VGA_green\(6) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_green\(6),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~4_combout\);

-- Location: LCFF_X25_Y25_N27
\VGA_unit|VGA_unit|oVGA_G[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~4_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(6));

-- Location: LCCOMB_X29_Y21_N4
\VGA_unit|VGA_green~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~19_combout\ = (\VGA_unit|VGA_green~18_combout\ & ((\VGA_unit|VGA_red~4_combout\) # ((\VGA_unit|always0~6_combout\ & \VGA_unit|always0~5_combout\)))) # (!\VGA_unit|VGA_green~18_combout\ & (((\VGA_unit|always0~6_combout\ & 
-- \VGA_unit|always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_green~18_combout\,
	datab => \VGA_unit|VGA_red~4_combout\,
	datac => \VGA_unit|always0~6_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_green~19_combout\);

-- Location: LCCOMB_X29_Y21_N20
\VGA_unit|VGA_green~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~20_combout\ = (\VGA_unit|Equal2~2_combout\) # ((\VGA_unit|Equal3~2_combout\) # (\VGA_unit|VGA_green~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal2~2_combout\,
	datab => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|VGA_green~19_combout\,
	combout => \VGA_unit|VGA_green~20_combout\);

-- Location: LCFF_X29_Y21_N21
\VGA_unit|VGA_green[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~20_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(7));

-- Location: LCCOMB_X25_Y25_N4
\VGA_unit|VGA_unit|oVGA_G~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~5_combout\ = (\VGA_unit|VGA_green\(7) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green\(7),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~5_combout\);

-- Location: LCFF_X25_Y25_N5
\VGA_unit|VGA_unit|oVGA_G[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~5_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(7));

-- Location: LCFF_X28_Y21_N23
\VGA_unit|VGA_sram_data[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(6),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[2][8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[2][6]~regout\);

-- Location: LCCOMB_X30_Y21_N14
\VGA_unit|VGA_sram_data[0][8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[0][8]~2_combout\ = (\VGA_unit|VGA_SRAM_state~14_regout\ & (!\VGA_enable~regout\ & ((\VGA_unit|VGA_SRAM_state~34_combout\) # (\VGA_unit|VGA_SRAM_state~17_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~14_regout\,
	datab => \VGA_unit|VGA_SRAM_state~34_combout\,
	datac => \VGA_unit|VGA_SRAM_state~17_regout\,
	datad => \VGA_enable~regout\,
	combout => \VGA_unit|VGA_sram_data[0][8]~2_combout\);

-- Location: LCFF_X28_Y21_N17
\VGA_unit|VGA_sram_data[0][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(14),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][14]~regout\);

-- Location: LCCOMB_X28_Y21_N16
\VGA_unit|VGA_green~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~21_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[2][6]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][14]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[2][6]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[2][6]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][14]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_green~21_combout\);

-- Location: LCCOMB_X29_Y21_N30
\VGA_unit|VGA_green~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~22_combout\ = (\VGA_unit|always0~5_combout\ & ((\VGA_unit|always0~6_combout\) # ((\VGA_unit|VGA_red~4_combout\ & \VGA_unit|VGA_green~21_combout\)))) # (!\VGA_unit|always0~5_combout\ & (\VGA_unit|VGA_red~4_combout\ & 
-- ((\VGA_unit|VGA_green~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~5_combout\,
	datab => \VGA_unit|VGA_red~4_combout\,
	datac => \VGA_unit|always0~6_combout\,
	datad => \VGA_unit|VGA_green~21_combout\,
	combout => \VGA_unit|VGA_green~22_combout\);

-- Location: LCCOMB_X29_Y21_N22
\VGA_unit|VGA_green~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~23_combout\ = (\VGA_unit|VGA_green~22_combout\) # ((\VGA_unit|Equal2~2_combout\) # (\VGA_unit|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green~22_combout\,
	datac => \VGA_unit|Equal2~2_combout\,
	datad => \VGA_unit|Equal3~2_combout\,
	combout => \VGA_unit|VGA_green~23_combout\);

-- Location: LCFF_X29_Y21_N23
\VGA_unit|VGA_green[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~23_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(8));

-- Location: LCCOMB_X25_Y25_N6
\VGA_unit|VGA_unit|oVGA_G~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~6_combout\ = (\VGA_unit|VGA_green\(8) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green\(8),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_G~6_combout\);

-- Location: LCFF_X25_Y25_N7
\VGA_unit|VGA_unit|oVGA_G[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~6_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(8));

-- Location: LCCOMB_X29_Y21_N0
\VGA_unit|VGA_green~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~25_combout\ = (\VGA_unit|VGA_green~24_combout\ & ((\VGA_unit|VGA_red~4_combout\) # ((\VGA_unit|always0~6_combout\ & \VGA_unit|always0~5_combout\)))) # (!\VGA_unit|VGA_green~24_combout\ & (((\VGA_unit|always0~6_combout\ & 
-- \VGA_unit|always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_green~24_combout\,
	datab => \VGA_unit|VGA_red~4_combout\,
	datac => \VGA_unit|always0~6_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_green~25_combout\);

-- Location: LCCOMB_X29_Y21_N8
\VGA_unit|VGA_green~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_green~26_combout\ = (\VGA_unit|VGA_green~25_combout\) # ((\VGA_unit|Equal2~2_combout\) # (\VGA_unit|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_green~25_combout\,
	datac => \VGA_unit|Equal2~2_combout\,
	datad => \VGA_unit|Equal3~2_combout\,
	combout => \VGA_unit|VGA_green~26_combout\);

-- Location: LCFF_X29_Y21_N9
\VGA_unit|VGA_green[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_green~26_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_green\(9));

-- Location: LCCOMB_X25_Y25_N8
\VGA_unit|VGA_unit|oVGA_G~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_G~7_combout\ = (\VGA_unit|VGA_unit|oVGA_R~1_combout\ & \VGA_unit|VGA_green\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	datac => \VGA_unit|VGA_green\(9),
	combout => \VGA_unit|VGA_unit|oVGA_G~7_combout\);

-- Location: LCFF_X25_Y25_N9
\VGA_unit|VGA_unit|oVGA_G[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_G~7_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_G\(9));

-- Location: LCFF_X35_Y21_N17
\VGA_unit|VGA_unit|oVGA_B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(0));

-- Location: LCFF_X35_Y21_N3
\VGA_unit|VGA_unit|oVGA_B[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \VGA_unit|VGA_unit|oVGA_R~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(1));

-- Location: LCCOMB_X27_Y21_N24
\VGA_unit|VGA_sram_data[1][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[1][8]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(8),
	combout => \VGA_unit|VGA_sram_data[1][8]~feeder_combout\);

-- Location: LCFF_X27_Y21_N25
\VGA_unit|VGA_sram_data[1][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[1][8]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][8]~regout\);

-- Location: LCFF_X28_Y21_N29
\VGA_unit|VGA_sram_data[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(0),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][0]~regout\);

-- Location: LCCOMB_X28_Y21_N28
\VGA_unit|VGA_blue~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~0_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[1][8]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][0]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][8]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[1][8]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][0]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_blue~0_combout\);

-- Location: LCCOMB_X29_Y21_N2
\VGA_unit|VGA_blue~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~1_combout\ = (\VGA_unit|always0~5_combout\ & ((\VGA_unit|always0~6_combout\) # ((\VGA_unit|VGA_red~4_combout\ & \VGA_unit|VGA_blue~0_combout\)))) # (!\VGA_unit|always0~5_combout\ & (\VGA_unit|VGA_red~4_combout\ & 
-- ((\VGA_unit|VGA_blue~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~5_combout\,
	datab => \VGA_unit|VGA_red~4_combout\,
	datac => \VGA_unit|always0~6_combout\,
	datad => \VGA_unit|VGA_blue~0_combout\,
	combout => \VGA_unit|VGA_blue~1_combout\);

-- Location: LCCOMB_X29_Y21_N18
\VGA_unit|VGA_blue~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~2_combout\ = (\VGA_unit|VGA_blue~1_combout\) # ((\VGA_unit|Equal2~2_combout\) # (\VGA_unit|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_blue~1_combout\,
	datac => \VGA_unit|Equal2~2_combout\,
	datad => \VGA_unit|Equal3~2_combout\,
	combout => \VGA_unit|VGA_blue~2_combout\);

-- Location: LCFF_X29_Y21_N19
\VGA_unit|VGA_blue[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(2));

-- Location: LCCOMB_X25_Y25_N2
\VGA_unit|VGA_unit|oVGA_B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~0_combout\ = (\VGA_unit|VGA_unit|oVGA_R~1_combout\ & \VGA_unit|VGA_blue\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	datac => \VGA_unit|VGA_blue\(2),
	combout => \VGA_unit|VGA_unit|oVGA_B~0_combout\);

-- Location: LCFF_X25_Y25_N3
\VGA_unit|VGA_unit|oVGA_B[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~0_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(2));

-- Location: LCCOMB_X25_Y25_N12
\VGA_unit|VGA_unit|oVGA_B~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~1_combout\ = (\VGA_unit|VGA_blue\(3) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue\(3),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~1_combout\);

-- Location: LCFF_X25_Y25_N13
\VGA_unit|VGA_unit|oVGA_B[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~1_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(3));

-- Location: LCCOMB_X25_Y25_N14
\VGA_unit|VGA_unit|oVGA_B~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~2_combout\ = (\VGA_unit|VGA_blue\(4) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue\(4),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~2_combout\);

-- Location: LCFF_X25_Y25_N15
\VGA_unit|VGA_unit|oVGA_B[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~2_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(4));

-- Location: LCCOMB_X27_Y21_N6
\VGA_unit|VGA_sram_data[1][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[1][11]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(11),
	combout => \VGA_unit|VGA_sram_data[1][11]~feeder_combout\);

-- Location: LCFF_X27_Y21_N7
\VGA_unit|VGA_sram_data[1][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[1][11]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][11]~regout\);

-- Location: LCFF_X21_Y17_N9
\VGA_unit|VGA_sram_data[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(3),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][3]~regout\);

-- Location: LCCOMB_X21_Y17_N8
\VGA_unit|VGA_blue~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~9_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[1][11]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][3]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][11]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[1][11]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][3]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_blue~9_combout\);

-- Location: LCCOMB_X32_Y21_N14
\VGA_unit|VGA_blue~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~10_combout\ = (\VGA_unit|always0~5_combout\ & ((\VGA_unit|always0~6_combout\) # ((\VGA_unit|VGA_blue~9_combout\ & \VGA_unit|VGA_red~4_combout\)))) # (!\VGA_unit|always0~5_combout\ & (\VGA_unit|VGA_blue~9_combout\ & 
-- (\VGA_unit|VGA_red~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|always0~5_combout\,
	datab => \VGA_unit|VGA_blue~9_combout\,
	datac => \VGA_unit|VGA_red~4_combout\,
	datad => \VGA_unit|always0~6_combout\,
	combout => \VGA_unit|VGA_blue~10_combout\);

-- Location: LCCOMB_X32_Y21_N8
\VGA_unit|VGA_blue~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~11_combout\ = (\VGA_unit|Equal2~2_combout\) # ((\VGA_unit|Equal3~2_combout\) # (\VGA_unit|VGA_blue~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Equal2~2_combout\,
	datab => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|VGA_blue~10_combout\,
	combout => \VGA_unit|VGA_blue~11_combout\);

-- Location: LCFF_X32_Y21_N9
\VGA_unit|VGA_blue[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~11_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(5));

-- Location: LCCOMB_X31_Y21_N0
\VGA_unit|VGA_unit|oVGA_B~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~3_combout\ = (\VGA_unit|VGA_unit|oVGA_R~1_combout\ & \VGA_unit|VGA_blue\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	datac => \VGA_unit|VGA_blue\(5),
	combout => \VGA_unit|VGA_unit|oVGA_B~3_combout\);

-- Location: LCFF_X31_Y21_N1
\VGA_unit|VGA_unit|oVGA_B[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~3_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(5));

-- Location: LCCOMB_X31_Y21_N26
\VGA_unit|VGA_unit|oVGA_B~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~4_combout\ = (\VGA_unit|VGA_blue\(6) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue\(6),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~4_combout\);

-- Location: LCFF_X31_Y21_N27
\VGA_unit|VGA_unit|oVGA_B[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~4_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(6));

-- Location: LCCOMB_X31_Y21_N4
\VGA_unit|VGA_unit|oVGA_B~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~5_combout\ = (\VGA_unit|VGA_blue\(7) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue\(7),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~5_combout\);

-- Location: LCFF_X31_Y21_N5
\VGA_unit|VGA_unit|oVGA_B[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~5_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(7));

-- Location: LCCOMB_X32_Y21_N30
\VGA_unit|VGA_blue~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~20_combout\ = (\VGA_unit|VGA_blue~19_combout\) # ((\VGA_unit|Equal3~2_combout\) # (\VGA_unit|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_blue~19_combout\,
	datab => \VGA_unit|Equal3~2_combout\,
	datac => \VGA_unit|Equal2~2_combout\,
	combout => \VGA_unit|VGA_blue~20_combout\);

-- Location: LCFF_X32_Y21_N31
\VGA_unit|VGA_blue[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~20_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(8));

-- Location: LCCOMB_X31_Y21_N2
\VGA_unit|VGA_unit|oVGA_B~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~6_combout\ = (\VGA_unit|VGA_blue\(8) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_blue\(8),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~6_combout\);

-- Location: LCFF_X31_Y21_N3
\VGA_unit|VGA_unit|oVGA_B[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~6_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(8));

-- Location: LCCOMB_X27_Y21_N30
\VGA_unit|VGA_sram_data[1][15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_sram_data[1][15]~feeder_combout\ = \SRAM_unit|SRAM_read_data\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SRAM_unit|SRAM_read_data\(15),
	combout => \VGA_unit|VGA_sram_data[1][15]~feeder_combout\);

-- Location: LCFF_X27_Y21_N31
\VGA_unit|VGA_sram_data[1][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_sram_data[1][15]~feeder_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_sram_data[1][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[1][15]~regout\);

-- Location: LCFF_X21_Y17_N19
\VGA_unit|VGA_sram_data[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SRAM_unit|SRAM_read_data\(7),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \VGA_unit|VGA_sram_data[0][8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_sram_data[0][7]~regout\);

-- Location: LCCOMB_X21_Y17_N18
\VGA_unit|VGA_blue~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~21_combout\ = (\VGA_unit|VGA_SRAM_state~17_regout\ & ((\VGA_unit|VGA_SRAM_state~14_regout\ & (\VGA_unit|VGA_sram_data[1][15]~regout\)) # (!\VGA_unit|VGA_SRAM_state~14_regout\ & ((\VGA_unit|VGA_sram_data[0][7]~regout\))))) # 
-- (!\VGA_unit|VGA_SRAM_state~17_regout\ & (\VGA_unit|VGA_sram_data[1][15]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_SRAM_state~17_regout\,
	datab => \VGA_unit|VGA_sram_data[1][15]~regout\,
	datac => \VGA_unit|VGA_sram_data[0][7]~regout\,
	datad => \VGA_unit|VGA_SRAM_state~14_regout\,
	combout => \VGA_unit|VGA_blue~21_combout\);

-- Location: LCCOMB_X32_Y21_N22
\VGA_unit|VGA_blue~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~22_combout\ = (\VGA_unit|VGA_red~4_combout\ & ((\VGA_unit|VGA_blue~21_combout\) # ((\VGA_unit|always0~6_combout\ & \VGA_unit|always0~5_combout\)))) # (!\VGA_unit|VGA_red~4_combout\ & (\VGA_unit|always0~6_combout\ & 
-- ((\VGA_unit|always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|VGA_red~4_combout\,
	datab => \VGA_unit|always0~6_combout\,
	datac => \VGA_unit|VGA_blue~21_combout\,
	datad => \VGA_unit|always0~5_combout\,
	combout => \VGA_unit|VGA_blue~22_combout\);

-- Location: LCCOMB_X32_Y21_N24
\VGA_unit|VGA_blue~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_blue~23_combout\ = (\VGA_unit|VGA_blue~22_combout\) # ((\VGA_unit|Equal2~2_combout\) # (\VGA_unit|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_blue~22_combout\,
	datac => \VGA_unit|Equal2~2_combout\,
	datad => \VGA_unit|Equal3~2_combout\,
	combout => \VGA_unit|VGA_blue~23_combout\);

-- Location: LCFF_X32_Y21_N25
\VGA_unit|VGA_blue[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_blue~23_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_green[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_blue\(9));

-- Location: LCCOMB_X31_Y21_N28
\VGA_unit|VGA_unit|oVGA_B~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|VGA_unit|oVGA_B~7_combout\ = (\VGA_unit|VGA_blue\(9) & \VGA_unit|VGA_unit|oVGA_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_unit|VGA_blue\(9),
	datac => \VGA_unit|VGA_unit|oVGA_R~1_combout\,
	combout => \VGA_unit|VGA_unit|oVGA_B~7_combout\);

-- Location: LCFF_X31_Y21_N29
\VGA_unit|VGA_unit|oVGA_B[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|VGA_unit|oVGA_B~7_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|VGA_unit|counter_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|VGA_unit|oVGA_B\(9));

-- Location: LCCOMB_X46_Y11_N6
\M1_unit|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector23~0_combout\ = (\M1_unit|WideOr4~combout\ & ((\M1_unit|Uaddr\(0)))) # (!\M1_unit|WideOr4~combout\ & (\M1_unit|Yaddr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Yaddr\(0),
	datab => \M1_unit|Uaddr\(0),
	datad => \M1_unit|WideOr4~combout\,
	combout => \M1_unit|Selector23~0_combout\);

-- Location: LCFF_X46_Y11_N7
\M1_unit|SRAM_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector23~0_combout\,
	sdata => \M1_unit|Vaddr\(0),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(0));

-- Location: LCCOMB_X43_Y11_N10
\SRAM_unit|SRAM_ADDRESS_O[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[0]~0_combout\ = (\SRAM_address~0_combout\ & (\VGA_unit|SRAM_address\(0))) # (!\SRAM_address~0_combout\ & ((\M1_unit|SRAM_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(0),
	datab => \SRAM_address~0_combout\,
	datad => \M1_unit|SRAM_address\(0),
	combout => \SRAM_unit|SRAM_ADDRESS_O[0]~0_combout\);

-- Location: LCFF_X43_Y11_N11
\SRAM_unit|SRAM_ADDRESS_O[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[0]~0_combout\,
	sdata => \UART_unit|SRAM_address\(0),
	aclr => \SWITCH_I~combout\(17),
	sload => \SRAM_address~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(0));

-- Location: LCFF_X46_Y11_N17
\M1_unit|Yaddr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Yaddr[1]~17_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Yaddr\(1));

-- Location: LCCOMB_X47_Y11_N6
\M1_unit|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector22~0_combout\ = (\M1_unit|WideOr4~combout\ & (\M1_unit|Uaddr\(1))) # (!\M1_unit|WideOr4~combout\ & ((\M1_unit|Yaddr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|Uaddr\(1),
	datab => \M1_unit|WideOr4~combout\,
	datad => \M1_unit|Yaddr\(1),
	combout => \M1_unit|Selector22~0_combout\);

-- Location: LCFF_X48_Y11_N17
\M1_unit|Vaddr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Vaddr[1]~17_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \M1_unit|state.LI4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|Vaddr\(1));

-- Location: LCFF_X47_Y11_N7
\M1_unit|SRAM_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector22~0_combout\,
	sdata => \M1_unit|Vaddr\(1),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(1));

-- Location: LCCOMB_X43_Y11_N12
\SRAM_unit|SRAM_ADDRESS_O[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[1]~1_combout\ = (\SRAM_address~0_combout\ & (\VGA_unit|SRAM_address\(1))) # (!\SRAM_address~0_combout\ & ((\M1_unit|SRAM_address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(1),
	datab => \SRAM_address~0_combout\,
	datad => \M1_unit|SRAM_address\(1),
	combout => \SRAM_unit|SRAM_ADDRESS_O[1]~1_combout\);

-- Location: LCFF_X43_Y11_N13
\SRAM_unit|SRAM_ADDRESS_O[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[1]~1_combout\,
	sdata => \UART_unit|SRAM_address\(1),
	aclr => \SWITCH_I~combout\(17),
	sload => \SRAM_address~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(1));

-- Location: LCCOMB_X47_Y11_N0
\M1_unit|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \M1_unit|Selector21~0_combout\ = (\M1_unit|WideOr4~combout\ & ((\M1_unit|Uaddr\(2)))) # (!\M1_unit|WideOr4~combout\ & (\M1_unit|Yaddr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|WideOr4~combout\,
	datab => \M1_unit|Yaddr\(2),
	datad => \M1_unit|Uaddr\(2),
	combout => \M1_unit|Selector21~0_combout\);

-- Location: LCFF_X47_Y11_N1
\M1_unit|SRAM_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \M1_unit|Selector21~0_combout\,
	sdata => \M1_unit|Vaddr\(2),
	aclr => \resetn~clkctrl_outclk\,
	sload => \M1_unit|state.LI4~0_combout\,
	ena => \M1_unit|state.IDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \M1_unit|SRAM_address\(2));

-- Location: LCCOMB_X44_Y11_N18
\SRAM_unit|SRAM_ADDRESS_O[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[2]~2_combout\ = (\SRAM_address~0_combout\ & (\VGA_unit|SRAM_address\(2))) # (!\SRAM_address~0_combout\ & ((\M1_unit|SRAM_address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|SRAM_address\(2),
	datab => \M1_unit|SRAM_address\(2),
	datad => \SRAM_address~0_combout\,
	combout => \SRAM_unit|SRAM_ADDRESS_O[2]~2_combout\);

-- Location: LCFF_X44_Y11_N19
\SRAM_unit|SRAM_ADDRESS_O[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[2]~2_combout\,
	sdata => \UART_unit|SRAM_address\(2),
	aclr => \SWITCH_I~combout\(17),
	sload => \SRAM_address~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(2));

-- Location: LCCOMB_X40_Y14_N28
\VGA_unit|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA_unit|Add1~50_combout\ = (\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (\VGA_unit|Add0~2_combout\ & (\VGA_unit|Equal1~1_combout\))) # (!\VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\ & (((\VGA_unit|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_unit|Add0~2_combout\,
	datab => \VGA_unit|VGA_SRAM_state.S_VS_WAIT_NEW_PIXEL_ROW~0_combout\,
	datac => \VGA_unit|Equal1~1_combout\,
	datad => \VGA_unit|Add1~6_combout\,
	combout => \VGA_unit|Add1~50_combout\);

-- Location: LCFF_X40_Y14_N29
\VGA_unit|SRAM_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \VGA_unit|Add1~50_combout\,
	aclr => \resetn~clkctrl_outclk\,
	ena => \VGA_unit|SRAM_address[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA_unit|SRAM_address\(3));

-- Location: LCCOMB_X44_Y11_N4
\SRAM_unit|SRAM_ADDRESS_O[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_ADDRESS_O[3]~3_combout\ = (\SRAM_address~0_combout\ & ((\VGA_unit|SRAM_address\(3)))) # (!\SRAM_address~0_combout\ & (\M1_unit|SRAM_address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_unit|SRAM_address\(3),
	datab => \VGA_unit|SRAM_address\(3),
	datad => \SRAM_address~0_combout\,
	combout => \SRAM_unit|SRAM_ADDRESS_O[3]~3_combout\);

-- Location: LCFF_X44_Y11_N5
\SRAM_unit|SRAM_ADDRESS_O[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_ADDRESS_O[3]~3_combout\,
	sdata => \UART_unit|SRAM_address\(3),
	aclr => \SWITCH_I~combout\(17),
	sload => \SRAM_address~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(3));

-- Location: LCFF_X40_Y8_N11
\SRAM_unit|SRAM_ADDRESS_O[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[4]~3_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(4));

-- Location: LCFF_X43_Y11_N9
\SRAM_unit|SRAM_ADDRESS_O[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[5]~5_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(5));

-- Location: LCFF_X40_Y8_N17
\SRAM_unit|SRAM_ADDRESS_O[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[6]~7_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(6));

-- Location: LCFF_X40_Y8_N5
\SRAM_unit|SRAM_ADDRESS_O[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[7]~9_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(7));

-- Location: LCFF_X43_Y11_N7
\SRAM_unit|SRAM_ADDRESS_O[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[8]~11_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(8));

-- Location: LCFF_X40_Y8_N23
\SRAM_unit|SRAM_ADDRESS_O[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[9]~13_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(9));

-- Location: LCFF_X43_Y8_N19
\SRAM_unit|SRAM_ADDRESS_O[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[10]~15_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(10));

-- Location: LCFF_X43_Y8_N23
\SRAM_unit|SRAM_ADDRESS_O[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[11]~17_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(11));

-- Location: LCFF_X43_Y8_N25
\SRAM_unit|SRAM_ADDRESS_O[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[12]~19_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(12));

-- Location: LCFF_X43_Y8_N13
\SRAM_unit|SRAM_ADDRESS_O[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[13]~21_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(13));

-- Location: LCFF_X43_Y8_N7
\SRAM_unit|SRAM_ADDRESS_O[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[14]~23_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(14));

-- Location: LCFF_X44_Y8_N9
\SRAM_unit|SRAM_ADDRESS_O[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[15]~25_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(15));

-- Location: LCFF_X44_Y8_N3
\SRAM_unit|SRAM_ADDRESS_O[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[16]~27_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(16));

-- Location: LCFF_X43_Y10_N21
\SRAM_unit|SRAM_ADDRESS_O[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_address[17]~29_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_ADDRESS_O\(17));

-- Location: CLKCTRL_G3
\SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SRAM_unit|Clock_100_PLL_inst|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y1_N16
\SRAM_unit|SRAM_LB_N_O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_LB_N_O~0_combout\ = !\CLOCK_50_I~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLOCK_50_I~combout\,
	combout => \SRAM_unit|SRAM_LB_N_O~0_combout\);

-- Location: LCFF_X21_Y1_N17
\SRAM_unit|SRAM_LB_N_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SRAM_unit|Clock_100_PLL_inst|altpll_component|ALT_INV__clk0~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_LB_N_O~0_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_LB_N_O~regout\);

-- Location: LCCOMB_X21_Y1_N18
\SRAM_unit|SRAM_CE_N_O~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SRAM_unit|SRAM_CE_N_O~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \SRAM_unit|SRAM_CE_N_O~feeder_combout\);

-- Location: LCFF_X21_Y1_N19
\SRAM_unit|SRAM_CE_N_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \SRAM_unit|SRAM_CE_N_O~feeder_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SRAM_unit|SRAM_CE_N_O~regout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[1]~I\ : cycloneii_io
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
	padio => ww_PUSH_BUTTON_I(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[2]~I\ : cycloneii_io
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
	padio => ww_PUSH_BUTTON_I(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[3]~I\ : cycloneii_io
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
	padio => ww_PUSH_BUTTON_I(3));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[0]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[1]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[2]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[3]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[4]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[5]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[6]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[7]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[8]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[9]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[10]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[11]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[12]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[13]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[14]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[15]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[16]~I\ : cycloneii_io
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
	padio => ww_SWITCH_I(16));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][0]~I\ : cycloneii_io
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
	datain => \unit0|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][1]~I\ : cycloneii_io
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
	datain => \unit0|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][2]~I\ : cycloneii_io
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
	datain => \unit0|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][3]~I\ : cycloneii_io
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
	datain => \unit0|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][4]~I\ : cycloneii_io
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
	datain => \unit0|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][5]~I\ : cycloneii_io
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
	datain => \unit0|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][6]~I\ : cycloneii_io
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
	datain => \unit0|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][0]~I\ : cycloneii_io
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
	datain => \unit1|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][1]~I\ : cycloneii_io
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
	datain => \unit1|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][2]~I\ : cycloneii_io
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
	datain => \unit1|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][3]~I\ : cycloneii_io
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
	datain => \unit1|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][4]~I\ : cycloneii_io
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
	datain => \unit1|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][5]~I\ : cycloneii_io
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
	datain => \unit1|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][6]~I\ : cycloneii_io
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
	datain => \unit1|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][0]~I\ : cycloneii_io
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
	datain => \unit2|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][1]~I\ : cycloneii_io
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
	datain => \unit2|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][2]~I\ : cycloneii_io
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
	datain => \unit2|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][3]~I\ : cycloneii_io
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
	datain => \unit2|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][4]~I\ : cycloneii_io
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
	datain => \unit2|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][5]~I\ : cycloneii_io
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
	datain => \unit2|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][6]~I\ : cycloneii_io
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
	datain => \unit2|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][0]~I\ : cycloneii_io
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
	datain => \unit3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][1]~I\ : cycloneii_io
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
	padio => ww_SEVEN_SEGMENT_N_O(3)(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][2]~I\ : cycloneii_io
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
	datain => \unit3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][3]~I\ : cycloneii_io
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
	datain => \unit3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][4]~I\ : cycloneii_io
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
	datain => \SRAM_address[16]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][5]~I\ : cycloneii_io
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
	datain => \unit3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][6]~I\ : cycloneii_io
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
	datain => \ALT_INV_SRAM_address[17]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][0]~I\ : cycloneii_io
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
	datain => \unit4|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][1]~I\ : cycloneii_io
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
	datain => \unit4|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][2]~I\ : cycloneii_io
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
	datain => \unit4|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][3]~I\ : cycloneii_io
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
	datain => \unit4|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][4]~I\ : cycloneii_io
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
	datain => \unit4|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][5]~I\ : cycloneii_io
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
	datain => \unit4|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][6]~I\ : cycloneii_io
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
	datain => \unit4|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][0]~I\ : cycloneii_io
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
	datain => \unit5|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][1]~I\ : cycloneii_io
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
	datain => \unit5|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][2]~I\ : cycloneii_io
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
	datain => \unit5|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][3]~I\ : cycloneii_io
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
	datain => \unit5|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][4]~I\ : cycloneii_io
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
	datain => \unit5|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][5]~I\ : cycloneii_io
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
	datain => \unit5|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][6]~I\ : cycloneii_io
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
	datain => \unit5|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][0]~I\ : cycloneii_io
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
	datain => \unit6|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][1]~I\ : cycloneii_io
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
	datain => \unit6|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][2]~I\ : cycloneii_io
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
	datain => \unit6|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][3]~I\ : cycloneii_io
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
	datain => \unit6|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][4]~I\ : cycloneii_io
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
	datain => \unit6|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][5]~I\ : cycloneii_io
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
	datain => \unit6|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][6]~I\ : cycloneii_io
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
	datain => \unit6|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][0]~I\ : cycloneii_io
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
	datain => \unit7|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][1]~I\ : cycloneii_io
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
	datain => \unit7|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][2]~I\ : cycloneii_io
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
	datain => \unit7|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][3]~I\ : cycloneii_io
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
	datain => \unit7|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][4]~I\ : cycloneii_io
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
	datain => \unit7|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][5]~I\ : cycloneii_io
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
	datain => \unit7|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][6]~I\ : cycloneii_io
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
	datain => \unit7|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(6));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[0]~I\ : cycloneii_io
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
	datain => top_state(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[1]~I\ : cycloneii_io
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
	datain => top_state(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[2]~I\ : cycloneii_io
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
	datain => top_state(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[3]~I\ : cycloneii_io
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
	datain => \UART_unit|UART_RX|Frame_error\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[4]~I\ : cycloneii_io
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
	datain => \UART_unit|UART_RX|Frame_error\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[5]~I\ : cycloneii_io
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
	datain => \UART_unit|UART_RX|Frame_error\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[6]~I\ : cycloneii_io
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
	datain => \UART_unit|UART_RX|Frame_error\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[7]~I\ : cycloneii_io
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
	datain => \ALT_INV_SRAM_we_n~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(7));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[8]~I\ : cycloneii_io
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
	datain => \ALT_INV_VGA_enable~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(8));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_CLOCK_O~I\ : cycloneii_io
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
	datain => \CLOCK_50_I~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_CLOCK_O);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HSYNC_O~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_H_SYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HSYNC_O);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VSYNC_O~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_V_SYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VSYNC_O);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLANK_O~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_BLANK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLANK_O);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_SYNC_O~I\ : cycloneii_io
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
	padio => ww_VGA_SYNC_O);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[0]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[1]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_R\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[2]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_R\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(2));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[3]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_R\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(3));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[4]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_R\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[5]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_R\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(5));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[6]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_R\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[7]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_R\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[8]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_R\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(8));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_RED_O[9]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_R\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_RED_O(9));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[0]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_G\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[1]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_G\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[2]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_G\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[3]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_G\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[4]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_G\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(4));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[5]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_G\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(5));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[6]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_G\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[7]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_G\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(7));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[8]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_G\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(8));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_GREEN_O[9]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_G\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_GREEN_O(9));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[0]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[1]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_B\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[2]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_B\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[3]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_B\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[4]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_B\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[5]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_B\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[6]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_B\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[7]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_B\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(7));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[8]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_B\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(8));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLUE_O[9]~I\ : cycloneii_io
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
	datain => \VGA_unit|VGA_unit|oVGA_B\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLUE_O(9));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[0]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(0));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[1]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(1));

-- Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[2]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(2));

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[3]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(3));

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[4]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(4));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[5]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(5));

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[6]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(6));

-- Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[7]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(7));

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[8]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(8));

-- Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[9]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(9));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[10]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(10));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[11]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(11));

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[12]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(12));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[13]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(13));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[14]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(14));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[15]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(15));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[16]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(16));

-- Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDRESS_O[17]~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_ADDRESS_O\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDRESS_O(17));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_UB_N_O~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_LB_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_UB_N_O);

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_LB_N_O~I\ : cycloneii_io
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
	datain => \SRAM_unit|SRAM_LB_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_LB_N_O);

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_WE_N_O~I\ : cycloneii_io
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
	datain => \SRAM_unit|ALT_INV_SRAM_WE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_WE_N_O);

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_CE_N_O~I\ : cycloneii_io
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
	datain => \SRAM_unit|ALT_INV_SRAM_CE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_CE_N_O);

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_OE_N_O~I\ : cycloneii_io
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
	datain => \SRAM_unit|ALT_INV_SRAM_CE_N_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_OE_N_O);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UART_TX_O~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UART_TX_O);
END structure;


