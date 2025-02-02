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

-- DATE "02/02/2025 13:07:32"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CaixaEletronico IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	confirma_operacao : IN std_logic;
	tipo_operacao : IN std_logic_vector(1 DOWNTO 0);
	valor_operacao : IN std_logic_vector(15 DOWNTO 0);
	saldo_atual : IN std_logic_vector(15 DOWNTO 0);
	saldo_novo : BUFFER std_logic_vector(15 DOWNTO 0);
	status : BUFFER std_logic
	);
END CaixaEletronico;

-- Design Ports Information
-- saldo_novo[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[5]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[8]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[9]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[10]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[11]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[12]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[13]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[14]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- status	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[15]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[15]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[0]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[1]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[4]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[4]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[14]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[14]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[13]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[13]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[12]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[12]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[11]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[11]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[9]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[9]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[10]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[10]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[8]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_atual[8]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tipo_operacao[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tipo_operacao[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirma_operacao	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CaixaEletronico IS
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
SIGNAL ww_confirma_operacao : std_logic;
SIGNAL ww_tipo_operacao : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_valor_operacao : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saldo_atual : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saldo_novo : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_status : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \saldo_atual[0]~input_o\ : std_logic;
SIGNAL \valor_operacao[0]~input_o\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \saldo_novo[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \confirma_operacao~input_o\ : std_logic;
SIGNAL \tipo_operacao[1]~input_o\ : std_logic;
SIGNAL \tipo_operacao[0]~input_o\ : std_logic;
SIGNAL \valor_operacao[15]~input_o\ : std_logic;
SIGNAL \valor_operacao[5]~input_o\ : std_logic;
SIGNAL \saldo_atual[6]~input_o\ : std_logic;
SIGNAL \valor_operacao[6]~input_o\ : std_logic;
SIGNAL \saldo_atual[7]~input_o\ : std_logic;
SIGNAL \valor_operacao[7]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \saldo_atual[5]~input_o\ : std_logic;
SIGNAL \saldo_atual[4]~input_o\ : std_logic;
SIGNAL \valor_operacao[4]~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \saldo_atual[12]~input_o\ : std_logic;
SIGNAL \saldo_atual[13]~input_o\ : std_logic;
SIGNAL \valor_operacao[12]~input_o\ : std_logic;
SIGNAL \valor_operacao[13]~input_o\ : std_logic;
SIGNAL \valor_operacao[14]~input_o\ : std_logic;
SIGNAL \saldo_atual[14]~input_o\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \valor_operacao[10]~input_o\ : std_logic;
SIGNAL \saldo_atual[10]~input_o\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \saldo_atual[11]~input_o\ : std_logic;
SIGNAL \valor_operacao[11]~input_o\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \saldo_atual[9]~input_o\ : std_logic;
SIGNAL \saldo_atual[8]~input_o\ : std_logic;
SIGNAL \valor_operacao[8]~input_o\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \valor_operacao[9]~input_o\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \saldo_atual[3]~input_o\ : std_logic;
SIGNAL \valor_operacao[3]~input_o\ : std_logic;
SIGNAL \saldo_atual[2]~input_o\ : std_logic;
SIGNAL \valor_operacao[1]~input_o\ : std_logic;
SIGNAL \saldo_atual[1]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \valor_operacao[2]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \saldo_atual[15]~input_o\ : std_logic;
SIGNAL \estado~17_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \estado.SAQUE~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado.MENU~q\ : std_logic;
SIGNAL \estado~16_combout\ : std_logic;
SIGNAL \estado.DEPOSITO~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \saldo_novo[0]~0_combout\ : std_logic;
SIGNAL \estado~18_combout\ : std_logic;
SIGNAL \estado.TRANSFERENCIA~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \saldo_novo[0]~reg0_q\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \saldo_novo[1]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \saldo_novo[1]~reg0_q\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \saldo_novo[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \saldo_novo[2]~reg0_q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \saldo_novo[3]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \saldo_novo[3]~reg0_q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \saldo_novo[4]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \saldo_novo[4]~reg0_q\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \saldo_novo[5]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \saldo_novo[5]~reg0_q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \saldo_novo[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \saldo_novo[6]~reg0_q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \saldo_novo[7]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \saldo_novo[7]~reg0_q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \saldo_novo[8]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \saldo_novo[8]~reg0_q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \saldo_novo[9]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \saldo_novo[9]~reg0_q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \saldo_novo[10]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \saldo_novo[10]~reg0_q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \saldo_novo[11]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \saldo_novo[11]~reg0_q\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \saldo_novo[12]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \saldo_novo[12]~reg0_q\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \saldo_novo[13]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \saldo_novo[13]~reg0_q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \saldo_novo[14]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \saldo_novo[14]~reg0_q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \saldo_novo[15]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \saldo_novo[15]~reg0_q\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \estado.ERRO~q\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \status~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_confirma_operacao~input_o\ : std_logic;
SIGNAL \ALT_INV_tipo_operacao[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_tipo_operacao[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_saldo_atual[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector18~3_combout\ : std_logic;
SIGNAL \ALT_INV_estado.ERRO~q\ : std_logic;
SIGNAL \ALT_INV_estado.TRANSFERENCIA~q\ : std_logic;
SIGNAL \ALT_INV_estado.MENU~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.SAQUE~q\ : std_logic;
SIGNAL \ALT_INV_estado.DEPOSITO~q\ : std_logic;
SIGNAL \ALT_INV_status~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_confirma_operacao <= confirma_operacao;
ww_tipo_operacao <= tipo_operacao;
ww_valor_operacao <= valor_operacao;
ww_saldo_atual <= saldo_atual;
saldo_novo <= ww_saldo_novo;
status <= ww_status;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_confirma_operacao~input_o\ <= NOT \confirma_operacao~input_o\;
\ALT_INV_tipo_operacao[0]~input_o\ <= NOT \tipo_operacao[0]~input_o\;
\ALT_INV_tipo_operacao[1]~input_o\ <= NOT \tipo_operacao[1]~input_o\;
\ALT_INV_saldo_atual[8]~input_o\ <= NOT \saldo_atual[8]~input_o\;
\ALT_INV_valor_operacao[8]~input_o\ <= NOT \valor_operacao[8]~input_o\;
\ALT_INV_saldo_atual[10]~input_o\ <= NOT \saldo_atual[10]~input_o\;
\ALT_INV_valor_operacao[10]~input_o\ <= NOT \valor_operacao[10]~input_o\;
\ALT_INV_saldo_atual[9]~input_o\ <= NOT \saldo_atual[9]~input_o\;
\ALT_INV_valor_operacao[9]~input_o\ <= NOT \valor_operacao[9]~input_o\;
\ALT_INV_saldo_atual[11]~input_o\ <= NOT \saldo_atual[11]~input_o\;
\ALT_INV_valor_operacao[11]~input_o\ <= NOT \valor_operacao[11]~input_o\;
\ALT_INV_saldo_atual[12]~input_o\ <= NOT \saldo_atual[12]~input_o\;
\ALT_INV_valor_operacao[12]~input_o\ <= NOT \valor_operacao[12]~input_o\;
\ALT_INV_saldo_atual[13]~input_o\ <= NOT \saldo_atual[13]~input_o\;
\ALT_INV_valor_operacao[13]~input_o\ <= NOT \valor_operacao[13]~input_o\;
\ALT_INV_saldo_atual[14]~input_o\ <= NOT \saldo_atual[14]~input_o\;
\ALT_INV_valor_operacao[14]~input_o\ <= NOT \valor_operacao[14]~input_o\;
\ALT_INV_saldo_atual[4]~input_o\ <= NOT \saldo_atual[4]~input_o\;
\ALT_INV_valor_operacao[4]~input_o\ <= NOT \valor_operacao[4]~input_o\;
\ALT_INV_saldo_atual[6]~input_o\ <= NOT \saldo_atual[6]~input_o\;
\ALT_INV_valor_operacao[6]~input_o\ <= NOT \valor_operacao[6]~input_o\;
\ALT_INV_saldo_atual[7]~input_o\ <= NOT \saldo_atual[7]~input_o\;
\ALT_INV_valor_operacao[7]~input_o\ <= NOT \valor_operacao[7]~input_o\;
\ALT_INV_saldo_atual[5]~input_o\ <= NOT \saldo_atual[5]~input_o\;
\ALT_INV_valor_operacao[5]~input_o\ <= NOT \valor_operacao[5]~input_o\;
\ALT_INV_saldo_atual[1]~input_o\ <= NOT \saldo_atual[1]~input_o\;
\ALT_INV_valor_operacao[1]~input_o\ <= NOT \valor_operacao[1]~input_o\;
\ALT_INV_valor_operacao[0]~input_o\ <= NOT \valor_operacao[0]~input_o\;
\ALT_INV_saldo_atual[2]~input_o\ <= NOT \saldo_atual[2]~input_o\;
\ALT_INV_valor_operacao[2]~input_o\ <= NOT \valor_operacao[2]~input_o\;
\ALT_INV_saldo_atual[3]~input_o\ <= NOT \saldo_atual[3]~input_o\;
\ALT_INV_valor_operacao[3]~input_o\ <= NOT \valor_operacao[3]~input_o\;
\ALT_INV_saldo_atual[15]~input_o\ <= NOT \saldo_atual[15]~input_o\;
\ALT_INV_valor_operacao[15]~input_o\ <= NOT \valor_operacao[15]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_saldo_atual[0]~input_o\ <= NOT \saldo_atual[0]~input_o\;
\ALT_INV_Selector18~3_combout\ <= NOT \Selector18~3_combout\;
\ALT_INV_estado.ERRO~q\ <= NOT \estado.ERRO~q\;
\ALT_INV_estado.TRANSFERENCIA~q\ <= NOT \estado.TRANSFERENCIA~q\;
\ALT_INV_estado.MENU~q\ <= NOT \estado.MENU~q\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_estado.SAQUE~q\ <= NOT \estado.SAQUE~q\;
\ALT_INV_estado.DEPOSITO~q\ <= NOT \estado.DEPOSITO~q\;
\ALT_INV_status~reg0_q\ <= NOT \status~reg0_q\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;

-- Location: IOOBUF_X89_Y6_N22
\saldo_novo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(0));

-- Location: IOOBUF_X56_Y0_N2
\saldo_novo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(1));

-- Location: IOOBUF_X60_Y0_N36
\saldo_novo[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(2));

-- Location: IOOBUF_X60_Y0_N53
\saldo_novo[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(3));

-- Location: IOOBUF_X89_Y6_N5
\saldo_novo[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(4));

-- Location: IOOBUF_X72_Y0_N19
\saldo_novo[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(5));

-- Location: IOOBUF_X54_Y0_N53
\saldo_novo[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(6));

-- Location: IOOBUF_X54_Y0_N19
\saldo_novo[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(7));

-- Location: IOOBUF_X52_Y0_N36
\saldo_novo[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(8));

-- Location: IOOBUF_X89_Y8_N56
\saldo_novo[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(9));

-- Location: IOOBUF_X54_Y0_N36
\saldo_novo[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(10));

-- Location: IOOBUF_X60_Y0_N2
\saldo_novo[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(11));

-- Location: IOOBUF_X56_Y0_N19
\saldo_novo[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(12));

-- Location: IOOBUF_X60_Y0_N19
\saldo_novo[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(13));

-- Location: IOOBUF_X54_Y0_N2
\saldo_novo[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(14));

-- Location: IOOBUF_X50_Y0_N76
\saldo_novo[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saldo_novo[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_saldo_novo(15));

-- Location: IOOBUF_X72_Y0_N53
\status~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \status~reg0_q\,
	devoe => ww_devoe,
	o => ww_status);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X66_Y0_N75
\saldo_atual[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(0),
	o => \saldo_atual[0]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\valor_operacao[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(0),
	o => \valor_operacao[0]~input_o\);

-- Location: LABCELL_X70_Y4_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\saldo_atual[0]~input_o\ $ (!\valor_operacao[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\saldo_atual[0]~input_o\ $ (!\valor_operacao[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~3\ = SHARE((!\valor_operacao[0]~input_o\) # (\saldo_atual[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_saldo_atual[0]~input_o\,
	datad => \ALT_INV_valor_operacao[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

-- Location: LABCELL_X71_Y4_N42
\saldo_novo[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[0]~reg0feeder_combout\ = ( \Add1~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~1_sumout\,
	combout => \saldo_novo[0]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \saldo_atual[0]~input_o\ ) + ( \valor_operacao[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \saldo_atual[0]~input_o\ ) + ( \valor_operacao[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saldo_atual[0]~input_o\,
	datac => \ALT_INV_valor_operacao[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X56_Y0_N35
\confirma_operacao~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirma_operacao,
	o => \confirma_operacao~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\tipo_operacao[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tipo_operacao(1),
	o => \tipo_operacao[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\tipo_operacao[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tipo_operacao(0),
	o => \tipo_operacao[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\valor_operacao[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(15),
	o => \valor_operacao[15]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\valor_operacao[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(5),
	o => \valor_operacao[5]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\saldo_atual[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(6),
	o => \saldo_atual[6]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\valor_operacao[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(6),
	o => \valor_operacao[6]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\saldo_atual[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(7),
	o => \saldo_atual[7]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\valor_operacao[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(7),
	o => \valor_operacao[7]~input_o\);

-- Location: MLABCELL_X72_Y4_N33
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \valor_operacao[7]~input_o\ & ( (\saldo_atual[7]~input_o\ & (!\saldo_atual[6]~input_o\ $ (\valor_operacao[6]~input_o\))) ) ) # ( !\valor_operacao[7]~input_o\ & ( (!\saldo_atual[7]~input_o\ & (!\saldo_atual[6]~input_o\ $ 
-- (\valor_operacao[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[6]~input_o\,
	datac => \ALT_INV_valor_operacao[6]~input_o\,
	datad => \ALT_INV_saldo_atual[7]~input_o\,
	dataf => \ALT_INV_valor_operacao[7]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X68_Y0_N18
\saldo_atual[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(5),
	o => \saldo_atual[5]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\saldo_atual[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(4),
	o => \saldo_atual[4]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\valor_operacao[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(4),
	o => \valor_operacao[4]~input_o\);

-- Location: LABCELL_X73_Y4_N24
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \valor_operacao[4]~input_o\ & ( (\LessThan0~2_combout\ & (\saldo_atual[4]~input_o\ & (!\valor_operacao[5]~input_o\ $ (\saldo_atual[5]~input_o\)))) ) ) # ( !\valor_operacao[4]~input_o\ & ( (\LessThan0~2_combout\ & 
-- (!\saldo_atual[4]~input_o\ & (!\valor_operacao[5]~input_o\ $ (\saldo_atual[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000000001000010000000000000000001000010000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[5]~input_o\,
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_saldo_atual[5]~input_o\,
	datad => \ALT_INV_saldo_atual[4]~input_o\,
	dataf => \ALT_INV_valor_operacao[4]~input_o\,
	combout => \LessThan0~3_combout\);

-- Location: MLABCELL_X72_Y4_N42
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \saldo_atual[6]~input_o\ & ( (!\saldo_atual[7]~input_o\ & \valor_operacao[7]~input_o\) ) ) # ( !\saldo_atual[6]~input_o\ & ( (!\valor_operacao[6]~input_o\ & (!\saldo_atual[7]~input_o\ & \valor_operacao[7]~input_o\)) # 
-- (\valor_operacao[6]~input_o\ & ((!\saldo_atual[7]~input_o\) # (\valor_operacao[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[6]~input_o\,
	datac => \ALT_INV_saldo_atual[7]~input_o\,
	datad => \ALT_INV_valor_operacao[7]~input_o\,
	dataf => \ALT_INV_saldo_atual[6]~input_o\,
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X73_Y4_N30
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \saldo_atual[4]~input_o\ & ( \valor_operacao[4]~input_o\ & ( (!\LessThan0~4_combout\ & ((!\valor_operacao[5]~input_o\) # ((!\LessThan0~2_combout\) # (\saldo_atual[5]~input_o\)))) ) ) ) # ( !\saldo_atual[4]~input_o\ & ( 
-- \valor_operacao[4]~input_o\ & ( (!\LessThan0~4_combout\ & ((!\LessThan0~2_combout\) # ((!\valor_operacao[5]~input_o\ & \saldo_atual[5]~input_o\)))) ) ) ) # ( \saldo_atual[4]~input_o\ & ( !\valor_operacao[4]~input_o\ & ( (!\LessThan0~4_combout\ & 
-- ((!\valor_operacao[5]~input_o\) # ((!\LessThan0~2_combout\) # (\saldo_atual[5]~input_o\)))) ) ) ) # ( !\saldo_atual[4]~input_o\ & ( !\valor_operacao[4]~input_o\ & ( (!\LessThan0~4_combout\ & ((!\valor_operacao[5]~input_o\) # ((!\LessThan0~2_combout\) # 
-- (\saldo_atual[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001100110011001000110011001100000010001100110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[5]~input_o\,
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => \ALT_INV_saldo_atual[5]~input_o\,
	datad => \ALT_INV_LessThan0~2_combout\,
	datae => \ALT_INV_saldo_atual[4]~input_o\,
	dataf => \ALT_INV_valor_operacao[4]~input_o\,
	combout => \LessThan0~5_combout\);

-- Location: IOIBUF_X66_Y0_N92
\saldo_atual[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(12),
	o => \saldo_atual[12]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\saldo_atual[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(13),
	o => \saldo_atual[13]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\valor_operacao[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(12),
	o => \valor_operacao[12]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\valor_operacao[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(13),
	o => \valor_operacao[13]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\valor_operacao[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(14),
	o => \valor_operacao[14]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\saldo_atual[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(14),
	o => \saldo_atual[14]~input_o\);

-- Location: LABCELL_X68_Y4_N48
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \valor_operacao[14]~input_o\ & ( \saldo_atual[14]~input_o\ & ( (!\saldo_atual[12]~input_o\ & (!\valor_operacao[12]~input_o\ & (!\saldo_atual[13]~input_o\ $ (\valor_operacao[13]~input_o\)))) # (\saldo_atual[12]~input_o\ & 
-- (\valor_operacao[12]~input_o\ & (!\saldo_atual[13]~input_o\ $ (\valor_operacao[13]~input_o\)))) ) ) ) # ( !\valor_operacao[14]~input_o\ & ( !\saldo_atual[14]~input_o\ & ( (!\saldo_atual[12]~input_o\ & (!\valor_operacao[12]~input_o\ & 
-- (!\saldo_atual[13]~input_o\ $ (\valor_operacao[13]~input_o\)))) # (\saldo_atual[12]~input_o\ & (\valor_operacao[12]~input_o\ & (!\saldo_atual[13]~input_o\ $ (\valor_operacao[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[12]~input_o\,
	datab => \ALT_INV_saldo_atual[13]~input_o\,
	datac => \ALT_INV_valor_operacao[12]~input_o\,
	datad => \ALT_INV_valor_operacao[13]~input_o\,
	datae => \ALT_INV_valor_operacao[14]~input_o\,
	dataf => \ALT_INV_saldo_atual[14]~input_o\,
	combout => \LessThan0~6_combout\);

-- Location: IOIBUF_X70_Y0_N18
\valor_operacao[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(10),
	o => \valor_operacao[10]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\saldo_atual[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(10),
	o => \saldo_atual[10]~input_o\);

-- Location: LABCELL_X68_Y4_N54
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( \valor_operacao[14]~input_o\ & ( \saldo_atual[14]~input_o\ & ( (!\saldo_atual[13]~input_o\ & (((!\saldo_atual[12]~input_o\ & \valor_operacao[12]~input_o\)) # (\valor_operacao[13]~input_o\))) # (\saldo_atual[13]~input_o\ & 
-- (!\saldo_atual[12]~input_o\ & (\valor_operacao[12]~input_o\ & \valor_operacao[13]~input_o\))) ) ) ) # ( \valor_operacao[14]~input_o\ & ( !\saldo_atual[14]~input_o\ ) ) # ( !\valor_operacao[14]~input_o\ & ( !\saldo_atual[14]~input_o\ & ( 
-- (!\saldo_atual[13]~input_o\ & (((!\saldo_atual[12]~input_o\ & \valor_operacao[12]~input_o\)) # (\valor_operacao[13]~input_o\))) # (\saldo_atual[13]~input_o\ & (!\saldo_atual[12]~input_o\ & (\valor_operacao[12]~input_o\ & \valor_operacao[13]~input_o\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011001110111111111111111100000000000000000000100011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[12]~input_o\,
	datab => \ALT_INV_saldo_atual[13]~input_o\,
	datac => \ALT_INV_valor_operacao[12]~input_o\,
	datad => \ALT_INV_valor_operacao[13]~input_o\,
	datae => \ALT_INV_valor_operacao[14]~input_o\,
	dataf => \ALT_INV_saldo_atual[14]~input_o\,
	combout => \LessThan0~11_combout\);

-- Location: IOIBUF_X70_Y0_N52
\saldo_atual[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(11),
	o => \saldo_atual[11]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\valor_operacao[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(11),
	o => \valor_operacao[11]~input_o\);

-- Location: LABCELL_X73_Y4_N18
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( \saldo_atual[11]~input_o\ & ( \valor_operacao[11]~input_o\ & ( (!\LessThan0~11_combout\ & ((!\LessThan0~6_combout\) # ((!\valor_operacao[10]~input_o\) # (\saldo_atual[10]~input_o\)))) ) ) ) # ( !\saldo_atual[11]~input_o\ & ( 
-- \valor_operacao[11]~input_o\ & ( (!\LessThan0~6_combout\ & !\LessThan0~11_combout\) ) ) ) # ( \saldo_atual[11]~input_o\ & ( !\valor_operacao[11]~input_o\ & ( !\LessThan0~11_combout\ ) ) ) # ( !\saldo_atual[11]~input_o\ & ( !\valor_operacao[11]~input_o\ & 
-- ( (!\LessThan0~11_combout\ & ((!\LessThan0~6_combout\) # ((!\valor_operacao[10]~input_o\) # (\saldo_atual[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111100000000111111110000000010101010000000001110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~6_combout\,
	datab => \ALT_INV_valor_operacao[10]~input_o\,
	datac => \ALT_INV_saldo_atual[10]~input_o\,
	datad => \ALT_INV_LessThan0~11_combout\,
	datae => \ALT_INV_saldo_atual[11]~input_o\,
	dataf => \ALT_INV_valor_operacao[11]~input_o\,
	combout => \LessThan0~12_combout\);

-- Location: IOIBUF_X72_Y0_N35
\saldo_atual[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(9),
	o => \saldo_atual[9]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\saldo_atual[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(8),
	o => \saldo_atual[8]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\valor_operacao[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(8),
	o => \valor_operacao[8]~input_o\);

-- Location: MLABCELL_X72_Y4_N9
\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( \valor_operacao[8]~input_o\ & ( !\saldo_atual[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_saldo_atual[8]~input_o\,
	dataf => \ALT_INV_valor_operacao[8]~input_o\,
	combout => \LessThan0~13_combout\);

-- Location: LABCELL_X73_Y4_N48
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( !\saldo_atual[11]~input_o\ & ( \valor_operacao[11]~input_o\ ) ) # ( \saldo_atual[11]~input_o\ & ( !\valor_operacao[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_saldo_atual[11]~input_o\,
	dataf => \ALT_INV_valor_operacao[11]~input_o\,
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X73_Y4_N57
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = !\saldo_atual[10]~input_o\ $ (!\valor_operacao[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[10]~input_o\,
	datac => \ALT_INV_valor_operacao[10]~input_o\,
	combout => \LessThan0~8_combout\);

-- Location: IOIBUF_X89_Y4_N61
\valor_operacao[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(9),
	o => \valor_operacao[9]~input_o\);

-- Location: LABCELL_X73_Y4_N6
\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = ( !\LessThan0~8_combout\ & ( \valor_operacao[9]~input_o\ & ( (!\LessThan0~7_combout\ & (\LessThan0~6_combout\ & ((!\saldo_atual[9]~input_o\) # (\LessThan0~13_combout\)))) ) ) ) # ( !\LessThan0~8_combout\ & ( 
-- !\valor_operacao[9]~input_o\ & ( (!\saldo_atual[9]~input_o\ & (\LessThan0~13_combout\ & (!\LessThan0~7_combout\ & \LessThan0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000101100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[9]~input_o\,
	datab => \ALT_INV_LessThan0~13_combout\,
	datac => \ALT_INV_LessThan0~7_combout\,
	datad => \ALT_INV_LessThan0~6_combout\,
	datae => \ALT_INV_LessThan0~8_combout\,
	dataf => \ALT_INV_valor_operacao[9]~input_o\,
	combout => \LessThan0~14_combout\);

-- Location: IOIBUF_X64_Y0_N18
\saldo_atual[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(3),
	o => \saldo_atual[3]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\valor_operacao[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(3),
	o => \valor_operacao[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\saldo_atual[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(2),
	o => \saldo_atual[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\valor_operacao[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(1),
	o => \valor_operacao[1]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\saldo_atual[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(1),
	o => \saldo_atual[1]~input_o\);

-- Location: LABCELL_X70_Y4_N51
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \saldo_atual[1]~input_o\ & ( (\valor_operacao[0]~input_o\ & (\valor_operacao[1]~input_o\ & !\saldo_atual[0]~input_o\)) ) ) # ( !\saldo_atual[1]~input_o\ & ( ((\valor_operacao[0]~input_o\ & !\saldo_atual[0]~input_o\)) # 
-- (\valor_operacao[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001111010111110000111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[0]~input_o\,
	datac => \ALT_INV_valor_operacao[1]~input_o\,
	datad => \ALT_INV_saldo_atual[0]~input_o\,
	dataf => \ALT_INV_saldo_atual[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X62_Y0_N1
\valor_operacao[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(2),
	o => \valor_operacao[2]~input_o\);

-- Location: LABCELL_X70_Y4_N54
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \valor_operacao[2]~input_o\ & ( (!\saldo_atual[3]~input_o\ & (((!\saldo_atual[2]~input_o\) # (\LessThan0~0_combout\)) # (\valor_operacao[3]~input_o\))) # (\saldo_atual[3]~input_o\ & (\valor_operacao[3]~input_o\ & 
-- ((!\saldo_atual[2]~input_o\) # (\LessThan0~0_combout\)))) ) ) # ( !\valor_operacao[2]~input_o\ & ( (!\saldo_atual[3]~input_o\ & (((!\saldo_atual[2]~input_o\ & \LessThan0~0_combout\)) # (\valor_operacao[3]~input_o\))) # (\saldo_atual[3]~input_o\ & 
-- (\valor_operacao[3]~input_o\ & (!\saldo_atual[2]~input_o\ & \LessThan0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010110010001000101011001010110010101110111011001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[3]~input_o\,
	datab => \ALT_INV_valor_operacao[3]~input_o\,
	datac => \ALT_INV_saldo_atual[2]~input_o\,
	datad => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_valor_operacao[2]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X72_Y4_N36
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \valor_operacao[8]~input_o\ & ( !\saldo_atual[8]~input_o\ ) ) # ( !\valor_operacao[8]~input_o\ & ( \saldo_atual[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saldo_atual[8]~input_o\,
	dataf => \ALT_INV_valor_operacao[8]~input_o\,
	combout => \LessThan0~9_combout\);

-- Location: LABCELL_X73_Y4_N42
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( !\LessThan0~8_combout\ & ( \saldo_atual[9]~input_o\ & ( (!\LessThan0~9_combout\ & (!\LessThan0~7_combout\ & (\valor_operacao[9]~input_o\ & \LessThan0~6_combout\))) ) ) ) # ( !\LessThan0~8_combout\ & ( !\saldo_atual[9]~input_o\ & 
-- ( (!\LessThan0~9_combout\ & (!\LessThan0~7_combout\ & (!\valor_operacao[9]~input_o\ & \LessThan0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~9_combout\,
	datab => \ALT_INV_LessThan0~7_combout\,
	datac => \ALT_INV_valor_operacao[9]~input_o\,
	datad => \ALT_INV_LessThan0~6_combout\,
	datae => \ALT_INV_LessThan0~8_combout\,
	dataf => \ALT_INV_saldo_atual[9]~input_o\,
	combout => \LessThan0~10_combout\);

-- Location: LABCELL_X73_Y4_N36
\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( \LessThan0~1_combout\ & ( \LessThan0~10_combout\ & ( (!\LessThan0~3_combout\ & (\LessThan0~5_combout\ & (\LessThan0~12_combout\ & !\LessThan0~14_combout\))) ) ) ) # ( !\LessThan0~1_combout\ & ( \LessThan0~10_combout\ & ( 
-- (\LessThan0~5_combout\ & (\LessThan0~12_combout\ & !\LessThan0~14_combout\)) ) ) ) # ( \LessThan0~1_combout\ & ( !\LessThan0~10_combout\ & ( (\LessThan0~12_combout\ & !\LessThan0~14_combout\) ) ) ) # ( !\LessThan0~1_combout\ & ( !\LessThan0~10_combout\ & 
-- ( (\LessThan0~12_combout\ & !\LessThan0~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000011000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_LessThan0~5_combout\,
	datac => \ALT_INV_LessThan0~12_combout\,
	datad => \ALT_INV_LessThan0~14_combout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~10_combout\,
	combout => \LessThan0~15_combout\);

-- Location: IOIBUF_X68_Y0_N35
\saldo_atual[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_atual(15),
	o => \saldo_atual[15]~input_o\);

-- Location: MLABCELL_X72_Y4_N45
\estado~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado~17_combout\ = ( !\estado.MENU~q\ & ( (\confirma_operacao~input_o\ & (\tipo_operacao[1]~input_o\ & !\tipo_operacao[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_confirma_operacao~input_o\,
	datac => \ALT_INV_tipo_operacao[1]~input_o\,
	datad => \ALT_INV_tipo_operacao[0]~input_o\,
	dataf => \ALT_INV_estado.MENU~q\,
	combout => \estado~17_combout\);

-- Location: IOIBUF_X72_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X72_Y4_N47
\estado.SAQUE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado~17_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.SAQUE~q\);

-- Location: LABCELL_X71_Y4_N30
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \estado.MENU~q\ & ( \estado.SAQUE~q\ & ( (!\valor_operacao[15]~input_o\ & (!\LessThan0~15_combout\ & !\saldo_atual[15]~input_o\)) # (\valor_operacao[15]~input_o\ & ((!\LessThan0~15_combout\) # (!\saldo_atual[15]~input_o\))) ) ) ) 
-- # ( !\estado.MENU~q\ & ( \estado.SAQUE~q\ & ( ((!\valor_operacao[15]~input_o\ & (!\LessThan0~15_combout\ & !\saldo_atual[15]~input_o\)) # (\valor_operacao[15]~input_o\ & ((!\LessThan0~15_combout\) # (!\saldo_atual[15]~input_o\)))) # 
-- (\confirma_operacao~input_o\) ) ) ) # ( !\estado.MENU~q\ & ( !\estado.SAQUE~q\ & ( \confirma_operacao~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011011111010011111101110101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[15]~input_o\,
	datab => \ALT_INV_LessThan0~15_combout\,
	datac => \ALT_INV_confirma_operacao~input_o\,
	datad => \ALT_INV_saldo_atual[15]~input_o\,
	datae => \ALT_INV_estado.MENU~q\,
	dataf => \ALT_INV_estado.SAQUE~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X71_Y4_N32
\estado.MENU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.MENU~q\);

-- Location: MLABCELL_X72_Y4_N24
\estado~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado~16_combout\ = ( !\estado.MENU~q\ & ( (\confirma_operacao~input_o\ & (!\tipo_operacao[1]~input_o\ & \tipo_operacao[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_confirma_operacao~input_o\,
	datab => \ALT_INV_tipo_operacao[1]~input_o\,
	datac => \ALT_INV_tipo_operacao[0]~input_o\,
	dataf => \ALT_INV_estado.MENU~q\,
	combout => \estado~16_combout\);

-- Location: FF_X72_Y4_N26
\estado.DEPOSITO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.DEPOSITO~q\);

-- Location: LABCELL_X71_Y4_N54
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~1_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_saldo_atual[0]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector17~0_combout\);

-- Location: LABCELL_X71_Y4_N3
\saldo_novo[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[0]~0_combout\ = ( \estado.SAQUE~q\ & ( (!\valor_operacao[15]~input_o\ & (!\LessThan0~15_combout\ & !\saldo_atual[15]~input_o\)) # (\valor_operacao[15]~input_o\ & ((!\LessThan0~15_combout\) # (!\saldo_atual[15]~input_o\))) ) ) # ( 
-- !\estado.SAQUE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111010100110101001101010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[15]~input_o\,
	datab => \ALT_INV_LessThan0~15_combout\,
	datac => \ALT_INV_saldo_atual[15]~input_o\,
	dataf => \ALT_INV_estado.SAQUE~q\,
	combout => \saldo_novo[0]~0_combout\);

-- Location: MLABCELL_X72_Y4_N54
\estado~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado~18_combout\ = ( !\estado.MENU~q\ & ( (\tipo_operacao[1]~input_o\ & (\confirma_operacao~input_o\ & \tipo_operacao[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_tipo_operacao[1]~input_o\,
	datac => \ALT_INV_confirma_operacao~input_o\,
	datad => \ALT_INV_tipo_operacao[0]~input_o\,
	dataf => \ALT_INV_estado.MENU~q\,
	combout => \estado~18_combout\);

-- Location: FF_X71_Y4_N35
\estado.TRANSFERENCIA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \estado~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.TRANSFERENCIA~q\);

-- Location: LABCELL_X71_Y4_N57
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( !\estado.TRANSFERENCIA~q\ & ( \estado.MENU~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.MENU~q\,
	dataf => \ALT_INV_estado.TRANSFERENCIA~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X71_Y4_N43
\saldo_novo[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[0]~reg0feeder_combout\,
	asdata => \Selector17~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[0]~reg0_q\);

-- Location: LABCELL_X70_Y4_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\saldo_atual[1]~input_o\ $ (\valor_operacao[1]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\saldo_atual[1]~input_o\ $ (\valor_operacao[1]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~7\ = SHARE((\saldo_atual[1]~input_o\ & !\valor_operacao[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[1]~input_o\,
	datac => \ALT_INV_valor_operacao[1]~input_o\,
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\,
	shareout => \Add1~7\);

-- Location: LABCELL_X71_Y4_N6
\saldo_novo[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[1]~reg0feeder_combout\ = ( \Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \saldo_novo[1]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \saldo_atual[1]~input_o\ ) + ( \valor_operacao[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \saldo_atual[1]~input_o\ ) + ( \valor_operacao[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[1]~input_o\,
	datac => \ALT_INV_valor_operacao[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X71_Y4_N45
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~5_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_saldo_atual[1]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X71_Y4_N7
\saldo_novo[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[1]~reg0feeder_combout\,
	asdata => \Selector16~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[1]~reg0_q\);

-- Location: LABCELL_X70_Y4_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\saldo_atual[2]~input_o\ $ (\valor_operacao[2]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\saldo_atual[2]~input_o\ $ (\valor_operacao[2]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~11\ = SHARE((\saldo_atual[2]~input_o\ & !\valor_operacao[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[2]~input_o\,
	datac => \ALT_INV_valor_operacao[2]~input_o\,
	cin => \Add1~6\,
	sharein => \Add1~7\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

-- Location: LABCELL_X71_Y4_N27
\saldo_novo[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[2]~reg0feeder_combout\ = \Add1~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~9_sumout\,
	combout => \saldo_novo[2]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \saldo_atual[2]~input_o\ ) + ( \valor_operacao[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \saldo_atual[2]~input_o\ ) + ( \valor_operacao[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saldo_atual[2]~input_o\,
	datac => \ALT_INV_valor_operacao[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X70_Y4_N48
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~9_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_saldo_atual[2]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X71_Y4_N28
\saldo_novo[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[2]~reg0feeder_combout\,
	asdata => \Selector15~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[2]~reg0_q\);

-- Location: LABCELL_X70_Y4_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\valor_operacao[3]~input_o\ $ (\saldo_atual[3]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\valor_operacao[3]~input_o\ $ (\saldo_atual[3]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~15\ = SHARE((!\valor_operacao[3]~input_o\ & \saldo_atual[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[3]~input_o\,
	datad => \ALT_INV_saldo_atual[3]~input_o\,
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\,
	shareout => \Add1~15\);

-- Location: LABCELL_X71_Y4_N36
\saldo_novo[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[3]~reg0feeder_combout\ = \Add1~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~13_sumout\,
	combout => \saldo_novo[3]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \saldo_atual[3]~input_o\ ) + ( \valor_operacao[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \saldo_atual[3]~input_o\ ) + ( \valor_operacao[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[3]~input_o\,
	datac => \ALT_INV_saldo_atual[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X70_Y4_N57
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~13_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[3]~input_o\,
	datac => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X71_Y4_N37
\saldo_novo[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[3]~reg0feeder_combout\,
	asdata => \Selector14~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[3]~reg0_q\);

-- Location: LABCELL_X70_Y4_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\saldo_atual[4]~input_o\ $ (\valor_operacao[4]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\saldo_atual[4]~input_o\ $ (\valor_operacao[4]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~19\ = SHARE((\saldo_atual[4]~input_o\ & !\valor_operacao[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[4]~input_o\,
	datac => \ALT_INV_valor_operacao[4]~input_o\,
	cin => \Add1~14\,
	sharein => \Add1~15\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\,
	shareout => \Add1~19\);

-- Location: MLABCELL_X72_Y4_N0
\saldo_novo[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[4]~reg0feeder_combout\ = ( \Add1~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~17_sumout\,
	combout => \saldo_novo[4]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \saldo_atual[4]~input_o\ ) + ( \valor_operacao[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \saldo_atual[4]~input_o\ ) + ( \valor_operacao[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[4]~input_o\,
	datac => \ALT_INV_saldo_atual[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X73_Y4_N12
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~17_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saldo_atual[4]~input_o\,
	datad => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X72_Y4_N1
\saldo_novo[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[4]~reg0feeder_combout\,
	asdata => \Selector13~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[4]~reg0_q\);

-- Location: LABCELL_X70_Y4_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\saldo_atual[5]~input_o\ $ (\valor_operacao[5]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\saldo_atual[5]~input_o\ $ (\valor_operacao[5]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~23\ = SHARE((\saldo_atual[5]~input_o\ & !\valor_operacao[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_saldo_atual[5]~input_o\,
	datad => \ALT_INV_valor_operacao[5]~input_o\,
	cin => \Add1~18\,
	sharein => \Add1~19\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\,
	shareout => \Add1~23\);

-- Location: MLABCELL_X72_Y4_N3
\saldo_novo[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[5]~reg0feeder_combout\ = \Add1~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~21_sumout\,
	combout => \saldo_novo[5]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \valor_operacao[5]~input_o\ ) + ( \saldo_atual[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \valor_operacao[5]~input_o\ ) + ( \saldo_atual[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[5]~input_o\,
	datad => \ALT_INV_valor_operacao[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X73_Y4_N15
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~21_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[5]~input_o\,
	datac => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X72_Y4_N5
\saldo_novo[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[5]~reg0feeder_combout\,
	asdata => \Selector12~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[5]~reg0_q\);

-- Location: LABCELL_X70_Y4_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\valor_operacao[6]~input_o\ $ (\saldo_atual[6]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\valor_operacao[6]~input_o\ $ (\saldo_atual[6]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~27\ = SHARE((!\valor_operacao[6]~input_o\ & \saldo_atual[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[6]~input_o\,
	datac => \ALT_INV_saldo_atual[6]~input_o\,
	cin => \Add1~22\,
	sharein => \Add1~23\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\,
	shareout => \Add1~27\);

-- Location: LABCELL_X71_Y4_N48
\saldo_novo[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[6]~reg0feeder_combout\ = \Add1~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~25_sumout\,
	combout => \saldo_novo[6]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \saldo_atual[6]~input_o\ ) + ( \valor_operacao[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \saldo_atual[6]~input_o\ ) + ( \valor_operacao[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saldo_atual[6]~input_o\,
	datac => \ALT_INV_valor_operacao[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X72_Y4_N30
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~25_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[6]~input_o\,
	datac => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X71_Y4_N49
\saldo_novo[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[6]~reg0feeder_combout\,
	asdata => \Selector11~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[6]~reg0_q\);

-- Location: LABCELL_X70_Y4_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\valor_operacao[7]~input_o\ $ (\saldo_atual[7]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\valor_operacao[7]~input_o\ $ (\saldo_atual[7]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~31\ = SHARE((!\valor_operacao[7]~input_o\ & \saldo_atual[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[7]~input_o\,
	datac => \ALT_INV_saldo_atual[7]~input_o\,
	cin => \Add1~26\,
	sharein => \Add1~27\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\,
	shareout => \Add1~31\);

-- Location: LABCELL_X71_Y4_N39
\saldo_novo[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[7]~reg0feeder_combout\ = \Add1~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~29_sumout\,
	combout => \saldo_novo[7]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \saldo_atual[7]~input_o\ ) + ( \valor_operacao[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \saldo_atual[7]~input_o\ ) + ( \valor_operacao[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[7]~input_o\,
	datac => \ALT_INV_valor_operacao[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X72_Y4_N51
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~29_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[7]~input_o\,
	datad => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X71_Y4_N40
\saldo_novo[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[7]~reg0feeder_combout\,
	asdata => \Selector10~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[7]~reg0_q\);

-- Location: LABCELL_X70_Y4_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\valor_operacao[8]~input_o\ $ (\saldo_atual[8]~input_o\) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !\valor_operacao[8]~input_o\ $ (\saldo_atual[8]~input_o\) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~35\ = SHARE((!\valor_operacao[8]~input_o\ & \saldo_atual[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[8]~input_o\,
	datac => \ALT_INV_saldo_atual[8]~input_o\,
	cin => \Add1~30\,
	sharein => \Add1~31\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\,
	shareout => \Add1~35\);

-- Location: LABCELL_X71_Y4_N12
\saldo_novo[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[8]~reg0feeder_combout\ = ( \Add1~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~33_sumout\,
	combout => \saldo_novo[8]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \saldo_atual[8]~input_o\ ) + ( \valor_operacao[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \saldo_atual[8]~input_o\ ) + ( \valor_operacao[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[8]~input_o\,
	datac => \ALT_INV_saldo_atual[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: MLABCELL_X72_Y4_N15
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~33_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_saldo_atual[8]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X71_Y4_N13
\saldo_novo[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[8]~reg0feeder_combout\,
	asdata => \Selector9~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[8]~reg0_q\);

-- Location: LABCELL_X70_Y4_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !\saldo_atual[9]~input_o\ $ (\valor_operacao[9]~input_o\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !\saldo_atual[9]~input_o\ $ (\valor_operacao[9]~input_o\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~39\ = SHARE((\saldo_atual[9]~input_o\ & !\valor_operacao[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[9]~input_o\,
	datac => \ALT_INV_valor_operacao[9]~input_o\,
	cin => \Add1~34\,
	sharein => \Add1~35\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\,
	shareout => \Add1~39\);

-- Location: LABCELL_X71_Y4_N15
\saldo_novo[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[9]~reg0feeder_combout\ = \Add1~37_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~37_sumout\,
	combout => \saldo_novo[9]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \saldo_atual[9]~input_o\ ) + ( \valor_operacao[9]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \saldo_atual[9]~input_o\ ) + ( \valor_operacao[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[9]~input_o\,
	dataf => \ALT_INV_valor_operacao[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X73_Y4_N27
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~37_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_saldo_atual[9]~input_o\,
	datad => \ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X71_Y4_N16
\saldo_novo[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[9]~reg0feeder_combout\,
	asdata => \Selector8~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[9]~reg0_q\);

-- Location: LABCELL_X70_Y4_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( !\saldo_atual[10]~input_o\ $ (\valor_operacao[10]~input_o\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( !\saldo_atual[10]~input_o\ $ (\valor_operacao[10]~input_o\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~43\ = SHARE((\saldo_atual[10]~input_o\ & !\valor_operacao[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saldo_atual[10]~input_o\,
	datac => \ALT_INV_valor_operacao[10]~input_o\,
	cin => \Add1~38\,
	sharein => \Add1~39\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\,
	shareout => \Add1~43\);

-- Location: LABCELL_X71_Y4_N51
\saldo_novo[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[10]~reg0feeder_combout\ = \Add1~41_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~41_sumout\,
	combout => \saldo_novo[10]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \saldo_atual[10]~input_o\ ) + ( \valor_operacao[10]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \saldo_atual[10]~input_o\ ) + ( \valor_operacao[10]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[10]~input_o\,
	datac => \ALT_INV_saldo_atual[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X73_Y4_N54
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~41_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[10]~input_o\,
	datac => \ALT_INV_Add0~41_sumout\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X71_Y4_N52
\saldo_novo[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[10]~reg0feeder_combout\,
	asdata => \Selector7~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[10]~reg0_q\);

-- Location: LABCELL_X70_Y4_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( !\saldo_atual[11]~input_o\ $ (\valor_operacao[11]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( !\saldo_atual[11]~input_o\ $ (\valor_operacao[11]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~47\ = SHARE((\saldo_atual[11]~input_o\ & !\valor_operacao[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[11]~input_o\,
	datad => \ALT_INV_valor_operacao[11]~input_o\,
	cin => \Add1~42\,
	sharein => \Add1~43\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\,
	shareout => \Add1~47\);

-- Location: LABCELL_X71_Y4_N24
\saldo_novo[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[11]~reg0feeder_combout\ = \Add1~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~45_sumout\,
	combout => \saldo_novo[11]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \saldo_atual[11]~input_o\ ) + ( \valor_operacao[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \saldo_atual[11]~input_o\ ) + ( \valor_operacao[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[11]~input_o\,
	datac => \ALT_INV_saldo_atual[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X73_Y4_N3
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \saldo_atual[11]~input_o\ & ( \estado.DEPOSITO~q\ & ( \Add0~45_sumout\ ) ) ) # ( !\saldo_atual[11]~input_o\ & ( \estado.DEPOSITO~q\ & ( \Add0~45_sumout\ ) ) ) # ( \saldo_atual[11]~input_o\ & ( !\estado.DEPOSITO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~45_sumout\,
	datae => \ALT_INV_saldo_atual[11]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X71_Y4_N25
\saldo_novo[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[11]~reg0feeder_combout\,
	asdata => \Selector6~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[11]~reg0_q\);

-- Location: LABCELL_X70_Y4_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( !\saldo_atual[12]~input_o\ $ (\valor_operacao[12]~input_o\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( !\saldo_atual[12]~input_o\ $ (\valor_operacao[12]~input_o\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~51\ = SHARE((\saldo_atual[12]~input_o\ & !\valor_operacao[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saldo_atual[12]~input_o\,
	datad => \ALT_INV_valor_operacao[12]~input_o\,
	cin => \Add1~46\,
	sharein => \Add1~47\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\,
	shareout => \Add1~51\);

-- Location: LABCELL_X71_Y4_N9
\saldo_novo[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[12]~reg0feeder_combout\ = ( \Add1~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~49_sumout\,
	combout => \saldo_novo[12]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \valor_operacao[12]~input_o\ ) + ( \saldo_atual[12]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \valor_operacao[12]~input_o\ ) + ( \saldo_atual[12]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[12]~input_o\,
	dataf => \ALT_INV_saldo_atual[12]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: MLABCELL_X72_Y4_N27
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~49_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~49_sumout\,
	datad => \ALT_INV_saldo_atual[12]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X71_Y4_N10
\saldo_novo[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[12]~reg0feeder_combout\,
	asdata => \Selector5~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[12]~reg0_q\);

-- Location: LABCELL_X70_Y4_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( !\saldo_atual[13]~input_o\ $ (\valor_operacao[13]~input_o\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( !\saldo_atual[13]~input_o\ $ (\valor_operacao[13]~input_o\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~55\ = SHARE((\saldo_atual[13]~input_o\ & !\valor_operacao[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[13]~input_o\,
	datac => \ALT_INV_valor_operacao[13]~input_o\,
	cin => \Add1~50\,
	sharein => \Add1~51\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\,
	shareout => \Add1~55\);

-- Location: LABCELL_X71_Y4_N18
\saldo_novo[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[13]~reg0feeder_combout\ = ( \Add1~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~53_sumout\,
	combout => \saldo_novo[13]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \saldo_atual[13]~input_o\ ) + ( \valor_operacao[13]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \saldo_atual[13]~input_o\ ) + ( \valor_operacao[13]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saldo_atual[13]~input_o\,
	datac => \ALT_INV_valor_operacao[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X71_Y4_N0
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~53_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~53_sumout\,
	datad => \ALT_INV_saldo_atual[13]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X71_Y4_N19
\saldo_novo[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[13]~reg0feeder_combout\,
	asdata => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[13]~reg0_q\);

-- Location: LABCELL_X70_Y4_N42
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( !\saldo_atual[14]~input_o\ $ (\valor_operacao[14]~input_o\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( !\saldo_atual[14]~input_o\ $ (\valor_operacao[14]~input_o\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~59\ = SHARE((\saldo_atual[14]~input_o\ & !\valor_operacao[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_saldo_atual[14]~input_o\,
	datac => \ALT_INV_valor_operacao[14]~input_o\,
	cin => \Add1~54\,
	sharein => \Add1~55\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\,
	shareout => \Add1~59\);

-- Location: LABCELL_X71_Y4_N21
\saldo_novo[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[14]~reg0feeder_combout\ = \Add1~57_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~57_sumout\,
	combout => \saldo_novo[14]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \saldo_atual[14]~input_o\ ) + ( \valor_operacao[14]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \saldo_atual[14]~input_o\ ) + ( \valor_operacao[14]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[14]~input_o\,
	datac => \ALT_INV_saldo_atual[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: MLABCELL_X72_Y4_N6
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~57_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~57_sumout\,
	datac => \ALT_INV_saldo_atual[14]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X71_Y4_N22
\saldo_novo[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[14]~reg0feeder_combout\,
	asdata => \Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[14]~reg0_q\);

-- Location: LABCELL_X70_Y4_N45
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( !\valor_operacao[15]~input_o\ $ (\saldo_atual[15]~input_o\) ) + ( \Add1~59\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[15]~input_o\,
	datac => \ALT_INV_saldo_atual[15]~input_o\,
	cin => \Add1~58\,
	sharein => \Add1~59\,
	sumout => \Add1~61_sumout\);

-- Location: MLABCELL_X72_Y4_N48
\saldo_novo[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[15]~reg0feeder_combout\ = ( \Add1~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~61_sumout\,
	combout => \saldo_novo[15]~reg0feeder_combout\);

-- Location: LABCELL_X68_Y4_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \saldo_atual[15]~input_o\ ) + ( \valor_operacao[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[15]~input_o\,
	datac => \ALT_INV_saldo_atual[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

-- Location: MLABCELL_X72_Y4_N39
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~61_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \saldo_atual[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[15]~input_o\,
	datac => \ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X72_Y4_N49
\saldo_novo[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[15]~reg0feeder_combout\,
	asdata => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[15]~reg0_q\);

-- Location: MLABCELL_X72_Y4_N57
\Selector18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = ( \valor_operacao[15]~input_o\ & ( (\saldo_atual[15]~input_o\ & \LessThan0~15_combout\) ) ) # ( !\valor_operacao[15]~input_o\ & ( (\LessThan0~15_combout\) # (\saldo_atual[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[15]~input_o\,
	datac => \ALT_INV_LessThan0~15_combout\,
	dataf => \ALT_INV_valor_operacao[15]~input_o\,
	combout => \Selector18~3_combout\);

-- Location: MLABCELL_X72_Y4_N12
\Selector18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\estado.SAQUE~q\ & ((!\saldo_atual[15]~input_o\ & ((!\LessThan0~15_combout\) # (\valor_operacao[15]~input_o\))) # (\saldo_atual[15]~input_o\ & (\valor_operacao[15]~input_o\ & !\LessThan0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100000010001000110000001000100011000000100010001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_atual[15]~input_o\,
	datab => \ALT_INV_estado.SAQUE~q\,
	datac => \ALT_INV_valor_operacao[15]~input_o\,
	datad => \ALT_INV_LessThan0~15_combout\,
	combout => \Selector18~2_combout\);

-- Location: FF_X72_Y4_N14
\estado.ERRO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector18~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.ERRO~q\);

-- Location: MLABCELL_X72_Y4_N21
\Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = ( \status~reg0_q\ & ( \estado.ERRO~q\ & ( (!\estado.SAQUE~q\) # (\Selector18~3_combout\) ) ) ) # ( \status~reg0_q\ & ( !\estado.ERRO~q\ & ( (!\estado.SAQUE~q\) # (\Selector18~3_combout\) ) ) ) # ( !\status~reg0_q\ & ( 
-- !\estado.ERRO~q\ & ( (!\estado.TRANSFERENCIA~q\ & (\estado.MENU~q\ & ((!\estado.SAQUE~q\) # (\Selector18~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000100111101011111010100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector18~3_combout\,
	datab => \ALT_INV_estado.TRANSFERENCIA~q\,
	datac => \ALT_INV_estado.SAQUE~q\,
	datad => \ALT_INV_estado.MENU~q\,
	datae => \ALT_INV_status~reg0_q\,
	dataf => \ALT_INV_estado.ERRO~q\,
	combout => \Selector18~1_combout\);

-- Location: FF_X72_Y4_N23
\status~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector18~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \status~reg0_q\);

-- Location: LABCELL_X70_Y35_N3
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


