library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity saque_tb is
end saque_tb;

architecture comportamento of saque_tb is

    -- Declaração do Componente para a Unidade Sob Teste (UUT)
    component saque
    port(
        clk         : in std_logic;
        reset       : in std_logic;
        iniciar_saque: in std_logic;
        valor_saque : in std_logic_vector(7 downto 0);
        saldo_atual : in std_logic_vector(7 downto 0);
        saque_concluido : out std_logic;
        novo_saldo  : out std_logic_vector(7 downto 0)
    );
    end component;

    -- Sinais para o testbench
    signal clk         : std_logic := '0';
    signal reset       : std_logic := '0';
    signal iniciar_saque : std_logic := '0';
    signal valor_saque : std_logic_vector(7 downto 0) := (others => '0');
    signal saldo_atual : std_logic_vector(7 downto 0) := (others => '0');
    signal saque_concluido : std_logic;
    signal novo_saldo  : std_logic_vector(7 downto 0);

    constant clk_period : time := 10 ns;

begin

    -- Instancia a Unidade Sob Teste (UUT)
    uut: saque
    port map (
        clk => clk,
        reset => reset,
        iniciar_saque => iniciar_saque,
        valor_saque => valor_saque,
        saldo_atual => saldo_atual,
        saque_concluido => saque_concluido,
        novo_saldo => novo_saldo
    );

    -- Processo de Clock
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Processo de Estímulo
    stim_proc: process
    begin
        -- Reseta o sistema
        reset <= '1';
        wait for clk_period;
        reset <= '0';
        
        -- Caso de teste 1: Saque de um valor válido
        iniciar_saque <= '1';
        valor_saque <= "01100100";  -- 100 em binário, assumindo que o saldo é suficiente
        saldo_atual <= "11111010";  -- 250 em binário
        wait for clk_period;
        iniciar_saque <= '0';
        wait for 2 * clk_period;

        -- Caso de teste 2: Saque de um valor maior que o saldo
        iniciar_saque <= '1';
        valor_saque <= "11111010";  -- 250 em binário, assumindo que o saldo é insuficiente
        saldo_atual <= "01100100";  -- 100 em binário
        wait for clk_period;
        iniciar_saque <= '0';
        wait for 2 * clk_period;

        -- Caso de teste 3: Saque de valor zero
        iniciar_saque <= '1';
        valor_saque <= "00000000";  -- 0 em binário
        saldo_atual <= "11111010";  -- 250 em binário
        wait for clk_period;
        iniciar_saque <= '0';
        wait for 2 * clk_period;

        -- Fim da simulação
        wait;
    end process;

end comportamento;