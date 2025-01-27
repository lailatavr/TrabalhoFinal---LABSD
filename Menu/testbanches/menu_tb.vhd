-- filepath: testbench/menu_tb.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity menu_tb is
end menu_tb;

architecture Behavioral of menu_tb is
    signal clk : STD_LOGIC := '0';
    signal reset : STD_LOGIC := '0';
    signal select : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal option : STD_LOGIC_VECTOR (1 downto 0);

    component menu
        Port ( clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               select : in STD_LOGIC_VECTOR (1 downto 0);
               option : out STD_LOGIC_VECTOR (1 downto 0));
    end component;

begin
    uut: menu Port map (
        clk => clk,
        reset => reset,
        select => select,
        option => option
    );

    clk_process :process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    stim_proc: process
    begin
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        select <= "01"; -- Seleciona saque
        wait for 20 ns;
        select <= "10"; -- Seleciona depósito
        wait for 20 ns;
        select <= "11"; -- Seleciona extrato
        wait for 20 ns;
        select <= "00"; -- Volta ao menu principal
        wait;
    end process;
end Behavioral;