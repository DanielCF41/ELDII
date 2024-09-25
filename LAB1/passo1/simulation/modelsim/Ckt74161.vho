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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Standard Edition"

-- DATE "03/05/2024 10:07:03"

-- 
-- Device: Altera EPM240F100C4 Package FBGA100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Ckt74161 IS
    PORT (
	QD : OUT std_logic;
	CLRN : IN std_logic;
	CLK : IN std_logic;
	ENP : IN std_logic;
	LDN : IN std_logic;
	A : IN std_logic;
	D : IN std_logic;
	ENT : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	QC : OUT std_logic;
	QB : OUT std_logic;
	QA : OUT std_logic;
	RCO : OUT std_logic
	);
END Ckt74161;

-- Design Ports Information


ARCHITECTURE structure OF Ckt74161 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_QD : std_logic;
SIGNAL ww_CLRN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ENP : std_logic;
SIGNAL ww_LDN : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_ENT : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_QC : std_logic;
SIGNAL ww_QB : std_logic;
SIGNAL ww_QA : std_logic;
SIGNAL ww_RCO : std_logic;
SIGNAL \inst|sub|82~0_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \ENP~combout\ : std_logic;
SIGNAL \D~combout\ : std_logic;
SIGNAL \CLRN~combout\ : std_logic;
SIGNAL \LDN~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \ENT~combout\ : std_logic;
SIGNAL \inst|sub|82\ : std_logic;
SIGNAL \inst|sub|82~COUT1_4\ : std_logic;
SIGNAL \inst|sub|9~regout\ : std_logic;
SIGNAL \inst|sub|81\ : std_logic;
SIGNAL \inst|sub|81~COUT1_2\ : std_logic;
SIGNAL \inst|sub|87~regout\ : std_logic;
SIGNAL \inst|sub|85\ : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \inst|sub|99~regout\ : std_logic;
SIGNAL \inst|sub|95\ : std_logic;
SIGNAL \inst|sub|95~COUT1_2\ : std_logic;
SIGNAL \inst|sub|110~regout\ : std_logic;
SIGNAL \inst|sub|105\ : std_logic;
SIGNAL \inst|sub|105~COUT1_6\ : std_logic;
SIGNAL \inst|sub|105~2\ : std_logic;
SIGNAL \ALT_INV_LDN~combout\ : std_logic;
SIGNAL \ALT_INV_CLRN~combout\ : std_logic;

BEGIN

QD <= ww_QD;
ww_CLRN <= CLRN;
ww_CLK <= CLK;
ww_ENP <= ENP;
ww_LDN <= LDN;
ww_A <= A;
ww_D <= D;
ww_ENT <= ENT;
ww_B <= B;
ww_C <= C;
QC <= ww_QC;
QB <= ww_QB;
QA <= ww_QA;
RCO <= ww_RCO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LDN~combout\ <= NOT \LDN~combout\;
\ALT_INV_CLRN~combout\ <= NOT \CLRN~combout\;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENP~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ENP,
	combout => \ENP~combout\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_D,
	combout => \D~combout\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLRN~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLRN,
	combout => \CLRN~combout\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LDN~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_LDN,
	combout => \LDN~combout\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B,
	combout => \B~combout\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A,
	combout => \A~combout\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENT~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ENT,
	combout => \ENT~combout\);

