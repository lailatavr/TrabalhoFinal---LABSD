library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity Reg is
    generic (
        DATA_WIDTH : natural := 4
    );
    port (
        clock: in std_logic;
        rst: in std_logic;
        load: in std_logic;
        D: in std_logic_vector((DATA_WIDTH-1) downto 0);
        Q: out std_logic_vector((DATA_WIDTH-1) downto 0)
    );
end Reg;

architecture Behavioral of Reg is
begin
    process(clock, rst)
    begin
        if rst = '1' then
            Q <= (others => '0');
        elsif rising_edge(clock) then
            if load = '1' then
                Q <= D;
            end if;
        end if;
    end process;
	 
end Behavioral;
