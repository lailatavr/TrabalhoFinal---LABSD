library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity extrato_tb is
end entity extrato_tb;

architecture comportamento of extrato_tb is
    signal clk : std_logic := '0';
    signal reset : std_logic := '1';
    signal request : std_logic := '0';
    signal statement_ready : std_logic;
    signal transaction_history : std_logic_vector(255 downto 0);
    signal current_balance : integer := 0;

    constant clk_periodo : time := 10 ns;

    -- Declaração do Componente para a Unidade Sob Teste (UUT)
    component extrato
        port (
            clk : in std_logic;
            reset : in std_logic;
            request : in std_logic;
            statement_ready : out std_logic;
            transaction_history : out std_logic_vector(255 downto 0);
            current_balance : out integer
        );
    end component;

begin
    -- Instancia a Unidade Sob Teste (UUT)
    uut: extrato
        port map (
            clk => clk,
            reset => reset,
            request => request,
            statement_ready => statement_ready,
            transaction_history => transaction_history,
            current_balance => current_balance
        );

    -- Processo de Clock
    clk_process :process
    begin
        clk <= '0';
        wait for clk_periodo/2;
        clk <= '1';
        wait for clk_periodo/2;
    end process;

    -- Processo de Estímulo
    stim_process: process
    begin
        -- Inicializa
        wait for 20 ns;
        reset <= '0';  -- Libera o reset
        wait for 20 ns;

        -- Solicita extrato
        request <= '1';
        wait for 20 ns;
        request <= '0';
        wait for 100 ns;  -- Aguarda a geração do extrato

        -- Verifica as saídas
        assert statement_ready = '1' report "Extrato não está pronto!" severity error;
        assert current_balance >= 0 report "Saldo inválido!" severity error;

        -- Finaliza a simulação
        wait;
    end process;

end architecture comportamento;