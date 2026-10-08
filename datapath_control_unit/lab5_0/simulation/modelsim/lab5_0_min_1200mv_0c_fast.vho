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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/30/2026 15:50:20"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	structure IS
    PORT (
	Clk : IN std_logic;
	reset : IN std_logic;
	\in\ : IN std_logic_vector(7 DOWNTO 0);
	start : IN std_logic;
	mode : IN std_logic;
	ready : OUT std_logic;
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic;
	h : OUT std_logic;
	result : OUT std_logic_vector(7 DOWNTO 0)
	);
END structure;

-- Design Ports Information
-- ready	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[6]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF structure IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \ww_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_ready : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_h : std_logic;
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cntrl|k[3]~39_combout\ : std_logic;
SIGNAL \cntrl|k[5]~43_combout\ : std_logic;
SIGNAL \cntrl|k[15]~63_combout\ : std_logic;
SIGNAL \cntrl|k[18]~69_combout\ : std_logic;
SIGNAL \cntrl|k[22]~77_combout\ : std_logic;
SIGNAL \cntrl|k[27]~88\ : std_logic;
SIGNAL \cntrl|k[28]~89_combout\ : std_logic;
SIGNAL \cntrl|k[28]~90\ : std_logic;
SIGNAL \cntrl|k[29]~91_combout\ : std_logic;
SIGNAL \cntrl|k[29]~92\ : std_logic;
SIGNAL \cntrl|k[30]~93_combout\ : std_logic;
SIGNAL \cntrl|k[30]~94\ : std_logic;
SIGNAL \cntrl|k[31]~95_combout\ : std_logic;
SIGNAL \cntrl|Equal0~0_combout\ : std_logic;
SIGNAL \cntrl|Equal0~9_combout\ : std_logic;
SIGNAL \cntrl|always2~0_combout\ : std_logic;
SIGNAL \sh_rg|Selector7~0_combout\ : std_logic;
SIGNAL \sh_rg|WideNor0~0_combout\ : std_logic;
SIGNAL \sh_rg|Selector6~0_combout\ : std_logic;
SIGNAL \sh_rg|Selector5~0_combout\ : std_logic;
SIGNAL \sh_rg|Selector4~0_combout\ : std_logic;
SIGNAL \sh_rg|Selector3~0_combout\ : std_logic;
SIGNAL \sh_rg|Selector2~0_combout\ : std_logic;
SIGNAL \sh_rg|Selector1~0_combout\ : std_logic;
SIGNAL \sh_rg|Selector0~0_combout\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \in[0]~input_o\ : std_logic;
SIGNAL \in[1]~input_o\ : std_logic;
SIGNAL \in[2]~input_o\ : std_logic;
SIGNAL \in[3]~input_o\ : std_logic;
SIGNAL \in[4]~input_o\ : std_logic;
SIGNAL \in[5]~input_o\ : std_logic;
SIGNAL \in[6]~input_o\ : std_logic;
SIGNAL \in[7]~input_o\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \h~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \cntrl|k[0]~32_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \cntrl|r_next~0_combout\ : std_logic;
SIGNAL \cntrl|r_state~q\ : std_logic;
SIGNAL \cntrl|k[31]~34_combout\ : std_logic;
SIGNAL \cntrl|k[0]~33\ : std_logic;
SIGNAL \cntrl|k[1]~35_combout\ : std_logic;
SIGNAL \cntrl|k[1]~36\ : std_logic;
SIGNAL \cntrl|k[2]~37_combout\ : std_logic;
SIGNAL \cntrl|k[2]~38\ : std_logic;
SIGNAL \cntrl|k[3]~40\ : std_logic;
SIGNAL \cntrl|k[4]~41_combout\ : std_logic;
SIGNAL \cntrl|k[4]~42\ : std_logic;
SIGNAL \cntrl|k[5]~44\ : std_logic;
SIGNAL \cntrl|k[6]~46\ : std_logic;
SIGNAL \cntrl|k[7]~47_combout\ : std_logic;
SIGNAL \cntrl|k[7]~48\ : std_logic;
SIGNAL \cntrl|k[8]~49_combout\ : std_logic;
SIGNAL \cntrl|k[8]~50\ : std_logic;
SIGNAL \cntrl|k[9]~51_combout\ : std_logic;
SIGNAL \cntrl|k[9]~52\ : std_logic;
SIGNAL \cntrl|k[10]~53_combout\ : std_logic;
SIGNAL \cntrl|k[10]~54\ : std_logic;
SIGNAL \cntrl|k[11]~56\ : std_logic;
SIGNAL \cntrl|k[12]~57_combout\ : std_logic;
SIGNAL \cntrl|k[12]~58\ : std_logic;
SIGNAL \cntrl|k[13]~60\ : std_logic;
SIGNAL \cntrl|k[14]~62\ : std_logic;
SIGNAL \cntrl|k[15]~64\ : std_logic;
SIGNAL \cntrl|k[16]~65_combout\ : std_logic;
SIGNAL \cntrl|k[16]~66\ : std_logic;
SIGNAL \cntrl|k[17]~67_combout\ : std_logic;
SIGNAL \cntrl|k[17]~68\ : std_logic;
SIGNAL \cntrl|k[18]~70\ : std_logic;
SIGNAL \cntrl|k[19]~72\ : std_logic;
SIGNAL \cntrl|k[20]~73_combout\ : std_logic;
SIGNAL \cntrl|k[20]~74\ : std_logic;
SIGNAL \cntrl|k[21]~76\ : std_logic;
SIGNAL \cntrl|k[22]~78\ : std_logic;
SIGNAL \cntrl|k[23]~79_combout\ : std_logic;
SIGNAL \cntrl|k[23]~80\ : std_logic;
SIGNAL \cntrl|k[24]~81_combout\ : std_logic;
SIGNAL \cntrl|k[24]~82\ : std_logic;
SIGNAL \cntrl|k[25]~83_combout\ : std_logic;
SIGNAL \cntrl|k[25]~84\ : std_logic;
SIGNAL \cntrl|k[26]~85_combout\ : std_logic;
SIGNAL \cntrl|k[26]~86\ : std_logic;
SIGNAL \cntrl|k[27]~87_combout\ : std_logic;
SIGNAL \cntrl|Equal0~8_combout\ : std_logic;
SIGNAL \cntrl|k[11]~55_combout\ : std_logic;
SIGNAL \cntrl|Equal0~2_combout\ : std_logic;
SIGNAL \cntrl|k[14]~61_combout\ : std_logic;
SIGNAL \cntrl|k[13]~59_combout\ : std_logic;
SIGNAL \cntrl|Equal0~3_combout\ : std_logic;
SIGNAL \cntrl|k[6]~45_combout\ : std_logic;
SIGNAL \cntrl|Equal0~1_combout\ : std_logic;
SIGNAL \cntrl|Equal0~4_combout\ : std_logic;
SIGNAL \cntrl|k[19]~71_combout\ : std_logic;
SIGNAL \cntrl|Equal0~5_combout\ : std_logic;
SIGNAL \cntrl|k[21]~75_combout\ : std_logic;
SIGNAL \cntrl|Equal0~6_combout\ : std_logic;
SIGNAL \cntrl|Equal0~7_combout\ : std_logic;
SIGNAL \cntrl|Equal0~10_combout\ : std_logic;
SIGNAL \cntrl|ready~combout\ : std_logic;
SIGNAL \acc_rg|r_state[0]~8_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \acc_rg|Selector7~0_combout\ : std_logic;
SIGNAL \acc_rg|r_state[0]~9\ : std_logic;
SIGNAL \acc_rg|r_state[1]~10_combout\ : std_logic;
SIGNAL \acc_rg|Selector6~0_combout\ : std_logic;
SIGNAL \acc_rg|r_state[1]~11\ : std_logic;
SIGNAL \acc_rg|r_state[2]~12_combout\ : std_logic;
SIGNAL \acc_rg|Selector5~0_combout\ : std_logic;
SIGNAL \acc_rg|r_state[2]~13\ : std_logic;
SIGNAL \acc_rg|r_state[3]~14_combout\ : std_logic;
SIGNAL \acc_rg|Selector4~0_combout\ : std_logic;
SIGNAL \out_unit|WideOr0~0_combout\ : std_logic;
SIGNAL \out_unit|WideOr1~0_combout\ : std_logic;
SIGNAL \out_unit|WideOr2~0_combout\ : std_logic;
SIGNAL \out_unit|WideOr3~0_combout\ : std_logic;
SIGNAL \out_unit|WideOr4~0_combout\ : std_logic;
SIGNAL \out_unit|WideOr5~0_combout\ : std_logic;
SIGNAL \out_unit|WideOr6~0_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \acc_rg|r_state[3]~15\ : std_logic;
SIGNAL \acc_rg|r_state[4]~16_combout\ : std_logic;
SIGNAL \acc_rg|Selector3~0_combout\ : std_logic;
SIGNAL \acc_rg|r_state[4]~17\ : std_logic;
SIGNAL \acc_rg|r_state[5]~18_combout\ : std_logic;
SIGNAL \acc_rg|Selector2~0_combout\ : std_logic;
SIGNAL \acc_rg|r_state[5]~19\ : std_logic;
SIGNAL \acc_rg|r_state[6]~20_combout\ : std_logic;
SIGNAL \acc_rg|Selector1~0_combout\ : std_logic;
SIGNAL \acc_rg|r_state[6]~21\ : std_logic;
SIGNAL \acc_rg|r_state[7]~22_combout\ : std_logic;
SIGNAL \acc_rg|Selector0~0_combout\ : std_logic;
SIGNAL \sh_rg|r_state\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \acc_rg|r_state\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cntrl|k\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \out_unit|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \cntrl|ALT_INV_r_state~q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_reset <= reset;
\ww_in\ <= \in\;
ww_start <= start;
ww_mode <= mode;
ready <= ww_ready;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
h <= ww_h;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\out_unit|ALT_INV_WideOr6~0_combout\ <= NOT \out_unit|WideOr6~0_combout\;
\cntrl|ALT_INV_r_state~q\ <= NOT \cntrl|r_state~q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: FF_X2_Y22_N7
\cntrl|k[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[3]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(3));

