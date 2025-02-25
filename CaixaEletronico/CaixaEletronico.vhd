library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CaixaEletronico is
    Port (
        clk : in std_logic;
        reset : in std_logic;
        confirma : in std_logic;
        selecao_inicio : in std_logic;
        tipo_operacao : in std_logic_vector(2 downto 0);
        valor_operacao : in unsigned(15 downto 0);
        login_in : in std_logic_vector(7 downto 0);
        senha_in : in std_logic_vector(7 downto 0);
        saldo_novo : out unsigned(15 downto 0);
        status : out std_logic;
        erro_saida : out std_logic
    );
end CaixaEletronico;

architecture Behavioral of CaixaEletronico is
    component Memoria is 
        Port (
            clk           : in std_logic; 
            reset         : in std_logic; 
            write         : in std_logic; 
            read_client   : in integer range 0 to 15; 
            write_client  : in integer range 0 to 15;
            login_in      : in std_logic_vector(7 downto 0);
            senha_in      : in std_logic_vector(7 downto 0);
            saldo_in      : in std_logic_vector(15 downto 0);
            login_out     : out std_logic_vector(7 downto 0); 
            senha_out     : out std_logic_vector(7 downto 0);
            saldo_out     : out std_logic_vector(15 downto 0)
        );
    end component;
     
    component Cadastro is
        Port (
            clk          : in std_logic; 
            reset        : in std_logic; 
            iniciar      : in std_logic;  
            cliente_id   : in integer range 0 to 15; 
            login_in     : in std_logic_vector(7 downto 0); 
            senha_in     : in std_logic_vector(7 downto 0); 
            cadastro_ok  : out std_logic
        );
    end component;
     
    component login is
        Port (
            clk          : in std_logic; 
            reset        : in std_logic; 
            iniciar      : in std_logic;  
            login_in     : in std_logic_vector(7 downto 0); 
            senha_in     : in std_logic_vector(7 downto 0); 
            login_ok     : out std_logic;  
            senha_ok     : out std_logic;
            cliente_id   : out integer range 0 to 15  -- ID do cliente com login bem-sucedido
        );
    end component;

    type tipo_estado is (MENU_INICIAL, LOGINs, CADASTRAR, ERRO_INICIAL, MENU, CONSULTA_SALDO, DEPOSITO, SAQUE, TRANSFERENCIA, ERRO, LOGOUT);
    signal estado : tipo_estado;
    signal conf_pass : std_logic := '0';
    signal confirma_operacao : std_logic;
    
    --cadastro
    signal selecao_cadlog : std_logic;
    signal client_id : integer range 0 to 15;
    signal in_login : std_logic_vector(7 downto 0);
    signal in_senha : std_logic_vector(7 downto 0);
    signal cadastro_ok : std_logic;
    --memória
    signal write_signal : std_logic;
    signal read_client_id : integer range 0 to 15;
    signal write_client_id : integer range 0 to 15;
    signal saldo_signal : std_logic_vector(15 downto 0);
    signal login_mem : std_logic_vector(7 downto 0);
    signal senha_mem : std_logic_vector(7 downto 0);
    signal saldo_novo_sig : std_logic_vector(15 downto 0);

    --login
    signal login_ok : std_logic;
    signal senha_ok : std_logic;
    signal cliente_id_login : integer range 0 to 15;

begin
    mem_inst : Memoria
        port map (
            clk => clk,
            reset => reset,
            write => write_signal,
            read_client => read_client_id,
            write_client => write_client_id,
            login_in => in_login,
            senha_in => in_senha,
            saldo_in => saldo_signal,
            login_out => login_mem,
            senha_out => senha_mem,
            saldo_out => saldo_novo_sig
        );
        
    cadastro_inst : Cadastro
        port map (
            clk => clk,
            reset => reset,
            iniciar => selecao_cadlog,
            cliente_id => client_id,
            login_in => in_login,
            senha_in => in_senha,
            cadastro_ok => cadastro_ok
        );

    login_inst : login
        port map (
            clk => clk,
            reset => reset,
            iniciar => selecao_inicio,
            login_in => login_in,
            senha_in => senha_in,
            login_ok => login_ok,
            senha_ok => senha_ok,
            cliente_id => cliente_id_login
        );
    
    -- FlipFlop para que a operação só for confirmada quando o botão for pressionado
    process(clk)
    begin
        if rising_edge(clk) then
            conf_pass <= confirma;
            confirma_operacao <= confirma AND (NOT conf_pass);
        end if;
    end process;
        
    process(clk, reset)
    begin
        if reset = '1' then
            estado <= MENU_INICIAL;
            saldo_novo <= (others => '0');
            status <= '0';
            erro_saida <= '0';
        elsif rising_edge(clk) then
            case estado is
                when MENU_INICIAL =>
                    erro_saida <= '0';
                    if confirma_operacao = '1' then
                        if selecao_inicio = '0' then
                            estado <= LOGINs;
                        else
                            estado <= CADASTRAR;
                        end if;
                    end if;
                            
                when LOGIN =>
                    if confirma_operacao = '1' then
                        if login_ok = '1' and senha_ok = '1' then
                            read_client_id <= cliente_id_login;  -- Usa o client_id retornado pelo login
                            estado <= MENU;
                        else
                            estado <= ERRO_INICIAL;
                        end if;
                    end if;
                            
                when CADASTRAR =>
                    if confirma_operacao = '1' then
                        write_client_id <= 1;
                        if cadastro_ok = '1' then
                            estado <= LOGINs;
                        else
                            estado <= ERRO_INICIAL;
                        end if;
                    end if;
                            
                when ERRO_INICIAL =>
                    status <= '0';
                    erro_saida <= '1';
                    if confirma_operacao = '1' then
                        estado <= MENU_INICIAL;
                    end if;
                    
                when MENU =>
                    if confirma_operacao = '1' then
                        case tipo_operacao is 
                            when "000" => estado <= CONSULTA_SALDO;
                            when "001" => estado <= DEPOSITO;
                            when "010" => estado <= SAQUE;
                            when "011" => estado <= TRANSFERENCIA;
                            when "100" => estado <= LOGOUT;
                            when others => estado <= ERRO;
                        end case;
                    end if;

                when CONSULTA_SALDO =>
                    saldo_novo <= unsigned(saldo_novo_sig); 
                    status <= '1';
                    estado <= MENU;           

                when DEPOSITO =>
                    saldo_novo <= unsigned(saldo_novo_sig) + valor_operacao;
                    status <= '1';
                    estado <= MENU;

                when SAQUE =>
                    if  unsigned(saldo_novo_sig) >= valor_operacao then
                        saldo_novo <= unsigned(saldo_novo_sig) - valor_operacao;
                        status <= '1'; 
                    else
                        saldo_novo <= unsigned(saldo_novo_sig);
                        status <= '0';
                        estado <= ERRO;
                    end if;
                    estado <= MENU;
                    
                when ERRO =>
                    erro_saida <= '1';
                    estado <= MENU;
                    
                when LOGOUT =>
                    estado <= MENU_INICIAL;
                            
                when others =>
                    estado <= MENU;
            end case;
        end if;
    end process;

end Behavioral;
