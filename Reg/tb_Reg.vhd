library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity tb_Reg is
end tb_Reg;

architecture teste of tb_Reg is

    component Reg is
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
    end component;

    signal fio_D, fio_Q: std_logic_vector(3 downto 0); -- Define o tamanho de acordo com a largura de dados
    signal fio_rst, fio_load: std_logic;
    signal meu_clock: std_logic := '0';

begin

    instancia_Reg: Regg generic map (DATA_WIDTH => 4) port map (
        clock => meu_clock,
        Q => fio_Q,
        rst => fio_rst,
        D => fio_D,
        load => fio_load
    );

    meu_clock <= not meu_clock after 5 ns;

    fio_D <= "0000" after 0 ns, "0111" after 10 ns, "1000" after 30 ns, "0001" after 50 ns;
    fio_rst <= '0' after 0 ns, '1' after 20 ns, '0' after 40 ns, '1' after 55 ns;
    fio_load <= '1' after 0 ns, '0' after 20 ns, '1' after 35 ns, '1' after 60 ns;

end teste;
