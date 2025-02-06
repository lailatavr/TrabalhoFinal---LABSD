library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity Reg is
    generic (
        DATA_WIDTH : natural := 4
    );
    port (
        clk: in std_logic;
        reset: in std_logic;
        load: in std_logic;
        D: in std_logic_vector((DATA_WIDTH-1) downto 0);
        Q: out std_logic_vector((DATA_WIDTH-1) downto 0)
    );
end Reg;

architecture Behavioral of Reg is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            Q <= (others => '0');
        elsif rising_edge(clk) then
            if load = '1' then
                Q <= D;
            end if;
        end if;
    end process;
	 
end Behavioral;
