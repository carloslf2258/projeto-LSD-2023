-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/17/2023 20:20:22"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FSM IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	time_extra : IN std_logic_vector(7 DOWNTO 0);
	time_cozer : IN std_logic_vector(7 DOWNTO 0);
	time_levedar : IN std_logic_vector(7 DOWNTO 0);
	time_amassar : IN std_logic_vector(7 DOWNTO 0);
	start_stop : IN std_logic;
	timer_exp : IN std_logic;
	LEDR : OUT std_logic;
	display_select : OUT std_logic_vector(7 DOWNTO 0);
	LEDG : OUT std_logic_vector(2 DOWNTO 0);
	NewTime : OUT std_logic;
	TimeValue : OUT std_logic_vector(7 DOWNTO 0);
	timer_enable : OUT std_logic
	);
END FSM;

-- Design Ports Information
-- time_extra[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_extra[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_extra[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_extra[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_extra[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_extra[5]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_extra[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_extra[7]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_select[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_select[1]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_select[2]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_select[3]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_select[4]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_select[5]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_select[6]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_select[7]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NewTime	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TimeValue[0]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TimeValue[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TimeValue[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TimeValue[3]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TimeValue[4]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TimeValue[5]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TimeValue[6]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TimeValue[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_enable	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_cozer[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_levedar[0]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_amassar[0]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timer_exp	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_stop	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_levedar[1]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_amassar[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_cozer[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_cozer[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_levedar[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_amassar[2]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_cozer[3]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_levedar[3]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_amassar[3]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_cozer[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_levedar[4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_amassar[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_cozer[5]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_levedar[5]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_amassar[5]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_cozer[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_levedar[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_amassar[6]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_cozer[7]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_levedar[7]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- time_amassar[7]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_time_extra : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_time_cozer : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_time_levedar : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_time_amassar : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_start_stop : std_logic;
SIGNAL ww_timer_exp : std_logic;
SIGNAL ww_LEDR : std_logic;
SIGNAL ww_display_select : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_NewTime : std_logic;
SIGNAL ww_TimeValue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_timer_enable : std_logic;
SIGNAL \LEDG~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.IDLE~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \time_extra[0]~input_o\ : std_logic;
SIGNAL \time_extra[1]~input_o\ : std_logic;
SIGNAL \time_extra[2]~input_o\ : std_logic;
SIGNAL \time_extra[3]~input_o\ : std_logic;
SIGNAL \time_extra[4]~input_o\ : std_logic;
SIGNAL \time_extra[5]~input_o\ : std_logic;
SIGNAL \time_extra[6]~input_o\ : std_logic;
SIGNAL \time_extra[7]~input_o\ : std_logic;
SIGNAL \LEDR~output_o\ : std_logic;
SIGNAL \display_select[0]~output_o\ : std_logic;
SIGNAL \display_select[1]~output_o\ : std_logic;
SIGNAL \display_select[2]~output_o\ : std_logic;
SIGNAL \display_select[3]~output_o\ : std_logic;
SIGNAL \display_select[4]~output_o\ : std_logic;
SIGNAL \display_select[5]~output_o\ : std_logic;
SIGNAL \display_select[6]~output_o\ : std_logic;
SIGNAL \display_select[7]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \NewTime~output_o\ : std_logic;
SIGNAL \TimeValue[0]~output_o\ : std_logic;
SIGNAL \TimeValue[1]~output_o\ : std_logic;
SIGNAL \TimeValue[2]~output_o\ : std_logic;
SIGNAL \TimeValue[3]~output_o\ : std_logic;
SIGNAL \TimeValue[4]~output_o\ : std_logic;
SIGNAL \TimeValue[5]~output_o\ : std_logic;
SIGNAL \TimeValue[6]~output_o\ : std_logic;
SIGNAL \TimeValue[7]~output_o\ : std_logic;
SIGNAL \timer_enable~output_o\ : std_logic;
SIGNAL \time_amassar[0]~input_o\ : std_logic;
SIGNAL \time_levedar[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \time_cozer[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \timer_exp~input_o\ : std_logic;
SIGNAL \start_stop~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.AMASSAR~q\ : std_logic;
SIGNAL \state.LEVEDAR~q\ : std_logic;
SIGNAL \state.COZER~q\ : std_logic;
SIGNAL \state.EXTRA~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.IDLE~feeder_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \state.IDLE~clkctrl_outclk\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \display_time~1_combout\ : std_logic;
SIGNAL \time_cozer[1]~input_o\ : std_logic;
SIGNAL \time_levedar[1]~input_o\ : std_logic;
SIGNAL \time_amassar[1]~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \display_time~2_combout\ : std_logic;
SIGNAL \time_cozer[2]~input_o\ : std_logic;
SIGNAL \time_amassar[2]~input_o\ : std_logic;
SIGNAL \time_levedar[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \display_time~3_combout\ : std_logic;
SIGNAL \time_cozer[3]~input_o\ : std_logic;
SIGNAL \time_amassar[3]~input_o\ : std_logic;
SIGNAL \time_levedar[3]~input_o\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \display_time~4_combout\ : std_logic;
SIGNAL \time_cozer[4]~input_o\ : std_logic;
SIGNAL \time_amassar[4]~input_o\ : std_logic;
SIGNAL \time_levedar[4]~input_o\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \display_time~5_combout\ : std_logic;
SIGNAL \time_cozer[5]~input_o\ : std_logic;
SIGNAL \time_amassar[5]~input_o\ : std_logic;
SIGNAL \time_levedar[5]~input_o\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \display_time~6_combout\ : std_logic;
SIGNAL \time_cozer[6]~input_o\ : std_logic;
SIGNAL \time_levedar[6]~input_o\ : std_logic;
SIGNAL \time_amassar[6]~input_o\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \display_time~7_combout\ : std_logic;
SIGNAL \time_amassar[7]~input_o\ : std_logic;
SIGNAL \time_levedar[7]~input_o\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \time_cozer[7]~input_o\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \display_time~8_combout\ : std_logic;
SIGNAL \LEDG~0_combout\ : std_logic;
SIGNAL \LEDG~0clkctrl_outclk\ : std_logic;
SIGNAL \LEDG[0]$latch~combout\ : std_logic;
SIGNAL \LEDG[1]$latch~combout\ : std_logic;
SIGNAL \LEDG~1_combout\ : std_logic;
SIGNAL \LEDG[2]$latch~combout\ : std_logic;
SIGNAL \TimeValue[0]$latch~combout\ : std_logic;
SIGNAL \TimeValue[1]$latch~combout\ : std_logic;
SIGNAL \TimeValue[2]$latch~combout\ : std_logic;
SIGNAL \TimeValue[3]$latch~combout\ : std_logic;
SIGNAL \TimeValue[4]$latch~combout\ : std_logic;
SIGNAL \TimeValue[5]$latch~combout\ : std_logic;
SIGNAL \TimeValue[6]$latch~combout\ : std_logic;
SIGNAL \TimeValue[7]$latch~combout\ : std_logic;
SIGNAL counter : std_logic_vector(7 DOWNTO 0);
SIGNAL total_time : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_time_extra <= time_extra;
ww_time_cozer <= time_cozer;
ww_time_levedar <= time_levedar;
ww_time_amassar <= time_amassar;
ww_start_stop <= start_stop;
ww_timer_exp <= timer_exp;
LEDR <= ww_LEDR;
display_select <= ww_display_select;
LEDG <= ww_LEDG;
NewTime <= ww_NewTime;
TimeValue <= ww_TimeValue;
timer_enable <= ww_timer_enable;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\LEDG~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \LEDG~0_combout\);

\state.IDLE~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \state.IDLE~q\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y10_N23
\LEDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDR~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\display_select[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_time~1_combout\,
	devoe => ww_devoe,
	o => \display_select[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\display_select[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_time~2_combout\,
	devoe => ww_devoe,
	o => \display_select[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\display_select[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_time~3_combout\,
	devoe => ww_devoe,
	o => \display_select[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\display_select[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_time~4_combout\,
	devoe => ww_devoe,
	o => \display_select[3]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\display_select[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_time~5_combout\,
	devoe => ww_devoe,
	o => \display_select[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\display_select[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_time~6_combout\,
	devoe => ww_devoe,
	o => \display_select[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\display_select[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_time~7_combout\,
	devoe => ww_devoe,
	o => \display_select[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\display_select[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_time~8_combout\,
	devoe => ww_devoe,
	o => \display_select[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[0]$latch~combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[1]$latch~combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[2]$latch~combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\NewTime~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \NewTime~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\TimeValue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeValue[0]$latch~combout\,
	devoe => ww_devoe,
	o => \TimeValue[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\TimeValue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeValue[1]$latch~combout\,
	devoe => ww_devoe,
	o => \TimeValue[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\TimeValue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeValue[2]$latch~combout\,
	devoe => ww_devoe,
	o => \TimeValue[2]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\TimeValue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeValue[3]$latch~combout\,
	devoe => ww_devoe,
	o => \TimeValue[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\TimeValue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeValue[4]$latch~combout\,
	devoe => ww_devoe,
	o => \TimeValue[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\TimeValue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeValue[5]$latch~combout\,
	devoe => ww_devoe,
	o => \TimeValue[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\TimeValue[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeValue[6]$latch~combout\,
	devoe => ww_devoe,
	o => \TimeValue[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\TimeValue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TimeValue[7]$latch~combout\,
	devoe => ww_devoe,
	o => \TimeValue[7]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\timer_enable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \timer_enable~output_o\);

-- Location: IOIBUF_X72_Y0_N8
\time_amassar[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_amassar(0),
	o => \time_amassar[0]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\time_levedar[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_levedar(0),
	o => \time_levedar[0]~input_o\);

-- Location: LCCOMB_X53_Y4_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\time_amassar[0]~input_o\ & (\time_levedar[0]~input_o\ $ (VCC))) # (!\time_amassar[0]~input_o\ & (\time_levedar[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\time_amassar[0]~input_o\ & \time_levedar[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_amassar[0]~input_o\,
	datab => \time_levedar[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X56_Y0_N1
\time_cozer[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_cozer(0),
	o => \time_cozer[0]~input_o\);

-- Location: LCCOMB_X53_Y4_N16
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add0~0_combout\ & (\time_cozer[0]~input_o\ $ (VCC))) # (!\Add0~0_combout\ & (\time_cozer[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\Add0~0_combout\ & \time_cozer[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \time_cozer[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X56_Y0_N8
\timer_exp~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timer_exp,
	o => \timer_exp~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\start_stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_stop,
	o => \start_stop~input_o\);

-- Location: LCCOMB_X56_Y4_N2
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.IDLE~q\ & (((!\timer_exp~input_o\ & \state.AMASSAR~q\)))) # (!\state.IDLE~q\ & ((\start_stop~input_o\) # ((!\timer_exp~input_o\ & \state.AMASSAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \start_stop~input_o\,
	datac => \timer_exp~input_o\,
	datad => \state.AMASSAR~q\,
	combout => \Selector1~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G1
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X56_Y4_N25
\state.AMASSAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.AMASSAR~q\);

-- Location: FF_X55_Y4_N31
\state.LEVEDAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.AMASSAR~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \timer_exp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.LEVEDAR~q\);

-- Location: FF_X55_Y4_N5
\state.COZER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.LEVEDAR~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \timer_exp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.COZER~q\);

-- Location: FF_X55_Y4_N29
\state.EXTRA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \state.COZER~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \timer_exp~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.EXTRA~q\);

-- Location: LCCOMB_X56_Y4_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\timer_exp~input_o\ & (!\state.EXTRA~q\ & ((\start_stop~input_o\) # (\state.IDLE~q\)))) # (!\timer_exp~input_o\ & ((\start_stop~input_o\) # ((\state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_exp~input_o\,
	datab => \start_stop~input_o\,
	datac => \state.IDLE~q\,
	datad => \state.EXTRA~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X56_Y4_N0
\state.IDLE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.IDLE~feeder_combout\ = \Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	combout => \state.IDLE~feeder_combout\);

-- Location: FF_X56_Y4_N1
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.IDLE~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: CLKCTRL_G17
\state.IDLE~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.IDLE~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.IDLE~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y4_N10
\total_time[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- total_time(0) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((total_time(0)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => total_time(0),
	combout => total_time(0));

-- Location: LCCOMB_X56_Y4_N4
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.LEVEDAR~q\ & (\time_levedar[0]~input_o\)) # (!\state.LEVEDAR~q\ & ((\time_amassar[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \time_levedar[0]~input_o\,
	datac => \time_amassar[0]~input_o\,
	datad => \state.LEVEDAR~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X56_Y4_N6
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (!\state.EXTRA~q\ & ((\state.COZER~q\ & (\time_cozer[0]~input_o\)) # (!\state.COZER~q\ & ((\Selector5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_cozer[0]~input_o\,
	datab => \state.COZER~q\,
	datac => \Selector5~0_combout\,
	datad => \state.EXTRA~q\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X56_Y4_N12
\counter[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(0) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((\Selector5~1_combout\))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => \state.IDLE~clkctrl_outclk\,
	datad => \Selector5~1_combout\,
	combout => counter(0));

-- Location: LCCOMB_X52_Y4_N28
\display_time~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_time~1_combout\ = (\state.IDLE~q\ & ((counter(0)))) # (!\state.IDLE~q\ & (total_time(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => total_time(0),
	datac => counter(0),
	datad => \state.IDLE~q\,
	combout => \display_time~1_combout\);

-- Location: IOIBUF_X65_Y0_N8
\time_cozer[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_cozer(1),
	o => \time_cozer[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\time_levedar[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_levedar(1),
	o => \time_levedar[1]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\time_amassar[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_amassar(1),
	o => \time_amassar[1]~input_o\);

-- Location: LCCOMB_X55_Y4_N16
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\state.COZER~q\ & ((\state.LEVEDAR~q\ & (\time_levedar[1]~input_o\)) # (!\state.LEVEDAR~q\ & ((\time_amassar[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_levedar[1]~input_o\,
	datab => \state.COZER~q\,
	datac => \state.LEVEDAR~q\,
	datad => \time_amassar[1]~input_o\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X56_Y4_N20
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((\state.EXTRA~q\) # ((\time_cozer[1]~input_o\ & \state.COZER~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_cozer[1]~input_o\,
	datab => \state.COZER~q\,
	datac => \Selector7~0_combout\,
	datad => \state.EXTRA~q\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X56_Y4_N16
\counter[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(1) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((\Selector7~1_combout\))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datac => \state.IDLE~clkctrl_outclk\,
	datad => \Selector7~1_combout\,
	combout => counter(1));

-- Location: LCCOMB_X53_Y4_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\time_amassar[1]~input_o\ & ((\time_levedar[1]~input_o\ & (\Add0~1\ & VCC)) # (!\time_levedar[1]~input_o\ & (!\Add0~1\)))) # (!\time_amassar[1]~input_o\ & ((\time_levedar[1]~input_o\ & (!\Add0~1\)) # (!\time_levedar[1]~input_o\ & 
-- ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\time_amassar[1]~input_o\ & (!\time_levedar[1]~input_o\ & !\Add0~1\)) # (!\time_amassar[1]~input_o\ & ((!\Add0~1\) # (!\time_levedar[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_amassar[1]~input_o\,
	datab => \time_levedar[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X53_Y4_N18
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\time_cozer[1]~input_o\ & ((\Add0~2_combout\ & (\Add1~1\ & VCC)) # (!\Add0~2_combout\ & (!\Add1~1\)))) # (!\time_cozer[1]~input_o\ & ((\Add0~2_combout\ & (!\Add1~1\)) # (!\Add0~2_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\time_cozer[1]~input_o\ & (!\Add0~2_combout\ & !\Add1~1\)) # (!\time_cozer[1]~input_o\ & ((!\Add1~1\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_cozer[1]~input_o\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X56_Y4_N28
\total_time[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- total_time(1) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((total_time(1)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => total_time(1),
	combout => total_time(1));

-- Location: LCCOMB_X56_Y4_N24
\display_time~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_time~2_combout\ = (\state.IDLE~q\ & (counter(1))) # (!\state.IDLE~q\ & ((total_time(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => counter(1),
	datad => total_time(1),
	combout => \display_time~2_combout\);

-- Location: IOIBUF_X45_Y0_N15
\time_cozer[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_cozer(2),
	o => \time_cozer[2]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\time_amassar[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_amassar(2),
	o => \time_amassar[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\time_levedar[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_levedar(2),
	o => \time_levedar[2]~input_o\);

-- Location: LCCOMB_X53_Y4_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\time_amassar[2]~input_o\ $ (\time_levedar[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\time_amassar[2]~input_o\ & ((\time_levedar[2]~input_o\) # (!\Add0~3\))) # (!\time_amassar[2]~input_o\ & (\time_levedar[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_amassar[2]~input_o\,
	datab => \time_levedar[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X53_Y4_N20
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\time_cozer[2]~input_o\ $ (\Add0~4_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\time_cozer[2]~input_o\ & ((\Add0~4_combout\) # (!\Add1~3\))) # (!\time_cozer[2]~input_o\ & (\Add0~4_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_cozer[2]~input_o\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X52_Y4_N20
\total_time[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- total_time(2) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((total_time(2)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => total_time(2),
	combout => total_time(2));

-- Location: LCCOMB_X54_Y4_N18
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.LEVEDAR~q\ & (\time_levedar[2]~input_o\)) # (!\state.LEVEDAR~q\ & ((\time_amassar[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_levedar[2]~input_o\,
	datab => \time_amassar[2]~input_o\,
	datad => \state.LEVEDAR~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X54_Y4_N12
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (!\state.EXTRA~q\ & ((\state.COZER~q\ & ((\time_cozer[2]~input_o\))) # (!\state.COZER~q\ & (\Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COZER~q\,
	datab => \Selector8~0_combout\,
	datac => \time_cozer[2]~input_o\,
	datad => \state.EXTRA~q\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X54_Y4_N6
\counter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(2) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((\Selector8~1_combout\))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datac => \state.IDLE~clkctrl_outclk\,
	datad => \Selector8~1_combout\,
	combout => counter(2));

-- Location: LCCOMB_X52_Y4_N26
\display_time~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_time~3_combout\ = (\state.IDLE~q\ & ((counter(2)))) # (!\state.IDLE~q\ & (total_time(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => total_time(2),
	datac => counter(2),
	datad => \state.IDLE~q\,
	combout => \display_time~3_combout\);

-- Location: IOIBUF_X42_Y0_N15
\time_cozer[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_cozer(3),
	o => \time_cozer[3]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\time_amassar[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_amassar(3),
	o => \time_amassar[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\time_levedar[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_levedar(3),
	o => \time_levedar[3]~input_o\);

-- Location: LCCOMB_X53_Y4_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\time_amassar[3]~input_o\ & ((\time_levedar[3]~input_o\ & (\Add0~5\ & VCC)) # (!\time_levedar[3]~input_o\ & (!\Add0~5\)))) # (!\time_amassar[3]~input_o\ & ((\time_levedar[3]~input_o\ & (!\Add0~5\)) # (!\time_levedar[3]~input_o\ & 
-- ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\time_amassar[3]~input_o\ & (!\time_levedar[3]~input_o\ & !\Add0~5\)) # (!\time_amassar[3]~input_o\ & ((!\Add0~5\) # (!\time_levedar[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_amassar[3]~input_o\,
	datab => \time_levedar[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X53_Y4_N22
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\time_cozer[3]~input_o\ & ((\Add0~6_combout\ & (\Add1~5\ & VCC)) # (!\Add0~6_combout\ & (!\Add1~5\)))) # (!\time_cozer[3]~input_o\ & ((\Add0~6_combout\ & (!\Add1~5\)) # (!\Add0~6_combout\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\time_cozer[3]~input_o\ & (!\Add0~6_combout\ & !\Add1~5\)) # (!\time_cozer[3]~input_o\ & ((!\Add1~5\) # (!\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_cozer[3]~input_o\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X54_Y4_N10
\total_time[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- total_time(3) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((total_time(3)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => total_time(3),
	combout => total_time(3));

-- Location: LCCOMB_X54_Y4_N26
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.LEVEDAR~q\ & ((\time_levedar[3]~input_o\))) # (!\state.LEVEDAR~q\ & (\time_amassar[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_amassar[3]~input_o\,
	datac => \time_levedar[3]~input_o\,
	datad => \state.LEVEDAR~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X54_Y4_N20
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (!\state.EXTRA~q\ & ((\state.COZER~q\ & (\time_cozer[3]~input_o\)) # (!\state.COZER~q\ & ((\Selector9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COZER~q\,
	datab => \time_cozer[3]~input_o\,
	datac => \Selector9~0_combout\,
	datad => \state.EXTRA~q\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X54_Y4_N0
\counter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(3) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((\Selector9~1_combout\))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datac => \state.IDLE~clkctrl_outclk\,
	datad => \Selector9~1_combout\,
	combout => counter(3));

-- Location: LCCOMB_X54_Y4_N28
\display_time~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_time~4_combout\ = (\state.IDLE~q\ & ((counter(3)))) # (!\state.IDLE~q\ & (total_time(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => total_time(3),
	datab => \state.IDLE~q\,
	datac => counter(3),
	combout => \display_time~4_combout\);

-- Location: IOIBUF_X52_Y0_N15
\time_cozer[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_cozer(4),
	o => \time_cozer[4]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\time_amassar[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_amassar(4),
	o => \time_amassar[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\time_levedar[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_levedar(4),
	o => \time_levedar[4]~input_o\);

-- Location: LCCOMB_X53_Y4_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\time_amassar[4]~input_o\ $ (\time_levedar[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\time_amassar[4]~input_o\ & ((\time_levedar[4]~input_o\) # (!\Add0~7\))) # (!\time_amassar[4]~input_o\ & (\time_levedar[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_amassar[4]~input_o\,
	datab => \time_levedar[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X53_Y4_N24
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\time_cozer[4]~input_o\ $ (\Add0~8_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\time_cozer[4]~input_o\ & ((\Add0~8_combout\) # (!\Add1~7\))) # (!\time_cozer[4]~input_o\ & (\Add0~8_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_cozer[4]~input_o\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X56_Y4_N8
\total_time[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- total_time(4) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((total_time(4)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => total_time(4),
	datac => \state.IDLE~clkctrl_outclk\,
	combout => total_time(4));

-- Location: LCCOMB_X55_Y4_N10
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.LEVEDAR~q\ & (\time_levedar[4]~input_o\)) # (!\state.LEVEDAR~q\ & ((\time_amassar[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_levedar[4]~input_o\,
	datab => \time_amassar[4]~input_o\,
	datac => \state.LEVEDAR~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X55_Y4_N12
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (!\state.EXTRA~q\ & ((\state.COZER~q\ & ((\time_cozer[4]~input_o\))) # (!\state.COZER~q\ & (\Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \time_cozer[4]~input_o\,
	datac => \state.COZER~q\,
	datad => \state.EXTRA~q\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X55_Y4_N24
\counter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(4) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((\Selector10~1_combout\))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datac => \state.IDLE~clkctrl_outclk\,
	datad => \Selector10~1_combout\,
	combout => counter(4));

-- Location: LCCOMB_X56_Y4_N22
\display_time~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_time~5_combout\ = (\state.IDLE~q\ & ((counter(4)))) # (!\state.IDLE~q\ & (total_time(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => total_time(4),
	datad => counter(4),
	combout => \display_time~5_combout\);

-- Location: IOIBUF_X49_Y0_N15
\time_cozer[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_cozer(5),
	o => \time_cozer[5]~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\time_amassar[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_amassar(5),
	o => \time_amassar[5]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\time_levedar[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_levedar(5),
	o => \time_levedar[5]~input_o\);

-- Location: LCCOMB_X55_Y4_N30
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.LEVEDAR~q\ & ((\time_levedar[5]~input_o\))) # (!\state.LEVEDAR~q\ & (\time_amassar[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_amassar[5]~input_o\,
	datab => \time_levedar[5]~input_o\,
	datac => \state.LEVEDAR~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X55_Y4_N18
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (!\state.EXTRA~q\ & ((\state.COZER~q\ & (\time_cozer[5]~input_o\)) # (!\state.COZER~q\ & ((\Selector11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_cozer[5]~input_o\,
	datab => \Selector11~0_combout\,
	datac => \state.COZER~q\,
	datad => \state.EXTRA~q\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X55_Y4_N20
\counter[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(5) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((\Selector11~1_combout\))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datac => \state.IDLE~clkctrl_outclk\,
	datad => \Selector11~1_combout\,
	combout => counter(5));

-- Location: LCCOMB_X53_Y4_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\time_amassar[5]~input_o\ & ((\time_levedar[5]~input_o\ & (\Add0~9\ & VCC)) # (!\time_levedar[5]~input_o\ & (!\Add0~9\)))) # (!\time_amassar[5]~input_o\ & ((\time_levedar[5]~input_o\ & (!\Add0~9\)) # (!\time_levedar[5]~input_o\ & 
-- ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\time_amassar[5]~input_o\ & (!\time_levedar[5]~input_o\ & !\Add0~9\)) # (!\time_amassar[5]~input_o\ & ((!\Add0~9\) # (!\time_levedar[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_amassar[5]~input_o\,
	datab => \time_levedar[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X53_Y4_N26
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~10_combout\ & ((\time_cozer[5]~input_o\ & (\Add1~9\ & VCC)) # (!\time_cozer[5]~input_o\ & (!\Add1~9\)))) # (!\Add0~10_combout\ & ((\time_cozer[5]~input_o\ & (!\Add1~9\)) # (!\time_cozer[5]~input_o\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\Add0~10_combout\ & (!\time_cozer[5]~input_o\ & !\Add1~9\)) # (!\Add0~10_combout\ & ((!\Add1~9\) # (!\time_cozer[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \time_cozer[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X54_Y4_N24
\total_time[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- total_time(5) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((total_time(5)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => total_time(5),
	combout => total_time(5));

-- Location: LCCOMB_X55_Y4_N4
\display_time~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_time~6_combout\ = (\state.IDLE~q\ & (counter(5))) # (!\state.IDLE~q\ & ((total_time(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => total_time(5),
	datad => \state.IDLE~q\,
	combout => \display_time~6_combout\);

-- Location: IOIBUF_X54_Y0_N22
\time_cozer[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_cozer(6),
	o => \time_cozer[6]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\time_levedar[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_levedar(6),
	o => \time_levedar[6]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\time_amassar[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_amassar(6),
	o => \time_amassar[6]~input_o\);

-- Location: LCCOMB_X54_Y4_N30
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.LEVEDAR~q\ & (\time_levedar[6]~input_o\)) # (!\state.LEVEDAR~q\ & ((\time_amassar[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_levedar[6]~input_o\,
	datac => \time_amassar[6]~input_o\,
	datad => \state.LEVEDAR~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X54_Y4_N16
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (!\state.EXTRA~q\ & ((\state.COZER~q\ & (\time_cozer[6]~input_o\)) # (!\state.COZER~q\ & ((\Selector12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COZER~q\,
	datab => \time_cozer[6]~input_o\,
	datac => \Selector12~0_combout\,
	datad => \state.EXTRA~q\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X54_Y4_N2
\counter[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(6) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((\Selector12~1_combout\))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datac => \state.IDLE~clkctrl_outclk\,
	datad => \Selector12~1_combout\,
	combout => counter(6));

-- Location: LCCOMB_X53_Y4_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\time_amassar[6]~input_o\ $ (\time_levedar[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\time_amassar[6]~input_o\ & ((\time_levedar[6]~input_o\) # (!\Add0~11\))) # (!\time_amassar[6]~input_o\ & (\time_levedar[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_amassar[6]~input_o\,
	datab => \time_levedar[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X53_Y4_N28
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Add0~12_combout\ $ (\time_cozer[6]~input_o\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Add0~12_combout\ & ((\time_cozer[6]~input_o\) # (!\Add1~11\))) # (!\Add0~12_combout\ & (\time_cozer[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \time_cozer[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X54_Y4_N4
\total_time[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- total_time(6) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((total_time(6)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datac => total_time(6),
	datad => \state.IDLE~clkctrl_outclk\,
	combout => total_time(6));

-- Location: LCCOMB_X55_Y4_N28
\display_time~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_time~7_combout\ = (\state.IDLE~q\ & (counter(6))) # (!\state.IDLE~q\ & ((total_time(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => total_time(6),
	datad => \state.IDLE~q\,
	combout => \display_time~7_combout\);

-- Location: IOIBUF_X56_Y0_N22
\time_amassar[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_amassar(7),
	o => \time_amassar[7]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\time_levedar[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_levedar(7),
	o => \time_levedar[7]~input_o\);

-- Location: LCCOMB_X53_Y4_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \time_amassar[7]~input_o\ $ (\time_levedar[7]~input_o\ $ (\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \time_amassar[7]~input_o\,
	datab => \time_levedar[7]~input_o\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: IOIBUF_X60_Y0_N8
\time_cozer[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_cozer(7),
	o => \time_cozer[7]~input_o\);

-- Location: LCCOMB_X53_Y4_N30
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add0~14_combout\ $ (\Add1~13\ $ (\time_cozer[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \time_cozer[7]~input_o\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X56_Y4_N10
\total_time[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- total_time(7) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((total_time(7)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => total_time(7),
	combout => total_time(7));

-- Location: LCCOMB_X55_Y4_N22
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.LEVEDAR~q\ & ((\time_levedar[7]~input_o\))) # (!\state.LEVEDAR~q\ & (\time_amassar[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_amassar[7]~input_o\,
	datab => \time_levedar[7]~input_o\,
	datac => \state.LEVEDAR~q\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X55_Y4_N14
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (!\state.EXTRA~q\ & ((\state.COZER~q\ & (\time_cozer[7]~input_o\)) # (!\state.COZER~q\ & ((\Selector13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_cozer[7]~input_o\,
	datab => \state.COZER~q\,
	datac => \Selector13~0_combout\,
	datad => \state.EXTRA~q\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X55_Y4_N6
\counter[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- counter(7) = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((\Selector13~1_combout\))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datac => \Selector13~1_combout\,
	datad => \state.IDLE~clkctrl_outclk\,
	combout => counter(7));

-- Location: LCCOMB_X56_Y4_N26
\display_time~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_time~8_combout\ = (\state.IDLE~q\ & ((counter(7)))) # (!\state.IDLE~q\ & (total_time(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => total_time(7),
	datab => counter(7),
	datad => \state.IDLE~q\,
	combout => \display_time~8_combout\);

-- Location: LCCOMB_X55_Y4_N8
\LEDG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~0_combout\ = (\state.EXTRA~q\) # (!\state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.IDLE~q\,
	datad => \state.EXTRA~q\,
	combout => \LEDG~0_combout\);

-- Location: CLKCTRL_G18
\LEDG~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LEDG~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LEDG~0clkctrl_outclk\);

-- Location: LCCOMB_X52_Y4_N30
\LEDG[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG[0]$latch~combout\ = (GLOBAL(\LEDG~0clkctrl_outclk\) & ((\LEDG[0]$latch~combout\))) # (!GLOBAL(\LEDG~0clkctrl_outclk\) & (\state.COZER~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.COZER~q\,
	datac => \LEDG[0]$latch~combout\,
	datad => \LEDG~0clkctrl_outclk\,
	combout => \LEDG[0]$latch~combout\);

-- Location: LCCOMB_X52_Y4_N8
\LEDG[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG[1]$latch~combout\ = (GLOBAL(\LEDG~0clkctrl_outclk\) & ((\LEDG[1]$latch~combout\))) # (!GLOBAL(\LEDG~0clkctrl_outclk\) & (\state.LEVEDAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.LEVEDAR~q\,
	datac => \LEDG[1]$latch~combout\,
	datad => \LEDG~0clkctrl_outclk\,
	combout => \LEDG[1]$latch~combout\);

-- Location: LCCOMB_X52_Y4_N24
\LEDG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~1_combout\ = (\state.LEVEDAR~q\) # (\state.COZER~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.LEVEDAR~q\,
	datad => \state.COZER~q\,
	combout => \LEDG~1_combout\);

-- Location: LCCOMB_X52_Y4_N22
\LEDG[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG[2]$latch~combout\ = (GLOBAL(\LEDG~0clkctrl_outclk\) & ((\LEDG[2]$latch~combout\))) # (!GLOBAL(\LEDG~0clkctrl_outclk\) & (!\LEDG~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LEDG~1_combout\,
	datac => \LEDG[2]$latch~combout\,
	datad => \LEDG~0clkctrl_outclk\,
	combout => \LEDG[2]$latch~combout\);

-- Location: LCCOMB_X56_Y4_N30
\TimeValue[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeValue[0]$latch~combout\ = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((counter(0)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\TimeValue[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeValue[0]$latch~combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => counter(0),
	combout => \TimeValue[0]$latch~combout\);

-- Location: LCCOMB_X56_Y4_N14
\TimeValue[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeValue[1]$latch~combout\ = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((counter(1)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\TimeValue[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeValue[1]$latch~combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => counter(1),
	combout => \TimeValue[1]$latch~combout\);

-- Location: LCCOMB_X54_Y4_N14
\TimeValue[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeValue[2]$latch~combout\ = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((counter(2)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\TimeValue[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeValue[2]$latch~combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => counter(2),
	combout => \TimeValue[2]$latch~combout\);

-- Location: LCCOMB_X54_Y4_N8
\TimeValue[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeValue[3]$latch~combout\ = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((counter(3)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\TimeValue[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeValue[3]$latch~combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => counter(3),
	combout => \TimeValue[3]$latch~combout\);

-- Location: LCCOMB_X55_Y4_N2
\TimeValue[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeValue[4]$latch~combout\ = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((counter(4)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\TimeValue[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeValue[4]$latch~combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => counter(4),
	combout => \TimeValue[4]$latch~combout\);

-- Location: LCCOMB_X55_Y4_N26
\TimeValue[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeValue[5]$latch~combout\ = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((counter(5)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\TimeValue[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeValue[5]$latch~combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => counter(5),
	combout => \TimeValue[5]$latch~combout\);

-- Location: LCCOMB_X54_Y4_N22
\TimeValue[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeValue[6]$latch~combout\ = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((counter(6)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\TimeValue[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TimeValue[6]$latch~combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => counter(6),
	combout => \TimeValue[6]$latch~combout\);

-- Location: LCCOMB_X55_Y4_N0
\TimeValue[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \TimeValue[7]$latch~combout\ = (GLOBAL(\state.IDLE~clkctrl_outclk\) & ((counter(7)))) # (!GLOBAL(\state.IDLE~clkctrl_outclk\) & (\TimeValue[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TimeValue[7]$latch~combout\,
	datac => \state.IDLE~clkctrl_outclk\,
	datad => counter(7),
	combout => \TimeValue[7]$latch~combout\);

-- Location: IOIBUF_X52_Y73_N8
\time_extra[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_extra(0),
	o => \time_extra[0]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\time_extra[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_extra(1),
	o => \time_extra[1]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\time_extra[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_extra(2),
	o => \time_extra[2]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\time_extra[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_extra(3),
	o => \time_extra[3]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\time_extra[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_extra(4),
	o => \time_extra[4]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\time_extra[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_extra(5),
	o => \time_extra[5]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\time_extra[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_extra(6),
	o => \time_extra[6]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\time_extra[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_time_extra(7),
	o => \time_extra[7]~input_o\);

ww_LEDR <= \LEDR~output_o\;

ww_display_select(0) <= \display_select[0]~output_o\;

ww_display_select(1) <= \display_select[1]~output_o\;

ww_display_select(2) <= \display_select[2]~output_o\;

ww_display_select(3) <= \display_select[3]~output_o\;

ww_display_select(4) <= \display_select[4]~output_o\;

ww_display_select(5) <= \display_select[5]~output_o\;

ww_display_select(6) <= \display_select[6]~output_o\;

ww_display_select(7) <= \display_select[7]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_NewTime <= \NewTime~output_o\;

ww_TimeValue(0) <= \TimeValue[0]~output_o\;

ww_TimeValue(1) <= \TimeValue[1]~output_o\;

ww_TimeValue(2) <= \TimeValue[2]~output_o\;

ww_TimeValue(3) <= \TimeValue[3]~output_o\;

ww_TimeValue(4) <= \TimeValue[4]~output_o\;

ww_TimeValue(5) <= \TimeValue[5]~output_o\;

ww_TimeValue(6) <= \TimeValue[6]~output_o\;

ww_TimeValue(7) <= \TimeValue[7]~output_o\;

ww_timer_enable <= \timer_enable~output_o\;
END structure;