-- Location: FF_X2_Y22_N11
\cntrl|k[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[5]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(5));

-- Location: FF_X2_Y22_N31
\cntrl|k[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[15]~63_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(15));

-- Location: FF_X1_Y22_N27
\cntrl|k[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \cntrl|k[18]~69_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(18));

-- Location: FF_X2_Y21_N13
\cntrl|k[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[22]~77_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(22));

-- Location: FF_X2_Y21_N25
\cntrl|k[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[28]~89_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(28));

-- Location: FF_X2_Y21_N27
\cntrl|k[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[29]~91_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(29));

-- Location: FF_X2_Y21_N29
\cntrl|k[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[30]~93_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(30));

-- Location: FF_X2_Y21_N31
\cntrl|k[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[31]~95_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(31));

-- Location: LCCOMB_X2_Y22_N6
\cntrl|k[3]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[3]~39_combout\ = (\cntrl|k\(3) & (!\cntrl|k[2]~38\)) # (!\cntrl|k\(3) & ((\cntrl|k[2]~38\) # (GND)))
-- \cntrl|k[3]~40\ = CARRY((!\cntrl|k[2]~38\) # (!\cntrl|k\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(3),
	datad => VCC,
	cin => \cntrl|k[2]~38\,
	combout => \cntrl|k[3]~39_combout\,
	cout => \cntrl|k[3]~40\);

-- Location: LCCOMB_X2_Y22_N10
\cntrl|k[5]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[5]~43_combout\ = (\cntrl|k\(5) & (!\cntrl|k[4]~42\)) # (!\cntrl|k\(5) & ((\cntrl|k[4]~42\) # (GND)))
-- \cntrl|k[5]~44\ = CARRY((!\cntrl|k[4]~42\) # (!\cntrl|k\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(5),
	datad => VCC,
	cin => \cntrl|k[4]~42\,
	combout => \cntrl|k[5]~43_combout\,
	cout => \cntrl|k[5]~44\);

-- Location: LCCOMB_X2_Y22_N30
\cntrl|k[15]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[15]~63_combout\ = (\cntrl|k\(15) & (!\cntrl|k[14]~62\)) # (!\cntrl|k\(15) & ((\cntrl|k[14]~62\) # (GND)))
-- \cntrl|k[15]~64\ = CARRY((!\cntrl|k[14]~62\) # (!\cntrl|k\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(15),
	datad => VCC,
	cin => \cntrl|k[14]~62\,
	combout => \cntrl|k[15]~63_combout\,
	cout => \cntrl|k[15]~64\);

