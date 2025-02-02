library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity memoria is
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
end memoria;

architecture Behavioral of memoria is
    component Reg
        generic (
            DATA_WIDTH : natural := 8
        );
        port (
            clock : in std_logic;
            rst   : in std_logic;
            load  : in std_logic;
            D     : in std_logic_vector(DATA_WIDTH-1 downto 0);
            Q     : out std_logic_vector(DATA_WIDTH-1 downto 0)
        );
    end component;

    type login_array is array (0 to 15) of std_logic_vector(7 downto 0);
    type senha_array is array (0 to 15) of std_logic_vector(7 downto 0);
    type saldo_array is array (0 to 15) of std_logic_vector(15 downto 0);

    signal login_mem_load : std_logic_vector(15 downto 0) := (others => '0');
    signal senha_mem_load : std_logic_vector(15 downto 0) := (others => '0');
    signal saldo_mem_load : std_logic_vector(15 downto 0) := (others => '0');

    signal login_mem : login_array := (others => (others => '0'));
    signal senha_mem : senha_array := (others => (others => '0'));
    signal saldo_mem : saldo_array := (others => (others => '0'));

begin
   
    gen_login: for i in 0 to 15 generate
        login_reg: Reg
            generic map (
                DATA_WIDTH => 8  
            )
            port map (
                clock => clk,
                rst   => reset,
                load  => login_mem_load(i),
                D     => login_in,
                Q     => login_mem(i)
            );
    end generate;

    gen_senha: for i in 0 to 15 generate
        senha_reg: Reg
            generic map (
                DATA_WIDTH => 8  
            )
            port map (
                clock => clk,
                rst   => reset,
                load  => senha_mem_load(i),
                D     => senha_in,
                Q     => senha_mem(i)
            );
    end generate;

    gen_saldo: for i in 0 to 15 generate
        saldo_reg: Reg
            generic map (
                DATA_WIDTH => 16  
            )
            port map (
                clock => clk,
                rst   => reset,
                load  => saldo_mem_load(i),
                D     => saldo_in,
                Q     => saldo_mem(i)
            );
    end generate;

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                login_mem_load <= (others => '0');
                senha_mem_load <= (others => '0');
                saldo_mem_load <= (others => '0');
            elsif write = '1' then
                login_mem_load <= (others => '0');
                senha_mem_load <= (others => '0');
                saldo_mem_load <= (others => '0');

                login_mem_load(write_client) <= '1';
                senha_mem_load(write_client) <= '1';
                saldo_mem_load(write_client) <= '1';
            end if;
        end if;
    end process;

    login_out <= login_mem(read_client);
    senha_out <= senha_mem(read_client);
    saldo_out <= saldo_mem(read_client);

end Behavioral;
