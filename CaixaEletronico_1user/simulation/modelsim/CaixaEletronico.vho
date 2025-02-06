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

-- DATE "02/06/2025 00:47:53"

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
	selecao_inicio : IN std_logic;
	tipo_operacao : IN std_logic_vector(2 DOWNTO 0);
	valor_operacao : IN std_logic_vector(15 DOWNTO 0);
	login_in : IN std_logic_vector(7 DOWNTO 0);
	senha_in : IN std_logic_vector(7 DOWNTO 0);
	saldo_novo : BUFFER std_logic_vector(15 DOWNTO 0);
	status : BUFFER std_logic;
	erro_saida : BUFFER std_logic
	);
END CaixaEletronico;

-- Design Ports Information
-- saldo_novo[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[8]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[9]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[10]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[11]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[12]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[13]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[14]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_novo[15]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- status	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro_saida	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[7]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[4]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[14]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[13]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[12]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[11]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[9]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[10]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_operacao[8]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[2]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[7]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- senha_in[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- login_in[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tipo_operacao[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tipo_operacao[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tipo_operacao[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecao_inicio	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirma_operacao	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \saldo_signal[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \confirma_operacao~input_o\ : std_logic;
SIGNAL \conf_pass~q\ : std_logic;
SIGNAL \confirma~0_combout\ : std_logic;
SIGNAL \confirma~q\ : std_logic;
SIGNAL \valor_operacao[15]~input_o\ : std_logic;
SIGNAL \valor_operacao[14]~input_o\ : std_logic;
SIGNAL \valor_operacao[13]~input_o\ : std_logic;
SIGNAL \valor_operacao[12]~input_o\ : std_logic;
SIGNAL \valor_operacao[11]~input_o\ : std_logic;
SIGNAL \valor_operacao[10]~input_o\ : std_logic;
SIGNAL \valor_operacao[9]~input_o\ : std_logic;
SIGNAL \valor_operacao[8]~input_o\ : std_logic;
SIGNAL \valor_operacao[7]~input_o\ : std_logic;
SIGNAL \valor_operacao[6]~input_o\ : std_logic;
SIGNAL \valor_operacao[5]~input_o\ : std_logic;
SIGNAL \valor_operacao[4]~input_o\ : std_logic;
SIGNAL \valor_operacao[3]~input_o\ : std_logic;
SIGNAL \valor_operacao[2]~input_o\ : std_logic;
SIGNAL \valor_operacao[1]~input_o\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \saldo_novo[1]~reg0feeder_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \LessThan0~19_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \tipo_operacao[1]~input_o\ : std_logic;
SIGNAL \tipo_operacao[2]~input_o\ : std_logic;
SIGNAL \tipo_operacao[0]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \estado.ERRO~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \estado.DEPOSITO~q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \saldo_novo[0]~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \estado.LOGOUT~q\ : std_logic;
SIGNAL \senha_in[7]~input_o\ : std_logic;
SIGNAL \selecao_inicio~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \estado.CADASTRAR~q\ : std_logic;
SIGNAL \in_login[7]~0_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Selector27~3_combout\ : std_logic;
SIGNAL \write_signal~q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \senha_in[1]~input_o\ : std_logic;
SIGNAL \senha_in[3]~input_o\ : std_logic;
SIGNAL \senha_in[2]~input_o\ : std_logic;
SIGNAL \in_senha[2]~feeder_combout\ : std_logic;
SIGNAL \in_senha[3]~feeder_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \login_in[6]~input_o\ : std_logic;
SIGNAL \senha_in[0]~input_o\ : std_logic;
SIGNAL \login_in[7]~input_o\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \login_in[3]~input_o\ : std_logic;
SIGNAL \login_in[5]~input_o\ : std_logic;
SIGNAL \login_in[4]~input_o\ : std_logic;
SIGNAL \in_login[3]~feeder_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \senha_in[5]~input_o\ : std_logic;
SIGNAL \in_senha[5]~feeder_combout\ : std_logic;
SIGNAL \senha_in[4]~input_o\ : std_logic;
SIGNAL \senha_in[6]~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \login_in[1]~input_o\ : std_logic;
SIGNAL \login_in[2]~input_o\ : std_logic;
SIGNAL \login_in[0]~input_o\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \estado.ERRO_INICIAL~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado.MENU_INICIAL~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \estado.LOGIN~q\ : std_logic;
SIGNAL \saldo_novo[0]~1_combout\ : std_logic;
SIGNAL \saldo_novo[1]~reg0_q\ : std_logic;
SIGNAL \saldo_signal[1]~feeder_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \saldo_novo[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \saldo_novo[2]~reg0_q\ : std_logic;
SIGNAL \saldo_signal[2]~feeder_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \saldo_novo[3]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \saldo_novo[3]~reg0_q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \saldo_novo[4]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \saldo_novo[4]~reg0_q\ : std_logic;
SIGNAL \saldo_signal[4]~feeder_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \saldo_novo[5]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \saldo_novo[5]~reg0_q\ : std_logic;
SIGNAL \saldo_signal[5]~feeder_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \saldo_novo[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \saldo_novo[6]~reg0_q\ : std_logic;
SIGNAL \saldo_signal[6]~feeder_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \saldo_novo[7]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \saldo_novo[7]~reg0_q\ : std_logic;
SIGNAL \saldo_signal[7]~feeder_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \saldo_novo[8]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \saldo_novo[8]~reg0_q\ : std_logic;
SIGNAL \saldo_signal[8]~feeder_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \saldo_novo[9]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \saldo_novo[9]~reg0_q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \saldo_novo[10]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \saldo_novo[10]~reg0_q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \saldo_novo[11]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \saldo_novo[11]~reg0_q\ : std_logic;
SIGNAL \saldo_signal[11]~feeder_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \saldo_novo[12]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \saldo_novo[12]~reg0_q\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \saldo_novo[13]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \saldo_novo[13]~reg0_q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \saldo_novo[14]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \saldo_novo[14]~reg0_q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \saldo_novo[15]~reg0_q\ : std_logic;
SIGNAL \saldo_signal[15]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \estado.SAQUE~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \estado.CONSULTA_SALDO~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \estado.MENU~q\ : std_logic;
SIGNAL \saldo_signal[15]~0_combout\ : std_logic;
SIGNAL \mem_inst|saldo_inst|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \saldo_novo[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \saldo_novo[0]~reg0_q\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \status~reg0_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \erro_saida~reg0_q\ : std_logic;
SIGNAL \mem_inst|saldo_inst|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mem_inst|senha_inst|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem_inst|login_inst|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL saldo_signal : std_logic_vector(15 DOWNTO 0);
SIGNAL in_senha : std_logic_vector(7 DOWNTO 0);
SIGNAL in_login : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \mem_inst|saldo_inst|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.SAQUE~q\ : std_logic;
SIGNAL \ALT_INV_estado.DEPOSITO~q\ : std_logic;
SIGNAL \ALT_INV_erro_saida~reg0_q\ : std_logic;
SIGNAL \ALT_INV_status~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
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
SIGNAL \ALT_INV_saldo_novo[15]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[11]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[8]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_saldo_novo[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Selector27~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.CADASTRAR~q\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.LOGOUT~q\ : std_logic;
SIGNAL \ALT_INV_conf_pass~q\ : std_logic;
SIGNAL \ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.MENU~q\ : std_logic;
SIGNAL \ALT_INV_write_signal~q\ : std_logic;
SIGNAL ALT_INV_saldo_signal : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_estado.ERRO~q\ : std_logic;
SIGNAL \ALT_INV_estado.MENU_INICIAL~q\ : std_logic;
SIGNAL \ALT_INV_estado.ERRO_INICIAL~q\ : std_logic;
SIGNAL \ALT_INV_process_1~5_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~4_combout\ : std_logic;
SIGNAL \mem_inst|login_inst|ALT_INV_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_process_1~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~2_combout\ : std_logic;
SIGNAL \mem_inst|senha_inst|ALT_INV_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_confirma~q\ : std_logic;
SIGNAL \ALT_INV_estado.CONSULTA_SALDO~q\ : std_logic;
SIGNAL \ALT_INV_estado.LOGIN~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_confirma_operacao~input_o\ : std_logic;
SIGNAL \ALT_INV_selecao_inicio~input_o\ : std_logic;
SIGNAL \ALT_INV_tipo_operacao[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_tipo_operacao[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_tipo_operacao[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_login_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_senha_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_valor_operacao[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_confirma_operacao <= confirma_operacao;
ww_selecao_inicio <= selecao_inicio;
ww_tipo_operacao <= tipo_operacao;
ww_valor_operacao <= valor_operacao;
ww_login_in <= login_in;
ww_senha_in <= senha_in;
saldo_novo <= ww_saldo_novo;
status <= ww_status;
erro_saida <= ww_erro_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\mem_inst|saldo_inst|ALT_INV_Q\(2) <= NOT \mem_inst|saldo_inst|Q\(2);
\mem_inst|saldo_inst|ALT_INV_Q\(3) <= NOT \mem_inst|saldo_inst|Q\(3);
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\mem_inst|saldo_inst|ALT_INV_Q\(1) <= NOT \mem_inst|saldo_inst|Q\(1);
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\mem_inst|saldo_inst|ALT_INV_Q\(4) <= NOT \mem_inst|saldo_inst|Q\(4);
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\mem_inst|saldo_inst|ALT_INV_Q\(5) <= NOT \mem_inst|saldo_inst|Q\(5);
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\mem_inst|saldo_inst|ALT_INV_Q\(6) <= NOT \mem_inst|saldo_inst|Q\(6);
\mem_inst|saldo_inst|ALT_INV_Q\(7) <= NOT \mem_inst|saldo_inst|Q\(7);
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\mem_inst|saldo_inst|ALT_INV_Q\(15) <= NOT \mem_inst|saldo_inst|Q\(15);
\ALT_INV_estado.SAQUE~q\ <= NOT \estado.SAQUE~q\;
\ALT_INV_estado.DEPOSITO~q\ <= NOT \estado.DEPOSITO~q\;
\mem_inst|saldo_inst|ALT_INV_Q\(0) <= NOT \mem_inst|saldo_inst|Q\(0);
\ALT_INV_erro_saida~reg0_q\ <= NOT \erro_saida~reg0_q\;
\ALT_INV_status~reg0_q\ <= NOT \status~reg0_q\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
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
\ALT_INV_saldo_novo[15]~reg0_q\ <= NOT \saldo_novo[15]~reg0_q\;
\ALT_INV_saldo_novo[11]~reg0_q\ <= NOT \saldo_novo[11]~reg0_q\;
\ALT_INV_saldo_novo[8]~reg0_q\ <= NOT \saldo_novo[8]~reg0_q\;
\ALT_INV_saldo_novo[7]~reg0_q\ <= NOT \saldo_novo[7]~reg0_q\;
\ALT_INV_saldo_novo[6]~reg0_q\ <= NOT \saldo_novo[6]~reg0_q\;
\ALT_INV_saldo_novo[5]~reg0_q\ <= NOT \saldo_novo[5]~reg0_q\;
\ALT_INV_saldo_novo[4]~reg0_q\ <= NOT \saldo_novo[4]~reg0_q\;
\ALT_INV_saldo_novo[2]~reg0_q\ <= NOT \saldo_novo[2]~reg0_q\;
\ALT_INV_saldo_novo[1]~reg0_q\ <= NOT \saldo_novo[1]~reg0_q\;
\ALT_INV_saldo_novo[0]~reg0_q\ <= NOT \saldo_novo[0]~reg0_q\;
\ALT_INV_Selector27~2_combout\ <= NOT \Selector27~2_combout\;
\ALT_INV_Selector27~1_combout\ <= NOT \Selector27~1_combout\;
\ALT_INV_Selector27~0_combout\ <= NOT \Selector27~0_combout\;
\ALT_INV_estado.CADASTRAR~q\ <= NOT \estado.CADASTRAR~q\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_estado.LOGOUT~q\ <= NOT \estado.LOGOUT~q\;
\ALT_INV_conf_pass~q\ <= NOT \conf_pass~q\;
\ALT_INV_Selector6~1_combout\ <= NOT \Selector6~1_combout\;
\ALT_INV_Selector2~1_combout\ <= NOT \Selector2~1_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_estado.MENU~q\ <= NOT \estado.MENU~q\;
\ALT_INV_write_signal~q\ <= NOT \write_signal~q\;
ALT_INV_saldo_signal(0) <= NOT saldo_signal(0);
\ALT_INV_estado.ERRO~q\ <= NOT \estado.ERRO~q\;
\ALT_INV_estado.MENU_INICIAL~q\ <= NOT \estado.MENU_INICIAL~q\;
\ALT_INV_estado.ERRO_INICIAL~q\ <= NOT \estado.ERRO_INICIAL~q\;
\ALT_INV_process_1~5_combout\ <= NOT \process_1~5_combout\;
\ALT_INV_process_1~4_combout\ <= NOT \process_1~4_combout\;
\mem_inst|login_inst|ALT_INV_Q\(5) <= NOT \mem_inst|login_inst|Q\(5);
\mem_inst|login_inst|ALT_INV_Q\(4) <= NOT \mem_inst|login_inst|Q\(4);
\mem_inst|login_inst|ALT_INV_Q\(3) <= NOT \mem_inst|login_inst|Q\(3);
\ALT_INV_process_1~3_combout\ <= NOT \process_1~3_combout\;
\mem_inst|login_inst|ALT_INV_Q\(2) <= NOT \mem_inst|login_inst|Q\(2);
\mem_inst|login_inst|ALT_INV_Q\(1) <= NOT \mem_inst|login_inst|Q\(1);
\mem_inst|login_inst|ALT_INV_Q\(0) <= NOT \mem_inst|login_inst|Q\(0);
\ALT_INV_process_1~2_combout\ <= NOT \process_1~2_combout\;
\mem_inst|senha_inst|ALT_INV_Q\(0) <= NOT \mem_inst|senha_inst|Q\(0);
\mem_inst|login_inst|ALT_INV_Q\(7) <= NOT \mem_inst|login_inst|Q\(7);
\mem_inst|login_inst|ALT_INV_Q\(6) <= NOT \mem_inst|login_inst|Q\(6);
\ALT_INV_process_1~1_combout\ <= NOT \process_1~1_combout\;
\mem_inst|senha_inst|ALT_INV_Q\(3) <= NOT \mem_inst|senha_inst|Q\(3);
\mem_inst|senha_inst|ALT_INV_Q\(2) <= NOT \mem_inst|senha_inst|Q\(2);
\mem_inst|senha_inst|ALT_INV_Q\(1) <= NOT \mem_inst|senha_inst|Q\(1);
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
\mem_inst|senha_inst|ALT_INV_Q\(6) <= NOT \mem_inst|senha_inst|Q\(6);
\mem_inst|senha_inst|ALT_INV_Q\(5) <= NOT \mem_inst|senha_inst|Q\(5);
\mem_inst|senha_inst|ALT_INV_Q\(4) <= NOT \mem_inst|senha_inst|Q\(4);
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\mem_inst|senha_inst|ALT_INV_Q\(7) <= NOT \mem_inst|senha_inst|Q\(7);
\ALT_INV_confirma~q\ <= NOT \confirma~q\;
\ALT_INV_estado.CONSULTA_SALDO~q\ <= NOT \estado.CONSULTA_SALDO~q\;
\ALT_INV_estado.LOGIN~q\ <= NOT \estado.LOGIN~q\;
\ALT_INV_LessThan0~20_combout\ <= NOT \LessThan0~20_combout\;
\ALT_INV_LessThan0~19_combout\ <= NOT \LessThan0~19_combout\;
\ALT_INV_LessThan0~18_combout\ <= NOT \LessThan0~18_combout\;
\ALT_INV_LessThan0~17_combout\ <= NOT \LessThan0~17_combout\;
\ALT_INV_LessThan0~16_combout\ <= NOT \LessThan0~16_combout\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\mem_inst|saldo_inst|ALT_INV_Q\(8) <= NOT \mem_inst|saldo_inst|Q\(8);
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\mem_inst|saldo_inst|ALT_INV_Q\(10) <= NOT \mem_inst|saldo_inst|Q\(10);
\mem_inst|saldo_inst|ALT_INV_Q\(9) <= NOT \mem_inst|saldo_inst|Q\(9);
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\mem_inst|saldo_inst|ALT_INV_Q\(11) <= NOT \mem_inst|saldo_inst|Q\(11);
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\mem_inst|saldo_inst|ALT_INV_Q\(12) <= NOT \mem_inst|saldo_inst|Q\(12);
\mem_inst|saldo_inst|ALT_INV_Q\(13) <= NOT \mem_inst|saldo_inst|Q\(13);
\mem_inst|saldo_inst|ALT_INV_Q\(14) <= NOT \mem_inst|saldo_inst|Q\(14);
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_confirma_operacao~input_o\ <= NOT \confirma_operacao~input_o\;
\ALT_INV_selecao_inicio~input_o\ <= NOT \selecao_inicio~input_o\;
\ALT_INV_tipo_operacao[2]~input_o\ <= NOT \tipo_operacao[2]~input_o\;
\ALT_INV_tipo_operacao[1]~input_o\ <= NOT \tipo_operacao[1]~input_o\;
\ALT_INV_tipo_operacao[0]~input_o\ <= NOT \tipo_operacao[0]~input_o\;
\ALT_INV_login_in[5]~input_o\ <= NOT \login_in[5]~input_o\;
\ALT_INV_login_in[4]~input_o\ <= NOT \login_in[4]~input_o\;
\ALT_INV_login_in[3]~input_o\ <= NOT \login_in[3]~input_o\;
\ALT_INV_login_in[2]~input_o\ <= NOT \login_in[2]~input_o\;
\ALT_INV_login_in[1]~input_o\ <= NOT \login_in[1]~input_o\;
\ALT_INV_login_in[0]~input_o\ <= NOT \login_in[0]~input_o\;
\ALT_INV_senha_in[0]~input_o\ <= NOT \senha_in[0]~input_o\;
\ALT_INV_login_in[7]~input_o\ <= NOT \login_in[7]~input_o\;
\ALT_INV_login_in[6]~input_o\ <= NOT \login_in[6]~input_o\;
\ALT_INV_senha_in[3]~input_o\ <= NOT \senha_in[3]~input_o\;
\ALT_INV_senha_in[2]~input_o\ <= NOT \senha_in[2]~input_o\;
\ALT_INV_senha_in[1]~input_o\ <= NOT \senha_in[1]~input_o\;
\ALT_INV_senha_in[6]~input_o\ <= NOT \senha_in[6]~input_o\;
\ALT_INV_senha_in[5]~input_o\ <= NOT \senha_in[5]~input_o\;
\ALT_INV_senha_in[4]~input_o\ <= NOT \senha_in[4]~input_o\;
\ALT_INV_senha_in[7]~input_o\ <= NOT \senha_in[7]~input_o\;
\ALT_INV_valor_operacao[8]~input_o\ <= NOT \valor_operacao[8]~input_o\;
\ALT_INV_valor_operacao[10]~input_o\ <= NOT \valor_operacao[10]~input_o\;
\ALT_INV_valor_operacao[9]~input_o\ <= NOT \valor_operacao[9]~input_o\;
\ALT_INV_valor_operacao[11]~input_o\ <= NOT \valor_operacao[11]~input_o\;
\ALT_INV_valor_operacao[12]~input_o\ <= NOT \valor_operacao[12]~input_o\;
\ALT_INV_valor_operacao[13]~input_o\ <= NOT \valor_operacao[13]~input_o\;
\ALT_INV_valor_operacao[14]~input_o\ <= NOT \valor_operacao[14]~input_o\;
\ALT_INV_valor_operacao[2]~input_o\ <= NOT \valor_operacao[2]~input_o\;
\ALT_INV_valor_operacao[3]~input_o\ <= NOT \valor_operacao[3]~input_o\;
\ALT_INV_valor_operacao[1]~input_o\ <= NOT \valor_operacao[1]~input_o\;
\ALT_INV_valor_operacao[0]~input_o\ <= NOT \valor_operacao[0]~input_o\;
\ALT_INV_valor_operacao[4]~input_o\ <= NOT \valor_operacao[4]~input_o\;
\ALT_INV_valor_operacao[5]~input_o\ <= NOT \valor_operacao[5]~input_o\;
\ALT_INV_valor_operacao[6]~input_o\ <= NOT \valor_operacao[6]~input_o\;
\ALT_INV_valor_operacao[7]~input_o\ <= NOT \valor_operacao[7]~input_o\;
\ALT_INV_valor_operacao[15]~input_o\ <= NOT \valor_operacao[15]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N19
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N36
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X64_Y0_N36
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

-- Location: IOOBUF_X89_Y4_N96
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

-- Location: IOOBUF_X89_Y4_N45
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

-- Location: IOOBUF_X50_Y0_N93
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X40_Y0_N36
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

-- Location: IOOBUF_X50_Y0_N42
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

-- Location: IOOBUF_X40_Y0_N53
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

-- Location: IOOBUF_X70_Y0_N2
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

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X68_Y0_N36
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

-- Location: IOIBUF_X70_Y0_N35
\valor_operacao[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(0),
	o => \valor_operacao[0]~input_o\);

-- Location: LABCELL_X57_Y2_N36
\saldo_signal[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_signal[0]~feeder_combout\ = ( \saldo_novo[0]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_saldo_novo[0]~reg0_q\,
	combout => \saldo_signal[0]~feeder_combout\);

-- Location: IOIBUF_X62_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\confirma_operacao~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirma_operacao,
	o => \confirma_operacao~input_o\);

-- Location: FF_X64_Y1_N25
conf_pass : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \confirma_operacao~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conf_pass~q\);

-- Location: LABCELL_X64_Y1_N27
\confirma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \confirma~0_combout\ = ( \confirma_operacao~input_o\ & ( !\conf_pass~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_confirma_operacao~input_o\,
	dataf => \ALT_INV_conf_pass~q\,
	combout => \confirma~0_combout\);

-- Location: FF_X64_Y1_N29
confirma : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \confirma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \confirma~q\);

-- Location: IOIBUF_X56_Y0_N35
\valor_operacao[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(15),
	o => \valor_operacao[15]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\valor_operacao[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(14),
	o => \valor_operacao[14]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\valor_operacao[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(13),
	o => \valor_operacao[13]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\valor_operacao[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(12),
	o => \valor_operacao[12]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\valor_operacao[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(11),
	o => \valor_operacao[11]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\valor_operacao[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(10),
	o => \valor_operacao[10]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\valor_operacao[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(9),
	o => \valor_operacao[9]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\valor_operacao[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(8),
	o => \valor_operacao[8]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\valor_operacao[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(7),
	o => \valor_operacao[7]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\valor_operacao[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(6),
	o => \valor_operacao[6]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\valor_operacao[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(5),
	o => \valor_operacao[5]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\valor_operacao[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(4),
	o => \valor_operacao[4]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\valor_operacao[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(3),
	o => \valor_operacao[3]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\valor_operacao[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(2),
	o => \valor_operacao[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\valor_operacao[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_operacao(1),
	o => \valor_operacao[1]~input_o\);

-- Location: LABCELL_X60_Y3_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\valor_operacao[0]~input_o\ $ (!\mem_inst|saldo_inst|Q\(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\valor_operacao[0]~input_o\ $ (!\mem_inst|saldo_inst|Q\(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add1~3\ = SHARE((!\valor_operacao[0]~input_o\) # (\mem_inst|saldo_inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[0]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(0),
	cin => GND,
	sharein => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

-- Location: LABCELL_X60_Y3_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\valor_operacao[1]~input_o\ $ (\mem_inst|saldo_inst|Q\(1)) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\valor_operacao[1]~input_o\ $ (\mem_inst|saldo_inst|Q\(1)) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~7\ = SHARE((!\valor_operacao[1]~input_o\ & \mem_inst|saldo_inst|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[1]~input_o\,
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(1),
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\,
	shareout => \Add1~7\);

-- Location: MLABCELL_X59_Y2_N39
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

-- Location: LABCELL_X61_Y2_N18
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \valor_operacao[6]~input_o\ & ( (!\valor_operacao[7]~input_o\ & (!\mem_inst|saldo_inst|Q\(6) & !\mem_inst|saldo_inst|Q\(7))) # (\valor_operacao[7]~input_o\ & ((!\mem_inst|saldo_inst|Q\(6)) # (!\mem_inst|saldo_inst|Q\(7)))) ) ) # 
-- ( !\valor_operacao[6]~input_o\ & ( (\valor_operacao[7]~input_o\ & !\mem_inst|saldo_inst|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011110011001100001111001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[7]~input_o\,
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(6),
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(7),
	dataf => \ALT_INV_valor_operacao[6]~input_o\,
	combout => \LessThan0~9_combout\);

-- Location: LABCELL_X61_Y2_N42
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \valor_operacao[6]~input_o\ & ( (\mem_inst|saldo_inst|Q\(6) & (!\valor_operacao[7]~input_o\ $ (\mem_inst|saldo_inst|Q\(7)))) ) ) # ( !\valor_operacao[6]~input_o\ & ( (!\mem_inst|saldo_inst|Q\(6) & (!\valor_operacao[7]~input_o\ $ 
-- (\mem_inst|saldo_inst|Q\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[7]~input_o\,
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(6),
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(7),
	dataf => \ALT_INV_valor_operacao[6]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X61_Y2_N0
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( \mem_inst|saldo_inst|Q\(5) & ( \LessThan0~2_combout\ & ( (!\LessThan0~9_combout\ & (((!\valor_operacao[5]~input_o\) # (!\valor_operacao[4]~input_o\)) # (\mem_inst|saldo_inst|Q\(4)))) ) ) ) # ( !\mem_inst|saldo_inst|Q\(5) & ( 
-- \LessThan0~2_combout\ & ( (!\valor_operacao[5]~input_o\ & (!\LessThan0~9_combout\ & ((!\valor_operacao[4]~input_o\) # (\mem_inst|saldo_inst|Q\(4))))) ) ) ) # ( \mem_inst|saldo_inst|Q\(5) & ( !\LessThan0~2_combout\ & ( !\LessThan0~9_combout\ ) ) ) # ( 
-- !\mem_inst|saldo_inst|Q\(5) & ( !\LessThan0~2_combout\ & ( !\LessThan0~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000000010000001111000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|saldo_inst|ALT_INV_Q\(4),
	datab => \ALT_INV_valor_operacao[5]~input_o\,
	datac => \ALT_INV_LessThan0~9_combout\,
	datad => \ALT_INV_valor_operacao[4]~input_o\,
	datae => \mem_inst|saldo_inst|ALT_INV_Q\(5),
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LABCELL_X61_Y2_N57
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \mem_inst|saldo_inst|Q\(15) & ( !\valor_operacao[15]~input_o\ ) ) # ( !\mem_inst|saldo_inst|Q\(15) & ( \valor_operacao[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[15]~input_o\,
	dataf => \mem_inst|saldo_inst|ALT_INV_Q\(15),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X60_Y2_N24
\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = !\valor_operacao[10]~input_o\ $ (!\mem_inst|saldo_inst|Q\(10))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[10]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(10),
	combout => \LessThan0~13_combout\);

-- Location: LABCELL_X60_Y2_N45
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( \mem_inst|saldo_inst|Q\(11) & ( !\valor_operacao[11]~input_o\ ) ) # ( !\mem_inst|saldo_inst|Q\(11) & ( \valor_operacao[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[11]~input_o\,
	datae => \mem_inst|saldo_inst|ALT_INV_Q\(11),
	combout => \LessThan0~12_combout\);

-- Location: LABCELL_X61_Y2_N36
\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = !\mem_inst|saldo_inst|Q\(8) $ (!\valor_operacao[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|saldo_inst|ALT_INV_Q\(8),
	datab => \ALT_INV_valor_operacao[8]~input_o\,
	combout => \LessThan0~14_combout\);

-- Location: LABCELL_X61_Y1_N54
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( \mem_inst|saldo_inst|Q\(12) & ( \mem_inst|saldo_inst|Q\(14) & ( (\valor_operacao[14]~input_o\ & (\valor_operacao[12]~input_o\ & (!\mem_inst|saldo_inst|Q\(13) $ (\valor_operacao[13]~input_o\)))) ) ) ) # ( 
-- !\mem_inst|saldo_inst|Q\(12) & ( \mem_inst|saldo_inst|Q\(14) & ( (\valor_operacao[14]~input_o\ & (!\valor_operacao[12]~input_o\ & (!\mem_inst|saldo_inst|Q\(13) $ (\valor_operacao[13]~input_o\)))) ) ) ) # ( \mem_inst|saldo_inst|Q\(12) & ( 
-- !\mem_inst|saldo_inst|Q\(14) & ( (!\valor_operacao[14]~input_o\ & (\valor_operacao[12]~input_o\ & (!\mem_inst|saldo_inst|Q\(13) $ (\valor_operacao[13]~input_o\)))) ) ) ) # ( !\mem_inst|saldo_inst|Q\(12) & ( !\mem_inst|saldo_inst|Q\(14) & ( 
-- (!\valor_operacao[14]~input_o\ & (!\valor_operacao[12]~input_o\ & (!\mem_inst|saldo_inst|Q\(13) $ (\valor_operacao[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[14]~input_o\,
	datab => \mem_inst|saldo_inst|ALT_INV_Q\(13),
	datac => \ALT_INV_valor_operacao[13]~input_o\,
	datad => \ALT_INV_valor_operacao[12]~input_o\,
	datae => \mem_inst|saldo_inst|ALT_INV_Q\(12),
	dataf => \mem_inst|saldo_inst|ALT_INV_Q\(14),
	combout => \LessThan0~11_combout\);

-- Location: LABCELL_X60_Y2_N48
\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( !\LessThan0~14_combout\ & ( \LessThan0~11_combout\ & ( (!\LessThan0~13_combout\ & (!\LessThan0~12_combout\ & (!\mem_inst|saldo_inst|Q\(9) $ (\valor_operacao[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|saldo_inst|ALT_INV_Q\(9),
	datab => \ALT_INV_valor_operacao[9]~input_o\,
	datac => \ALT_INV_LessThan0~13_combout\,
	datad => \ALT_INV_LessThan0~12_combout\,
	datae => \ALT_INV_LessThan0~14_combout\,
	dataf => \ALT_INV_LessThan0~11_combout\,
	combout => \LessThan0~15_combout\);

-- Location: LABCELL_X61_Y1_N51
\LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( \mem_inst|saldo_inst|Q\(12) & ( \mem_inst|saldo_inst|Q\(14) & ( (\valor_operacao[13]~input_o\ & (!\mem_inst|saldo_inst|Q\(13) & \valor_operacao[14]~input_o\)) ) ) ) # ( !\mem_inst|saldo_inst|Q\(12) & ( 
-- \mem_inst|saldo_inst|Q\(14) & ( (\valor_operacao[14]~input_o\ & ((!\valor_operacao[13]~input_o\ & (\valor_operacao[12]~input_o\ & !\mem_inst|saldo_inst|Q\(13))) # (\valor_operacao[13]~input_o\ & ((!\mem_inst|saldo_inst|Q\(13)) # 
-- (\valor_operacao[12]~input_o\))))) ) ) ) # ( \mem_inst|saldo_inst|Q\(12) & ( !\mem_inst|saldo_inst|Q\(14) & ( ((\valor_operacao[13]~input_o\ & !\mem_inst|saldo_inst|Q\(13))) # (\valor_operacao[14]~input_o\) ) ) ) # ( !\mem_inst|saldo_inst|Q\(12) & ( 
-- !\mem_inst|saldo_inst|Q\(14) & ( ((!\valor_operacao[13]~input_o\ & (\valor_operacao[12]~input_o\ & !\mem_inst|saldo_inst|Q\(13))) # (\valor_operacao[13]~input_o\ & ((!\mem_inst|saldo_inst|Q\(13)) # (\valor_operacao[12]~input_o\)))) # 
-- (\valor_operacao[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000111111111010100001111111100000000011100010000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[13]~input_o\,
	datab => \ALT_INV_valor_operacao[12]~input_o\,
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(13),
	datad => \ALT_INV_valor_operacao[14]~input_o\,
	datae => \mem_inst|saldo_inst|ALT_INV_Q\(12),
	dataf => \mem_inst|saldo_inst|ALT_INV_Q\(14),
	combout => \LessThan0~16_combout\);

-- Location: LABCELL_X60_Y2_N6
\LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = ( !\LessThan0~16_combout\ & ( \LessThan0~11_combout\ & ( (!\valor_operacao[11]~input_o\ & (((!\valor_operacao[10]~input_o\) # (\mem_inst|saldo_inst|Q\(11))) # (\mem_inst|saldo_inst|Q\(10)))) # (\valor_operacao[11]~input_o\ & 
-- (\mem_inst|saldo_inst|Q\(11) & ((!\valor_operacao[10]~input_o\) # (\mem_inst|saldo_inst|Q\(10))))) ) ) ) # ( !\LessThan0~16_combout\ & ( !\LessThan0~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011001111010011010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|saldo_inst|ALT_INV_Q\(10),
	datab => \ALT_INV_valor_operacao[11]~input_o\,
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(11),
	datad => \ALT_INV_valor_operacao[10]~input_o\,
	datae => \ALT_INV_LessThan0~16_combout\,
	dataf => \ALT_INV_LessThan0~11_combout\,
	combout => \LessThan0~17_combout\);

-- Location: LABCELL_X61_Y2_N39
\LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = (!\mem_inst|saldo_inst|Q\(8) & \valor_operacao[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|saldo_inst|ALT_INV_Q\(8),
	datab => \ALT_INV_valor_operacao[8]~input_o\,
	combout => \LessThan0~18_combout\);

-- Location: LABCELL_X60_Y2_N54
\LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~19_combout\ = ( !\LessThan0~12_combout\ & ( \LessThan0~11_combout\ & ( (!\LessThan0~13_combout\ & ((!\mem_inst|saldo_inst|Q\(9) & ((\valor_operacao[9]~input_o\) # (\LessThan0~18_combout\))) # (\mem_inst|saldo_inst|Q\(9) & 
-- (\LessThan0~18_combout\ & \valor_operacao[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000100010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~13_combout\,
	datab => \mem_inst|saldo_inst|ALT_INV_Q\(9),
	datac => \ALT_INV_LessThan0~18_combout\,
	datad => \ALT_INV_valor_operacao[9]~input_o\,
	datae => \ALT_INV_LessThan0~12_combout\,
	dataf => \ALT_INV_LessThan0~11_combout\,
	combout => \LessThan0~19_combout\);

-- Location: LABCELL_X60_Y2_N21
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \mem_inst|saldo_inst|Q\(3) & ( (\valor_operacao[3]~input_o\ & (!\valor_operacao[2]~input_o\ $ (\mem_inst|saldo_inst|Q\(2)))) ) ) # ( !\mem_inst|saldo_inst|Q\(3) & ( (!\valor_operacao[3]~input_o\ & (!\valor_operacao[2]~input_o\ $ 
-- (\mem_inst|saldo_inst|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010100000101000001001000001010000010100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[3]~input_o\,
	datab => \ALT_INV_valor_operacao[2]~input_o\,
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(2),
	dataf => \mem_inst|saldo_inst|ALT_INV_Q\(3),
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X60_Y2_N39
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \mem_inst|saldo_inst|Q\(4) & ( !\valor_operacao[4]~input_o\ ) ) # ( !\mem_inst|saldo_inst|Q\(4) & ( \valor_operacao[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[4]~input_o\,
	dataf => \mem_inst|saldo_inst|ALT_INV_Q\(4),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X61_Y2_N24
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = !\valor_operacao[5]~input_o\ $ (!\mem_inst|saldo_inst|Q\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[5]~input_o\,
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(5),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X60_Y2_N27
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( \mem_inst|saldo_inst|Q\(3) & ( (\valor_operacao[3]~input_o\ & (!\mem_inst|saldo_inst|Q\(2) & \valor_operacao[2]~input_o\)) ) ) # ( !\mem_inst|saldo_inst|Q\(3) & ( ((!\mem_inst|saldo_inst|Q\(2) & \valor_operacao[2]~input_o\)) # 
-- (\valor_operacao[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[3]~input_o\,
	datab => \mem_inst|saldo_inst|ALT_INV_Q\(2),
	datac => \ALT_INV_valor_operacao[2]~input_o\,
	dataf => \mem_inst|saldo_inst|ALT_INV_Q\(3),
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X60_Y3_N48
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( !\mem_inst|saldo_inst|Q\(0) & ( \mem_inst|saldo_inst|Q\(1) & ( (\valor_operacao[0]~input_o\ & \valor_operacao[1]~input_o\) ) ) ) # ( \mem_inst|saldo_inst|Q\(0) & ( !\mem_inst|saldo_inst|Q\(1) & ( \valor_operacao[1]~input_o\ ) ) ) 
-- # ( !\mem_inst|saldo_inst|Q\(0) & ( !\mem_inst|saldo_inst|Q\(1) & ( (\valor_operacao[1]~input_o\) # (\valor_operacao[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111001100110011001100010001000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[0]~input_o\,
	datab => \ALT_INV_valor_operacao[1]~input_o\,
	datae => \mem_inst|saldo_inst|ALT_INV_Q\(0),
	dataf => \mem_inst|saldo_inst|ALT_INV_Q\(1),
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X60_Y2_N33
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( \LessThan0~2_combout\ & ( \LessThan0~5_combout\ & ( (!\LessThan0~4_combout\ & (!\LessThan0~3_combout\ & ((\LessThan0~7_combout\) # (\LessThan0~6_combout\)))) ) ) ) # ( \LessThan0~2_combout\ & ( !\LessThan0~5_combout\ & ( 
-- (!\LessThan0~4_combout\ & (!\LessThan0~3_combout\ & \LessThan0~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100000000000000000000000100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~6_combout\,
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_LessThan0~7_combout\,
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~5_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LABCELL_X60_Y2_N12
\LessThan0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = ( \LessThan0~19_combout\ & ( \LessThan0~8_combout\ & ( !\LessThan0~1_combout\ ) ) ) # ( !\LessThan0~19_combout\ & ( \LessThan0~8_combout\ & ( (!\LessThan0~1_combout\ & ((!\LessThan0~17_combout\) # (\LessThan0~15_combout\))) ) ) ) 
-- # ( \LessThan0~19_combout\ & ( !\LessThan0~8_combout\ & ( !\LessThan0~1_combout\ ) ) ) # ( !\LessThan0~19_combout\ & ( !\LessThan0~8_combout\ & ( (!\LessThan0~1_combout\ & ((!\LessThan0~17_combout\) # ((!\LessThan0~10_combout\ & \LessThan0~15_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001000110011001100110011001100000011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~10_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~15_combout\,
	datad => \ALT_INV_LessThan0~17_combout\,
	datae => \ALT_INV_LessThan0~19_combout\,
	dataf => \ALT_INV_LessThan0~8_combout\,
	combout => \LessThan0~20_combout\);

-- Location: IOIBUF_X58_Y0_N92
\tipo_operacao[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tipo_operacao(1),
	o => \tipo_operacao[1]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\tipo_operacao[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tipo_operacao(2),
	o => \tipo_operacao[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\tipo_operacao[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tipo_operacao(0),
	o => \tipo_operacao[0]~input_o\);

-- Location: MLABCELL_X59_Y1_N54
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \tipo_operacao[0]~input_o\ & ( \confirma~q\ & ( (\estado.MENU~q\ & ((\tipo_operacao[2]~input_o\) # (\tipo_operacao[1]~input_o\))) ) ) ) # ( !\tipo_operacao[0]~input_o\ & ( \confirma~q\ & ( (\tipo_operacao[1]~input_o\ & 
-- (\tipo_operacao[2]~input_o\ & \estado.MENU~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tipo_operacao[1]~input_o\,
	datab => \ALT_INV_tipo_operacao[2]~input_o\,
	datac => \ALT_INV_estado.MENU~q\,
	datae => \ALT_INV_tipo_operacao[0]~input_o\,
	dataf => \ALT_INV_confirma~q\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X62_Y2_N48
\Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = ( \LessThan0~0_combout\ & ( \LessThan0~20_combout\ & ( ((!\confirma~q\ & \estado.SAQUE~q\)) # (\Selector9~0_combout\) ) ) ) # ( !\LessThan0~0_combout\ & ( \LessThan0~20_combout\ & ( ((!\confirma~q\ & \estado.SAQUE~q\)) # 
-- (\Selector9~0_combout\) ) ) ) # ( \LessThan0~0_combout\ & ( !\LessThan0~20_combout\ & ( ((!\confirma~q\ & \estado.SAQUE~q\)) # (\Selector9~0_combout\) ) ) ) # ( !\LessThan0~0_combout\ & ( !\LessThan0~20_combout\ & ( \Selector9~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010111010101110101011101010111010101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector9~0_combout\,
	datab => \ALT_INV_confirma~q\,
	datac => \ALT_INV_estado.SAQUE~q\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \Selector9~1_combout\);

-- Location: FF_X62_Y2_N50
\estado.ERRO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector9~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.ERRO~q\);

-- Location: MLABCELL_X59_Y1_N42
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \estado.DEPOSITO~q\ & ( \confirma~q\ & ( (!\estado.MENU~q\) # ((!\tipo_operacao[1]~input_o\ & (\tipo_operacao[0]~input_o\ & !\tipo_operacao[2]~input_o\))) ) ) ) # ( !\estado.DEPOSITO~q\ & ( \confirma~q\ & ( 
-- (!\tipo_operacao[1]~input_o\ & (\tipo_operacao[0]~input_o\ & (\estado.MENU~q\ & !\tipo_operacao[2]~input_o\))) ) ) ) # ( \estado.DEPOSITO~q\ & ( !\confirma~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001111001011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tipo_operacao[1]~input_o\,
	datab => \ALT_INV_tipo_operacao[0]~input_o\,
	datac => \ALT_INV_estado.MENU~q\,
	datad => \ALT_INV_tipo_operacao[2]~input_o\,
	datae => \ALT_INV_estado.DEPOSITO~q\,
	dataf => \ALT_INV_confirma~q\,
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X61_Y2_N6
\Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ( !\Selector6~0_combout\ & ( \Selector7~0_combout\ & ( (!\estado.ERRO~q\ & ((!\estado.SAQUE~q\) # ((!\LessThan0~20_combout\ & !\LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_estado.SAQUE~q\,
	datad => \ALT_INV_estado.ERRO~q\,
	datae => \ALT_INV_Selector6~0_combout\,
	dataf => \ALT_INV_Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X61_Y2_N8
\estado.DEPOSITO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector7~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.DEPOSITO~q\);

-- Location: LABCELL_X61_Y1_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(0) ) + ( \valor_operacao[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \mem_inst|saldo_inst|Q\(0) ) + ( \valor_operacao[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[0]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X61_Y1_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(1) ) + ( \valor_operacao[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \mem_inst|saldo_inst|Q\(1) ) + ( \valor_operacao[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|saldo_inst|ALT_INV_Q\(1),
	dataf => \ALT_INV_valor_operacao[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X62_Y1_N54
\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ( \Add0~5_sumout\ & ( (\mem_inst|saldo_inst|Q\(1)) # (\estado.DEPOSITO~q\) ) ) # ( !\Add0~5_sumout\ & ( (!\estado.DEPOSITO~q\ & \mem_inst|saldo_inst|Q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.DEPOSITO~q\,
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(1),
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \Selector25~0_combout\);

-- Location: LABCELL_X60_Y2_N18
\saldo_novo[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[0]~0_combout\ = ( \LessThan0~20_combout\ ) # ( !\LessThan0~20_combout\ & ( (!\estado.SAQUE~q\) # (\LessThan0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_estado.SAQUE~q\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \saldo_novo[0]~0_combout\);

-- Location: MLABCELL_X59_Y1_N18
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \estado.LOGOUT~q\ & ( \confirma~q\ & ( (!\estado.MENU~q\) # ((!\tipo_operacao[1]~input_o\ & (!\tipo_operacao[0]~input_o\ & \tipo_operacao[2]~input_o\))) ) ) ) # ( !\estado.LOGOUT~q\ & ( \confirma~q\ & ( 
-- (!\tipo_operacao[1]~input_o\ & (!\tipo_operacao[0]~input_o\ & (\estado.MENU~q\ & \tipo_operacao[2]~input_o\))) ) ) ) # ( \estado.LOGOUT~q\ & ( !\confirma~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000010001111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tipo_operacao[1]~input_o\,
	datab => \ALT_INV_tipo_operacao[0]~input_o\,
	datac => \ALT_INV_estado.MENU~q\,
	datad => \ALT_INV_tipo_operacao[2]~input_o\,
	datae => \ALT_INV_estado.LOGOUT~q\,
	dataf => \ALT_INV_confirma~q\,
	combout => \Selector10~0_combout\);

-- Location: LABCELL_X61_Y2_N9
\Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ( !\Selector6~0_combout\ & ( \Selector10~0_combout\ & ( (!\estado.ERRO~q\ & ((!\estado.SAQUE~q\) # ((!\LessThan0~20_combout\ & !\LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_estado.ERRO~q\,
	datad => \ALT_INV_estado.SAQUE~q\,
	datae => \ALT_INV_Selector6~0_combout\,
	dataf => \ALT_INV_Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X61_Y2_N11
\estado.LOGOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector10~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.LOGOUT~q\);

-- Location: IOIBUF_X62_Y0_N52
\senha_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(7),
	o => \senha_in[7]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\selecao_inicio~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao_inicio,
	o => \selecao_inicio~input_o\);

-- Location: LABCELL_X63_Y2_N57
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \estado.CADASTRAR~q\ & ( \confirma~q\ & ( (\estado.MENU_INICIAL~q\) # (\selecao_inicio~input_o\) ) ) ) # ( !\estado.CADASTRAR~q\ & ( \confirma~q\ & ( (\selecao_inicio~input_o\ & !\estado.MENU_INICIAL~q\) ) ) ) # ( 
-- \estado.CADASTRAR~q\ & ( !\confirma~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_selecao_inicio~input_o\,
	datac => \ALT_INV_estado.MENU_INICIAL~q\,
	datae => \ALT_INV_estado.CADASTRAR~q\,
	dataf => \ALT_INV_confirma~q\,
	combout => \Selector3~0_combout\);

-- Location: LABCELL_X61_Y2_N15
\Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ( !\Selector2~0_combout\ & ( \Selector3~0_combout\ & ( (!\estado.ERRO~q\ & ((!\estado.SAQUE~q\) # ((!\LessThan0~20_combout\ & !\LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_estado.ERRO~q\,
	datad => \ALT_INV_estado.SAQUE~q\,
	datae => \ALT_INV_Selector2~0_combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X61_Y2_N17
\estado.CADASTRAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.CADASTRAR~q\);

-- Location: LABCELL_X62_Y2_N27
\in_login[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_login[7]~0_combout\ = ( \estado.CADASTRAR~q\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_estado.CADASTRAR~q\,
	combout => \in_login[7]~0_combout\);

-- Location: FF_X63_Y1_N13
\in_senha[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \senha_in[7]~input_o\,
	sload => VCC,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_senha(7));

-- Location: LABCELL_X62_Y2_N15
\Selector27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = ( !\estado.MENU~q\ & ( (!\estado.DEPOSITO~q\ & ((!\estado.CADASTRAR~q\) # (!\confirma~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado.CADASTRAR~q\,
	datac => \ALT_INV_confirma~q\,
	datad => \ALT_INV_estado.DEPOSITO~q\,
	dataf => \ALT_INV_estado.MENU~q\,
	combout => \Selector27~2_combout\);

-- Location: LABCELL_X62_Y2_N12
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( !\estado.ERRO~q\ & ( (!\estado.CADASTRAR~q\ & (\estado.MENU_INICIAL~q\ & !\estado.LOGIN~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado.CADASTRAR~q\,
	datac => \ALT_INV_estado.MENU_INICIAL~q\,
	datad => \ALT_INV_estado.LOGIN~q\,
	dataf => \ALT_INV_estado.ERRO~q\,
	combout => \Selector27~0_combout\);

-- Location: LABCELL_X62_Y2_N42
\Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = ( \estado.ERRO_INICIAL~q\ & ( \Selector27~0_combout\ & ( \write_signal~q\ ) ) ) # ( !\estado.ERRO_INICIAL~q\ & ( \Selector27~0_combout\ & ( (\write_signal~q\ & ((\estado.LOGOUT~q\) # (\estado.SAQUE~q\))) ) ) ) # ( 
-- \estado.ERRO_INICIAL~q\ & ( !\Selector27~0_combout\ & ( \write_signal~q\ ) ) ) # ( !\estado.ERRO_INICIAL~q\ & ( !\Selector27~0_combout\ & ( \write_signal~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000010111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.SAQUE~q\,
	datac => \ALT_INV_estado.LOGOUT~q\,
	datad => \ALT_INV_write_signal~q\,
	datae => \ALT_INV_estado.ERRO_INICIAL~q\,
	dataf => \ALT_INV_Selector27~0_combout\,
	combout => \Selector27~1_combout\);

-- Location: LABCELL_X62_Y2_N30
\Selector27~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~3_combout\ = ( \LessThan0~0_combout\ & ( \Selector27~1_combout\ ) ) # ( !\LessThan0~0_combout\ & ( \Selector27~1_combout\ ) ) # ( \LessThan0~0_combout\ & ( !\Selector27~1_combout\ & ( !\Selector27~2_combout\ ) ) ) # ( !\LessThan0~0_combout\ & 
-- ( !\Selector27~1_combout\ & ( (!\Selector27~2_combout\) # ((!\LessThan0~20_combout\ & \estado.SAQUE~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001100111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~20_combout\,
	datac => \ALT_INV_estado.SAQUE~q\,
	datad => \ALT_INV_Selector27~2_combout\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_Selector27~1_combout\,
	combout => \Selector27~3_combout\);

-- Location: FF_X62_Y2_N32
write_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector27~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_signal~q\);

-- Location: FF_X60_Y1_N5
\mem_inst|senha_inst|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_senha(7),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|senha_inst|Q\(7));

-- Location: LABCELL_X60_Y1_N3
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = !\senha_in[7]~input_o\ $ (!\mem_inst|senha_inst|Q\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_senha_in[7]~input_o\,
	datad => \mem_inst|senha_inst|ALT_INV_Q\(7),
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X58_Y0_N58
\senha_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(1),
	o => \senha_in[1]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\senha_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(3),
	o => \senha_in[3]~input_o\);

-- Location: FF_X60_Y1_N35
\in_senha[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \senha_in[1]~input_o\,
	sload => VCC,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_senha(1));

-- Location: FF_X60_Y1_N2
\mem_inst|senha_inst|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_senha(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|senha_inst|Q\(1));

-- Location: IOIBUF_X66_Y0_N92
\senha_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(2),
	o => \senha_in[2]~input_o\);

-- Location: LABCELL_X62_Y1_N27
\in_senha[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_senha[2]~feeder_combout\ = ( \senha_in[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_senha_in[2]~input_o\,
	combout => \in_senha[2]~feeder_combout\);

-- Location: FF_X62_Y1_N28
\in_senha[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \in_senha[2]~feeder_combout\,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_senha(2));

-- Location: FF_X60_Y1_N14
\mem_inst|senha_inst|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_senha(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|senha_inst|Q\(2));

-- Location: LABCELL_X62_Y1_N21
\in_senha[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_senha[3]~feeder_combout\ = ( \senha_in[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_senha_in[3]~input_o\,
	combout => \in_senha[3]~feeder_combout\);

-- Location: FF_X62_Y1_N22
\in_senha[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \in_senha[3]~feeder_combout\,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_senha(3));

-- Location: FF_X61_Y1_N43
\mem_inst|senha_inst|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_senha(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|senha_inst|Q\(3));

-- Location: LABCELL_X60_Y1_N12
\process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = ( \mem_inst|senha_inst|Q\(2) & ( \mem_inst|senha_inst|Q\(3) & ( (\senha_in[3]~input_o\ & (\senha_in[2]~input_o\ & (!\senha_in[1]~input_o\ $ (\mem_inst|senha_inst|Q\(1))))) ) ) ) # ( !\mem_inst|senha_inst|Q\(2) & ( 
-- \mem_inst|senha_inst|Q\(3) & ( (\senha_in[3]~input_o\ & (!\senha_in[2]~input_o\ & (!\senha_in[1]~input_o\ $ (\mem_inst|senha_inst|Q\(1))))) ) ) ) # ( \mem_inst|senha_inst|Q\(2) & ( !\mem_inst|senha_inst|Q\(3) & ( (!\senha_in[3]~input_o\ & 
-- (\senha_in[2]~input_o\ & (!\senha_in[1]~input_o\ $ (\mem_inst|senha_inst|Q\(1))))) ) ) ) # ( !\mem_inst|senha_inst|Q\(2) & ( !\mem_inst|senha_inst|Q\(3) & ( (!\senha_in[3]~input_o\ & (!\senha_in[2]~input_o\ & (!\senha_in[1]~input_o\ $ 
-- (\mem_inst|senha_inst|Q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_senha_in[1]~input_o\,
	datab => \ALT_INV_senha_in[3]~input_o\,
	datac => \mem_inst|senha_inst|ALT_INV_Q\(1),
	datad => \ALT_INV_senha_in[2]~input_o\,
	datae => \mem_inst|senha_inst|ALT_INV_Q\(2),
	dataf => \mem_inst|senha_inst|ALT_INV_Q\(3),
	combout => \process_1~1_combout\);

-- Location: IOIBUF_X50_Y0_N58
\login_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(6),
	o => \login_in[6]~input_o\);

-- Location: FF_X60_Y1_N43
\in_login[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \login_in[6]~input_o\,
	sload => VCC,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_login(6));

-- Location: FF_X60_Y1_N23
\mem_inst|login_inst|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_login(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|login_inst|Q\(6));

-- Location: IOIBUF_X64_Y0_N52
\senha_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(0),
	o => \senha_in[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\login_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(7),
	o => \login_in[7]~input_o\);

-- Location: FF_X62_Y1_N13
\in_senha[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \senha_in[0]~input_o\,
	sload => VCC,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_senha(0));

-- Location: FF_X60_Y1_N38
\mem_inst|senha_inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_senha(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|senha_inst|Q\(0));

-- Location: FF_X60_Y1_N47
\in_login[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \login_in[7]~input_o\,
	sload => VCC,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_login(7));

-- Location: FF_X60_Y1_N41
\mem_inst|login_inst|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_login(7),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|login_inst|Q\(7));

-- Location: LABCELL_X60_Y1_N36
\process_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = ( \mem_inst|senha_inst|Q\(0) & ( \mem_inst|login_inst|Q\(7) & ( (\senha_in[0]~input_o\ & (\login_in[7]~input_o\ & (!\mem_inst|login_inst|Q\(6) $ (\login_in[6]~input_o\)))) ) ) ) # ( !\mem_inst|senha_inst|Q\(0) & ( 
-- \mem_inst|login_inst|Q\(7) & ( (!\senha_in[0]~input_o\ & (\login_in[7]~input_o\ & (!\mem_inst|login_inst|Q\(6) $ (\login_in[6]~input_o\)))) ) ) ) # ( \mem_inst|senha_inst|Q\(0) & ( !\mem_inst|login_inst|Q\(7) & ( (\senha_in[0]~input_o\ & 
-- (!\login_in[7]~input_o\ & (!\mem_inst|login_inst|Q\(6) $ (\login_in[6]~input_o\)))) ) ) ) # ( !\mem_inst|senha_inst|Q\(0) & ( !\mem_inst|login_inst|Q\(7) & ( (!\senha_in[0]~input_o\ & (!\login_in[7]~input_o\ & (!\mem_inst|login_inst|Q\(6) $ 
-- (\login_in[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|login_inst|ALT_INV_Q\(6),
	datab => \ALT_INV_login_in[6]~input_o\,
	datac => \ALT_INV_senha_in[0]~input_o\,
	datad => \ALT_INV_login_in[7]~input_o\,
	datae => \mem_inst|senha_inst|ALT_INV_Q\(0),
	dataf => \mem_inst|login_inst|ALT_INV_Q\(7),
	combout => \process_1~2_combout\);

-- Location: IOIBUF_X66_Y0_N58
\login_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(3),
	o => \login_in[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\login_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(5),
	o => \login_in[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\login_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(4),
	o => \login_in[4]~input_o\);

-- Location: FF_X60_Y1_N31
\in_login[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \login_in[4]~input_o\,
	sload => VCC,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_login(4));

-- Location: FF_X60_Y1_N59
\mem_inst|login_inst|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_login(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|login_inst|Q\(4));

-- Location: FF_X63_Y1_N16
\in_login[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \login_in[5]~input_o\,
	sload => VCC,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_login(5));

-- Location: FF_X60_Y1_N26
\mem_inst|login_inst|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_login(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|login_inst|Q\(5));

-- Location: LABCELL_X62_Y1_N24
\in_login[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_login[3]~feeder_combout\ = ( \login_in[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_login_in[3]~input_o\,
	combout => \in_login[3]~feeder_combout\);

-- Location: FF_X62_Y1_N25
\in_login[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \in_login[3]~feeder_combout\,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_login(3));

-- Location: FF_X60_Y1_N17
\mem_inst|login_inst|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_login(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|login_inst|Q\(3));

-- Location: LABCELL_X60_Y1_N24
\process_1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = ( \mem_inst|login_inst|Q\(5) & ( \mem_inst|login_inst|Q\(3) & ( (\login_in[3]~input_o\ & (\login_in[5]~input_o\ & (!\login_in[4]~input_o\ $ (\mem_inst|login_inst|Q\(4))))) ) ) ) # ( !\mem_inst|login_inst|Q\(5) & ( 
-- \mem_inst|login_inst|Q\(3) & ( (\login_in[3]~input_o\ & (!\login_in[5]~input_o\ & (!\login_in[4]~input_o\ $ (\mem_inst|login_inst|Q\(4))))) ) ) ) # ( \mem_inst|login_inst|Q\(5) & ( !\mem_inst|login_inst|Q\(3) & ( (!\login_in[3]~input_o\ & 
-- (\login_in[5]~input_o\ & (!\login_in[4]~input_o\ $ (\mem_inst|login_inst|Q\(4))))) ) ) ) # ( !\mem_inst|login_inst|Q\(5) & ( !\mem_inst|login_inst|Q\(3) & ( (!\login_in[3]~input_o\ & (!\login_in[5]~input_o\ & (!\login_in[4]~input_o\ $ 
-- (\mem_inst|login_inst|Q\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_login_in[3]~input_o\,
	datab => \ALT_INV_login_in[5]~input_o\,
	datac => \ALT_INV_login_in[4]~input_o\,
	datad => \mem_inst|login_inst|ALT_INV_Q\(4),
	datae => \mem_inst|login_inst|ALT_INV_Q\(5),
	dataf => \mem_inst|login_inst|ALT_INV_Q\(3),
	combout => \process_1~4_combout\);

-- Location: IOIBUF_X62_Y0_N1
\senha_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(5),
	o => \senha_in[5]~input_o\);

-- Location: LABCELL_X63_Y1_N21
\in_senha[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_senha[5]~feeder_combout\ = ( \senha_in[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_senha_in[5]~input_o\,
	combout => \in_senha[5]~feeder_combout\);

-- Location: FF_X63_Y1_N22
\in_senha[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \in_senha[5]~feeder_combout\,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_senha(5));

-- Location: FF_X60_Y1_N29
\mem_inst|senha_inst|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_senha(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|senha_inst|Q\(5));

-- Location: IOIBUF_X72_Y0_N35
\senha_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(4),
	o => \senha_in[4]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\senha_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_senha_in(6),
	o => \senha_in[6]~input_o\);

-- Location: FF_X62_Y1_N43
\in_senha[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \senha_in[4]~input_o\,
	sload => VCC,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_senha(4));

-- Location: FF_X60_Y1_N56
\mem_inst|senha_inst|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_senha(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|senha_inst|Q\(4));

-- Location: FF_X62_Y1_N1
\in_senha[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \senha_in[6]~input_o\,
	sload => VCC,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_senha(6));

-- Location: FF_X60_Y1_N11
\mem_inst|senha_inst|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_senha(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|senha_inst|Q\(6));

-- Location: LABCELL_X60_Y1_N54
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( \mem_inst|senha_inst|Q\(4) & ( \mem_inst|senha_inst|Q\(6) & ( (\senha_in[4]~input_o\ & (\senha_in[6]~input_o\ & (!\mem_inst|senha_inst|Q\(5) $ (\senha_in[5]~input_o\)))) ) ) ) # ( !\mem_inst|senha_inst|Q\(4) & ( 
-- \mem_inst|senha_inst|Q\(6) & ( (!\senha_in[4]~input_o\ & (\senha_in[6]~input_o\ & (!\mem_inst|senha_inst|Q\(5) $ (\senha_in[5]~input_o\)))) ) ) ) # ( \mem_inst|senha_inst|Q\(4) & ( !\mem_inst|senha_inst|Q\(6) & ( (\senha_in[4]~input_o\ & 
-- (!\senha_in[6]~input_o\ & (!\mem_inst|senha_inst|Q\(5) $ (\senha_in[5]~input_o\)))) ) ) ) # ( !\mem_inst|senha_inst|Q\(4) & ( !\mem_inst|senha_inst|Q\(6) & ( (!\senha_in[4]~input_o\ & (!\senha_in[6]~input_o\ & (!\mem_inst|senha_inst|Q\(5) $ 
-- (\senha_in[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|senha_inst|ALT_INV_Q\(5),
	datab => \ALT_INV_senha_in[4]~input_o\,
	datac => \ALT_INV_senha_in[6]~input_o\,
	datad => \ALT_INV_senha_in[5]~input_o\,
	datae => \mem_inst|senha_inst|ALT_INV_Q\(4),
	dataf => \mem_inst|senha_inst|ALT_INV_Q\(6),
	combout => \process_1~0_combout\);

-- Location: IOIBUF_X54_Y0_N18
\login_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(1),
	o => \login_in[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\login_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(2),
	o => \login_in[2]~input_o\);

-- Location: FF_X60_Y2_N28
\in_login[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \login_in[2]~input_o\,
	sload => VCC,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_login(2));

-- Location: FF_X60_Y2_N40
\mem_inst|login_inst|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_login(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|login_inst|Q\(2));

-- Location: IOIBUF_X38_Y0_N18
\login_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_login_in(0),
	o => \login_in[0]~input_o\);

-- Location: FF_X60_Y2_N22
\in_login[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \login_in[1]~input_o\,
	sload => VCC,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_login(1));

-- Location: FF_X60_Y2_N5
\mem_inst|login_inst|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_login(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|login_inst|Q\(1));

-- Location: FF_X60_Y2_N10
\in_login[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \login_in[0]~input_o\,
	sload => VCC,
	ena => \in_login[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => in_login(0));

-- Location: FF_X60_Y2_N17
\mem_inst|login_inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => in_login(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|login_inst|Q\(0));

-- Location: LABCELL_X60_Y2_N3
\process_1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = ( \mem_inst|login_inst|Q\(1) & ( \mem_inst|login_inst|Q\(0) & ( (\login_in[1]~input_o\ & (\login_in[0]~input_o\ & (!\login_in[2]~input_o\ $ (\mem_inst|login_inst|Q\(2))))) ) ) ) # ( !\mem_inst|login_inst|Q\(1) & ( 
-- \mem_inst|login_inst|Q\(0) & ( (!\login_in[1]~input_o\ & (\login_in[0]~input_o\ & (!\login_in[2]~input_o\ $ (\mem_inst|login_inst|Q\(2))))) ) ) ) # ( \mem_inst|login_inst|Q\(1) & ( !\mem_inst|login_inst|Q\(0) & ( (\login_in[1]~input_o\ & 
-- (!\login_in[0]~input_o\ & (!\login_in[2]~input_o\ $ (\mem_inst|login_inst|Q\(2))))) ) ) ) # ( !\mem_inst|login_inst|Q\(1) & ( !\mem_inst|login_inst|Q\(0) & ( (!\login_in[1]~input_o\ & (!\login_in[0]~input_o\ & (!\login_in[2]~input_o\ $ 
-- (\mem_inst|login_inst|Q\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_login_in[1]~input_o\,
	datab => \ALT_INV_login_in[2]~input_o\,
	datac => \mem_inst|login_inst|ALT_INV_Q\(2),
	datad => \ALT_INV_login_in[0]~input_o\,
	datae => \mem_inst|login_inst|ALT_INV_Q\(1),
	dataf => \mem_inst|login_inst|ALT_INV_Q\(0),
	combout => \process_1~3_combout\);

-- Location: LABCELL_X60_Y1_N18
\process_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = ( \process_1~0_combout\ & ( \process_1~3_combout\ & ( (!\Equal1~0_combout\ & (\process_1~1_combout\ & (\process_1~2_combout\ & \process_1~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_process_1~1_combout\,
	datac => \ALT_INV_process_1~2_combout\,
	datad => \ALT_INV_process_1~4_combout\,
	datae => \ALT_INV_process_1~0_combout\,
	dataf => \ALT_INV_process_1~3_combout\,
	combout => \process_1~5_combout\);

-- Location: LABCELL_X60_Y1_N48
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \process_1~5_combout\ & ( (!\confirma~q\ & \estado.ERRO_INICIAL~q\) ) ) # ( !\process_1~5_combout\ & ( (!\confirma~q\ & ((\estado.ERRO_INICIAL~q\))) # (\confirma~q\ & (\estado.LOGIN~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.LOGIN~q\,
	datac => \ALT_INV_confirma~q\,
	datad => \ALT_INV_estado.ERRO_INICIAL~q\,
	dataf => \ALT_INV_process_1~5_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X60_Y1_N50
\estado.ERRO_INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.ERRO_INICIAL~q\);

-- Location: LABCELL_X62_Y2_N57
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \estado.MENU_INICIAL~q\ & ( \confirma~q\ & ( (!\estado.LOGOUT~q\ & !\estado.ERRO_INICIAL~q\) ) ) ) # ( !\estado.MENU_INICIAL~q\ & ( \confirma~q\ & ( (!\estado.LOGOUT~q\ & !\estado.ERRO_INICIAL~q\) ) ) ) # ( 
-- \estado.MENU_INICIAL~q\ & ( !\confirma~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.LOGOUT~q\,
	datad => \ALT_INV_estado.ERRO_INICIAL~q\,
	datae => \ALT_INV_estado.MENU_INICIAL~q\,
	dataf => \ALT_INV_confirma~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X62_Y2_N58
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

-- Location: LABCELL_X62_Y2_N21
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \confirma~q\ & ( (\estado.SAQUE~q\) # (\estado.MENU_INICIAL~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.MENU_INICIAL~q\,
	datad => \ALT_INV_estado.SAQUE~q\,
	dataf => \ALT_INV_confirma~q\,
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X63_Y2_N12
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( \estado.LOGIN~q\ & ( \selecao_inicio~input_o\ & ( (!\confirma~q\) # (\estado.MENU_INICIAL~q\) ) ) ) # ( \estado.LOGIN~q\ & ( !\selecao_inicio~input_o\ ) ) # ( !\estado.LOGIN~q\ & ( !\selecao_inicio~input_o\ & ( 
-- (!\estado.MENU_INICIAL~q\ & \confirma~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100111111111111111100000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado.MENU_INICIAL~q\,
	datad => \ALT_INV_confirma~q\,
	datae => \ALT_INV_estado.LOGIN~q\,
	dataf => \ALT_INV_selecao_inicio~input_o\,
	combout => \Selector2~1_combout\);

-- Location: LABCELL_X61_Y2_N12
\Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = ( !\Selector2~0_combout\ & ( \Selector2~1_combout\ & ( (!\estado.ERRO~q\ & ((!\estado.SAQUE~q\) # ((!\LessThan0~20_combout\ & !\LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_estado.SAQUE~q\,
	datad => \ALT_INV_estado.ERRO~q\,
	datae => \ALT_INV_Selector2~0_combout\,
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X61_Y2_N14
\estado.LOGIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.LOGIN~q\);

-- Location: LABCELL_X60_Y1_N45
\saldo_novo[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[0]~1_combout\ = ( \estado.CONSULTA_SALDO~q\ & ( \process_1~5_combout\ & ( (!\estado.LOGIN~q\) # (\confirma~q\) ) ) ) # ( !\estado.CONSULTA_SALDO~q\ & ( \process_1~5_combout\ & ( (!\estado.LOGIN~q\ & (((\estado.SAQUE~q\)) # 
-- (\estado.DEPOSITO~q\))) # (\estado.LOGIN~q\ & (((\confirma~q\)))) ) ) ) # ( \estado.CONSULTA_SALDO~q\ & ( !\process_1~5_combout\ & ( !\estado.LOGIN~q\ ) ) ) # ( !\estado.CONSULTA_SALDO~q\ & ( !\process_1~5_combout\ & ( (!\estado.LOGIN~q\ & 
-- ((\estado.SAQUE~q\) # (\estado.DEPOSITO~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010101010101010101000100111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.LOGIN~q\,
	datab => \ALT_INV_estado.DEPOSITO~q\,
	datac => \ALT_INV_confirma~q\,
	datad => \ALT_INV_estado.SAQUE~q\,
	datae => \ALT_INV_estado.CONSULTA_SALDO~q\,
	dataf => \ALT_INV_process_1~5_combout\,
	combout => \saldo_novo[0]~1_combout\);

-- Location: FF_X59_Y2_N41
\saldo_novo[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[1]~reg0feeder_combout\,
	asdata => \Selector25~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[1]~reg0_q\);

-- Location: MLABCELL_X59_Y1_N33
\saldo_signal[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_signal[1]~feeder_combout\ = ( \saldo_novo[1]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_saldo_novo[1]~reg0_q\,
	combout => \saldo_signal[1]~feeder_combout\);

-- Location: FF_X59_Y1_N35
\saldo_signal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_signal[1]~feeder_combout\,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(1));

-- Location: FF_X61_Y1_N53
\mem_inst|saldo_inst|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(1));

-- Location: LABCELL_X60_Y3_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\valor_operacao[2]~input_o\ $ (\mem_inst|saldo_inst|Q\(2)) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\valor_operacao[2]~input_o\ $ (\mem_inst|saldo_inst|Q\(2)) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~11\ = SHARE((!\valor_operacao[2]~input_o\ & \mem_inst|saldo_inst|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[2]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(2),
	cin => \Add1~6\,
	sharein => \Add1~7\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

-- Location: MLABCELL_X59_Y2_N51
\saldo_novo[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[2]~reg0feeder_combout\ = \Add1~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~9_sumout\,
	combout => \saldo_novo[2]~reg0feeder_combout\);

-- Location: LABCELL_X61_Y1_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(2) ) + ( \valor_operacao[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \mem_inst|saldo_inst|Q\(2) ) + ( \valor_operacao[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[2]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X62_Y1_N15
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = ( \Add0~9_sumout\ & ( \estado.DEPOSITO~q\ ) ) # ( \Add0~9_sumout\ & ( !\estado.DEPOSITO~q\ & ( \mem_inst|saldo_inst|Q\(2) ) ) ) # ( !\Add0~9_sumout\ & ( !\estado.DEPOSITO~q\ & ( \mem_inst|saldo_inst|Q\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|saldo_inst|ALT_INV_Q\(2),
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X59_Y2_N53
\saldo_novo[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[2]~reg0feeder_combout\,
	asdata => \Selector24~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[2]~reg0_q\);

-- Location: LABCELL_X57_Y2_N45
\saldo_signal[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_signal[2]~feeder_combout\ = ( \saldo_novo[2]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_saldo_novo[2]~reg0_q\,
	combout => \saldo_signal[2]~feeder_combout\);

-- Location: FF_X57_Y2_N46
\saldo_signal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_signal[2]~feeder_combout\,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(2));

-- Location: FF_X60_Y2_N32
\mem_inst|saldo_inst|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(2));

-- Location: LABCELL_X60_Y3_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\valor_operacao[3]~input_o\ $ (\mem_inst|saldo_inst|Q\(3)) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\valor_operacao[3]~input_o\ $ (\mem_inst|saldo_inst|Q\(3)) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~15\ = SHARE((!\valor_operacao[3]~input_o\ & \mem_inst|saldo_inst|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[3]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(3),
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\,
	shareout => \Add1~15\);

-- Location: MLABCELL_X59_Y2_N0
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

-- Location: LABCELL_X61_Y1_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(3) ) + ( \valor_operacao[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \mem_inst|saldo_inst|Q\(3) ) + ( \valor_operacao[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[3]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X62_Y1_N33
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( \Add0~13_sumout\ & ( (\mem_inst|saldo_inst|Q\(3)) # (\estado.DEPOSITO~q\) ) ) # ( !\Add0~13_sumout\ & ( (!\estado.DEPOSITO~q\ & \mem_inst|saldo_inst|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.DEPOSITO~q\,
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(3),
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X59_Y2_N2
\saldo_novo[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[3]~reg0feeder_combout\,
	asdata => \Selector23~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[3]~reg0_q\);

-- Location: FF_X59_Y2_N58
\saldo_signal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \saldo_novo[3]~reg0_q\,
	sload => VCC,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(3));

-- Location: FF_X60_Y2_N44
\mem_inst|saldo_inst|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(3));

-- Location: LABCELL_X60_Y3_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\valor_operacao[4]~input_o\ $ (\mem_inst|saldo_inst|Q\(4)) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\valor_operacao[4]~input_o\ $ (\mem_inst|saldo_inst|Q\(4)) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~19\ = SHARE((!\valor_operacao[4]~input_o\ & \mem_inst|saldo_inst|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000001001100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[4]~input_o\,
	datab => \mem_inst|saldo_inst|ALT_INV_Q\(4),
	cin => \Add1~14\,
	sharein => \Add1~15\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\,
	shareout => \Add1~19\);

-- Location: MLABCELL_X59_Y2_N48
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

-- Location: LABCELL_X61_Y1_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(4) ) + ( \valor_operacao[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \mem_inst|saldo_inst|Q\(4) ) + ( \valor_operacao[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(4),
	dataf => \ALT_INV_valor_operacao[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X62_Y1_N3
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( \mem_inst|saldo_inst|Q\(4) & ( \Add0~17_sumout\ ) ) # ( !\mem_inst|saldo_inst|Q\(4) & ( \Add0~17_sumout\ & ( \estado.DEPOSITO~q\ ) ) ) # ( \mem_inst|saldo_inst|Q\(4) & ( !\Add0~17_sumout\ & ( !\estado.DEPOSITO~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.DEPOSITO~q\,
	datae => \mem_inst|saldo_inst|ALT_INV_Q\(4),
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X59_Y2_N50
\saldo_novo[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[4]~reg0feeder_combout\,
	asdata => \Selector22~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[4]~reg0_q\);

-- Location: LABCELL_X57_Y2_N24
\saldo_signal[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_signal[4]~feeder_combout\ = ( \saldo_novo[4]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_saldo_novo[4]~reg0_q\,
	combout => \saldo_signal[4]~feeder_combout\);

-- Location: FF_X57_Y2_N25
\saldo_signal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_signal[4]~feeder_combout\,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(4));

-- Location: FF_X60_Y2_N53
\mem_inst|saldo_inst|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(4));

-- Location: LABCELL_X60_Y3_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\mem_inst|saldo_inst|Q\(5) $ (\valor_operacao[5]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\mem_inst|saldo_inst|Q\(5) $ (\valor_operacao[5]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~23\ = SHARE((\mem_inst|saldo_inst|Q\(5) & !\valor_operacao[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(5),
	datad => \ALT_INV_valor_operacao[5]~input_o\,
	cin => \Add1~18\,
	sharein => \Add1~19\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\,
	shareout => \Add1~23\);

-- Location: MLABCELL_X59_Y2_N6
\saldo_novo[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[5]~reg0feeder_combout\ = ( \Add1~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~21_sumout\,
	combout => \saldo_novo[5]~reg0feeder_combout\);

-- Location: LABCELL_X61_Y1_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(5) ) + ( \valor_operacao[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \mem_inst|saldo_inst|Q\(5) ) + ( \valor_operacao[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[5]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X62_Y1_N6
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( \mem_inst|saldo_inst|Q\(5) & ( \Add0~21_sumout\ ) ) # ( !\mem_inst|saldo_inst|Q\(5) & ( \Add0~21_sumout\ & ( \estado.DEPOSITO~q\ ) ) ) # ( \mem_inst|saldo_inst|Q\(5) & ( !\Add0~21_sumout\ & ( !\estado.DEPOSITO~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.DEPOSITO~q\,
	datae => \mem_inst|saldo_inst|ALT_INV_Q\(5),
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X59_Y2_N8
\saldo_novo[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[5]~reg0feeder_combout\,
	asdata => \Selector21~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[5]~reg0_q\);

-- Location: LABCELL_X57_Y2_N21
\saldo_signal[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_signal[5]~feeder_combout\ = ( \saldo_novo[5]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_saldo_novo[5]~reg0_q\,
	combout => \saldo_signal[5]~feeder_combout\);

-- Location: FF_X57_Y2_N22
\saldo_signal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_signal[5]~feeder_combout\,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(5));

-- Location: FF_X61_Y2_N38
\mem_inst|saldo_inst|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(5));

-- Location: LABCELL_X60_Y3_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\valor_operacao[6]~input_o\ $ (\mem_inst|saldo_inst|Q\(6)) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\valor_operacao[6]~input_o\ $ (\mem_inst|saldo_inst|Q\(6)) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~27\ = SHARE((!\valor_operacao[6]~input_o\ & \mem_inst|saldo_inst|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[6]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(6),
	cin => \Add1~22\,
	sharein => \Add1~23\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\,
	shareout => \Add1~27\);

-- Location: MLABCELL_X59_Y2_N42
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

-- Location: LABCELL_X61_Y1_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(6) ) + ( \valor_operacao[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \mem_inst|saldo_inst|Q\(6) ) + ( \valor_operacao[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[6]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X59_Y2_N54
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( \mem_inst|saldo_inst|Q\(6) & ( \Add0~25_sumout\ ) ) # ( !\mem_inst|saldo_inst|Q\(6) & ( \Add0~25_sumout\ & ( \estado.DEPOSITO~q\ ) ) ) # ( \mem_inst|saldo_inst|Q\(6) & ( !\Add0~25_sumout\ & ( !\estado.DEPOSITO~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.DEPOSITO~q\,
	datae => \mem_inst|saldo_inst|ALT_INV_Q\(6),
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X59_Y2_N44
\saldo_novo[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[6]~reg0feeder_combout\,
	asdata => \Selector20~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[6]~reg0_q\);

-- Location: LABCELL_X62_Y2_N39
\saldo_signal[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_signal[6]~feeder_combout\ = ( \saldo_novo[6]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_saldo_novo[6]~reg0_q\,
	combout => \saldo_signal[6]~feeder_combout\);

-- Location: FF_X62_Y2_N40
\saldo_signal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_signal[6]~feeder_combout\,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(6));

-- Location: FF_X61_Y2_N56
\mem_inst|saldo_inst|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(6));

-- Location: LABCELL_X60_Y3_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\valor_operacao[7]~input_o\ $ (\mem_inst|saldo_inst|Q\(7)) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\valor_operacao[7]~input_o\ $ (\mem_inst|saldo_inst|Q\(7)) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~31\ = SHARE((!\valor_operacao[7]~input_o\ & \mem_inst|saldo_inst|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[7]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(7),
	cin => \Add1~26\,
	sharein => \Add1~27\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\,
	shareout => \Add1~31\);

-- Location: MLABCELL_X59_Y2_N24
\saldo_novo[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[7]~reg0feeder_combout\ = \Add1~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~29_sumout\,
	combout => \saldo_novo[7]~reg0feeder_combout\);

-- Location: LABCELL_X61_Y1_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(7) ) + ( \valor_operacao[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \mem_inst|saldo_inst|Q\(7) ) + ( \valor_operacao[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[7]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X59_Y2_N36
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \Add0~29_sumout\ & ( (\mem_inst|saldo_inst|Q\(7)) # (\estado.DEPOSITO~q\) ) ) # ( !\Add0~29_sumout\ & ( (!\estado.DEPOSITO~q\ & \mem_inst|saldo_inst|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.DEPOSITO~q\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(7),
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X59_Y2_N26
\saldo_novo[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[7]~reg0feeder_combout\,
	asdata => \Selector19~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[7]~reg0_q\);

-- Location: LABCELL_X62_Y2_N36
\saldo_signal[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_signal[7]~feeder_combout\ = ( \saldo_novo[7]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_saldo_novo[7]~reg0_q\,
	combout => \saldo_signal[7]~feeder_combout\);

-- Location: FF_X62_Y2_N38
\saldo_signal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_signal[7]~feeder_combout\,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(7));

-- Location: FF_X61_Y2_N29
\mem_inst|saldo_inst|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(7),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(7));

-- Location: LABCELL_X60_Y3_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\valor_operacao[8]~input_o\ $ (\mem_inst|saldo_inst|Q\(8)) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !\valor_operacao[8]~input_o\ $ (\mem_inst|saldo_inst|Q\(8)) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~35\ = SHARE((!\valor_operacao[8]~input_o\ & \mem_inst|saldo_inst|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[8]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(8),
	cin => \Add1~30\,
	sharein => \Add1~31\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\,
	shareout => \Add1~35\);

-- Location: MLABCELL_X59_Y2_N18
\saldo_novo[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[8]~reg0feeder_combout\ = \Add1~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~33_sumout\,
	combout => \saldo_novo[8]~reg0feeder_combout\);

-- Location: LABCELL_X61_Y1_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(8) ) + ( \valor_operacao[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \mem_inst|saldo_inst|Q\(8) ) + ( \valor_operacao[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[8]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: MLABCELL_X59_Y2_N45
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \Add0~33_sumout\ & ( (\mem_inst|saldo_inst|Q\(8)) # (\estado.DEPOSITO~q\) ) ) # ( !\Add0~33_sumout\ & ( (!\estado.DEPOSITO~q\ & \mem_inst|saldo_inst|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.DEPOSITO~q\,
	datab => \mem_inst|saldo_inst|ALT_INV_Q\(8),
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X59_Y2_N20
\saldo_novo[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[8]~reg0feeder_combout\,
	asdata => \Selector18~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[8]~reg0_q\);

-- Location: LABCELL_X62_Y2_N9
\saldo_signal[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_signal[8]~feeder_combout\ = ( \saldo_novo[8]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_saldo_novo[8]~reg0_q\,
	combout => \saldo_signal[8]~feeder_combout\);

-- Location: FF_X62_Y2_N11
\saldo_signal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_signal[8]~feeder_combout\,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(8));

-- Location: FF_X61_Y2_N5
\mem_inst|saldo_inst|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(8),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(8));

-- Location: LABCELL_X60_Y3_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !\valor_operacao[9]~input_o\ $ (\mem_inst|saldo_inst|Q\(9)) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !\valor_operacao[9]~input_o\ $ (\mem_inst|saldo_inst|Q\(9)) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~39\ = SHARE((!\valor_operacao[9]~input_o\ & \mem_inst|saldo_inst|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[9]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(9),
	cin => \Add1~34\,
	sharein => \Add1~35\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\,
	shareout => \Add1~39\);

-- Location: MLABCELL_X59_Y2_N33
\saldo_novo[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[9]~reg0feeder_combout\ = ( \Add1~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~37_sumout\,
	combout => \saldo_novo[9]~reg0feeder_combout\);

-- Location: LABCELL_X61_Y1_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(9) ) + ( \valor_operacao[9]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \mem_inst|saldo_inst|Q\(9) ) + ( \valor_operacao[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[9]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: MLABCELL_X59_Y2_N9
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \Add0~37_sumout\ & ( (\mem_inst|saldo_inst|Q\(9)) # (\estado.DEPOSITO~q\) ) ) # ( !\Add0~37_sumout\ & ( (!\estado.DEPOSITO~q\ & \mem_inst|saldo_inst|Q\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.DEPOSITO~q\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(9),
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X59_Y2_N35
\saldo_novo[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[9]~reg0feeder_combout\,
	asdata => \Selector17~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[9]~reg0_q\);

-- Location: FF_X57_Y2_N58
\saldo_signal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \saldo_novo[9]~reg0_q\,
	sload => VCC,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(9));

-- Location: FF_X60_Y2_N59
\mem_inst|saldo_inst|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(9),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(9));

-- Location: LABCELL_X60_Y3_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( !\valor_operacao[10]~input_o\ $ (\mem_inst|saldo_inst|Q\(10)) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( !\valor_operacao[10]~input_o\ $ (\mem_inst|saldo_inst|Q\(10)) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~43\ = SHARE((!\valor_operacao[10]~input_o\ & \mem_inst|saldo_inst|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[10]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(10),
	cin => \Add1~38\,
	sharein => \Add1~39\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\,
	shareout => \Add1~43\);

-- Location: MLABCELL_X59_Y2_N30
\saldo_novo[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[10]~reg0feeder_combout\ = \Add1~41_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add1~41_sumout\,
	combout => \saldo_novo[10]~reg0feeder_combout\);

-- Location: LABCELL_X61_Y1_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(10) ) + ( \valor_operacao[10]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \mem_inst|saldo_inst|Q\(10) ) + ( \valor_operacao[10]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[10]~input_o\,
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X60_Y1_N6
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \estado.DEPOSITO~q\ & ( \Add0~41_sumout\ ) ) # ( !\estado.DEPOSITO~q\ & ( \Add0~41_sumout\ & ( \mem_inst|saldo_inst|Q\(10) ) ) ) # ( !\estado.DEPOSITO~q\ & ( !\Add0~41_sumout\ & ( \mem_inst|saldo_inst|Q\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_inst|saldo_inst|ALT_INV_Q\(10),
	datae => \ALT_INV_estado.DEPOSITO~q\,
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X59_Y2_N32
\saldo_novo[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[10]~reg0feeder_combout\,
	asdata => \Selector16~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[10]~reg0_q\);

-- Location: FF_X59_Y2_N55
\saldo_signal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \saldo_novo[10]~reg0_q\,
	sload => VCC,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(10));

-- Location: FF_X60_Y2_N38
\mem_inst|saldo_inst|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(10),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(10));

-- Location: LABCELL_X60_Y3_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( !\mem_inst|saldo_inst|Q\(11) $ (\valor_operacao[11]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( !\mem_inst|saldo_inst|Q\(11) $ (\valor_operacao[11]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~47\ = SHARE((\mem_inst|saldo_inst|Q\(11) & !\valor_operacao[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|saldo_inst|ALT_INV_Q\(11),
	datac => \ALT_INV_valor_operacao[11]~input_o\,
	cin => \Add1~42\,
	sharein => \Add1~43\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\,
	shareout => \Add1~47\);

-- Location: MLABCELL_X59_Y2_N12
\saldo_novo[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[11]~reg0feeder_combout\ = ( \Add1~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~45_sumout\,
	combout => \saldo_novo[11]~reg0feeder_combout\);

-- Location: LABCELL_X61_Y1_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(11) ) + ( \valor_operacao[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \mem_inst|saldo_inst|Q\(11) ) + ( \valor_operacao[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[11]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(11),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: MLABCELL_X59_Y2_N21
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \Add0~45_sumout\ & ( (\estado.DEPOSITO~q\) # (\mem_inst|saldo_inst|Q\(11)) ) ) # ( !\Add0~45_sumout\ & ( (\mem_inst|saldo_inst|Q\(11) & !\estado.DEPOSITO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|saldo_inst|ALT_INV_Q\(11),
	datad => \ALT_INV_estado.DEPOSITO~q\,
	dataf => \ALT_INV_Add0~45_sumout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X59_Y2_N14
\saldo_novo[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[11]~reg0feeder_combout\,
	asdata => \Selector15~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[11]~reg0_q\);

-- Location: LABCELL_X57_Y2_N12
\saldo_signal[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_signal[11]~feeder_combout\ = ( \saldo_novo[11]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_saldo_novo[11]~reg0_q\,
	combout => \saldo_signal[11]~feeder_combout\);

-- Location: FF_X57_Y2_N13
\saldo_signal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_signal[11]~feeder_combout\,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(11));

-- Location: FF_X60_Y2_N2
\mem_inst|saldo_inst|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(11),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(11));

-- Location: LABCELL_X60_Y3_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( !\valor_operacao[12]~input_o\ $ (\mem_inst|saldo_inst|Q\(12)) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( !\valor_operacao[12]~input_o\ $ (\mem_inst|saldo_inst|Q\(12)) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~51\ = SHARE((!\valor_operacao[12]~input_o\ & \mem_inst|saldo_inst|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[12]~input_o\,
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(12),
	cin => \Add1~46\,
	sharein => \Add1~47\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\,
	shareout => \Add1~51\);

-- Location: MLABCELL_X59_Y2_N27
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

-- Location: LABCELL_X61_Y1_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(12) ) + ( \valor_operacao[12]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \mem_inst|saldo_inst|Q\(12) ) + ( \valor_operacao[12]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_valor_operacao[12]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(12),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X60_Y1_N51
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \Add0~49_sumout\ & ( (\estado.DEPOSITO~q\) # (\mem_inst|saldo_inst|Q\(12)) ) ) # ( !\Add0~49_sumout\ & ( (\mem_inst|saldo_inst|Q\(12) & !\estado.DEPOSITO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(12),
	datad => \ALT_INV_estado.DEPOSITO~q\,
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X59_Y2_N29
\saldo_novo[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[12]~reg0feeder_combout\,
	asdata => \Selector14~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[12]~reg0_q\);

-- Location: FF_X59_Y1_N10
\saldo_signal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \saldo_novo[12]~reg0_q\,
	sload => VCC,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(12));

-- Location: FF_X61_Y1_N56
\mem_inst|saldo_inst|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(12),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(12));

-- Location: LABCELL_X60_Y3_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( !\valor_operacao[13]~input_o\ $ (\mem_inst|saldo_inst|Q\(13)) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( !\valor_operacao[13]~input_o\ $ (\mem_inst|saldo_inst|Q\(13)) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~55\ = SHARE((!\valor_operacao[13]~input_o\ & \mem_inst|saldo_inst|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[13]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(13),
	cin => \Add1~50\,
	sharein => \Add1~51\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\,
	shareout => \Add1~55\);

-- Location: MLABCELL_X59_Y2_N3
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

-- Location: LABCELL_X61_Y1_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \valor_operacao[13]~input_o\ ) + ( \mem_inst|saldo_inst|Q\(13) ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \valor_operacao[13]~input_o\ ) + ( \mem_inst|saldo_inst|Q\(13) ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(13),
	datad => \ALT_INV_valor_operacao[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X60_Y1_N0
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \Add0~53_sumout\ & ( (\mem_inst|saldo_inst|Q\(13)) # (\estado.DEPOSITO~q\) ) ) # ( !\Add0~53_sumout\ & ( (!\estado.DEPOSITO~q\ & \mem_inst|saldo_inst|Q\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_estado.DEPOSITO~q\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(13),
	dataf => \ALT_INV_Add0~53_sumout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X59_Y2_N5
\saldo_novo[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[13]~reg0feeder_combout\,
	asdata => \Selector13~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[13]~reg0_q\);

-- Location: FF_X59_Y1_N4
\saldo_signal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \saldo_novo[13]~reg0_q\,
	sload => VCC,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(13));

-- Location: FF_X61_Y1_N59
\mem_inst|saldo_inst|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(13),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(13));

-- Location: LABCELL_X60_Y3_N42
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( !\valor_operacao[14]~input_o\ $ (\mem_inst|saldo_inst|Q\(14)) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( !\valor_operacao[14]~input_o\ $ (\mem_inst|saldo_inst|Q\(14)) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~59\ = SHARE((!\valor_operacao[14]~input_o\ & \mem_inst|saldo_inst|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[14]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(14),
	cin => \Add1~54\,
	sharein => \Add1~55\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\,
	shareout => \Add1~59\);

-- Location: LABCELL_X61_Y2_N45
\saldo_novo[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[14]~reg0feeder_combout\ = ( \Add1~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~57_sumout\,
	combout => \saldo_novo[14]~reg0feeder_combout\);

-- Location: LABCELL_X61_Y1_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(14) ) + ( \valor_operacao[14]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \mem_inst|saldo_inst|Q\(14) ) + ( \valor_operacao[14]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(14),
	dataf => \ALT_INV_valor_operacao[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X61_Y2_N21
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \Add0~57_sumout\ & ( (\estado.DEPOSITO~q\) # (\mem_inst|saldo_inst|Q\(14)) ) ) # ( !\Add0~57_sumout\ & ( (\mem_inst|saldo_inst|Q\(14) & !\estado.DEPOSITO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|saldo_inst|ALT_INV_Q\(14),
	datac => \ALT_INV_estado.DEPOSITO~q\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X61_Y2_N47
\saldo_novo[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[14]~reg0feeder_combout\,
	asdata => \Selector12~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[14]~reg0_q\);

-- Location: FF_X62_Y1_N50
\saldo_signal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \saldo_novo[14]~reg0_q\,
	sload => VCC,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(14));

-- Location: FF_X61_Y1_N50
\mem_inst|saldo_inst|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(14),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(14));

-- Location: LABCELL_X60_Y3_N45
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( !\valor_operacao[15]~input_o\ $ (\mem_inst|saldo_inst|Q\(15)) ) + ( \Add1~59\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_valor_operacao[15]~input_o\,
	datac => \mem_inst|saldo_inst|ALT_INV_Q\(15),
	cin => \Add1~58\,
	sharein => \Add1~59\,
	sumout => \Add1~61_sumout\);

-- Location: LABCELL_X61_Y1_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \mem_inst|saldo_inst|Q\(15) ) + ( \valor_operacao[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[15]~input_o\,
	datad => \mem_inst|saldo_inst|ALT_INV_Q\(15),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

-- Location: LABCELL_X60_Y1_N33
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \Add0~61_sumout\ & ( (\estado.DEPOSITO~q\) # (\mem_inst|saldo_inst|Q\(15)) ) ) # ( !\Add0~61_sumout\ & ( (\mem_inst|saldo_inst|Q\(15) & !\estado.DEPOSITO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|saldo_inst|ALT_INV_Q\(15),
	datac => \ALT_INV_estado.DEPOSITO~q\,
	dataf => \ALT_INV_Add0~61_sumout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X60_Y3_N47
\saldo_novo[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	asdata => \Selector11~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[15]~reg0_q\);

-- Location: LABCELL_X62_Y2_N6
\saldo_signal[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_signal[15]~feeder_combout\ = ( \saldo_novo[15]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_saldo_novo[15]~reg0_q\,
	combout => \saldo_signal[15]~feeder_combout\);

-- Location: FF_X62_Y2_N7
\saldo_signal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_signal[15]~feeder_combout\,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(15));

-- Location: FF_X61_Y2_N23
\mem_inst|saldo_inst|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => saldo_signal(15),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(15));

-- Location: LABCELL_X61_Y2_N27
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !\mem_inst|saldo_inst|Q\(15) & ( \valor_operacao[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_valor_operacao[15]~input_o\,
	dataf => \mem_inst|saldo_inst|ALT_INV_Q\(15),
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X59_Y1_N36
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \estado.SAQUE~q\ & ( \confirma~q\ & ( (!\estado.MENU~q\) # ((\tipo_operacao[1]~input_o\ & (!\tipo_operacao[0]~input_o\ & !\tipo_operacao[2]~input_o\))) ) ) ) # ( !\estado.SAQUE~q\ & ( \confirma~q\ & ( (\tipo_operacao[1]~input_o\ 
-- & (!\tipo_operacao[0]~input_o\ & (\estado.MENU~q\ & !\tipo_operacao[2]~input_o\))) ) ) ) # ( \estado.SAQUE~q\ & ( !\confirma~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000000001111010011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tipo_operacao[1]~input_o\,
	datab => \ALT_INV_tipo_operacao[0]~input_o\,
	datac => \ALT_INV_estado.MENU~q\,
	datad => \ALT_INV_tipo_operacao[2]~input_o\,
	datae => \ALT_INV_estado.SAQUE~q\,
	dataf => \ALT_INV_confirma~q\,
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X61_Y2_N48
\Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = ( \estado.SAQUE~q\ & ( \Selector8~0_combout\ & ( (!\Selector6~0_combout\ & (!\LessThan0~0_combout\ & (!\LessThan0~20_combout\ & !\estado.ERRO~q\))) ) ) ) # ( !\estado.SAQUE~q\ & ( \Selector8~0_combout\ & ( (!\Selector6~0_combout\ & 
-- !\estado.ERRO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector6~0_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_LessThan0~20_combout\,
	datad => \ALT_INV_estado.ERRO~q\,
	datae => \ALT_INV_estado.SAQUE~q\,
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X61_Y2_N50
\estado.SAQUE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector8~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.SAQUE~q\);

-- Location: LABCELL_X62_Y2_N24
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \confirma~q\ & ( (!\estado.MENU~q\) # (\estado.SAQUE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.SAQUE~q\,
	datac => \ALT_INV_estado.MENU~q\,
	dataf => \ALT_INV_confirma~q\,
	combout => \Selector6~0_combout\);

-- Location: MLABCELL_X59_Y1_N48
\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( \estado.CONSULTA_SALDO~q\ & ( \confirma~q\ & ( (!\estado.MENU~q\) # ((!\tipo_operacao[1]~input_o\ & (!\tipo_operacao[0]~input_o\ & !\tipo_operacao[2]~input_o\))) ) ) ) # ( !\estado.CONSULTA_SALDO~q\ & ( \confirma~q\ & ( 
-- (!\tipo_operacao[1]~input_o\ & (!\tipo_operacao[0]~input_o\ & (\estado.MENU~q\ & !\tipo_operacao[2]~input_o\))) ) ) ) # ( \estado.CONSULTA_SALDO~q\ & ( !\confirma~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001000000000001111100011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_tipo_operacao[1]~input_o\,
	datab => \ALT_INV_tipo_operacao[0]~input_o\,
	datac => \ALT_INV_estado.MENU~q\,
	datad => \ALT_INV_tipo_operacao[2]~input_o\,
	datae => \ALT_INV_estado.CONSULTA_SALDO~q\,
	dataf => \ALT_INV_confirma~q\,
	combout => \Selector6~1_combout\);

-- Location: LABCELL_X61_Y2_N51
\Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = ( \estado.SAQUE~q\ & ( \Selector6~1_combout\ & ( (!\Selector6~0_combout\ & (!\LessThan0~0_combout\ & (!\estado.ERRO~q\ & !\LessThan0~20_combout\))) ) ) ) # ( !\estado.SAQUE~q\ & ( \Selector6~1_combout\ & ( (!\Selector6~0_combout\ & 
-- !\estado.ERRO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector6~0_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_estado.ERRO~q\,
	datad => \ALT_INV_LessThan0~20_combout\,
	datae => \ALT_INV_estado.SAQUE~q\,
	dataf => \ALT_INV_Selector6~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X61_Y2_N53
\estado.CONSULTA_SALDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.CONSULTA_SALDO~q\);

-- Location: LABCELL_X61_Y2_N54
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( !\estado.DEPOSITO~q\ & ( (!\estado.CONSULTA_SALDO~q\ & (!\estado.CADASTRAR~q\ & !\estado.SAQUE~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.CONSULTA_SALDO~q\,
	datab => \ALT_INV_estado.CADASTRAR~q\,
	datac => \ALT_INV_estado.SAQUE~q\,
	dataf => \ALT_INV_estado.DEPOSITO~q\,
	combout => \Selector5~0_combout\);

-- Location: MLABCELL_X59_Y1_N24
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( \estado.MENU~q\ & ( \process_1~5_combout\ & ( (!\confirma~q\) # ((!\Selector5~0_combout\) # ((\estado.ERRO~q\) # (\estado.LOGIN~q\))) ) ) ) # ( !\estado.MENU~q\ & ( \process_1~5_combout\ & ( ((\confirma~q\ & 
-- ((!\Selector5~0_combout\) # (\estado.LOGIN~q\)))) # (\estado.ERRO~q\) ) ) ) # ( \estado.MENU~q\ & ( !\process_1~5_combout\ & ( (!\confirma~q\) # ((!\Selector5~0_combout\) # (\estado.ERRO~q\)) ) ) ) # ( !\estado.MENU~q\ & ( !\process_1~5_combout\ & ( 
-- ((\confirma~q\ & !\Selector5~0_combout\)) # (\estado.ERRO~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111111011101111111101000101111111111110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_confirma~q\,
	datab => \ALT_INV_Selector5~0_combout\,
	datac => \ALT_INV_estado.LOGIN~q\,
	datad => \ALT_INV_estado.ERRO~q\,
	datae => \ALT_INV_estado.MENU~q\,
	dataf => \ALT_INV_process_1~5_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X59_Y1_N26
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

-- Location: MLABCELL_X59_Y1_N15
\saldo_signal[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_signal[15]~0_combout\ = ( \estado.MENU~q\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_estado.MENU~q\,
	combout => \saldo_signal[15]~0_combout\);

-- Location: FF_X57_Y2_N37
\saldo_signal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_signal[0]~feeder_combout\,
	ena => \saldo_signal[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_signal(0));

-- Location: LABCELL_X60_Y3_N57
\mem_inst|saldo_inst|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mem_inst|saldo_inst|Q[0]~feeder_combout\ = ( saldo_signal(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_saldo_signal(0),
	combout => \mem_inst|saldo_inst|Q[0]~feeder_combout\);

-- Location: FF_X60_Y3_N59
\mem_inst|saldo_inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \mem_inst|saldo_inst|Q[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \write_signal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_inst|saldo_inst|Q\(0));

-- Location: MLABCELL_X59_Y2_N15
\saldo_novo[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \saldo_novo[0]~reg0feeder_combout\ = \Add1~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~1_sumout\,
	combout => \saldo_novo[0]~reg0feeder_combout\);

-- Location: LABCELL_X62_Y1_N36
\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ( \Add0~1_sumout\ & ( (\estado.DEPOSITO~q\) # (\mem_inst|saldo_inst|Q\(0)) ) ) # ( !\Add0~1_sumout\ & ( (\mem_inst|saldo_inst|Q\(0) & !\estado.DEPOSITO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_inst|saldo_inst|ALT_INV_Q\(0),
	datac => \ALT_INV_estado.DEPOSITO~q\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Selector26~0_combout\);

-- Location: FF_X59_Y2_N17
\saldo_novo[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \saldo_novo[0]~reg0feeder_combout\,
	asdata => \Selector26~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \saldo_novo[0]~0_combout\,
	ena => \saldo_novo[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saldo_novo[0]~reg0_q\);

-- Location: LABCELL_X61_Y2_N30
\Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = ( !\estado.SAQUE~q\ & ( ((((!\estado.ERRO_INICIAL~q\ & \status~reg0_q\)) # (\estado.CONSULTA_SALDO~q\)) # (\estado.DEPOSITO~q\)) ) ) # ( \estado.SAQUE~q\ & ( ((((!\LessThan0~20_combout\ & !\LessThan0~0_combout\)) # 
-- (\estado.CONSULTA_SALDO~q\))) # (\estado.DEPOSITO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001111110011101100111011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_estado.DEPOSITO~q\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_status~reg0_q\,
	datae => \ALT_INV_estado.SAQUE~q\,
	dataf => \ALT_INV_estado.CONSULTA_SALDO~q\,
	datag => \ALT_INV_estado.ERRO_INICIAL~q\,
	combout => \Selector28~0_combout\);

-- Location: FF_X61_Y2_N32
\status~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector28~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \status~reg0_q\);

-- Location: LABCELL_X62_Y2_N0
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \erro_saida~reg0_q\ & ( \estado.MENU_INICIAL~q\ ) ) # ( !\erro_saida~reg0_q\ & ( \estado.MENU_INICIAL~q\ & ( (\estado.ERRO~q\) # (\estado.ERRO_INICIAL~q\) ) ) ) # ( \erro_saida~reg0_q\ & ( !\estado.MENU_INICIAL~q\ & ( 
-- (\estado.ERRO~q\) # (\estado.ERRO_INICIAL~q\) ) ) ) # ( !\erro_saida~reg0_q\ & ( !\estado.MENU_INICIAL~q\ & ( (\estado.ERRO~q\) # (\estado.ERRO_INICIAL~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_estado.ERRO_INICIAL~q\,
	datac => \ALT_INV_estado.ERRO~q\,
	datae => \ALT_INV_erro_saida~reg0_q\,
	dataf => \ALT_INV_estado.MENU_INICIAL~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X62_Y2_N1
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

-- Location: LABCELL_X83_Y49_N0
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


