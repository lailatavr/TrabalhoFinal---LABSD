library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity deposito is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           valor_deposito : in INTEGER;
           saldo_conta : inout INTEGER;
           deposito_concluido : out STD_LOGIC);
end deposito;

architecture Behavioral of deposito is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            saldo_conta <= 0;
            deposito_concluido <= '0';
        elsif rising_edge(clk) then
            saldo_conta <= saldo_conta + valor_deposito;
            deposito_concluido <= '1';
        end if;
    end process;
end Behavioral;