-- Location: LCCOMB_X2_Y21_N4
\cntrl|k[18]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[18]~69_combout\ = (\cntrl|k\(18) & (\cntrl|k[17]~68\ $ (GND))) # (!\cntrl|k\(18) & (!\cntrl|k[17]~68\ & VCC))
-- \cntrl|k[18]~70\ = CARRY((\cntrl|k\(18) & !\cntrl|k[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(18),
	datad => VCC,
	cin => \cntrl|k[17]~68\,
	combout => \cntrl|k[18]~69_combout\,
	cout => \cntrl|k[18]~70\);

-- Location: LCCOMB_X2_Y21_N12
\cntrl|k[22]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[22]~77_combout\ = (\cntrl|k\(22) & (\cntrl|k[21]~76\ $ (GND))) # (!\cntrl|k\(22) & (!\cntrl|k[21]~76\ & VCC))
-- \cntrl|k[22]~78\ = CARRY((\cntrl|k\(22) & !\cntrl|k[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(22),
	datad => VCC,
	cin => \cntrl|k[21]~76\,
	combout => \cntrl|k[22]~77_combout\,
	cout => \cntrl|k[22]~78\);

-- Location: LCCOMB_X2_Y21_N22
\cntrl|k[27]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[27]~87_combout\ = (\cntrl|k\(27) & (!\cntrl|k[26]~86\)) # (!\cntrl|k\(27) & ((\cntrl|k[26]~86\) # (GND)))
-- \cntrl|k[27]~88\ = CARRY((!\cntrl|k[26]~86\) # (!\cntrl|k\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(27),
	datad => VCC,
	cin => \cntrl|k[26]~86\,
	combout => \cntrl|k[27]~87_combout\,
	cout => \cntrl|k[27]~88\);

-- Location: LCCOMB_X2_Y21_N24
\cntrl|k[28]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[28]~89_combout\ = (\cntrl|k\(28) & (\cntrl|k[27]~88\ $ (GND))) # (!\cntrl|k\(28) & (!\cntrl|k[27]~88\ & VCC))
-- \cntrl|k[28]~90\ = CARRY((\cntrl|k\(28) & !\cntrl|k[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(28),
	datad => VCC,
	cin => \cntrl|k[27]~88\,
	combout => \cntrl|k[28]~89_combout\,
	cout => \cntrl|k[28]~90\);

-- Location: LCCOMB_X2_Y21_N26
\cntrl|k[29]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[29]~91_combout\ = (\cntrl|k\(29) & (!\cntrl|k[28]~90\)) # (!\cntrl|k\(29) & ((\cntrl|k[28]~90\) # (GND)))
-- \cntrl|k[29]~92\ = CARRY((!\cntrl|k[28]~90\) # (!\cntrl|k\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(29),
	datad => VCC,
	cin => \cntrl|k[28]~90\,
	combout => \cntrl|k[29]~91_combout\,
	cout => \cntrl|k[29]~92\);

-- Location: LCCOMB_X2_Y21_N28
\cntrl|k[30]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[30]~93_combout\ = (\cntrl|k\(30) & (\cntrl|k[29]~92\ $ (GND))) # (!\cntrl|k\(30) & (!\cntrl|k[29]~92\ & VCC))
-- \cntrl|k[30]~94\ = CARRY((\cntrl|k\(30) & !\cntrl|k[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(30),
	datad => VCC,
	cin => \cntrl|k[29]~92\,
	combout => \cntrl|k[30]~93_combout\,
	cout => \cntrl|k[30]~94\);

-- Location: LCCOMB_X2_Y21_N30
\cntrl|k[31]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[31]~95_combout\ = \cntrl|k\(31) $ (\cntrl|k[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(31),
	cin => \cntrl|k[30]~94\,
	combout => \cntrl|k[31]~95_combout\);

-- Location: FF_X1_Y25_N1
\sh_rg|r_state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \sh_rg|Selector0~0_combout\,
	sclr => \cntrl|r_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sh_rg|r_state\(7));

-- Location: LCCOMB_X1_Y22_N22
\cntrl|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~0_combout\ = (\cntrl|k\(1)) # (((\cntrl|k\(0)) # (\cntrl|k\(2))) # (!\cntrl|k\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(1),
	datab => \cntrl|k\(3),
	datac => \cntrl|k\(0),
	datad => \cntrl|k\(2),
	combout => \cntrl|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y22_N10
\cntrl|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~9_combout\ = (\cntrl|k\(28)) # ((\cntrl|k\(30)) # ((\cntrl|k\(29)) # (\cntrl|k\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(28),
	datab => \cntrl|k\(30),
	datac => \cntrl|k\(29),
	datad => \cntrl|k\(31),
	combout => \cntrl|Equal0~9_combout\);

-- Location: FF_X2_Y25_N17
\sh_rg|r_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \sh_rg|Selector7~0_combout\,
	sload => VCC,
	ena => \sh_rg|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sh_rg|r_state\(0));

-- Location: LCCOMB_X2_Y25_N16
\cntrl|always2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|always2~0_combout\ = \sh_rg|r_state\(0) $ (\mode~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sh_rg|r_state\(0),
	datad => \mode~input_o\,
	combout => \cntrl|always2~0_combout\);

-- Location: FF_X1_Y25_N3
\sh_rg|r_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \sh_rg|Selector6~0_combout\,
	ena => \sh_rg|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sh_rg|r_state\(1));

-- Location: LCCOMB_X1_Y25_N16
\sh_rg|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sh_rg|Selector7~0_combout\ = (\cntrl|r_state~q\ & (\sh_rg|r_state\(1))) # (!\cntrl|r_state~q\ & ((\in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sh_rg|r_state\(1),
	datac => \in[0]~input_o\,
	datad => \cntrl|r_state~q\,
	combout => \sh_rg|Selector7~0_combout\);

-- Location: LCCOMB_X1_Y25_N6
\sh_rg|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sh_rg|WideNor0~0_combout\ = (\start~input_o\) # (\cntrl|r_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \cntrl|r_state~q\,
	combout => \sh_rg|WideNor0~0_combout\);

-- Location: FF_X1_Y25_N29
\sh_rg|r_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \sh_rg|Selector5~0_combout\,
	ena => \sh_rg|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sh_rg|r_state\(2));

-- Location: LCCOMB_X1_Y25_N2
\sh_rg|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sh_rg|Selector6~0_combout\ = (\cntrl|r_state~q\ & (\sh_rg|r_state\(2))) # (!\cntrl|r_state~q\ & ((\in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sh_rg|r_state\(2),
	datac => \in[1]~input_o\,
	datad => \cntrl|r_state~q\,
	combout => \sh_rg|Selector6~0_combout\);

-- Location: FF_X1_Y25_N23
\sh_rg|r_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \sh_rg|Selector4~0_combout\,
	ena => \sh_rg|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sh_rg|r_state\(3));

-- Location: LCCOMB_X1_Y25_N28
\sh_rg|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sh_rg|Selector5~0_combout\ = (\cntrl|r_state~q\ & (\sh_rg|r_state\(3))) # (!\cntrl|r_state~q\ & ((\in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sh_rg|r_state\(3),
	datac => \in[2]~input_o\,
	datad => \cntrl|r_state~q\,
	combout => \sh_rg|Selector5~0_combout\);

-- Location: FF_X1_Y25_N21
\sh_rg|r_state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \sh_rg|Selector3~0_combout\,
	ena => \sh_rg|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sh_rg|r_state\(4));

-- Location: LCCOMB_X1_Y25_N22
\sh_rg|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sh_rg|Selector4~0_combout\ = (\cntrl|r_state~q\ & (\sh_rg|r_state\(4))) # (!\cntrl|r_state~q\ & ((\in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sh_rg|r_state\(4),
	datac => \in[3]~input_o\,
	datad => \cntrl|r_state~q\,
	combout => \sh_rg|Selector4~0_combout\);

-- Location: FF_X1_Y25_N11
\sh_rg|r_state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \sh_rg|Selector2~0_combout\,
	ena => \sh_rg|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sh_rg|r_state\(5));

-- Location: LCCOMB_X1_Y25_N20
\sh_rg|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sh_rg|Selector3~0_combout\ = (\cntrl|r_state~q\ & (\sh_rg|r_state\(5))) # (!\cntrl|r_state~q\ & ((\in[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sh_rg|r_state\(5),
	datac => \in[4]~input_o\,
	datad => \cntrl|r_state~q\,
	combout => \sh_rg|Selector3~0_combout\);

-- Location: FF_X1_Y25_N13
\sh_rg|r_state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \sh_rg|Selector1~0_combout\,
	ena => \sh_rg|WideNor0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sh_rg|r_state\(6));

