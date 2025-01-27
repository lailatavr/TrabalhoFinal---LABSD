library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity extrato is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           request : in STD_LOGIC;
           balance : in INTEGER;
           transaction_history : in STRING;
           statement_output : out STRING);
end extrato;

architecture Behavioral of extrato is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            statement_output <= (others => ' '); -- Limpa o extrato na reinicialização
        elsif rising_edge(clk) then
            if request = '1' then
                statement_output <= "Saldo Atual: " & INTEGER'IMAGE(balance) & "; Transações: " & transaction_history;
            end if;
        end if;
    end process;
end Behavioral;