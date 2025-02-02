library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity deposito_tb is
end deposito_tb;

architecture comportamento of deposito_tb is
    signal clk         : std_logic := '0';
    signal reset       : std_logic := '1';
    signal valor_deposito : integer := 0;
    signal saldo       : integer := 0;
    signal deposito_concluido : std_logic;

    constant clk_periodo : time := 10 ns;

begin
    -- Instancia a Unidade Sob Teste (UUT)
    uut: entity work.deposito
        port map (
            clk => clk,
            reset => reset,
            valor_deposito => valor_deposito,
            saldo => saldo,
            deposito_concluido => deposito_concluido
        );

    -- Processo de Clock
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_periodo / 2;
            clk <= '1';
            wait for clk_periodo / 2;
        end loop;
    end process;

    -- Processo de Estímulo
    stim_process : process
    begin
        -- Inicializa
        reset <= '1';
        wait for clk_periodo;
        reset <= '0';
        
        -- Caso de teste 1: Depósito de 100
        valor_deposito <= 100;
        wait for clk_periodo;
        
        -- Caso de teste 2: Depósito de 200
        valor_deposito <= 200;
        wait for clk_periodo;

        -- Caso de teste 3: Depósito de 50
        valor_deposito <= 50;
        wait for clk_periodo;

        -- Fim da simulação
        wait;
    end process;

end comportamento;