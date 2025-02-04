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

-- DATE "02/04/2025 16:30:06"

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
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CaixaEletronico IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	confirma : IN std_logic;
	selecao_inicio : IN std_logic;
	tipo_operacao : IN std_logic_vector(2 DOWNTO 0);
	valor_operacao : IN IEEE.NUMERIC_STD.unsigned(15 DOWNTO 0);
	login_in : IN std_logic_vector(7 DOWNTO 0);
	senha_in : IN std_logic_vector(7 DOWNTO 0);
	saldo_novo : OUT IEEE.NUMERIC_STD.unsigned(15 DOWNTO 0);
	status : OUT std_logic;
	erro_saida : OUT std_logic
	);
END CaixaEletronico;

-- Design Ports Information
-- saldo_novo[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[3]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[8]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[10]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[11]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[12]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[13]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[15]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- status	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro_saida	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[5]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[11]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[6]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[9]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[10]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[12]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[13]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[14]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tipo_operacao[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tipo_operacao[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tipo_operacao[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[7]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[6]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirma	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao_inicio	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_confirma : std_logic;
SIGNAL ww_selecao_inicio : std_logic;
SIGNAL ww_tipo_operacao : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_valor_operacao : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_login_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_senha_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saldo_novo : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_status : std_logic;
SIGNAL ww_erro_saida : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \valor_operacao[0]~input_o\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \tipo_operacao[0]~input_o\ : std_logic;
SIGNAL \tipo_operacao[1]~input_o\ : std_logic;
SIGNAL \tipo_operacao[2]~input_o\ : std_logic;
SIGNAL \confirma~input_o\ : std_logic;
SIGNAL \conf_pass~q\ : std_logic;
SIGNAL \confirma_operacao~0_combout\ : std_logic;
SIGNAL \confirma_operacao~q\ : std_logic;
SIGNAL \senha_in[3]~input_o\ : std_logic;
SIGNAL \senha_in[0]~input_o\ : std_logic;
SIGNAL \login_in[6]~input_o\ : std_logic;
SIGNAL \senha_in[1]~input_o\ : std_logic;
SIGNAL \senha_in[2]~input_o\ : std_logic;
SIGNAL \login_in[7]~input_o\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \login_in[3]~input_o\ : std_logic;
SIGNAL \login_in[4]~input_o\ : std_logic;
SIGNAL \login_in[1]~input_o\ : std_logic;
SIGNAL \login_in[5]~input_o\ : std_logic;
SIGNAL \login_in[2]~input_o\ : std_logic;
SIGNAL \login_in[0]~input_o\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \senha_in[5]~input_o\ : std_logic;
SIGNAL \senha_in[4]~input_o\ : std_logic;
SIGNAL \senha_in[6]~input_o\ : std_logic;
SIGNAL \senha_in[7]~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \estado.ERRO~q\ : std_logic;
SIGNAL \selecao_inicio~input_o\ : std_logic;
SIGNAL \estado.MENU_INICIAL~DUPLICATE_q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \estado.CADASTRAR~q\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \estado.ERRO_INICIAL~q\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \estado.LOGOUT~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado.MENU_INICIAL~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado.LOGIN~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \estado.TRANSFERENCIA~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \estado.CONSULTA_SALDO~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \estado.SAQUE~q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \estado.MENU~q\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \estado.DEPOSITO~q\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \valor_operacao[15]~input_o\ : std_logic;
SIGNAL \valor_operacao[14]~input_o\ : std_logic;
SIGNAL \valor_operacao[12]~input_o\ : std_logic;
SIGNAL \valor_operacao[13]~input_o\ : std_logic;
SIGNAL \saldo_novo[5]~2_combout\ : std_logic;
SIGNAL \valor_operacao[1]~input_o\ : std_logic;
SIGNAL \valor_operacao[3]~input_o\ : std_logic;
SIGNAL \valor_operacao[2]~input_o\ : std_logic;
SIGNAL \valor_operacao[4]~input_o\ : std_logic;
SIGNAL \saldo_novo[5]~0_combout\ : std_logic;
SIGNAL \valor_operacao[6]~input_o\ : std_logic;
SIGNAL \valor_operacao[7]~input_o\ : std_logic;
SIGNAL \valor_operacao[8]~input_o\ : std_logic;
SIGNAL \valor_operacao[10]~input_o\ : std_logic;
SIGNAL \valor_operacao[9]~input_o\ : std_logic;
SIGNAL \saldo_novo[5]~1_combout\ : std_logic;
SIGNAL \valor_operacao[11]~input_o\ : std_logic;
SIGNAL \valor_operacao[5]~input_o\ : std_logic;
SIGNAL \saldo_novo[5]~3_combout\ : std_logic;
SIGNAL \saldo_novo[0]~reg0_q\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \saldo_novo[1]~reg0_q\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \saldo_novo[2]~reg0_q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \saldo_novo[3]~reg0_q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \saldo_novo[4]~reg0feeder_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \saldo_novo[4]~reg0_q\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \saldo_novo[5]~reg0feeder_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \saldo_novo[5]~reg0_q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \saldo_novo[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \saldo_novo[6]~reg0_q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \saldo_novo[7]~reg0_q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \saldo_novo[8]~reg0_q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \saldo_novo[9]~reg0_q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \saldo_novo[10]~reg0feeder_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \saldo_novo[10]~reg0_q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \saldo_novo[11]~reg0_q\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \saldo_novo[12]~reg0_q\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \saldo_novo[13]~reg0_q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \saldo_novo[14]~reg0feeder_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \saldo_novo[14]~reg0_q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \saldo_novo[15]~reg0_q\ : std_logic;
SIGNAL \saldo_novo[5]~4_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \status~reg0_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \erro_saida~reg0_q\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_conf_pass~q\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.TRANSFERENCIA~q\ : std_logic;
SIGNAL \ALT_INV_estado.LOGOUT~q\ : std_logic;
SIGNAL \ALT_INV_process_1~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.CADASTRAR~q\ : std_logic;
SIGNAL \ALT_INV_estado.LOGIN~q\ : std_logic;
SIGNAL \ALT_INV_confirma_operacao~q\ : std_logic;
SIGNAL \ALT_INV_estado.MENU~q\ : std_logic;
SIGNAL \ALT_INV_estado.ERRO~q\ : std_logic;
SIGNAL \ALT_INV_estado.MENU_INICIAL~q\ : std_logic;
SIGNAL \ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.ERRO_INICIAL~q\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[5]~4_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.CONSULTA_SALDO~q\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[5]~2_combout\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[5]~1_combout\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.SAQUE~q\ : std_logic;
SIGNAL \ALT_INV_estado.DEPOSITO~q\ : std_logic;
SIGNAL \ALT_INV_erro_saida~reg0_q\ : std_logic;
SIGNAL \ALT_INV_status~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_estado.MENU_INICIAL~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_selecao_inicio~input_o\ : std_logic;
SIGNAL \ALT_INV_confirma~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_tipo_operacao[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_tipo_operacao[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_tipo_operacao[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[8]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_confirma <= confirma;
ww_selecao_inicio <= selecao_inicio;
ww_tipo_operacao <= tipo_operacao;
ww_valor_operacao <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(valor_operacao);
ww_login_in <= login_in;
ww_senha_in <= senha_in;
saldo_novo <= IEEE.NUMERIC_STD.UNSIGNED(ww_saldo_novo);
status <= ww_status;
erro_saida <= ww_erro_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_valor_operacao[7]~input_o\ <= NOT \valor_operacao[7]~input_o\;
\ALT_INV_valor_operacao[6]~input_o\ <= NOT \valor_operacao[6]~input_o\;
\ALT_INV_valor_operacao[4]~input_o\ <= NOT \valor_operacao[4]~input_o\;
\ALT_INV_valor_operacao[3]~input_o\ <= NOT \valor_operacao[3]~input_o\;
\ALT_INV_valor_operacao[2]~input_o\ <= NOT \valor_operacao[2]~input_o\;
\ALT_INV_valor_operacao[1]~input_o\ <= NOT \valor_operacao[1]~input_o\;
\ALT_INV_valor_operacao[11]~input_o\ <= NOT \valor_operacao[11]~input_o\;
\ALT_INV_valor_operacao[5]~input_o\ <= NOT \valor_operacao[5]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_valor_operacao[0]~input_o\ <= NOT \valor_operacao[0]~input_o\;
\ALT_INV_conf_pass~q\ <= NOT \conf_pass~q\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_estado.TRANSFERENCIA~q\ <= NOT \estado.TRANSFERENCIA~q\;
\ALT_INV_estado.LOGOUT~q\ <= NOT \estado.LOGOUT~q\;
\ALT_INV_process_1~2_combout\ <= NOT \process_1~2_combout\;
\ALT_INV_process_1~1_combout\ <= NOT \process_1~1_combout\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
\ALT_INV_Selector11~1_combout\ <= NOT \Selector11~1_combout\;
\ALT_INV_Selector11~0_combout\ <= NOT \Selector11~0_combout\;
\ALT_INV_estado.CADASTRAR~q\ <= NOT \estado.CADASTRAR~q\;
\ALT_INV_estado.LOGIN~q\ <= NOT \estado.LOGIN~q\;
\ALT_INV_confirma_operacao~q\ <= NOT \confirma_operacao~q\;
\ALT_INV_estado.MENU~q\ <= NOT \estado.MENU~q\;
\ALT_INV_estado.ERRO~q\ <= NOT \estado.ERRO~q\;
\ALT_INV_estado.MENU_INICIAL~q\ <= NOT \estado.MENU_INICIAL~q\;
\ALT_INV_Selector12~0_combout\ <= NOT \Selector12~0_combout\;
\ALT_INV_estado.ERRO_INICIAL~q\ <= NOT \estado.ERRO_INICIAL~q\;
\ALT_INV_saldo_novo[5]~4_combout\ <= NOT \saldo_novo[5]~4_combout\;
\ALT_INV_WideOr4~0_combout\ <= NOT \WideOr4~0_combout\;
\ALT_INV_estado.CONSULTA_SALDO~q\ <= NOT \estado.CONSULTA_SALDO~q\;
\ALT_INV_saldo_novo[5]~2_combout\ <= NOT \saldo_novo[5]~2_combout\;
\ALT_INV_saldo_novo[5]~1_combout\ <= NOT \saldo_novo[5]~1_combout\;
\ALT_INV_saldo_novo[5]~0_combout\ <= NOT \saldo_novo[5]~0_combout\;
\ALT_INV_estado.SAQUE~q\ <= NOT \estado.SAQUE~q\;
\ALT_INV_estado.DEPOSITO~q\ <= NOT \estado.DEPOSITO~q\;
\ALT_INV_erro_saida~reg0_q\ <= NOT \erro_saida~reg0_q\;
\ALT_INV_status~reg0_q\ <= NOT \status~reg0_q\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_estado.MENU_INICIAL~DUPLICATE_q\ <= NOT \estado.MENU_INICIAL~DUPLICATE_q\;
\ALT_INV_selecao_inicio~input_o\ <= NOT \selecao_inicio~input_o\;
\ALT_INV_confirma~input_o\ <= NOT \confirma~input_o\;
\ALT_INV_senha_in[3]~input_o\ <= NOT \senha_in[3]~input_o\;
\ALT_INV_senha_in[2]~input_o\ <= NOT \senha_in[2]~input_o\;
\ALT_INV_senha_in[1]~input_o\ <= NOT \senha_in[1]~input_o\;
\ALT_INV_senha_in[0]~input_o\ <= NOT \senha_in[0]~input_o\;
\ALT_INV_login_in[7]~input_o\ <= NOT \login_in[7]~input_o\;
\ALT_INV_login_in[6]~input_o\ <= NOT \login_in[6]~input_o\;
\ALT_INV_login_in[5]~input_o\ <= NOT \login_in[5]~input_o\;
\ALT_INV_login_in[4]~input_o\ <= NOT \login_in[4]~input_o\;
\ALT_INV_login_in[3]~input_o\ <= NOT \login_in[3]~input_o\;
\ALT_INV_login_in[2]~input_o\ <= NOT \login_in[2]~input_o\;
\ALT_INV_login_in[1]~input_o\ <= NOT \login_in[1]~input_o\;
\ALT_INV_login_in[0]~input_o\ <= NOT \login_in[0]~input_o\;
\ALT_INV_senha_in[7]~input_o\ <= NOT \senha_in[7]~input_o\;
\ALT_INV_senha_in[6]~input_o\ <= NOT \senha_in[6]~input_o\;
\ALT_INV_senha_in[5]~input_o\ <= NOT \senha_in[5]~input_o\;
\ALT_INV_senha_in[4]~input_o\ <= NOT \senha_in[4]~input_o\;
\ALT_INV_tipo_operacao[2]~input_o\ <= NOT \tipo_operacao[2]~input_o\;
\ALT_INV_tipo_operacao[0]~input_o\ <= NOT \tipo_operacao[0]~input_o\;
\ALT_INV_tipo_operacao[1]~input_o\ <= NOT \tipo_operacao[1]~input_o\;
\ALT_INV_valor_operacao[15]~input_o\ <= NOT \valor_operacao[15]~input_o\;
\ALT_INV_valor_operacao[14]~input_o\ <= NOT \valor_operacao[14]~input_o\;
\ALT_INV_valor_operacao[13]~input_o\ <= NOT \valor_operacao[13]~input_o\;
\ALT_INV_valor_operacao[12]~input_o\ <= NOT \valor_operacao[12]~input_o\;
\ALT_INV_valor_operacao[10]~input_o\ <= NOT \valor_operacao[10]~input_o\;
\ALT_INV_valor_operacao[9]~input_o\ <= NOT \valor_operacao[9]~input_o\;
\ALT_INV_valor_operacao[8]~input_o\ <= NOT \valor_operacao[8]~input_o\;

-- Location: IOOBUF_X30_Y0_N19
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

-- Location: IOOBUF_X32_Y0_N53
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

-- Location: IOOBUF_X32_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N76
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

-- Location: IOOBUF_X2_Y0_N42
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

-- Location: IOOBUF_X32_Y0_N2
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

-- Location: IOOBUF_X28_Y0_N19
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X34_Y0_N59
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X2_Y0_N59
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

-- Location: IOOBUF_X34_Y0_N42
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

-- Location: IOOBUF_X32_Y0_N36
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

-- Location: IOOBUF_X30_Y0_N36
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X30_Y0_N53
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

-- Location: IOOBUF_X4_Y0_N53
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

-- Location: IOOBUF_X4_Y0_N19
\erro_saida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \erro_saida~reg0_q\,
	devoe => ww_devoe,
	o => ww_erro_saida);

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

-- Location: IOIBUF_X36_Y0_N18
\valor_operacao[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(0),
	o => \valor_operacao[0]~input_o\);

-- Location: LABCELL_X12_Y3_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\valor_operacao[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\valor_operacao[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[0]~input_o\,
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: IOIBUF_X6_Y0_N18
\tipo_operacao[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tipo_operacao(0),
	o => \tipo_operacao[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\tipo_operacao[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tipo_operacao(1),
	o => \tipo_operacao[1]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\tipo_operacao[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tipo_operacao(2),
	o => \tipo_operacao[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\confirma~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirma,
	o => \confirma~input_o\);

-- Location: FF_X11_Y3_N19
conf_pass : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \confirma~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conf_pass~q\);

-- Location: LABCELL_X11_Y3_N45
\confirma_operacao~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \confirma_operacao~0_combout\ = ( !\conf_pass~q\ & ( \confirma~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_confirma~input_o\,
	dataf => \ALT_INV_conf_pass~q\,
	combout => \confirma_operacao~0_combout\);

-- Location: FF_X10_Y3_N44
confirma_operacao : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \confirma_operacao~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \confirma_operacao~q\);

-- Location: IOIBUF_X52_Y0_N18
\senha_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(3),
	o => \senha_in[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\senha_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(0),
	o => \senha_in[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\login_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(6),
	o => \login_in[6]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\senha_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(1),
	o => \senha_in[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\senha_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(2),
	o => \senha_in[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\login_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(7),
	o => \login_in[7]~input_o\);

-- Location: MLABCELL_X52_Y1_N12
\process_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = ( !\senha_in[2]~input_o\ & ( !\login_in[7]~input_o\ & ( (!\senha_in[3]~input_o\ & (!\senha_in[0]~input_o\ & (!\login_in[6]~input_o\ & !\senha_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_senha_in[3]~input_o\,
	datab => \ALT_INV_senha_in[0]~input_o\,
	datac => \ALT_INV_login_in[6]~input_o\,
	datad => \ALT_INV_senha_in[1]~input_o\,
	datae => \ALT_INV_senha_in[2]~input_o\,
	dataf => \ALT_INV_login_in[7]~input_o\,
	combout => \process_1~2_combout\);

-- Location: IOIBUF_X40_Y0_N35
\login_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(3),
	o => \login_in[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\login_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(4),
	o => \login_in[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\login_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(1),
	o => \login_in[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\login_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(5),
	o => \login_in[5]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\login_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(2),
	o => \login_in[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\login_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(0),
	o => \login_in[0]~input_o\);

-- Location: LABCELL_X40_Y1_N15
\process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = ( !\login_in[2]~input_o\ & ( !\login_in[0]~input_o\ & ( (!\login_in[3]~input_o\ & (!\login_in[4]~input_o\ & (!\login_in[1]~input_o\ & !\login_in[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_login_in[3]~input_o\,
	datab => \ALT_INV_login_in[4]~input_o\,
	datac => \ALT_INV_login_in[1]~input_o\,
	datad => \ALT_INV_login_in[5]~input_o\,
	datae => \ALT_INV_login_in[2]~input_o\,
	dataf => \ALT_INV_login_in[0]~input_o\,
	combout => \process_1~1_combout\);

-- Location: IOIBUF_X38_Y0_N1
\senha_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(5),
	o => \senha_in[5]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\senha_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(4),
	o => \senha_in[4]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\senha_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(6),
	o => \senha_in[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\senha_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(7),
	o => \senha_in[7]~input_o\);

-- Location: LABCELL_X37_Y1_N27
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( !\senha_in[6]~input_o\ & ( !\senha_in[7]~input_o\ & ( (!\senha_in[5]~input_o\ & !\senha_in[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_senha_in[5]~input_o\,
	datac => \ALT_INV_senha_in[4]~input_o\,
	datae => \ALT_INV_senha_in[6]~input_o\,
	dataf => \ALT_INV_senha_in[7]~input_o\,
	combout => \process_1~0_combout\);

-- Location: LABCELL_X11_Y3_N0
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \confirma_operacao~q\ & ( (\tipo_operacao[2]~input_o\ & (\estado.MENU~q\ & ((\tipo_operacao[1]~input_o\) # (\tipo_operacao[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tipo_operacao[0]~input_o\,
	datab => \ALT_INV_tipo_operacao[1]~input_o\,
	datac => \ALT_INV_tipo_operacao[2]~input_o\,
	datad => \ALT_INV_estado.MENU~q\,
	dataf => \ALT_INV_confirma_operacao~q\,
	combout => \Selector10~0_combout\);

-- Location: IOIBUF_X6_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X11_Y3_N32
\estado.ERRO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Selector10~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.ERRO~q\);

-- Location: IOIBUF_X4_Y0_N35
\selecao_inicio~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao_inicio,
	o => \selecao_inicio~input_o\);

-- Location: FF_X10_Y3_N10
\estado.MENU_INICIAL~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.MENU_INICIAL~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N0
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \estado.MENU_INICIAL~DUPLICATE_q\ & ( (!\confirma_operacao~q\ & \estado.CADASTRAR~q\) ) ) # ( !\estado.MENU_INICIAL~DUPLICATE_q\ & ( (!\confirma_operacao~q\ & ((\estado.CADASTRAR~q\))) # (\confirma_operacao~q\ & 
-- (\selecao_inicio~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_confirma_operacao~q\,
	datac => \ALT_INV_selecao_inicio~input_o\,
	datad => \ALT_INV_estado.CADASTRAR~q\,
	dataf => \ALT_INV_estado.MENU_INICIAL~DUPLICATE_q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X10_Y3_N2
\estado.CADASTRAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.CADASTRAR~q\);

-- Location: LABCELL_X10_Y3_N48
\Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = ( !\confirma_operacao~q\ & ( (((\estado.ERRO_INICIAL~q\))) ) ) # ( \confirma_operacao~q\ & ( ((\estado.LOGIN~q\ & ((!\process_1~0_combout\) # ((!\process_1~1_combout\) # (!\process_1~2_combout\))))) # (\estado.CADASTRAR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000001111111000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~0_combout\,
	datab => \ALT_INV_process_1~1_combout\,
	datac => \ALT_INV_process_1~2_combout\,
	datad => \ALT_INV_estado.LOGIN~q\,
	datae => \ALT_INV_confirma_operacao~q\,
	dataf => \ALT_INV_estado.CADASTRAR~q\,
	datag => \ALT_INV_estado.ERRO_INICIAL~q\,
	combout => \Selector4~1_combout\);

-- Location: FF_X10_Y3_N50
\estado.ERRO_INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.ERRO_INICIAL~q\);

-- Location: LABCELL_X10_Y3_N39
\Selector11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = ( \estado.LOGOUT~q\ & ( !\Selector11~0_combout\ & ( (!\Selector11~1_combout\) # ((\tipo_operacao[2]~input_o\ & (!\tipo_operacao[0]~input_o\ & !\tipo_operacao[1]~input_o\))) ) ) ) # ( !\estado.LOGOUT~q\ & ( !\Selector11~0_combout\ 
-- & ( (\Selector11~1_combout\ & (\tipo_operacao[2]~input_o\ & (!\tipo_operacao[0]~input_o\ & !\tipo_operacao[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000101110101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector11~1_combout\,
	datab => \ALT_INV_tipo_operacao[2]~input_o\,
	datac => \ALT_INV_tipo_operacao[0]~input_o\,
	datad => \ALT_INV_tipo_operacao[1]~input_o\,
	datae => \ALT_INV_estado.LOGOUT~q\,
	dataf => \ALT_INV_Selector11~0_combout\,
	combout => \Selector11~2_combout\);

-- Location: FF_X10_Y3_N41
\estado.LOGOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector11~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.LOGOUT~q\);

-- Location: LABCELL_X10_Y3_N9
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \confirma_operacao~q\ & ( (!\estado.ERRO_INICIAL~q\ & !\estado.LOGOUT~q\) ) ) # ( !\confirma_operacao~q\ & ( (!\estado.LOGOUT~q\ & \estado.MENU_INICIAL~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.ERRO_INICIAL~q\,
	datac => \ALT_INV_estado.LOGOUT~q\,
	datad => \ALT_INV_estado.MENU_INICIAL~q\,
	dataf => \ALT_INV_confirma_operacao~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X10_Y3_N11
\estado.MENU_INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.MENU_INICIAL~q\);

-- Location: LABCELL_X10_Y3_N12
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \confirma_operacao~q\ & ( (!\estado.MENU_INICIAL~q\ & !\selecao_inicio~input_o\) ) ) # ( !\confirma_operacao~q\ & ( \estado.LOGIN~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado.MENU_INICIAL~q\,
	datac => \ALT_INV_selecao_inicio~input_o\,
	datad => \ALT_INV_estado.LOGIN~q\,
	dataf => \ALT_INV_confirma_operacao~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X10_Y3_N14
\estado.LOGIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.LOGIN~q\);

-- Location: LABCELL_X10_Y3_N45
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \estado.MENU_INICIAL~DUPLICATE_q\ & ( \estado.ERRO_INICIAL~q\ & ( (!\estado.MENU~q\ & \confirma_operacao~q\) ) ) ) # ( !\estado.MENU_INICIAL~DUPLICATE_q\ & ( \estado.ERRO_INICIAL~q\ & ( (!\estado.MENU~q\ & \confirma_operacao~q\) 
-- ) ) ) # ( \estado.MENU_INICIAL~DUPLICATE_q\ & ( !\estado.ERRO_INICIAL~q\ & ( (!\estado.MENU~q\ & (((!\estado.LOGIN~q\ & !\estado.CADASTRAR~q\)) # (\confirma_operacao~q\))) ) ) ) # ( !\estado.MENU_INICIAL~DUPLICATE_q\ & ( !\estado.ERRO_INICIAL~q\ & ( 
-- (!\estado.MENU~q\ & \confirma_operacao~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010100010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.MENU~q\,
	datab => \ALT_INV_estado.LOGIN~q\,
	datac => \ALT_INV_confirma_operacao~q\,
	datad => \ALT_INV_estado.CADASTRAR~q\,
	datae => \ALT_INV_estado.MENU_INICIAL~DUPLICATE_q\,
	dataf => \ALT_INV_estado.ERRO_INICIAL~q\,
	combout => \Selector11~0_combout\);

-- Location: LABCELL_X10_Y3_N54
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \estado.TRANSFERENCIA~q\ & ( !\Selector11~0_combout\ & ( (!\Selector11~1_combout\) # ((\tipo_operacao[1]~input_o\ & (!\tipo_operacao[2]~input_o\ & \tipo_operacao[0]~input_o\))) ) ) ) # ( !\estado.TRANSFERENCIA~q\ & ( 
-- !\Selector11~0_combout\ & ( (\tipo_operacao[1]~input_o\ & (!\tipo_operacao[2]~input_o\ & (\Selector11~1_combout\ & \tipo_operacao[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111100001111010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tipo_operacao[1]~input_o\,
	datab => \ALT_INV_tipo_operacao[2]~input_o\,
	datac => \ALT_INV_Selector11~1_combout\,
	datad => \ALT_INV_tipo_operacao[0]~input_o\,
	datae => \ALT_INV_estado.TRANSFERENCIA~q\,
	dataf => \ALT_INV_Selector11~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X10_Y3_N55
\estado.TRANSFERENCIA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.TRANSFERENCIA~q\);

-- Location: LABCELL_X10_Y3_N30
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( !\estado.TRANSFERENCIA~q\ & ( (!\estado.ERRO~q\ & ((!\estado.MENU~q\) # (\confirma_operacao~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.MENU~q\,
	datab => \ALT_INV_confirma_operacao~q\,
	datac => \ALT_INV_estado.ERRO~q\,
	dataf => \ALT_INV_estado.TRANSFERENCIA~q\,
	combout => \Selector5~0_combout\);

-- Location: LABCELL_X11_Y3_N36
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \estado.CONSULTA_SALDO~q\ & ( !\Selector11~0_combout\ & ( (!\Selector11~1_combout\) # ((!\tipo_operacao[0]~input_o\ & (!\tipo_operacao[1]~input_o\ & !\tipo_operacao[2]~input_o\))) ) ) ) # ( !\estado.CONSULTA_SALDO~q\ & ( 
-- !\Selector11~0_combout\ & ( (!\tipo_operacao[0]~input_o\ & (!\tipo_operacao[1]~input_o\ & (!\tipo_operacao[2]~input_o\ & \Selector11~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000111111111000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tipo_operacao[0]~input_o\,
	datab => \ALT_INV_tipo_operacao[1]~input_o\,
	datac => \ALT_INV_tipo_operacao[2]~input_o\,
	datad => \ALT_INV_Selector11~1_combout\,
	datae => \ALT_INV_estado.CONSULTA_SALDO~q\,
	dataf => \ALT_INV_Selector11~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X11_Y3_N38
\estado.CONSULTA_SALDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.CONSULTA_SALDO~q\);

-- Location: LABCELL_X11_Y3_N6
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \estado.SAQUE~q\ & ( !\Selector11~0_combout\ & ( (!\Selector11~1_combout\) # ((!\tipo_operacao[0]~input_o\ & (\tipo_operacao[1]~input_o\ & !\tipo_operacao[2]~input_o\))) ) ) ) # ( !\estado.SAQUE~q\ & ( !\Selector11~0_combout\ & ( 
-- (!\tipo_operacao[0]~input_o\ & (\tipo_operacao[1]~input_o\ & (!\tipo_operacao[2]~input_o\ & \Selector11~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000111111110010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tipo_operacao[0]~input_o\,
	datab => \ALT_INV_tipo_operacao[1]~input_o\,
	datac => \ALT_INV_tipo_operacao[2]~input_o\,
	datad => \ALT_INV_Selector11~1_combout\,
	datae => \ALT_INV_estado.SAQUE~q\,
	dataf => \ALT_INV_Selector11~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X11_Y3_N8
\estado.SAQUE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.SAQUE~q\);

-- Location: LABCELL_X11_Y3_N12
\WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = ( \estado.SAQUE~q\ ) # ( !\estado.SAQUE~q\ & ( (\estado.CONSULTA_SALDO~q\) # (\estado.DEPOSITO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.DEPOSITO~q\,
	datad => \ALT_INV_estado.CONSULTA_SALDO~q\,
	dataf => \ALT_INV_estado.SAQUE~q\,
	combout => \WideOr4~0_combout\);

-- Location: LABCELL_X10_Y3_N33
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \estado.LOGIN~q\ & ( \confirma_operacao~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_confirma_operacao~q\,
	dataf => \ALT_INV_estado.LOGIN~q\,
	combout => \Selector4~0_combout\);

-- Location: LABCELL_X10_Y3_N24
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( \WideOr4~0_combout\ & ( \Selector4~0_combout\ ) ) # ( !\WideOr4~0_combout\ & ( \Selector4~0_combout\ & ( (!\Selector5~0_combout\) # ((\process_1~2_combout\ & (\process_1~1_combout\ & \process_1~0_combout\))) ) ) ) # ( 
-- \WideOr4~0_combout\ & ( !\Selector4~0_combout\ ) ) # ( !\WideOr4~0_combout\ & ( !\Selector4~0_combout\ & ( !\Selector5~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111111111111000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~2_combout\,
	datab => \ALT_INV_process_1~1_combout\,
	datac => \ALT_INV_process_1~0_combout\,
	datad => \ALT_INV_Selector5~0_combout\,
	datae => \ALT_INV_WideOr4~0_combout\,
	dataf => \ALT_INV_Selector4~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X10_Y3_N26
\estado.MENU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.MENU~q\);

-- Location: LABCELL_X10_Y3_N3
\Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = ( \estado.MENU~q\ & ( \confirma_operacao~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_confirma_operacao~q\,
	dataf => \ALT_INV_estado.MENU~q\,
	combout => \Selector11~1_combout\);

-- Location: LABCELL_X11_Y3_N54
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \estado.DEPOSITO~q\ & ( !\Selector11~0_combout\ & ( (!\Selector11~1_combout\) # ((\tipo_operacao[0]~input_o\ & (!\tipo_operacao[1]~input_o\ & !\tipo_operacao[2]~input_o\))) ) ) ) # ( !\estado.DEPOSITO~q\ & ( 
-- !\Selector11~0_combout\ & ( (\tipo_operacao[0]~input_o\ & (!\tipo_operacao[1]~input_o\ & (!\tipo_operacao[2]~input_o\ & \Selector11~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000111111110100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tipo_operacao[0]~input_o\,
	datab => \ALT_INV_tipo_operacao[1]~input_o\,
	datac => \ALT_INV_tipo_operacao[2]~input_o\,
	datad => \ALT_INV_Selector11~1_combout\,
	datae => \ALT_INV_estado.DEPOSITO~q\,
	dataf => \ALT_INV_Selector11~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X11_Y3_N56
\estado.DEPOSITO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.DEPOSITO~q\);

-- Location: LABCELL_X13_Y3_N30
\Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = ( \estado.DEPOSITO~q\ & ( \valor_operacao[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[0]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector28~0_combout\);

-- Location: IOIBUF_X8_Y0_N52
\valor_operacao[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(15),
	o => \valor_operacao[15]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\valor_operacao[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(14),
	o => \valor_operacao[14]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\valor_operacao[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(12),
	o => \valor_operacao[12]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\valor_operacao[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(13),
	o => \valor_operacao[13]~input_o\);

-- Location: LABCELL_X12_Y3_N51
\saldo_novo[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[5]~2_combout\ = ( !\valor_operacao[13]~input_o\ & ( (!\valor_operacao[15]~input_o\ & (!\valor_operacao[14]~input_o\ & !\valor_operacao[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[15]~input_o\,
	datac => \ALT_INV_valor_operacao[14]~input_o\,
	datad => \ALT_INV_valor_operacao[12]~input_o\,
	dataf => \ALT_INV_valor_operacao[13]~input_o\,
	combout => \saldo_novo[5]~2_combout\);

-- Location: IOIBUF_X26_Y0_N75
\valor_operacao[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(1),
	o => \valor_operacao[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\valor_operacao[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(3),
	o => \valor_operacao[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\valor_operacao[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(2),
	o => \valor_operacao[2]~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\valor_operacao[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(4),
	o => \valor_operacao[4]~input_o\);

-- Location: LABCELL_X13_Y3_N42
\saldo_novo[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[5]~0_combout\ = ( !\valor_operacao[0]~input_o\ & ( (!\valor_operacao[1]~input_o\ & (!\valor_operacao[3]~input_o\ & (!\valor_operacao[2]~input_o\ & !\valor_operacao[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[1]~input_o\,
	datab => \ALT_INV_valor_operacao[3]~input_o\,
	datac => \ALT_INV_valor_operacao[2]~input_o\,
	datad => \ALT_INV_valor_operacao[4]~input_o\,
	dataf => \ALT_INV_valor_operacao[0]~input_o\,
	combout => \saldo_novo[5]~0_combout\);

-- Location: IOIBUF_X26_Y0_N58
\valor_operacao[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(6),
	o => \valor_operacao[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N41
\valor_operacao[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(7),
	o => \valor_operacao[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\valor_operacao[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(8),
	o => \valor_operacao[8]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\valor_operacao[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(10),
	o => \valor_operacao[10]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\valor_operacao[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(9),
	o => \valor_operacao[9]~input_o\);

-- Location: LABCELL_X13_Y3_N36
\saldo_novo[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[5]~1_combout\ = ( !\valor_operacao[9]~input_o\ & ( (!\valor_operacao[6]~input_o\ & (!\valor_operacao[7]~input_o\ & (!\valor_operacao[8]~input_o\ & !\valor_operacao[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[6]~input_o\,
	datab => \ALT_INV_valor_operacao[7]~input_o\,
	datac => \ALT_INV_valor_operacao[8]~input_o\,
	datad => \ALT_INV_valor_operacao[10]~input_o\,
	dataf => \ALT_INV_valor_operacao[9]~input_o\,
	combout => \saldo_novo[5]~1_combout\);

-- Location: IOIBUF_X8_Y0_N1
\valor_operacao[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(11),
	o => \valor_operacao[11]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\valor_operacao[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(5),
	o => \valor_operacao[5]~input_o\);

-- Location: LABCELL_X11_Y3_N21
\saldo_novo[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[5]~3_combout\ = ( \valor_operacao[5]~input_o\ & ( \estado.SAQUE~q\ ) ) # ( !\valor_operacao[5]~input_o\ & ( \estado.SAQUE~q\ & ( (!\saldo_novo[5]~2_combout\) # ((!\saldo_novo[5]~0_combout\) # ((!\saldo_novo[5]~1_combout\) # 
-- (\valor_operacao[11]~input_o\))) ) ) ) # ( \valor_operacao[5]~input_o\ & ( !\estado.SAQUE~q\ ) ) # ( !\valor_operacao[5]~input_o\ & ( !\estado.SAQUE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111110111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_novo[5]~2_combout\,
	datab => \ALT_INV_saldo_novo[5]~0_combout\,
	datac => \ALT_INV_saldo_novo[5]~1_combout\,
	datad => \ALT_INV_valor_operacao[11]~input_o\,
	datae => \ALT_INV_valor_operacao[5]~input_o\,
	dataf => \ALT_INV_estado.SAQUE~q\,
	combout => \saldo_novo[5]~3_combout\);

-- Location: FF_X12_Y3_N1
\saldo_novo[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	asdata => \Selector28~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[0]~reg0_q\);

-- Location: LABCELL_X12_Y3_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\valor_operacao[1]~input_o\ ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\valor_operacao[1]~input_o\ ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[1]~input_o\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X13_Y3_N51
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( \estado.DEPOSITO~q\ & ( \valor_operacao[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[1]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector27~0_combout\);

-- Location: FF_X12_Y3_N4
\saldo_novo[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	asdata => \Selector27~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[1]~reg0_q\);

-- Location: LABCELL_X12_Y3_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\valor_operacao[2]~input_o\ ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\valor_operacao[2]~input_o\ ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[2]~input_o\,
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X13_Y3_N12
\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ( \estado.DEPOSITO~q\ & ( \valor_operacao[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[2]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector26~0_combout\);

-- Location: FF_X12_Y3_N7
\saldo_novo[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	asdata => \Selector26~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[2]~reg0_q\);

-- Location: LABCELL_X12_Y3_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\valor_operacao[3]~input_o\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\valor_operacao[3]~input_o\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[3]~input_o\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X12_Y3_N54
\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ( \estado.DEPOSITO~q\ & ( \valor_operacao[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[3]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector25~0_combout\);

-- Location: FF_X12_Y3_N10
\saldo_novo[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	asdata => \Selector25~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[3]~reg0_q\);

-- Location: LABCELL_X12_Y3_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\valor_operacao[4]~input_o\ ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\valor_operacao[4]~input_o\ ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[4]~input_o\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: LABCELL_X11_Y3_N3
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

-- Location: LABCELL_X13_Y3_N21
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = ( \estado.DEPOSITO~q\ & ( \valor_operacao[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[4]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X11_Y3_N5
\saldo_novo[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[4]~reg0feeder_combout\,
	asdata => \Selector24~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[4]~reg0_q\);

-- Location: LABCELL_X12_Y3_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\valor_operacao[5]~input_o\ ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\valor_operacao[5]~input_o\ ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[5]~input_o\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X11_Y3_N48
\saldo_novo[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[5]~reg0feeder_combout\ = \Add1~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~21_sumout\,
	combout => \saldo_novo[5]~reg0feeder_combout\);

-- Location: LABCELL_X11_Y3_N33
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\valor_operacao[5]~input_o\ & \estado.DEPOSITO~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[5]~input_o\,
	datad => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X11_Y3_N49
\saldo_novo[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[5]~reg0feeder_combout\,
	asdata => \Selector23~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[5]~reg0_q\);

-- Location: LABCELL_X12_Y3_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\valor_operacao[6]~input_o\ ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\valor_operacao[6]~input_o\ ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[6]~input_o\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: LABCELL_X11_Y3_N24
\saldo_novo[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[6]~reg0feeder_combout\ = ( \Add1~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~25_sumout\,
	combout => \saldo_novo[6]~reg0feeder_combout\);

-- Location: LABCELL_X13_Y3_N39
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( \estado.DEPOSITO~q\ & ( \valor_operacao[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[6]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X11_Y3_N25
\saldo_novo[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[6]~reg0feeder_combout\,
	asdata => \Selector22~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[6]~reg0_q\);

-- Location: LABCELL_X12_Y3_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\valor_operacao[7]~input_o\ ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\valor_operacao[7]~input_o\ ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[7]~input_o\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X12_Y3_N48
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( \estado.DEPOSITO~q\ & ( \valor_operacao[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[7]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X12_Y3_N22
\saldo_novo[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	asdata => \Selector21~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[7]~reg0_q\);

-- Location: LABCELL_X12_Y3_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\valor_operacao[8]~input_o\ ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !\valor_operacao[8]~input_o\ ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[8]~input_o\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X13_Y3_N24
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( \valor_operacao[8]~input_o\ & ( \estado.DEPOSITO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_valor_operacao[8]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X12_Y3_N25
\saldo_novo[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	asdata => \Selector20~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[8]~reg0_q\);

-- Location: LABCELL_X12_Y3_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !\valor_operacao[9]~input_o\ ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !\valor_operacao[9]~input_o\ ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[9]~input_o\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: LABCELL_X13_Y3_N9
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \estado.DEPOSITO~q\ & ( \valor_operacao[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[9]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X12_Y3_N28
\saldo_novo[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	asdata => \Selector19~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[9]~reg0_q\);

-- Location: LABCELL_X12_Y3_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( !\valor_operacao[10]~input_o\ ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( !\valor_operacao[10]~input_o\ ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[10]~input_o\,
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: LABCELL_X11_Y3_N15
\saldo_novo[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[10]~reg0feeder_combout\ = ( \Add1~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~41_sumout\,
	combout => \saldo_novo[10]~reg0feeder_combout\);

-- Location: LABCELL_X11_Y3_N27
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\valor_operacao[10]~input_o\ & \estado.DEPOSITO~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[10]~input_o\,
	datad => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X11_Y3_N16
\saldo_novo[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[10]~reg0feeder_combout\,
	asdata => \Selector18~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[10]~reg0_q\);

-- Location: LABCELL_X12_Y3_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( !\valor_operacao[11]~input_o\ ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( !\valor_operacao[11]~input_o\ ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[11]~input_o\,
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: LABCELL_X13_Y3_N54
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \estado.DEPOSITO~q\ & ( \valor_operacao[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[11]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X12_Y3_N34
\saldo_novo[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	asdata => \Selector17~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[11]~reg0_q\);

-- Location: LABCELL_X12_Y3_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( !\valor_operacao[12]~input_o\ ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( !\valor_operacao[12]~input_o\ ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[12]~input_o\,
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: LABCELL_X12_Y3_N57
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \estado.DEPOSITO~q\ & ( \valor_operacao[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_valor_operacao[12]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X12_Y3_N37
\saldo_novo[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	asdata => \Selector16~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[12]~reg0_q\);

-- Location: LABCELL_X12_Y3_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( !\valor_operacao[13]~input_o\ ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( !\valor_operacao[13]~input_o\ ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[13]~input_o\,
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: LABCELL_X13_Y3_N0
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \estado.DEPOSITO~q\ & ( \valor_operacao[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[13]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X12_Y3_N40
\saldo_novo[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	asdata => \Selector15~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[13]~reg0_q\);

-- Location: LABCELL_X12_Y3_N42
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( !\valor_operacao[14]~input_o\ ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( !\valor_operacao[14]~input_o\ ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[14]~input_o\,
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: LABCELL_X11_Y3_N51
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

-- Location: LABCELL_X11_Y3_N30
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\estado.DEPOSITO~q\ & \valor_operacao[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.DEPOSITO~q\,
	datac => \ALT_INV_valor_operacao[14]~input_o\,
	combout => \Selector14~0_combout\);

-- Location: FF_X11_Y3_N52
\saldo_novo[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[14]~reg0feeder_combout\,
	asdata => \Selector14~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[14]~reg0_q\);

-- Location: LABCELL_X12_Y3_N45
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( !\valor_operacao[15]~input_o\ ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[15]~input_o\,
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\);

-- Location: LABCELL_X13_Y3_N45
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \estado.DEPOSITO~q\ & ( \valor_operacao[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_valor_operacao[15]~input_o\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X12_Y3_N46
\saldo_novo[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	asdata => \Selector13~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[5]~3_combout\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[15]~reg0_q\);

-- Location: LABCELL_X11_Y3_N42
\saldo_novo[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[5]~4_combout\ = ( \estado.SAQUE~q\ & ( (!\valor_operacao[13]~input_o\ & (!\valor_operacao[15]~input_o\ & (!\valor_operacao[14]~input_o\ & !\valor_operacao[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[13]~input_o\,
	datab => \ALT_INV_valor_operacao[15]~input_o\,
	datac => \ALT_INV_valor_operacao[14]~input_o\,
	datad => \ALT_INV_valor_operacao[12]~input_o\,
	dataf => \ALT_INV_estado.SAQUE~q\,
	combout => \saldo_novo[5]~4_combout\);

-- Location: LABCELL_X10_Y3_N6
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \status~reg0_q\ & ( (!\estado.DEPOSITO~q\ & (!\estado.CONSULTA_SALDO~q\ & ((\estado.SAQUE~q\) # (\estado.ERRO_INICIAL~q\)))) ) ) # ( !\status~reg0_q\ & ( (!\estado.DEPOSITO~q\ & !\estado.CONSULTA_SALDO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000001001100000000000100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.ERRO_INICIAL~q\,
	datab => \ALT_INV_estado.DEPOSITO~q\,
	datac => \ALT_INV_estado.SAQUE~q\,
	datad => \ALT_INV_estado.CONSULTA_SALDO~q\,
	dataf => \ALT_INV_status~reg0_q\,
	combout => \Selector12~0_combout\);

-- Location: LABCELL_X10_Y3_N18
\Selector12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = ( \saldo_novo[5]~4_combout\ & ( \Selector12~0_combout\ & ( (\saldo_novo[5]~0_combout\ & (\saldo_novo[5]~1_combout\ & (!\valor_operacao[11]~input_o\ & !\valor_operacao[5]~input_o\))) ) ) ) # ( \saldo_novo[5]~4_combout\ & ( 
-- !\Selector12~0_combout\ ) ) # ( !\saldo_novo[5]~4_combout\ & ( !\Selector12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_saldo_novo[5]~0_combout\,
	datab => \ALT_INV_saldo_novo[5]~1_combout\,
	datac => \ALT_INV_valor_operacao[11]~input_o\,
	datad => \ALT_INV_valor_operacao[5]~input_o\,
	datae => \ALT_INV_saldo_novo[5]~4_combout\,
	dataf => \ALT_INV_Selector12~0_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X10_Y3_N20
\status~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector12~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \status~reg0_q\);

-- Location: LABCELL_X10_Y3_N15
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \estado.ERRO_INICIAL~q\ ) # ( !\estado.ERRO_INICIAL~q\ & ( ((\estado.MENU_INICIAL~q\ & \erro_saida~reg0_q\)) # (\estado.ERRO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.ERRO~q\,
	datab => \ALT_INV_estado.MENU_INICIAL~q\,
	datad => \ALT_INV_erro_saida~reg0_q\,
	dataf => \ALT_INV_estado.ERRO_INICIAL~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X10_Y3_N16
\erro_saida~reg0\ : dffeas
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
	q => \erro_saida~reg0_q\);

-- Location: LABCELL_X11_Y75_N0
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


