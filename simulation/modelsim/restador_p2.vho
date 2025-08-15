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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "08/13/2025 22:09:45"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_restador IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top_restador;

-- Design Ports Information
-- SW[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_restador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \U_SUB|u0|D~combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \U_SUB|u1|D~combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \U_SUB|u1|Bout~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \U_SUB|u2|D~combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \U_SUB|u3|D~combout\ : std_logic;
SIGNAL \U_SUB|u3|Bout~0_combout\ : std_logic;
SIGNAL \U_HEX|Mux6~0_combout\ : std_logic;
SIGNAL \U_HEX|Mux5~0_combout\ : std_logic;
SIGNAL \U_HEX|Mux4~0_combout\ : std_logic;
SIGNAL \U_HEX|Mux3~0_combout\ : std_logic;
SIGNAL \U_HEX|Mux2~0_combout\ : std_logic;
SIGNAL \U_HEX|Mux1~0_combout\ : std_logic;
SIGNAL \U_HEX|Mux0~0_combout\ : std_logic;
SIGNAL \U_SUB|u0|ALT_INV_D~combout\ : std_logic;
SIGNAL \U_SUB|u1|ALT_INV_D~combout\ : std_logic;
SIGNAL \U_SUB|u1|ALT_INV_Bout~0_combout\ : std_logic;
SIGNAL \U_SUB|u2|ALT_INV_D~combout\ : std_logic;
SIGNAL \U_SUB|u3|ALT_INV_D~combout\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \U_HEX|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U_SUB|u0|ALT_INV_D~combout\ <= NOT \U_SUB|u0|D~combout\;
\U_SUB|u1|ALT_INV_D~combout\ <= NOT \U_SUB|u1|D~combout\;
\U_SUB|u1|ALT_INV_Bout~0_combout\ <= NOT \U_SUB|u1|Bout~0_combout\;
\U_SUB|u2|ALT_INV_D~combout\ <= NOT \U_SUB|u2|D~combout\;
\U_SUB|u3|ALT_INV_D~combout\ <= NOT \U_SUB|u3|D~combout\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\U_HEX|ALT_INV_Mux0~0_combout\ <= NOT \U_HEX|Mux0~0_combout\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;

-- Location: IOOBUF_X89_Y11_N45
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SUB|u0|D~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X89_Y9_N22
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SUB|u1|D~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X86_Y0_N19
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SUB|u2|D~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X88_Y0_N37
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SUB|u3|D~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X78_Y0_N36
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X86_Y0_N36
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X88_Y0_N54
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X74_Y0_N59
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y9_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X86_Y0_N2
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SUB|u3|Bout~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X60_Y0_N19
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X80_Y0_N2
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X50_Y0_N93
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N76
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X56_Y0_N36
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X58_Y0_N76
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X56_Y0_N53
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U_HEX|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOIBUF_X89_Y20_N95
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: MLABCELL_X87_Y21_N0
\U_SUB|u0|D\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_SUB|u0|D~combout\ = ( \SW[4]~input_o\ & ( \SW[0]~input_o\ & ( \SW[8]~input_o\ ) ) ) # ( !\SW[4]~input_o\ & ( \SW[0]~input_o\ & ( !\SW[8]~input_o\ ) ) ) # ( \SW[4]~input_o\ & ( !\SW[0]~input_o\ & ( !\SW[8]~input_o\ ) ) ) # ( !\SW[4]~input_o\ & ( 
-- !\SW[0]~input_o\ & ( \SW[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[8]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \U_SUB|u0|D~combout\);

-- Location: IOIBUF_X89_Y20_N61
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: MLABCELL_X87_Y21_N9
\U_SUB|u1|D\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_SUB|u1|D~combout\ = ( \SW[4]~input_o\ & ( \SW[1]~input_o\ & ( !\SW[5]~input_o\ $ (((\SW[8]~input_o\ & \SW[0]~input_o\))) ) ) ) # ( !\SW[4]~input_o\ & ( \SW[1]~input_o\ & ( !\SW[5]~input_o\ $ (((\SW[0]~input_o\) # (\SW[8]~input_o\))) ) ) ) # ( 
-- \SW[4]~input_o\ & ( !\SW[1]~input_o\ & ( !\SW[5]~input_o\ $ (((!\SW[8]~input_o\) # (!\SW[0]~input_o\))) ) ) ) # ( !\SW[4]~input_o\ & ( !\SW[1]~input_o\ & ( !\SW[5]~input_o\ $ (((!\SW[8]~input_o\ & !\SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000000011110101101010100101000011111111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \U_SUB|u1|D~combout\);

-- Location: IOIBUF_X89_Y20_N78
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: MLABCELL_X87_Y21_N42
\U_SUB|u1|Bout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_SUB|u1|Bout~0_combout\ = ( \SW[4]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[5]~input_o\) # ((\SW[0]~input_o\ & \SW[8]~input_o\)) ) ) ) # ( !\SW[4]~input_o\ & ( \SW[1]~input_o\ & ( ((!\SW[5]~input_o\) # (\SW[8]~input_o\)) # (\SW[0]~input_o\) ) ) ) # ( 
-- \SW[4]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[0]~input_o\ & (!\SW[5]~input_o\ & \SW[8]~input_o\)) ) ) ) # ( !\SW[4]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[5]~input_o\ & ((\SW[8]~input_o\) # (\SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100000001000000010011011111110111111100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \U_SUB|u1|Bout~0_combout\);

-- Location: IOIBUF_X89_Y21_N38
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: MLABCELL_X87_Y21_N51
\U_SUB|u2|D\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_SUB|u2|D~combout\ = ( \SW[2]~input_o\ & ( !\SW[6]~input_o\ $ (\U_SUB|u1|Bout~0_combout\) ) ) # ( !\SW[2]~input_o\ & ( !\SW[6]~input_o\ $ (!\U_SUB|u1|Bout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \U_SUB|u1|ALT_INV_Bout~0_combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \U_SUB|u2|D~combout\);

-- Location: IOIBUF_X89_Y25_N55
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: MLABCELL_X87_Y21_N24
\U_SUB|u3|D\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_SUB|u3|D~combout\ = ( \SW[2]~input_o\ & ( !\SW[3]~input_o\ $ (!\SW[7]~input_o\ $ (((!\SW[6]~input_o\) # (\U_SUB|u1|Bout~0_combout\)))) ) ) # ( !\SW[2]~input_o\ & ( !\SW[3]~input_o\ $ (!\SW[7]~input_o\ $ (((\U_SUB|u1|Bout~0_combout\ & 
-- !\SW[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101011010101001010110100101101001010110101010010101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \U_SUB|u1|ALT_INV_Bout~0_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \U_SUB|u3|D~combout\);

-- Location: MLABCELL_X87_Y21_N33
\U_SUB|u3|Bout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_SUB|u3|Bout~0_combout\ = ( \SW[2]~input_o\ & ( (!\SW[7]~input_o\ & ((!\SW[6]~input_o\) # ((\SW[3]~input_o\) # (\U_SUB|u1|Bout~0_combout\)))) # (\SW[7]~input_o\ & (\SW[3]~input_o\ & ((!\SW[6]~input_o\) # (\U_SUB|u1|Bout~0_combout\)))) ) ) # ( 
-- !\SW[2]~input_o\ & ( (!\SW[7]~input_o\ & (((!\SW[6]~input_o\ & \U_SUB|u1|Bout~0_combout\)) # (\SW[3]~input_o\))) # (\SW[7]~input_o\ & (!\SW[6]~input_o\ & (\U_SUB|u1|Bout~0_combout\ & \SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101110100010101110111100001000101011101000101011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \U_SUB|u1|ALT_INV_Bout~0_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \U_SUB|u3|Bout~0_combout\);

-- Location: MLABCELL_X65_Y4_N3
\U_HEX|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX|Mux6~0_combout\ = ( \U_SUB|u0|D~combout\ & ( (!\U_SUB|u2|D~combout\ & (!\U_SUB|u3|D~combout\ $ (\U_SUB|u1|D~combout\))) # (\U_SUB|u2|D~combout\ & (\U_SUB|u3|D~combout\ & !\U_SUB|u1|D~combout\)) ) ) # ( !\U_SUB|u0|D~combout\ & ( 
-- (\U_SUB|u2|D~combout\ & (!\U_SUB|u3|D~combout\ & !\U_SUB|u1|D~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000101001010000101001010000000000001010010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_SUB|u2|ALT_INV_D~combout\,
	datac => \U_SUB|u3|ALT_INV_D~combout\,
	datad => \U_SUB|u1|ALT_INV_D~combout\,
	datae => \U_SUB|u0|ALT_INV_D~combout\,
	combout => \U_HEX|Mux6~0_combout\);

-- Location: MLABCELL_X65_Y4_N6
\U_HEX|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX|Mux5~0_combout\ = ( \U_SUB|u0|D~combout\ & ( (!\U_SUB|u1|D~combout\ & (!\U_SUB|u3|D~combout\ & \U_SUB|u2|D~combout\)) # (\U_SUB|u1|D~combout\ & (\U_SUB|u3|D~combout\)) ) ) # ( !\U_SUB|u0|D~combout\ & ( (\U_SUB|u2|D~combout\ & 
-- ((\U_SUB|u3|D~combout\) # (\U_SUB|u1|D~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000110010001100100000111000001110001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_SUB|u1|ALT_INV_D~combout\,
	datab => \U_SUB|u3|ALT_INV_D~combout\,
	datac => \U_SUB|u2|ALT_INV_D~combout\,
	datae => \U_SUB|u0|ALT_INV_D~combout\,
	combout => \U_HEX|Mux5~0_combout\);

-- Location: MLABCELL_X65_Y4_N12
\U_HEX|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX|Mux4~0_combout\ = ( \U_SUB|u0|D~combout\ & ( (\U_SUB|u1|D~combout\ & (\U_SUB|u3|D~combout\ & \U_SUB|u2|D~combout\)) ) ) # ( !\U_SUB|u0|D~combout\ & ( (!\U_SUB|u3|D~combout\ & (\U_SUB|u1|D~combout\ & !\U_SUB|u2|D~combout\)) # (\U_SUB|u3|D~combout\ & 
-- ((\U_SUB|u2|D~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011000000010000000101000011010000110000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_SUB|u1|ALT_INV_D~combout\,
	datab => \U_SUB|u3|ALT_INV_D~combout\,
	datac => \U_SUB|u2|ALT_INV_D~combout\,
	datae => \U_SUB|u0|ALT_INV_D~combout\,
	combout => \U_HEX|Mux4~0_combout\);

-- Location: MLABCELL_X65_Y4_N51
\U_HEX|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX|Mux3~0_combout\ = ( \U_SUB|u0|D~combout\ & ( (!\U_SUB|u2|D~combout\ & (!\U_SUB|u3|D~combout\ & !\U_SUB|u1|D~combout\)) # (\U_SUB|u2|D~combout\ & ((\U_SUB|u1|D~combout\))) ) ) # ( !\U_SUB|u0|D~combout\ & ( (!\U_SUB|u2|D~combout\ & 
-- (\U_SUB|u3|D~combout\ & \U_SUB|u1|D~combout\)) # (\U_SUB|u2|D~combout\ & (!\U_SUB|u3|D~combout\ & !\U_SUB|u1|D~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010101000000101010101010000000010101010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_SUB|u2|ALT_INV_D~combout\,
	datac => \U_SUB|u3|ALT_INV_D~combout\,
	datad => \U_SUB|u1|ALT_INV_D~combout\,
	datae => \U_SUB|u0|ALT_INV_D~combout\,
	combout => \U_HEX|Mux3~0_combout\);

-- Location: MLABCELL_X65_Y4_N24
\U_HEX|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX|Mux2~0_combout\ = ( \U_SUB|u0|D~combout\ & ( (!\U_SUB|u3|D~combout\) # ((!\U_SUB|u1|D~combout\ & !\U_SUB|u2|D~combout\)) ) ) # ( !\U_SUB|u0|D~combout\ & ( (!\U_SUB|u1|D~combout\ & (!\U_SUB|u3|D~combout\ & \U_SUB|u2|D~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000111011001110110000001000000010001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_SUB|u1|ALT_INV_D~combout\,
	datab => \U_SUB|u3|ALT_INV_D~combout\,
	datac => \U_SUB|u2|ALT_INV_D~combout\,
	datae => \U_SUB|u0|ALT_INV_D~combout\,
	combout => \U_HEX|Mux2~0_combout\);

-- Location: MLABCELL_X65_Y4_N33
\U_HEX|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX|Mux1~0_combout\ = ( \U_SUB|u0|D~combout\ & ( !\U_SUB|u3|D~combout\ $ (((\U_SUB|u2|D~combout\ & !\U_SUB|u1|D~combout\))) ) ) # ( !\U_SUB|u0|D~combout\ & ( (!\U_SUB|u2|D~combout\ & (!\U_SUB|u3|D~combout\ & \U_SUB|u1|D~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000101001011111000000000000101000001010010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_SUB|u2|ALT_INV_D~combout\,
	datac => \U_SUB|u3|ALT_INV_D~combout\,
	datad => \U_SUB|u1|ALT_INV_D~combout\,
	datae => \U_SUB|u0|ALT_INV_D~combout\,
	combout => \U_HEX|Mux1~0_combout\);

-- Location: MLABCELL_X65_Y4_N36
\U_HEX|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U_HEX|Mux0~0_combout\ = ( \U_SUB|u0|D~combout\ & ( (!\U_SUB|u1|D~combout\ $ (!\U_SUB|u2|D~combout\)) # (\U_SUB|u3|D~combout\) ) ) # ( !\U_SUB|u0|D~combout\ & ( (!\U_SUB|u3|D~combout\ $ (!\U_SUB|u2|D~combout\)) # (\U_SUB|u1|D~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110101111101011110110111101101111101011111010111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U_SUB|u1|ALT_INV_D~combout\,
	datab => \U_SUB|u3|ALT_INV_D~combout\,
	datac => \U_SUB|u2|ALT_INV_D~combout\,
	datae => \U_SUB|u0|ALT_INV_D~combout\,
	combout => \U_HEX|Mux0~0_combout\);

-- Location: IOIBUF_X89_Y21_N21
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: MLABCELL_X34_Y70_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


