library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity login is
    port(
        clk          : in std_logic; 
        reset        : in std_logic; 
        iniciar      : in std_logic;  
        login_in     : in std_logic_vector(7 downto 0); 
        senha_in     : in std_logic_vector(7 downto 0); 
        login_ok     : out std_logic;  
        senha_ok     : out std_logic;
        cliente_id   : out integer range 0 to 15  -- ID do cliente com login bem-sucedido
    );
end login;

architecture Behavioral of login is

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

    signal read_cliente : integer range 0 to 15 := 0;  
    signal login_mem    : std_logic_vector(7 downto 0);
    signal senha_mem    : std_logic_vector(7 downto 0);
    signal found        : std_logic := '0';

begin

    mem_inst: memoria
        port map(
            clk           => clk,
            reset         => reset,
            write         => '0',  -- No write operation in login
            read_client   => read_cliente,  
            write_client  => 0,
            login_in      => (others => '0'),
            senha_in      => (others => '0'),
            saldo_in      => (others => '0'),
            login_out     => login_mem,  
            senha_out     => senha_mem,  
            saldo_out     => open   
        );

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                read_cliente <= 0;
                login_ok <= '0';
                senha_ok <= '0';
                found <= '0';
                cliente_id <= 0;
            elsif iniciar = '1' then
                if found = '0' then
                    if login_mem = login_in then
                        found <= '1';
                        login_ok <= '1';
                        cliente_id <= read_cliente;  -- Retorna o ID do cliente
                        if senha_mem = senha_in then
                            senha_ok <= '1';
                        else
                            senha_ok <= '0';
                        end if;
                    else
                        if read_cliente < 15 then
                            read_cliente <= read_cliente + 1;
                        else
                            found <= '1';  -- Stop searching after last client
                            login_ok <= '0';
                            senha_ok <= '0';
                            cliente_id <= 0;
                        end if;
                    end if;
                end if;
            else
                read_cliente <= 0;
                login_ok <= '0';
                senha_ok <= '0';
                found <= '0';
                cliente_id <= 0;
            end if;
        end if;
    end process;

end Behavioral;
