LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY tb_CaixaEletronico IS
END tb_CaixaEletronico;

ARCHITECTURE testbench OF tb_CaixaEletronico IS
    COMPONENT CaixaEletronico
        PORT (
            clk : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            confirma_operacao : IN STD_LOGIC;
            selecao_inicio : IN STD_LOGIC;
            tipo_operacao : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            valor_operacao : IN UNSIGNED(15 DOWNTO 0);
            login_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            senha_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            saldo_novo : OUT UNSIGNED(15 DOWNTO 0);
            status : OUT STD_LOGIC;
            erro_saida : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL reset : STD_LOGIC := '1';
    SIGNAL confirma_operacao : STD_LOGIC := '0';
    SIGNAL selecao_inicio : STD_LOGIC := '0';
    SIGNAL tipo_operacao : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    SIGNAL valor_operacao : UNSIGNED(15 DOWNTO 0) := (OTHERS => '0');
    SIGNAL login_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL senha_in : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL saldo_novo : UNSIGNED(15 DOWNTO 0) := (OTHERS => '0');
    SIGNAL status : STD_LOGIC;
    SIGNAL erro_saida : STD_LOGIC;

    CONSTANT clk_period : TIME := 10 ns;
BEGIN
    uut: CaixaEletronico PORT MAP (
        clk => clk,
        reset => reset,
        confirma_operacao => confirma_operacao,
        selecao_inicio => selecao_inicio,
        tipo_operacao => tipo_operacao,
        valor_operacao => valor_operacao,
        login_in => login_in,
        senha_in => senha_in,
        saldo_novo => saldo_novo,
        status => status,
        erro_saida => erro_saida
    );

    -- Clock process
    clk_process: PROCESS
    BEGIN
        WHILE TRUE LOOP
            clk <= '0';
            WAIT FOR clk_period / 2;
            clk <= '1';
            WAIT FOR clk_period / 2;
        END LOOP;
    END PROCESS;

    -- Test process
    stim_proc: PROCESS
    BEGIN
        WAIT FOR 20 ns;
        reset <= '1';
        WAIT FOR 20 ns;
		  
		 
        confirma_operacao <= '0';
		  reset <= '0';
		  WAIT FOR 20 ns;
		  confirma_operacao <='1';
		  selecao_inicio <='1'; --cadastro
		  WAIT FOR 20 ns;
		  login_in <= "00000001";  
        senha_in <= "00001111";
		  confirma_operacao <='0';
		  
		  WAIT FOR 20 ns;
		  selecao_inicio <= '0';
		  confirma_operacao <= '1';
		  wait for 20 ns;
		  
		  --login
        login_in <= "00000001";  
        senha_in <= "00001111";  
		  confirma_operacao <= '0';
		  WAIT FOR 20 ns;
        confirma_operacao <= '1';
        WAIT FOR 20 ns;
        
		  --deposito
        tipo_operacao <= "001";
		  confirma_operacao <= '0';
        WAIT FOR 20 ns;
		  confirma_operacao <= '1';
        WAIT FOR 20 ns;
        valor_operacao <= TO_UNSIGNED(100, 16);
		  confirma_operacao <= '0';
        WAIT FOR 20 ns;
		  confirma_operacao <= '1';
        WAIT FOR 20 ns;
        
		  -- saque
        tipo_operacao <= "010";
		  confirma_operacao <= '0';
        WAIT FOR 20 ns;
		  confirma_operacao <= '1';
        WAIT FOR 20 ns;
        valor_operacao <= TO_UNSIGNED(50, 16);
        confirma_operacao <= '0';
        WAIT FOR 20 ns;
		  confirma_operacao <= '1';
		  WAIT FOR 20 ns;
		  
		  -- saque
        tipo_operacao <= "010";
		  confirma_operacao <= '0';
        WAIT FOR 20 ns;
		  confirma_operacao <= '1';
        WAIT FOR 20 ns;
        valor_operacao <= TO_UNSIGNED(60, 16);
        confirma_operacao <= '0';
        WAIT FOR 20 ns;
		  confirma_operacao <= '1';
		  WAIT FOR 20 ns;
		  
		  -- consulta_saldo
        tipo_operacao <= "000";
		  confirma_operacao <= '0';
        WAIT FOR 20 ns;
		  confirma_operacao <= '1';
        WAIT FOR 20 ns;
        confirma_operacao <= '0';
        WAIT FOR 20 ns;
		  confirma_operacao <= '1';
		  WAIT FOR 20 ns;


		  --deposito
		  tipo_operacao <= "001";
		  confirma_operacao <= '0';
        WAIT FOR 20 ns;
		  confirma_operacao <= '1';
        WAIT FOR 20 ns;
		  valor_operacao <= TO_UNSIGNED(100, 16);
        confirma_operacao <= '0';
        WAIT FOR 20 ns;
		  confirma_operacao <= '1';
		  WAIT FOR 20 ns;

		  --
        tipo_operacao <= "100";
		  confirma_operacao <= '0';
        WAIT FOR 20 ns;
		  confirma_operacao <= '1';
        WAIT FOR 20 ns;
        confirma_operacao <= '0';
		  WAIT FOR 20 ns;
		  confirma_operacao <= '1';

        WAIT;
    END PROCESS;
END testbench;
