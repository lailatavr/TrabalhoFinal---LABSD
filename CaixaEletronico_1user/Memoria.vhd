library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Memoria is
    Port (
        clk   : in std_logic;
        reset : in std_logic;
        write_signal : in std_logic;
        login_in  : in std_logic_vector(7 downto 0);
        senha_in  : in std_logic_vector(7 downto 0);
        saldo_in  : in std_logic_vector(15 downto 0);
        login_out : out std_logic_vector(7 downto 0);
        senha_out : out std_logic_vector(7 downto 0);
        saldo_out : out std_logic_vector(15 downto 0)
    );
end Memoria;

architecture Behavioral of Memoria is
    component Reg is
        Generic (
            DATA_WIDTH : integer := 8
        );
        Port (
            clk   : in std_logic;
            reset : in std_logic;
            load : in std_logic;
            D     : in std_logic_vector(DATA_WIDTH-1 downto 0);
            Q     : out std_logic_vector(DATA_WIDTH-1 downto 0)
        );
    end component;

    signal login_reg  : std_logic_vector(7 downto 0);
    signal senha_reg  : std_logic_vector(7 downto 0);
    signal saldo_reg  : std_logic_vector(15 downto 0);

begin
    login_inst: Reg
        Generic map (DATA_WIDTH => 8)
        Port map (
            clk   => clk,
            reset => reset,
            load => write_signal,
            D     => login_in,
            Q     => login_reg
        );

    senha_inst: Reg
        Generic map (DATA_WIDTH => 8)
        Port map (
            clk   => clk,
            reset => reset,
            load => write_signal,
            D     => senha_in,
            Q     => senha_reg
        );

    saldo_inst: Reg
        Generic map (DATA_WIDTH => 16)
        Port map (
            clk   => clk,
            reset => reset,
            load => write_signal,
            D     => saldo_in,
            Q     => saldo_reg
        );
    
    login_out <= login_reg;
    senha_out <= senha_reg;
    saldo_out <= saldo_reg;

end Behavioral;

