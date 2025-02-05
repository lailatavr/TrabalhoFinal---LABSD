-- filepath: src/saque.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity saque is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           iniciar_saque : in STD_LOGIC;
           valor_saque : in STD_LOGIC_VECTOR (7 downto 0);
           saldo_atual : in STD_LOGIC_VECTOR (7 downto 0);
           saque_concluido : out STD_LOGIC;
           novo_saldo : out STD_LOGIC_VECTOR (7 downto 0));
end saque;

architecture Behavioral of saque is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            saque_concluido <= '0';
            novo_saldo <= saldo_atual;
        elsif rising_edge(clk) then
            if iniciar_saque = '1' then
                if unsigned(valor_saque) <= unsigned(saldo_atual) then
                    novo_saldo <= std_logic_vector(unsigned(saldo_atual) - unsigned(valor_saque));
                    saque_concluido <= '1';
                else
                    saque_concluido <= '0'; -- Saldo insuficiente
                end if;
            else
                saque_concluido <= '0';
            end if;
        end if;
    end process;
end Behavioral;