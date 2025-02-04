library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CaixaEletronico is
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
end CaixaEletronico;

architecture Behavioral of CaixaEletronico is
    type tipo_estado is (MENU, CONSULTA_SALDO, DEPOSITO, SAQUE, TRANSFERENCIA, ERRO);
    signal estado : tipo_estado;

begin
    process(clk, reset)
	 begin
        if reset = '1' then
            estado <= MENU;
            saldo_novo <= (others => '0');
            status <= '0';
        elsif rising_edge(clk) then
            case estado is
                when MENU =>
                    if confirma_operacao = '1' then
                        case tipo_operacao is
                            when "00" => 
                                estado <= CONSULTA_SALDO;
                            when "01" => 
                                estado <= DEPOSITO;
                            when "10" => 
                                estado <= SAQUE;
									 when "11" =>
										  estado <= TRANSFERENCIA;
                            when others =>
                                estado <= ERRO;
                        end case;
                    end if;

                when CONSULTA_SALDO =>
                    saldo_novo <= saldo_atual; 
                    status <= '1';            
                    estado <= MENU;           

                when DEPOSITO =>
                    saldo_novo <= saldo_atual + valor_operacao;
                    status <= '1';            
                    estado <= MENU;

                when SAQUE =>
                    if saldo_atual >= valor_operacao then
                        saldo_novo <= saldo_atual - valor_operacao;
                        status <= '1'; 
								estado <= MENU;
                    else
						  saldo_novo <= saldo_atual;
                        status <= '0';            
                        estado <= ERRO;          
                    end if;
                    

                when ERRO =>
                    saldo_novo <= saldo_atual; 
                    estado <= MENU;            
                when others =>
                    estado <= MENU;
            end case;
        end if;
    end process;

end Behavioral;
