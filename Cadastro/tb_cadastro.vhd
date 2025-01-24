library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_cadastro is
end tb_cadastro;

architecture Behavioral of tb_cadastro is

    component cadastro_cliente
        port(
            clk          : in std_logic; 
            reset        : in std_logic; 
            iniciar      : in std_logic;  
            cliente_id   : in integer range 0 to 15; 
            login_in     : in std_logic_vector(7 downto 0); 
            senha_in     : in std_logic_vector(7 downto 0); 
            cadastro_ok  : out std_logic 
        );
    end component;

    signal clk          : std_logic := '0';
    signal reset        : std_logic := '0';
    signal iniciar      : std_logic := '0';
    signal cliente_id   : integer range 0 to 15 := 0;
    signal login_in     : std_logic_vector(7 downto 0) := (others => '0');
    signal senha_in     : std_logic_vector(7 downto 0) := (others => '0');
    signal cadastro_ok  : std_logic;

    constant clk_period : time := 10 ns; 

begin

    uut: cadastro_cliente
        port map(
            clk          => clk,
            reset        => reset,
            iniciar      => iniciar,
            cliente_id   => cliente_id,
            login_in     => login_in,
            senha_in     => senha_in,
            cadastro_ok  => cadastro_ok
        );

    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
        wait;
    end process;

    stim_proc: process
    begin
        reset <= '1';
        wait for clk_period * 2;
        reset <= '0';

        cliente_id <= 0;
        login_in <= "01010101"; 
        senha_in <= "10101010"; 
        iniciar <= '1';
        wait for clk_period;
        iniciar <= '0';
        wait for clk_period * 2;

        cliente_id <= 1;
        login_in <= "01100001"; 
        senha_in <= "01100010"; S
        iniciar <= '1';
        wait for clk_period;
        iniciar <= '0';
        wait for clk_period * 2;

        wait;
    end process;

end Behavioral;