-- Location: LCCOMB_X1_Y25_N10
\sh_rg|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sh_rg|Selector2~0_combout\ = (\cntrl|r_state~q\ & (\sh_rg|r_state\(6))) # (!\cntrl|r_state~q\ & ((\in[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sh_rg|r_state\(6),
	datac => \in[5]~input_o\,
	datad => \cntrl|r_state~q\,
	combout => \sh_rg|Selector2~0_combout\);

-- Location: LCCOMB_X1_Y25_N12
\sh_rg|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sh_rg|Selector1~0_combout\ = (\cntrl|r_state~q\ & ((\sh_rg|r_state\(7)))) # (!\cntrl|r_state~q\ & (\in[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[6]~input_o\,
	datab => \sh_rg|r_state\(7),
	datad => \cntrl|r_state~q\,
	combout => \sh_rg|Selector1~0_combout\);

-- Location: LCCOMB_X1_Y25_N0
\sh_rg|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sh_rg|Selector0~0_combout\ = (\start~input_o\ & (\in[7]~input_o\)) # (!\start~input_o\ & ((\sh_rg|r_state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in[7]~input_o\,
	datac => \sh_rg|r_state\(7),
	datad => \start~input_o\,
	combout => \sh_rg|Selector0~0_combout\);

-- Location: IOIBUF_X1_Y29_N1
\mode~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode,
	o => \mode~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(0),
	o => \in[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(1),
	o => \in[1]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(2),
	o => \in[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(3),
	o => \in[3]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(4),
	o => \in[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(5),
	o => \in[5]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(6),
	o => \in[6]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(7),
	o => \in[7]~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\ready~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cntrl|ready~combout\,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\a~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_unit|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\b~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_unit|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_unit|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\d~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_unit|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\e~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_unit|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\f~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_unit|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\g~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_unit|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\h~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \h~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc_rg|r_state\(0),
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc_rg|r_state\(1),
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc_rg|r_state\(2),
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc_rg|r_state\(3),
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\result[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc_rg|r_state\(4),
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\result[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc_rg|r_state\(5),
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\result[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc_rg|r_state\(6),
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\result[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc_rg|r_state\(7),
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: LCCOMB_X2_Y22_N0
\cntrl|k[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[0]~32_combout\ = \cntrl|k\(0) $ (VCC)
-- \cntrl|k[0]~33\ = CARRY(\cntrl|k\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(0),
	datad => VCC,
	combout => \cntrl|k[0]~32_combout\,
	cout => \cntrl|k[0]~33\);

-- Location: IOIBUF_X0_Y26_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y22_N24
\cntrl|r_next~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|r_next~0_combout\ = (\cntrl|r_state~q\ & ((\cntrl|Equal0~10_combout\))) # (!\cntrl|r_state~q\ & (\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \cntrl|r_state~q\,
	datad => \cntrl|Equal0~10_combout\,
	combout => \cntrl|r_next~0_combout\);

-- Location: FF_X1_Y22_N25
\cntrl|r_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|r_next~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|r_state~q\);

-- Location: LCCOMB_X1_Y22_N30
\cntrl|k[31]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[31]~34_combout\ = (!\cntrl|Equal0~10_combout\) # (!\cntrl|r_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|r_state~q\,
	datad => \cntrl|Equal0~10_combout\,
	combout => \cntrl|k[31]~34_combout\);

-- Location: FF_X2_Y22_N1
\cntrl|k[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[0]~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(0));

-- Location: LCCOMB_X2_Y22_N2
\cntrl|k[1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[1]~35_combout\ = (\cntrl|k\(1) & (!\cntrl|k[0]~33\)) # (!\cntrl|k\(1) & ((\cntrl|k[0]~33\) # (GND)))
-- \cntrl|k[1]~36\ = CARRY((!\cntrl|k[0]~33\) # (!\cntrl|k\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(1),
	datad => VCC,
	cin => \cntrl|k[0]~33\,
	combout => \cntrl|k[1]~35_combout\,
	cout => \cntrl|k[1]~36\);

-- Location: FF_X2_Y22_N3
\cntrl|k[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[1]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(1));

-- Location: LCCOMB_X2_Y22_N4
\cntrl|k[2]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[2]~37_combout\ = (\cntrl|k\(2) & (\cntrl|k[1]~36\ $ (GND))) # (!\cntrl|k\(2) & (!\cntrl|k[1]~36\ & VCC))
-- \cntrl|k[2]~38\ = CARRY((\cntrl|k\(2) & !\cntrl|k[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(2),
	datad => VCC,
	cin => \cntrl|k[1]~36\,
	combout => \cntrl|k[2]~37_combout\,
	cout => \cntrl|k[2]~38\);

-- Location: FF_X2_Y22_N5
\cntrl|k[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[2]~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(2));

-- Location: LCCOMB_X2_Y22_N8
\cntrl|k[4]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[4]~41_combout\ = (\cntrl|k\(4) & (\cntrl|k[3]~40\ $ (GND))) # (!\cntrl|k\(4) & (!\cntrl|k[3]~40\ & VCC))
-- \cntrl|k[4]~42\ = CARRY((\cntrl|k\(4) & !\cntrl|k[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(4),
	datad => VCC,
	cin => \cntrl|k[3]~40\,
	combout => \cntrl|k[4]~41_combout\,
	cout => \cntrl|k[4]~42\);

-- Location: FF_X2_Y22_N9
\cntrl|k[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[4]~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(4));

-- Location: LCCOMB_X2_Y22_N12
\cntrl|k[6]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[6]~45_combout\ = (\cntrl|k\(6) & (\cntrl|k[5]~44\ $ (GND))) # (!\cntrl|k\(6) & (!\cntrl|k[5]~44\ & VCC))
-- \cntrl|k[6]~46\ = CARRY((\cntrl|k\(6) & !\cntrl|k[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(6),
	datad => VCC,
	cin => \cntrl|k[5]~44\,
	combout => \cntrl|k[6]~45_combout\,
	cout => \cntrl|k[6]~46\);

-- Location: LCCOMB_X2_Y22_N14
\cntrl|k[7]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[7]~47_combout\ = (\cntrl|k\(7) & (!\cntrl|k[6]~46\)) # (!\cntrl|k\(7) & ((\cntrl|k[6]~46\) # (GND)))
-- \cntrl|k[7]~48\ = CARRY((!\cntrl|k[6]~46\) # (!\cntrl|k\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(7),
	datad => VCC,
	cin => \cntrl|k[6]~46\,
	combout => \cntrl|k[7]~47_combout\,
	cout => \cntrl|k[7]~48\);

-- Location: FF_X2_Y22_N15
\cntrl|k[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[7]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(7));

-- Location: LCCOMB_X2_Y22_N16
\cntrl|k[8]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[8]~49_combout\ = (\cntrl|k\(8) & (\cntrl|k[7]~48\ $ (GND))) # (!\cntrl|k\(8) & (!\cntrl|k[7]~48\ & VCC))
-- \cntrl|k[8]~50\ = CARRY((\cntrl|k\(8) & !\cntrl|k[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(8),
	datad => VCC,
	cin => \cntrl|k[7]~48\,
	combout => \cntrl|k[8]~49_combout\,
	cout => \cntrl|k[8]~50\);

-- Location: FF_X2_Y22_N17
\cntrl|k[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[8]~49_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(8));

-- Location: LCCOMB_X2_Y22_N18
\cntrl|k[9]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[9]~51_combout\ = (\cntrl|k\(9) & (!\cntrl|k[8]~50\)) # (!\cntrl|k\(9) & ((\cntrl|k[8]~50\) # (GND)))
-- \cntrl|k[9]~52\ = CARRY((!\cntrl|k[8]~50\) # (!\cntrl|k\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(9),
	datad => VCC,
	cin => \cntrl|k[8]~50\,
	combout => \cntrl|k[9]~51_combout\,
	cout => \cntrl|k[9]~52\);

-- Location: FF_X2_Y22_N19
\cntrl|k[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[9]~51_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(9));

-- Location: LCCOMB_X2_Y22_N20
\cntrl|k[10]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[10]~53_combout\ = (\cntrl|k\(10) & (\cntrl|k[9]~52\ $ (GND))) # (!\cntrl|k\(10) & (!\cntrl|k[9]~52\ & VCC))
-- \cntrl|k[10]~54\ = CARRY((\cntrl|k\(10) & !\cntrl|k[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(10),
	datad => VCC,
	cin => \cntrl|k[9]~52\,
	combout => \cntrl|k[10]~53_combout\,
	cout => \cntrl|k[10]~54\);

-- Location: FF_X2_Y22_N21
\cntrl|k[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[10]~53_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(10));

-- Location: LCCOMB_X2_Y22_N22
\cntrl|k[11]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[11]~55_combout\ = (\cntrl|k\(11) & (!\cntrl|k[10]~54\)) # (!\cntrl|k\(11) & ((\cntrl|k[10]~54\) # (GND)))
-- \cntrl|k[11]~56\ = CARRY((!\cntrl|k[10]~54\) # (!\cntrl|k\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(11),
	datad => VCC,
	cin => \cntrl|k[10]~54\,
	combout => \cntrl|k[11]~55_combout\,
	cout => \cntrl|k[11]~56\);

-- Location: LCCOMB_X2_Y22_N24
\cntrl|k[12]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[12]~57_combout\ = (\cntrl|k\(12) & (\cntrl|k[11]~56\ $ (GND))) # (!\cntrl|k\(12) & (!\cntrl|k[11]~56\ & VCC))
-- \cntrl|k[12]~58\ = CARRY((\cntrl|k\(12) & !\cntrl|k[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(12),
	datad => VCC,
	cin => \cntrl|k[11]~56\,
	combout => \cntrl|k[12]~57_combout\,
	cout => \cntrl|k[12]~58\);

-- Location: FF_X2_Y22_N25
\cntrl|k[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[12]~57_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(12));

-- Location: LCCOMB_X2_Y22_N26
\cntrl|k[13]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[13]~59_combout\ = (\cntrl|k\(13) & (!\cntrl|k[12]~58\)) # (!\cntrl|k\(13) & ((\cntrl|k[12]~58\) # (GND)))
-- \cntrl|k[13]~60\ = CARRY((!\cntrl|k[12]~58\) # (!\cntrl|k\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(13),
	datad => VCC,
	cin => \cntrl|k[12]~58\,
	combout => \cntrl|k[13]~59_combout\,
	cout => \cntrl|k[13]~60\);

-- Location: LCCOMB_X2_Y22_N28
\cntrl|k[14]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[14]~61_combout\ = (\cntrl|k\(14) & (\cntrl|k[13]~60\ $ (GND))) # (!\cntrl|k\(14) & (!\cntrl|k[13]~60\ & VCC))
-- \cntrl|k[14]~62\ = CARRY((\cntrl|k\(14) & !\cntrl|k[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(14),
	datad => VCC,
	cin => \cntrl|k[13]~60\,
	combout => \cntrl|k[14]~61_combout\,
	cout => \cntrl|k[14]~62\);

-- Location: LCCOMB_X2_Y21_N0
\cntrl|k[16]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[16]~65_combout\ = (\cntrl|k\(16) & (\cntrl|k[15]~64\ $ (GND))) # (!\cntrl|k\(16) & (!\cntrl|k[15]~64\ & VCC))
-- \cntrl|k[16]~66\ = CARRY((\cntrl|k\(16) & !\cntrl|k[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(16),
	datad => VCC,
	cin => \cntrl|k[15]~64\,
	combout => \cntrl|k[16]~65_combout\,
	cout => \cntrl|k[16]~66\);

-- Location: FF_X2_Y21_N1
\cntrl|k[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[16]~65_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(16));

-- Location: LCCOMB_X2_Y21_N2
\cntrl|k[17]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[17]~67_combout\ = (\cntrl|k\(17) & (!\cntrl|k[16]~66\)) # (!\cntrl|k\(17) & ((\cntrl|k[16]~66\) # (GND)))
-- \cntrl|k[17]~68\ = CARRY((!\cntrl|k[16]~66\) # (!\cntrl|k\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(17),
	datad => VCC,
	cin => \cntrl|k[16]~66\,
	combout => \cntrl|k[17]~67_combout\,
	cout => \cntrl|k[17]~68\);

-- Location: FF_X2_Y21_N3
\cntrl|k[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[17]~67_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(17));

-- Location: LCCOMB_X2_Y21_N6
\cntrl|k[19]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[19]~71_combout\ = (\cntrl|k\(19) & (!\cntrl|k[18]~70\)) # (!\cntrl|k\(19) & ((\cntrl|k[18]~70\) # (GND)))
-- \cntrl|k[19]~72\ = CARRY((!\cntrl|k[18]~70\) # (!\cntrl|k\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(19),
	datad => VCC,
	cin => \cntrl|k[18]~70\,
	combout => \cntrl|k[19]~71_combout\,
	cout => \cntrl|k[19]~72\);

-- Location: LCCOMB_X2_Y21_N8
\cntrl|k[20]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[20]~73_combout\ = (\cntrl|k\(20) & (\cntrl|k[19]~72\ $ (GND))) # (!\cntrl|k\(20) & (!\cntrl|k[19]~72\ & VCC))
-- \cntrl|k[20]~74\ = CARRY((\cntrl|k\(20) & !\cntrl|k[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(20),
	datad => VCC,
	cin => \cntrl|k[19]~72\,
	combout => \cntrl|k[20]~73_combout\,
	cout => \cntrl|k[20]~74\);

-- Location: FF_X2_Y21_N9
\cntrl|k[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[20]~73_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(20));

-- Location: LCCOMB_X2_Y21_N10
\cntrl|k[21]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[21]~75_combout\ = (\cntrl|k\(21) & (!\cntrl|k[20]~74\)) # (!\cntrl|k\(21) & ((\cntrl|k[20]~74\) # (GND)))
-- \cntrl|k[21]~76\ = CARRY((!\cntrl|k[20]~74\) # (!\cntrl|k\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(21),
	datad => VCC,
	cin => \cntrl|k[20]~74\,
	combout => \cntrl|k[21]~75_combout\,
	cout => \cntrl|k[21]~76\);

-- Location: LCCOMB_X2_Y21_N14
\cntrl|k[23]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[23]~79_combout\ = (\cntrl|k\(23) & (!\cntrl|k[22]~78\)) # (!\cntrl|k\(23) & ((\cntrl|k[22]~78\) # (GND)))
-- \cntrl|k[23]~80\ = CARRY((!\cntrl|k[22]~78\) # (!\cntrl|k\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(23),
	datad => VCC,
	cin => \cntrl|k[22]~78\,
	combout => \cntrl|k[23]~79_combout\,
	cout => \cntrl|k[23]~80\);

-- Location: FF_X2_Y21_N15
\cntrl|k[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[23]~79_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(23));

-- Location: LCCOMB_X2_Y21_N16
\cntrl|k[24]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[24]~81_combout\ = (\cntrl|k\(24) & (\cntrl|k[23]~80\ $ (GND))) # (!\cntrl|k\(24) & (!\cntrl|k[23]~80\ & VCC))
-- \cntrl|k[24]~82\ = CARRY((\cntrl|k\(24) & !\cntrl|k[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(24),
	datad => VCC,
	cin => \cntrl|k[23]~80\,
	combout => \cntrl|k[24]~81_combout\,
	cout => \cntrl|k[24]~82\);

-- Location: FF_X2_Y21_N17
\cntrl|k[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[24]~81_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(24));

-- Location: LCCOMB_X2_Y21_N18
\cntrl|k[25]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[25]~83_combout\ = (\cntrl|k\(25) & (!\cntrl|k[24]~82\)) # (!\cntrl|k\(25) & ((\cntrl|k[24]~82\) # (GND)))
-- \cntrl|k[25]~84\ = CARRY((!\cntrl|k[24]~82\) # (!\cntrl|k\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(25),
	datad => VCC,
	cin => \cntrl|k[24]~82\,
	combout => \cntrl|k[25]~83_combout\,
	cout => \cntrl|k[25]~84\);

-- Location: FF_X2_Y21_N19
\cntrl|k[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[25]~83_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(25));

-- Location: LCCOMB_X2_Y21_N20
\cntrl|k[26]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|k[26]~85_combout\ = (\cntrl|k\(26) & (\cntrl|k[25]~84\ $ (GND))) # (!\cntrl|k\(26) & (!\cntrl|k[25]~84\ & VCC))
-- \cntrl|k[26]~86\ = CARRY((\cntrl|k\(26) & !\cntrl|k[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|k\(26),
	datad => VCC,
	cin => \cntrl|k[25]~84\,
	combout => \cntrl|k[26]~85_combout\,
	cout => \cntrl|k[26]~86\);

-- Location: FF_X2_Y21_N21
\cntrl|k[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[26]~85_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(26));

-- Location: FF_X2_Y21_N23
\cntrl|k[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[27]~87_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(27));

-- Location: LCCOMB_X1_Y21_N0
\cntrl|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~8_combout\ = (\cntrl|k\(26)) # ((\cntrl|k\(27)) # ((\cntrl|k\(24)) # (\cntrl|k\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(26),
	datab => \cntrl|k\(27),
	datac => \cntrl|k\(24),
	datad => \cntrl|k\(25),
	combout => \cntrl|Equal0~8_combout\);

-- Location: FF_X2_Y22_N23
\cntrl|k[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[11]~55_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(11));

-- Location: LCCOMB_X1_Y22_N2
\cntrl|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~2_combout\ = (\cntrl|k\(10)) # ((\cntrl|k\(11)) # ((\cntrl|k\(9)) # (\cntrl|k\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(10),
	datab => \cntrl|k\(11),
	datac => \cntrl|k\(9),
	datad => \cntrl|k\(8),
	combout => \cntrl|Equal0~2_combout\);

-- Location: FF_X1_Y22_N17
\cntrl|k[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	asdata => \cntrl|k[14]~61_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(14));

-- Location: FF_X2_Y22_N27
\cntrl|k[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[13]~59_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(13));

-- Location: LCCOMB_X1_Y22_N4
\cntrl|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~3_combout\ = (\cntrl|k\(15)) # ((\cntrl|k\(14)) # ((\cntrl|k\(12)) # (\cntrl|k\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(15),
	datab => \cntrl|k\(14),
	datac => \cntrl|k\(12),
	datad => \cntrl|k\(13),
	combout => \cntrl|Equal0~3_combout\);

-- Location: FF_X2_Y22_N13
\cntrl|k[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[6]~45_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(6));

-- Location: LCCOMB_X1_Y22_N28
\cntrl|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~1_combout\ = (\cntrl|k\(5)) # ((\cntrl|k\(7)) # ((\cntrl|k\(4)) # (\cntrl|k\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(5),
	datab => \cntrl|k\(7),
	datac => \cntrl|k\(4),
	datad => \cntrl|k\(6),
	combout => \cntrl|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y22_N14
\cntrl|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~4_combout\ = (\cntrl|Equal0~0_combout\) # ((\cntrl|Equal0~2_combout\) # ((\cntrl|Equal0~3_combout\) # (\cntrl|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|Equal0~0_combout\,
	datab => \cntrl|Equal0~2_combout\,
	datac => \cntrl|Equal0~3_combout\,
	datad => \cntrl|Equal0~1_combout\,
	combout => \cntrl|Equal0~4_combout\);

-- Location: FF_X2_Y21_N7
\cntrl|k[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[19]~71_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(19));

-- Location: LCCOMB_X1_Y22_N8
\cntrl|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~5_combout\ = (\cntrl|k\(18)) # ((\cntrl|k\(19)) # ((\cntrl|k\(16)) # (\cntrl|k\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(18),
	datab => \cntrl|k\(19),
	datac => \cntrl|k\(16),
	datad => \cntrl|k\(17),
	combout => \cntrl|Equal0~5_combout\);

-- Location: FF_X2_Y21_N11
\cntrl|k[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \cntrl|k[21]~75_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \cntrl|k[31]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cntrl|k\(21));

-- Location: LCCOMB_X1_Y22_N18
\cntrl|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~6_combout\ = (\cntrl|k\(20)) # (\cntrl|k\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cntrl|k\(20),
	datad => \cntrl|k\(21),
	combout => \cntrl|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y22_N12
\cntrl|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~7_combout\ = (\cntrl|k\(22)) # ((\cntrl|k\(23)) # ((\cntrl|Equal0~5_combout\) # (\cntrl|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|k\(22),
	datab => \cntrl|k\(23),
	datac => \cntrl|Equal0~5_combout\,
	datad => \cntrl|Equal0~6_combout\,
	combout => \cntrl|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y22_N20
\cntrl|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|Equal0~10_combout\ = (\cntrl|Equal0~9_combout\) # ((\cntrl|Equal0~8_combout\) # ((\cntrl|Equal0~4_combout\) # (\cntrl|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|Equal0~9_combout\,
	datab => \cntrl|Equal0~8_combout\,
	datac => \cntrl|Equal0~4_combout\,
	datad => \cntrl|Equal0~7_combout\,
	combout => \cntrl|Equal0~10_combout\);

-- Location: LCCOMB_X1_Y22_N26
\cntrl|ready\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cntrl|ready~combout\ = (!\cntrl|Equal0~10_combout\ & \cntrl|r_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cntrl|Equal0~10_combout\,
	datad => \cntrl|r_state~q\,
	combout => \cntrl|ready~combout\);

-- Location: LCCOMB_X3_Y25_N14
\acc_rg|r_state[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|r_state[0]~8_combout\ = (\cntrl|always2~0_combout\ & (\acc_rg|r_state\(0) & VCC)) # (!\cntrl|always2~0_combout\ & (\acc_rg|r_state\(0) $ (VCC)))
-- \acc_rg|r_state[0]~9\ = CARRY((!\cntrl|always2~0_combout\ & \acc_rg|r_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cntrl|always2~0_combout\,
	datab => \acc_rg|r_state\(0),
	datad => VCC,
	combout => \acc_rg|r_state[0]~8_combout\,
	cout => \acc_rg|r_state[0]~9\);

-- Location: IOIBUF_X0_Y25_N1
\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X3_Y25_N12
\acc_rg|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|Selector7~0_combout\ = (\acc_rg|r_state\(0) & !\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \acc_rg|r_state\(0),
	datad => \start~input_o\,
	combout => \acc_rg|Selector7~0_combout\);

-- Location: FF_X3_Y25_N15
\acc_rg|r_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \acc_rg|r_state[0]~8_combout\,
	asdata => \acc_rg|Selector7~0_combout\,
	sload => \cntrl|ALT_INV_r_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc_rg|r_state\(0));

-- Location: LCCOMB_X3_Y25_N16
\acc_rg|r_state[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|r_state[1]~10_combout\ = (\acc_rg|r_state\(1) & (!\acc_rg|r_state[0]~9\)) # (!\acc_rg|r_state\(1) & ((\acc_rg|r_state[0]~9\) # (GND)))
-- \acc_rg|r_state[1]~11\ = CARRY((!\acc_rg|r_state[0]~9\) # (!\acc_rg|r_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acc_rg|r_state\(1),
	datad => VCC,
	cin => \acc_rg|r_state[0]~9\,
	combout => \acc_rg|r_state[1]~10_combout\,
	cout => \acc_rg|r_state[1]~11\);

-- Location: LCCOMB_X3_Y25_N10
\acc_rg|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|Selector6~0_combout\ = (!\start~input_o\ & \acc_rg|r_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \acc_rg|r_state\(1),
	combout => \acc_rg|Selector6~0_combout\);

-- Location: FF_X3_Y25_N17
\acc_rg|r_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \acc_rg|r_state[1]~10_combout\,
	asdata => \acc_rg|Selector6~0_combout\,
	sload => \cntrl|ALT_INV_r_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc_rg|r_state\(1));

-- Location: LCCOMB_X3_Y25_N18
\acc_rg|r_state[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|r_state[2]~12_combout\ = (\acc_rg|r_state\(2) & (\acc_rg|r_state[1]~11\ $ (GND))) # (!\acc_rg|r_state\(2) & (!\acc_rg|r_state[1]~11\ & VCC))
-- \acc_rg|r_state[2]~13\ = CARRY((\acc_rg|r_state\(2) & !\acc_rg|r_state[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acc_rg|r_state\(2),
	datad => VCC,
	cin => \acc_rg|r_state[1]~11\,
	combout => \acc_rg|r_state[2]~12_combout\,
	cout => \acc_rg|r_state[2]~13\);

-- Location: LCCOMB_X3_Y25_N4
\acc_rg|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|Selector5~0_combout\ = (!\start~input_o\ & \acc_rg|r_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \acc_rg|r_state\(2),
	combout => \acc_rg|Selector5~0_combout\);

-- Location: FF_X3_Y25_N19
\acc_rg|r_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \acc_rg|r_state[2]~12_combout\,
	asdata => \acc_rg|Selector5~0_combout\,
	sload => \cntrl|ALT_INV_r_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc_rg|r_state\(2));

-- Location: LCCOMB_X3_Y25_N20
\acc_rg|r_state[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|r_state[3]~14_combout\ = (\acc_rg|r_state\(3) & (!\acc_rg|r_state[2]~13\)) # (!\acc_rg|r_state\(3) & ((\acc_rg|r_state[2]~13\) # (GND)))
-- \acc_rg|r_state[3]~15\ = CARRY((!\acc_rg|r_state[2]~13\) # (!\acc_rg|r_state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acc_rg|r_state\(3),
	datad => VCC,
	cin => \acc_rg|r_state[2]~13\,
	combout => \acc_rg|r_state[3]~14_combout\,
	cout => \acc_rg|r_state[3]~15\);

-- Location: LCCOMB_X3_Y25_N2
\acc_rg|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|Selector4~0_combout\ = (!\start~input_o\ & \acc_rg|r_state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \acc_rg|r_state\(3),
	combout => \acc_rg|Selector4~0_combout\);

-- Location: FF_X3_Y25_N21
\acc_rg|r_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \acc_rg|r_state[3]~14_combout\,
	asdata => \acc_rg|Selector4~0_combout\,
	sload => \cntrl|ALT_INV_r_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc_rg|r_state\(3));

-- Location: LCCOMB_X27_Y28_N28
\out_unit|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out_unit|WideOr0~0_combout\ = (\acc_rg|r_state\(1) & (((\acc_rg|r_state\(3))))) # (!\acc_rg|r_state\(1) & (\acc_rg|r_state\(2) $ (((\acc_rg|r_state\(0) & !\acc_rg|r_state\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_rg|r_state\(2),
	datab => \acc_rg|r_state\(0),
	datac => \acc_rg|r_state\(3),
	datad => \acc_rg|r_state\(1),
	combout => \out_unit|WideOr0~0_combout\);

-- Location: LCCOMB_X27_Y28_N22
\out_unit|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out_unit|WideOr1~0_combout\ = (\acc_rg|r_state\(2) & ((\acc_rg|r_state\(3)) # (\acc_rg|r_state\(0) $ (\acc_rg|r_state\(1))))) # (!\acc_rg|r_state\(2) & (((\acc_rg|r_state\(3) & \acc_rg|r_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_rg|r_state\(2),
	datab => \acc_rg|r_state\(0),
	datac => \acc_rg|r_state\(3),
	datad => \acc_rg|r_state\(1),
	combout => \out_unit|WideOr1~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\out_unit|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out_unit|WideOr2~0_combout\ = (\acc_rg|r_state\(2) & (((\acc_rg|r_state\(3))))) # (!\acc_rg|r_state\(2) & (\acc_rg|r_state\(1) & ((\acc_rg|r_state\(3)) # (!\acc_rg|r_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_rg|r_state\(2),
	datab => \acc_rg|r_state\(0),
	datac => \acc_rg|r_state\(3),
	datad => \acc_rg|r_state\(1),
	combout => \out_unit|WideOr2~0_combout\);

-- Location: LCCOMB_X27_Y28_N2
\out_unit|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out_unit|WideOr3~0_combout\ = (\acc_rg|r_state\(1) & ((\acc_rg|r_state\(3)) # ((\acc_rg|r_state\(2) & \acc_rg|r_state\(0))))) # (!\acc_rg|r_state\(1) & (\acc_rg|r_state\(2) $ (((\acc_rg|r_state\(0) & !\acc_rg|r_state\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_rg|r_state\(2),
	datab => \acc_rg|r_state\(0),
	datac => \acc_rg|r_state\(3),
	datad => \acc_rg|r_state\(1),
	combout => \out_unit|WideOr3~0_combout\);

-- Location: LCCOMB_X27_Y28_N20
\out_unit|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out_unit|WideOr4~0_combout\ = (\acc_rg|r_state\(0)) # ((\acc_rg|r_state\(1) & ((\acc_rg|r_state\(3)))) # (!\acc_rg|r_state\(1) & (\acc_rg|r_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_rg|r_state\(2),
	datab => \acc_rg|r_state\(0),
	datac => \acc_rg|r_state\(3),
	datad => \acc_rg|r_state\(1),
	combout => \out_unit|WideOr4~0_combout\);

-- Location: LCCOMB_X27_Y28_N10
\out_unit|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out_unit|WideOr5~0_combout\ = (\acc_rg|r_state\(2) & ((\acc_rg|r_state\(3)) # ((\acc_rg|r_state\(0) & \acc_rg|r_state\(1))))) # (!\acc_rg|r_state\(2) & ((\acc_rg|r_state\(1)) # ((\acc_rg|r_state\(0) & !\acc_rg|r_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_rg|r_state\(2),
	datab => \acc_rg|r_state\(0),
	datac => \acc_rg|r_state\(3),
	datad => \acc_rg|r_state\(1),
	combout => \out_unit|WideOr5~0_combout\);

-- Location: LCCOMB_X27_Y28_N12
\out_unit|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \out_unit|WideOr6~0_combout\ = (\acc_rg|r_state\(2) & (!\acc_rg|r_state\(3) & ((!\acc_rg|r_state\(1)) # (!\acc_rg|r_state\(0))))) # (!\acc_rg|r_state\(2) & ((\acc_rg|r_state\(3) $ (\acc_rg|r_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc_rg|r_state\(2),
	datab => \acc_rg|r_state\(0),
	datac => \acc_rg|r_state\(3),
	datad => \acc_rg|r_state\(1),
	combout => \out_unit|WideOr6~0_combout\);

-- Location: IOIBUF_X41_Y15_N1
\Clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G9
\Clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X3_Y25_N22
\acc_rg|r_state[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|r_state[4]~16_combout\ = (\acc_rg|r_state\(4) & (\acc_rg|r_state[3]~15\ $ (GND))) # (!\acc_rg|r_state\(4) & (!\acc_rg|r_state[3]~15\ & VCC))
-- \acc_rg|r_state[4]~17\ = CARRY((\acc_rg|r_state\(4) & !\acc_rg|r_state[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc_rg|r_state\(4),
	datad => VCC,
	cin => \acc_rg|r_state[3]~15\,
	combout => \acc_rg|r_state[4]~16_combout\,
	cout => \acc_rg|r_state[4]~17\);

-- Location: LCCOMB_X3_Y25_N0
\acc_rg|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|Selector3~0_combout\ = (\acc_rg|r_state\(4) & !\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \acc_rg|r_state\(4),
	datad => \start~input_o\,
	combout => \acc_rg|Selector3~0_combout\);

-- Location: FF_X3_Y25_N23
\acc_rg|r_state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \acc_rg|r_state[4]~16_combout\,
	asdata => \acc_rg|Selector3~0_combout\,
	sload => \cntrl|ALT_INV_r_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc_rg|r_state\(4));

-- Location: LCCOMB_X3_Y25_N24
\acc_rg|r_state[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|r_state[5]~18_combout\ = (\acc_rg|r_state\(5) & (!\acc_rg|r_state[4]~17\)) # (!\acc_rg|r_state\(5) & ((\acc_rg|r_state[4]~17\) # (GND)))
-- \acc_rg|r_state[5]~19\ = CARRY((!\acc_rg|r_state[4]~17\) # (!\acc_rg|r_state\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \acc_rg|r_state\(5),
	datad => VCC,
	cin => \acc_rg|r_state[4]~17\,
	combout => \acc_rg|r_state[5]~18_combout\,
	cout => \acc_rg|r_state[5]~19\);

-- Location: LCCOMB_X3_Y25_N30
\acc_rg|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|Selector2~0_combout\ = (!\start~input_o\ & \acc_rg|r_state\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \acc_rg|r_state\(5),
	combout => \acc_rg|Selector2~0_combout\);

-- Location: FF_X3_Y25_N25
\acc_rg|r_state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \acc_rg|r_state[5]~18_combout\,
	asdata => \acc_rg|Selector2~0_combout\,
	sload => \cntrl|ALT_INV_r_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc_rg|r_state\(5));

-- Location: LCCOMB_X3_Y25_N26
\acc_rg|r_state[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|r_state[6]~20_combout\ = (\acc_rg|r_state\(6) & (\acc_rg|r_state[5]~19\ $ (GND))) # (!\acc_rg|r_state\(6) & (!\acc_rg|r_state[5]~19\ & VCC))
-- \acc_rg|r_state[6]~21\ = CARRY((\acc_rg|r_state\(6) & !\acc_rg|r_state[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc_rg|r_state\(6),
	datad => VCC,
	cin => \acc_rg|r_state[5]~19\,
	combout => \acc_rg|r_state[6]~20_combout\,
	cout => \acc_rg|r_state[6]~21\);

-- Location: LCCOMB_X3_Y25_N8
\acc_rg|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|Selector1~0_combout\ = (\acc_rg|r_state\(6) & !\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \acc_rg|r_state\(6),
	datad => \start~input_o\,
	combout => \acc_rg|Selector1~0_combout\);

-- Location: FF_X3_Y25_N27
\acc_rg|r_state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \acc_rg|r_state[6]~20_combout\,
	asdata => \acc_rg|Selector1~0_combout\,
	sload => \cntrl|ALT_INV_r_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc_rg|r_state\(6));

-- Location: LCCOMB_X3_Y25_N28
\acc_rg|r_state[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|r_state[7]~22_combout\ = \acc_rg|r_state[6]~21\ $ (\acc_rg|r_state\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \acc_rg|r_state\(7),
	cin => \acc_rg|r_state[6]~21\,
	combout => \acc_rg|r_state[7]~22_combout\);

-- Location: LCCOMB_X3_Y25_N6
\acc_rg|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \acc_rg|Selector0~0_combout\ = (!\start~input_o\ & \acc_rg|r_state\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datad => \acc_rg|r_state\(7),
	combout => \acc_rg|Selector0~0_combout\);

-- Location: FF_X3_Y25_N29
\acc_rg|r_state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \acc_rg|r_state[7]~22_combout\,
	asdata => \acc_rg|Selector0~0_combout\,
	sload => \cntrl|ALT_INV_r_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc_rg|r_state\(7));

ww_ready <= \ready~output_o\;

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;

ww_h <= \h~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;
END structure;


