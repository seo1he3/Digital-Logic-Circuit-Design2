library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
    port (
        d, clk : in std_logic;
        q, q_bar : out std_logic
    );
end d_ff;

architecture rtl of d_ff is
    signal qi : std_logic;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            qi <= d;
        end if;
    end process;

    q <= qi;
    q_bar <= not qi;
end rtl;