-- Location: LC_X5_Y4_N2
\inst|sub|82~0\ : maxii_lcell
-- Equation(s):
-- \inst|sub|82\ = CARRY((\ENT~combout\))
-- \inst|sub|82~COUT1_4\ = CARRY((\ENT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ENT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|82~0_combout\,
	cout0 => \inst|sub|82\,
	cout1 => \inst|sub|82~COUT1_4\);

-- Location: LC_X5_Y4_N3
\inst|sub|9\ : maxii_lcell
-- Equation(s):
-- \inst|sub|9~regout\ = DFFEAS(\inst|sub|9~regout\ $ (((\ENP~combout\ & (\inst|sub|82\)))), GLOBAL(\CLK~combout\), GLOBAL(\CLRN~combout\), , , \A~combout\, , , !\LDN~combout\)
-- \inst|sub|81\ = CARRY(((!\inst|sub|82\)) # (!\inst|sub|9~regout\))
-- \inst|sub|81~COUT1_2\ = CARRY(((!\inst|sub|82~COUT1_4\)) # (!\inst|sub|9~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst|sub|9~regout\,
	datab => \ENP~combout\,
	datac => \A~combout\,
	aclr => \ALT_INV_CLRN~combout\,
	sload => \ALT_INV_LDN~combout\,
	cin0 => \inst|sub|82\,
	cin1 => \inst|sub|82~COUT1_4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub|9~regout\,
	cout0 => \inst|sub|81\,
	cout1 => \inst|sub|81~COUT1_2\);

-- Location: LC_X5_Y4_N4
\inst|sub|87\ : maxii_lcell
-- Equation(s):
-- \inst|sub|87~regout\ = DFFEAS(\inst|sub|87~regout\ $ (((\ENP~combout\ & (!\inst|sub|81\)))), GLOBAL(\CLK~combout\), GLOBAL(\CLRN~combout\), , , \B~combout\, , , !\LDN~combout\)
-- \inst|sub|85\ = CARRY((\inst|sub|87~regout\ & ((!\inst|sub|81~COUT1_2\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a60a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst|sub|87~regout\,
	datab => \ENP~combout\,
	datac => \B~combout\,
	aclr => \ALT_INV_CLRN~combout\,
	sload => \ALT_INV_LDN~combout\,
	cin0 => \inst|sub|81\,
	cin1 => \inst|sub|81~COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub|87~regout\,
	cout => \inst|sub|85\);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C,
	combout => \C~combout\);

-- Location: LC_X5_Y4_N5
\inst|sub|99\ : maxii_lcell
-- Equation(s):
-- \inst|sub|99~regout\ = DFFEAS(\inst|sub|99~regout\ $ (((\ENP~combout\ & (\inst|sub|85\)))), GLOBAL(\CLK~combout\), GLOBAL(\CLRN~combout\), , , \C~combout\, , , !\LDN~combout\)
-- \inst|sub|95\ = CARRY(((!\inst|sub|85\)) # (!\inst|sub|99~regout\))
-- \inst|sub|95~COUT1_2\ = CARRY(((!\inst|sub|85\)) # (!\inst|sub|99~regout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "6a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst|sub|99~regout\,
	datab => \ENP~combout\,
	datac => \C~combout\,
	aclr => \ALT_INV_CLRN~combout\,
	sload => \ALT_INV_LDN~combout\,
	cin => \inst|sub|85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub|99~regout\,
	cout0 => \inst|sub|95\,
	cout1 => \inst|sub|95~COUT1_2\);

-- Location: LC_X5_Y4_N6
\inst|sub|110\ : maxii_lcell
-- Equation(s):
-- \inst|sub|110~regout\ = DFFEAS(\inst|sub|110~regout\ $ (((\ENP~combout\ & (!(!\inst|sub|85\ & \inst|sub|95\) # (\inst|sub|85\ & \inst|sub|95~COUT1_2\))))), GLOBAL(\CLK~combout\), GLOBAL(\CLRN~combout\), , , \D~combout\, , , !\LDN~combout\)
-- \inst|sub|105\ = CARRY((\inst|sub|110~regout\ & ((!\inst|sub|95\))))
-- \inst|sub|105~COUT1_6\ = CARRY((\inst|sub|110~regout\ & ((!\inst|sub|95~COUT1_2\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a60a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst|sub|110~regout\,
	datab => \ENP~combout\,
	datac => \D~combout\,
	aclr => \ALT_INV_CLRN~combout\,
	sload => \ALT_INV_LDN~combout\,
	cin => \inst|sub|85\,
	cin0 => \inst|sub|95\,
	cin1 => \inst|sub|95~COUT1_2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub|110~regout\,
	cout0 => \inst|sub|105\,
	cout1 => \inst|sub|105~COUT1_6\);

-- Location: LC_X5_Y4_N7
\inst|sub|105~1\ : maxii_lcell
-- Equation(s):
-- \inst|sub|105~2\ = ((((!\inst|sub|85\ & \inst|sub|105\) # (\inst|sub|85\ & \inst|sub|105~COUT1_6\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst|sub|85\,
	cin0 => \inst|sub|105\,
	cin1 => \inst|sub|105~COUT1_6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|105~2\);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QD~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|sub|110~regout\,
	oe => VCC,
	padio => ww_QD);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QC~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|sub|99~regout\,
	oe => VCC,
	padio => ww_QC);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QB~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|sub|87~regout\,
	oe => VCC,
	padio => ww_QB);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QA~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|sub|9~regout\,
	oe => VCC,
	padio => ww_QA);

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RCO~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|sub|105~2\,
	oe => VCC,
	padio => ww_RCO);
END structure;


