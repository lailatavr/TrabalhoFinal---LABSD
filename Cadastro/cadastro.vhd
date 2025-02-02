library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cadastro_cliente is
    port(
        clk          : in std_logic; 
        reset        : in std_logic; 
        iniciar      : in std_logic;  
        cliente_id   : in integer range 0 to 15; 
        login_in     : in std_logic_vector(7 downto 0); 
        senha_in     : in std_logic_vector(7 downto 0); 
        cadastro_ok  : out std_logic  
    );
end cadastro_cliente;

architecture Behavioral of cadastro_cliente is

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

    signal write       : std_logic := '0';
    signal saldo_in    : std_logic_vector(15 downto 0) := (others => '0');
    signal read_cliente : integer range 0 to 15 := 0;  
    signal write_cliente : integer range 0 to 15 := 0; 
begin

    -- Instância da memória
    mem_inst: memoria
        port map(
            clk           => clk,
            reset         => reset,
            write         => write,
            read_client   => read_cliente,  
            write_client  => write_cliente,
            login_in      => login_in,
            senha_in      => senha_in,
            saldo_in      => saldo_in,
            login_out     => open,  
            senha_out     => open,  
            saldo_out     => open   
        );

   
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                write <= '0';
                cadastro_ok <= '0';
            elsif iniciar = '1' then
                write <= '1'; 
                write_cliente <= cliente_id; 
                cadastro_ok <= '1';   
            else
                write <= '0'; 
                cadastro_ok <= '0';
            end if;
        end if;
    end process;

end Behavioral;
