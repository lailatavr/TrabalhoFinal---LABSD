library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_memoria is
end tb_memoria;

architecture Behavioral of tb_memoria is
    component memoria
        port(
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

    signal clk         : std_logic := '0';
    signal reset       : std_logic := '0';
    signal write       : std_logic := '0';
    signal read_client : integer range 0 to 15 := 0;
    signal write_client: integer range 0 to 15 := 0;
    signal login_in    : std_logic_vector(7 downto 0) := (others => '0');
    signal senha_in    : std_logic_vector(7 downto 0) := (others => '0');
    signal saldo_in    : std_logic_vector(15 downto 0) := (others => '0');
    signal login_out   : std_logic_vector(7 downto 0);
    signal senha_out   : std_logic_vector(7 downto 0);
    signal saldo_out   : std_logic_vector(15 downto 0);

begin
    uut: memoria
        port map(
            clk => clk,
            reset => reset,
            write => write,
            read_client => read_client,
            write_client => write_client,
            login_in => login_in,
            senha_in => senha_in,
            saldo_in => saldo_in,
            login_out => login_out,
            senha_out => senha_out,
            saldo_out => saldo_out
        );

    clk_process: process
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
		  write <= '1';
        write_client <= 0;
        login_in <= "00000001";  
        senha_in <= "11111111";  
        saldo_in <= "0000000000010000";  
        wait for 20 ns;
        write <= '0';

        read_client <= 0;
        wait for 20 ns;

        write <= '1';
        write_client <= 1;
        login_in <= "00000010";
        senha_in <= "10101010";
        saldo_in <= "0000000000001111";
        wait for 20 ns;
        write <= '0';

        read_client <= 1;
        wait for 20 ns;

        wait;
    end process;
end Behavioral;
