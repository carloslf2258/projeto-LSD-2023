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

-- DATE "05/17/2023 19:34:53"

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

ENTITY 	TimerFSM IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	newTime : IN std_logic;
	timeValue : IN std_logic_vector(7 DOWNTO 0);
	timerEnable : IN std_logic;
	timerExp : OUT std_logic
	);
END TimerFSM;

-- Design Ports Information
-- timerExp	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- newTime	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timerEnable	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeValue[7]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeValue[6]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeValue[5]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeValue[4]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeValue[3]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeValue[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeValue[1]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- timeValue[0]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_newTime : std_logic;
SIGNAL ww_timeValue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_timerEnable : std_logic;
SIGNAL ww_timerExp : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timerExp~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \newTime~input_o\ : std_logic;
SIGNAL \timeValue[1]~input_o\ : std_logic;
SIGNAL \count[1]~6_combout\ : std_logic;
SIGNAL \timerEnable~input_o\ : std_logic;
SIGNAL \timeValue[0]~input_o\ : std_logic;
SIGNAL \count[0]~7_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \timeValue[5]~input_o\ : std_logic;
SIGNAL \count[5]~2_combout\ : std_logic;
SIGNAL \timeValue[4]~input_o\ : std_logic;
SIGNAL \count[4]~3_combout\ : std_logic;
SIGNAL \timeValue[3]~input_o\ : std_logic;
SIGNAL \count[3]~4_combout\ : std_logic;
SIGNAL \timeValue[2]~input_o\ : std_logic;
SIGNAL \count[2]~5_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \count[7]~8_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \timeValue[7]~input_o\ : std_logic;
SIGNAL \count[7]~0_combout\ : std_logic;
SIGNAL \timeValue[6]~input_o\ : std_logic;
SIGNAL \count[6]~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \pulse~0_combout\ : std_logic;
SIGNAL \pulse~1_combout\ : std_logic;
SIGNAL \pulse~q\ : std_logic;
SIGNAL count : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_newTime <= newTime;
ww_timeValue <= timeValue;
ww_timerEnable <= timerEnable;
timerExp <= ww_timerExp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y4_N23
\timerExp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pulse~q\,
	devoe => ww_devoe,
	o => \timerExp~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X1_Y0_N22
\newTime~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newTime,
	o => \newTime~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\timeValue[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeValue(1),
	o => \timeValue[1]~input_o\);

-- Location: LCCOMB_X1_Y3_N6
\count[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~6_combout\ = (\newTime~input_o\ & (\timeValue[1]~input_o\)) # (!\newTime~input_o\ & ((count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeValue[1]~input_o\,
	datac => count(1),
	datad => \newTime~input_o\,
	combout => \count[1]~6_combout\);

-- Location: IOIBUF_X1_Y0_N8
\timerEnable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timerEnable,
	o => \timerEnable~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\timeValue[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeValue(0),
	o => \timeValue[0]~input_o\);

-- Location: LCCOMB_X2_Y3_N6
\count[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~7_combout\ = (\newTime~input_o\ & ((\timeValue[0]~input_o\))) # (!\newTime~input_o\ & (count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newTime~input_o\,
	datac => count(0),
	datad => \timeValue[0]~input_o\,
	combout => \count[0]~7_combout\);

-- Location: LCCOMB_X2_Y3_N8
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count(0) $ (VCC)
-- \Add0~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X3_Y0_N1
\timeValue[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeValue(5),
	o => \timeValue[5]~input_o\);

-- Location: LCCOMB_X2_Y3_N2
\count[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~2_combout\ = (\newTime~input_o\ & ((\timeValue[5]~input_o\))) # (!\newTime~input_o\ & (count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newTime~input_o\,
	datac => count(5),
	datad => \timeValue[5]~input_o\,
	combout => \count[5]~2_combout\);

-- Location: IOIBUF_X3_Y0_N22
\timeValue[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeValue(4),
	o => \timeValue[4]~input_o\);

-- Location: LCCOMB_X2_Y3_N0
\count[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~3_combout\ = (\newTime~input_o\ & ((\timeValue[4]~input_o\))) # (!\newTime~input_o\ & (count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newTime~input_o\,
	datac => count(4),
	datad => \timeValue[4]~input_o\,
	combout => \count[4]~3_combout\);

-- Location: IOIBUF_X0_Y4_N1
\timeValue[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeValue(3),
	o => \timeValue[3]~input_o\);

-- Location: LCCOMB_X1_Y3_N14
\count[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~4_combout\ = (\newTime~input_o\ & (\timeValue[3]~input_o\)) # (!\newTime~input_o\ & ((count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeValue[3]~input_o\,
	datac => count(3),
	datad => \newTime~input_o\,
	combout => \count[3]~4_combout\);

-- Location: IOIBUF_X0_Y4_N8
\timeValue[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeValue(2),
	o => \timeValue[2]~input_o\);

-- Location: LCCOMB_X1_Y3_N16
\count[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~5_combout\ = (\newTime~input_o\ & (\timeValue[2]~input_o\)) # (!\newTime~input_o\ & ((count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeValue[2]~input_o\,
	datac => count(2),
	datad => \newTime~input_o\,
	combout => \count[2]~5_combout\);

-- Location: LCCOMB_X2_Y3_N10
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count(1) & (\Add0~1\ & VCC)) # (!count(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!count(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X2_Y3_N12
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count(2) & ((GND) # (!\Add0~3\))) # (!count(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((count(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X1_Y3_N4
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = ((\Add0~4_combout\) # ((\Equal0~1_combout\ & \Equal0~0_combout\))) # (!\timerEnable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerEnable~input_o\,
	datab => \Equal0~1_combout\,
	datac => \Add0~4_combout\,
	datad => \Equal0~0_combout\,
	combout => \Add0~21_combout\);

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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X1_Y3_N20
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\timerEnable~input_o\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerEnable~input_o\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X1_Y3_N28
\count[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~8_combout\ = (!\newTime~input_o\ & ((\pulse~q\) # (\process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse~q\,
	datab => \newTime~input_o\,
	datad => \process_0~0_combout\,
	combout => \count[7]~8_combout\);

-- Location: FF_X1_Y3_N17
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~5_combout\,
	asdata => \Add0~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \count[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X2_Y3_N14
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count(3) & (\Add0~5\ & VCC)) # (!count(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!count(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X1_Y3_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\Add0~6_combout\) # ((\Equal0~1_combout\ & \Equal0~0_combout\))) # (!\timerEnable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerEnable~input_o\,
	datab => \Equal0~1_combout\,
	datac => \Add0~6_combout\,
	datad => \Equal0~0_combout\,
	combout => \Add0~20_combout\);

-- Location: FF_X1_Y3_N15
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~4_combout\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \count[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X2_Y3_N16
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count(4) & ((GND) # (!\Add0~7\))) # (!count(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((count(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X2_Y3_N28
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = ((\Add0~8_combout\) # ((\Equal0~0_combout\ & \Equal0~1_combout\))) # (!\timerEnable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerEnable~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add0~8_combout\,
	combout => \Add0~19_combout\);

-- Location: FF_X2_Y3_N1
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~3_combout\,
	asdata => \Add0~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \count[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X2_Y3_N18
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count(5) & (\Add0~9\ & VCC)) # (!count(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!count(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X2_Y3_N30
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\Add0~10_combout\) # ((\Equal0~0_combout\ & \Equal0~1_combout\))) # (!\timerEnable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerEnable~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add0~10_combout\,
	combout => \Add0~18_combout\);

-- Location: FF_X2_Y3_N3
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~2_combout\,
	asdata => \Add0~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \count[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: IOIBUF_X1_Y0_N1
\timeValue[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeValue(7),
	o => \timeValue[7]~input_o\);

-- Location: LCCOMB_X1_Y3_N24
\count[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~0_combout\ = (\newTime~input_o\ & (\timeValue[7]~input_o\)) # (!\newTime~input_o\ & ((count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeValue[7]~input_o\,
	datac => count(7),
	datad => \newTime~input_o\,
	combout => \count[7]~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\timeValue[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeValue(6),
	o => \timeValue[6]~input_o\);

-- Location: LCCOMB_X2_Y3_N24
\count[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~1_combout\ = (\newTime~input_o\ & ((\timeValue[6]~input_o\))) # (!\newTime~input_o\ & (count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newTime~input_o\,
	datac => count(6),
	datad => \timeValue[6]~input_o\,
	combout => \count[6]~1_combout\);

-- Location: LCCOMB_X2_Y3_N20
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count(6) & ((GND) # (!\Add0~11\))) # (!count(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((count(6)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X2_Y3_N4
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = ((\Add0~12_combout\) # ((\Equal0~0_combout\ & \Equal0~1_combout\))) # (!\timerEnable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerEnable~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add0~12_combout\,
	combout => \Add0~17_combout\);

-- Location: FF_X2_Y3_N25
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~1_combout\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \count[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X2_Y3_N22
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (!count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X1_Y3_N30
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\Add0~14_combout\) # ((\Equal0~0_combout\ & \Equal0~1_combout\))) # (!\timerEnable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerEnable~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Add0~14_combout\,
	combout => \Add0~16_combout\);

-- Location: FF_X1_Y3_N25
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~0_combout\,
	asdata => \Add0~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \count[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X1_Y3_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(5) & (!count(7) & (!count(4) & !count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(7),
	datac => count(4),
	datad => count(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y3_N26
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = ((\Add0~0_combout\) # ((\Equal0~1_combout\ & \Equal0~0_combout\))) # (!\timerEnable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerEnable~input_o\,
	datab => \Add0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Add0~23_combout\);

-- Location: FF_X2_Y3_N7
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~7_combout\,
	asdata => \Add0~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \count[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X1_Y3_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = ((\Add0~2_combout\) # ((\Equal0~1_combout\ & \Equal0~0_combout\))) # (!\timerEnable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerEnable~input_o\,
	datab => \Equal0~1_combout\,
	datac => \Add0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Add0~22_combout\);

-- Location: FF_X1_Y3_N7
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~6_combout\,
	asdata => \Add0~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \count[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X1_Y3_N8
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(1) & (!count(2) & (!count(3) & !count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(2),
	datac => count(3),
	datad => count(0),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y3_N10
\pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse~0_combout\ = (!\pulse~q\ & (!\newTime~input_o\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse~q\,
	datab => \newTime~input_o\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \pulse~0_combout\);

-- Location: LCCOMB_X1_Y3_N12
\pulse~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulse~1_combout\ = (\pulse~0_combout\) # ((!\newTime~input_o\ & (\pulse~q\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulse~0_combout\,
	datab => \newTime~input_o\,
	datac => \pulse~q\,
	datad => \process_0~0_combout\,
	combout => \pulse~1_combout\);

-- Location: FF_X1_Y3_N13
pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pulse~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse~q\);

ww_timerExp <= \timerExp~output_o\;
END structure;


