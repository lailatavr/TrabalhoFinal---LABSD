library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CaixaEletronico is
    Port (
        clk : in std_logic;
        reset : in std_logic;
        confirma_operacao : in std_logic;
		  selecao_inicio : in std_logic;
        tipo_operacao : in std_logic_vector(2 downto 0);
        valor_operacao : in unsigned(15 downto 0);
		  login_in : in std_logic_vector(7 downto 0);
		  senha_in : in std_logic_vector(7 downto 0);
        saldo_novo : buffer unsigned(15 downto 0);
        status : out std_logic;
		  erro_saida : out std_logic
    );
end CaixaEletronico;

architecture Behavioral of CaixaEletronico is
	component Memoria is 
		Port (
        clk           : in std_logic; 
        reset         : in std_logic; 
        write_signal        : in std_logic; 
        --read_client   : in integer range 0 to 15; 
        --write_client  : in integer range 0 to 15;
        login_in      : in std_logic_vector(7 downto 0);
        senha_in      : in std_logic_vector(7 downto 0);
        saldo_in      : in std_logic_vector(15 downto 0);
        login_out     : out std_logic_vector(7 downto 0); 
        senha_out     : out std_logic_vector(7 downto 0);
        saldo_out     : out std_logic_vector(15 downto 0)
		);
	end component;
	 
	 
	type tipo_estado is (MENU_INICIAL, LOGIN, CADASTRAR, ERRO_INICIAL, MENU, CONSULTA_SALDO, DEPOSITO, SAQUE, ERRO, LOGOUT);
	signal estado : tipo_estado;
	signal conf_pass : std_logic := '0';
	signal confirma : std_logic;
	
	--memoria
	signal in_login : std_logic_vector(7 downto 0);
	signal in_senha : std_logic_vector(7 downto 0);
	signal write_signal : std_logic;
	signal saldo_signal : std_logic_vector(15 downto 0);
	signal login_mem : std_logic_vector(7 downto 0);
	signal senha_mem : std_logic_vector(7 downto 0);
	signal saldo_novo_sig : std_logic_vector(15 downto 0);
	signal saldo_temp : std_logic_vector(15 downto 0);



begin
	mem_inst : Memoria
		port map (
			clk => clk,
			reset => reset,
			write_signal=> write_signal,
			login_in => in_login,
			senha_in => in_senha,
			saldo_in => saldo_signal,
			login_out => login_mem,
			senha_out => senha_mem,
			saldo_out => saldo_novo_sig
		);
	
	 --FlipFlop para que a operação só for confirmada quando o botão for pressionado
	process(clk)
	begin
		if rising_edge(clk) then
			conf_pass <= confirma_operacao;
			confirma <= confirma_operacao AND (NOT conf_pass);
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
					if confirma = '1' then
						if selecao_inicio = '0' then
							estado <= LOGIN;
						else
							estado <= CADASTRAR;
						end if;
					end if;
							
				when LOGIN =>
					if confirma = '1' then
						--read_client_id <= 1;
						if login_mem = login_in and senha_mem = senha_in then
							saldo_novo <= unsigned(saldo_novo_sig); 
							estado <= MENU;
						else
							estado <= ERRO_INICIAL;
						end if;
					end if;
						
				when CADASTRAR =>
					in_login <= login_in;
					in_senha <= senha_in;
					if confirma = '1' then
						write_signal <= '1';
						estado <= MENU;
					end if;
						
				when ERRO_INICIAL =>
					status <= '0';
					erro_saida <= '1';
					if confirma = '1' then
						estado <= MENU_INICIAL;
					end if;
					
				when MENU =>
					saldo_signal <= std_logic_vector(saldo_novo);
					write_signal <= '1';
					if confirma = '1' then
						case tipo_operacao is 
							when "000" => estado <= CONSULTA_SALDO;
							when "001" => estado <= DEPOSITO;
							when "010" => estado <= SAQUE;
							when "100" => estado <= LOGOUT;
							when others => estado <= ERRO;
						end case;
					end if;

				when CONSULTA_SALDO =>
					saldo_novo <= unsigned(saldo_novo_sig);
					write_signal <= '0';
					status <= '1';
					if confirma = '1' then
						estado <= MENU; 
					end if;

				when DEPOSITO =>
					saldo_novo <= unsigned(saldo_novo_sig) + valor_operacao;
					write_signal <= '1';
					status <= '1';
					if confirma = '1' then
						estado <= MENU;
					end if;

				when SAQUE =>
					if unsigned(saldo_novo_sig) >= valor_operacao then
						saldo_novo <= unsigned(saldo_novo_sig) - valor_operacao;
						write_signal <= '1';
						status <= '1'; 
					else
						saldo_novo <= unsigned(saldo_novo_sig);
						status <= '0';
						estado <= ERRO;
					end if;
					if confirma = '1' then
						estado <= MENU;
					end if;
					
				when ERRO =>
					erro_saida <= '1';
					estado <= MENU;
					
				when LOGOUT =>
					if confirma = '1' then
						estado <= MENU_INICIAL;
					end if;
						
				when others =>
					estado <= MENU;
			end case;
		end if;
	end process;

end Behavioral;
