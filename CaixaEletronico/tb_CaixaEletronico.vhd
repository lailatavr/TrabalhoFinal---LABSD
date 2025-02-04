library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_CaixaEletronico is
end tb_CaixaEletronico;

architecture tb of tb_CaixaEletronico is
    -- Component do DUT (Device Under Test)
    component CaixaEletronico
        Port (
            clk : in std_logic;
            reset : in std_logic;
            confirma_operacao : in std_logic;
            tipo_operacao : in std_logic_vector(1 downto 0);
            valor_operacao : in unsigned(15 downto 0);
            saldo_atual : in unsigned(15 downto 0);
            saldo_novo : out unsigned(15 downto 0);
            status : out std_logic
        );
    end component;

    -- Sinais de teste
    signal clk_tb : std_logic := '0';
    signal reset_tb : std_logic := '0';
    signal confirma_operacao_tb : std_logic := '0';
    signal tipo_operacao_tb : std_logic_vector(1 downto 0) := "00";
    signal valor_operacao_tb : unsigned(15 downto 0) := (others => '0');
    signal saldo_atual_tb : unsigned(15 downto 0) := to_unsigned(1000, 16); -- Saldo inicial de 1000
    signal saldo_novo_tb : unsigned(15 downto 0);
    signal status_tb : std_logic;

    -- Clock de 10ns (100MHz)
    constant clk_period : time := 10 ns;

begin
    -- Instância do CaixaEletronico
    DUT: CaixaEletronico
        port map (
            clk => clk_tb,
            reset => reset_tb,
            confirma_operacao => confirma_operacao_tb,
            tipo_operacao => tipo_operacao_tb,
            valor_operacao => valor_operacao_tb,
            saldo_atual => saldo_atual_tb,
            saldo_novo => saldo_novo_tb,
            status => status_tb
        );

    -- Processo de clock
    process
	 begin
		 while true loop  -- Garante que o clock roda indefinidamente
			  clk_tb <= '0';
			  wait for clk_period / 2;
			  clk_tb <= '1';
			  wait for clk_period / 2;
		 end loop;
		 wait;
	 end process;

    -- Processo de teste
    process
    begin
        -- Reset inicial
        reset_tb <= '1';
        wait for 20 ns;
        reset_tb <= '0';
        wait for 20 ns;

        -- Teste: Consulta de Saldo
        confirma_operacao_tb <= '1';
        tipo_operacao_tb <= "00";  -- Operação de consulta
        wait for clk_period;
        confirma_operacao_tb <= '0';
        wait for 20 ns;

        -- Teste: Depósito de 500
        confirma_operacao_tb <= '1';
        tipo_operacao_tb <= "01";  -- Operação de depósito
        valor_operacao_tb <= to_unsigned(500, 16);
        wait for clk_period;
        confirma_operacao_tb <= '0';
        saldo_atual_tb <= saldo_novo_tb; -- Atualiza saldo
        wait for 20 ns;

        -- Teste: Saque de 300
        confirma_operacao_tb <= '1';
        tipo_operacao_tb <= "10";  -- Operação de saque
        valor_operacao_tb <= to_unsigned(300, 16);
        wait for clk_period;
        confirma_operacao_tb <= '0';
        saldo_atual_tb <= saldo_novo_tb; -- Atualiza saldo
        wait for 20 ns;

        -- Teste: Saque maior que o saldo (Erro)
        confirma_operacao_tb <= '1';
        tipo_operacao_tb <= "10";  -- Operação de saque
        valor_operacao_tb <= to_unsigned(2000, 16); -- Saldo insuficiente
        wait for clk_period;
        confirma_operacao_tb <= '0';
        wait for 20 ns;

        -- Finaliza simulação
        wait for 1 ms;
    end process;

end tb;


