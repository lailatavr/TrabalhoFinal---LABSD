library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity extrato is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           request : in STD_LOGIC;
           balance : in INTEGER;
           transaction_history : in STRING(1 to 128);
           statement_output : out STRING(1 to 256));
end extrato;

architecture Behavioral of extrato is
    constant SALDO_LABEL : STRING(1 to 7) := "Saldo: ";
    constant TRANS_LABEL : STRING(1 to 14) := "; Transacoes: ";
    signal temp_output : STRING(1 to 256) := (others => ' ');
begin
    process(clk, reset)
        variable pos : INTEGER := 1;
        variable balance_str : STRING(1 to 32); -- Ajuste o tamanho conforme necessário
    begin
        if reset = '1' then
            temp_output <= (others => ' ');
            statement_output <= (others => ' ');
        elsif rising_edge(clk) then
            if request = '1' then
                temp_output <= (others => ' ');
                pos := 1;

                -- Adiciona "Saldo: "
                temp_output(pos to pos + SALDO_LABEL'LENGTH - 1) <= SALDO_LABEL;
                pos := pos + SALDO_LABEL'LENGTH;

                -- Converte saldo e adiciona
                balance_str := INTEGER'IMAGE(balance);
                temp_output(pos to pos + balance_str'LENGTH - 1) <= balance_str;
                pos := pos + balance_str'LENGTH;

                -- Adiciona "Transacoes: "
                temp_output(pos to pos + TRANS_LABEL'LENGTH - 1) <= TRANS_LABEL;
                pos := pos + TRANS_LABEL'LENGTH;

                -- Copia o histórico de transações
                if (pos + transaction_history'LENGTH - 1 <= 256) then
                    temp_output(pos to pos + transaction_history'LENGTH - 1) <= transaction_history;
                else
                    temp_output(pos to 256) <= transaction_history(1 to 256 - pos + 1);
                end if;

                -- Atualiza saída
                statement_output <= temp_output;
            end if;
        end if;
    end process;
end Behavioral;
