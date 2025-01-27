-- filepath: src/menu.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity menu is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           select : in STD_LOGIC_VECTOR (1 downto 0);
           option : out STD_LOGIC_VECTOR (1 downto 0));
end menu;

architecture Behavioral of menu is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            option <= "00"; -- Estado inicial
        elsif rising_edge(clk) then
            case select is
                when "00" => option <= "00"; -- Menu principal
                when "01" => option <= "01"; -- Saque
                when "10" => option <= "10"; -- Depósito
                when "11" => option <= "11"; -- Extrato
                when others => option <= "00"; -- Default para menu principal
            end case;
        end if;
    end process;
end Behavioral;