library ieee;
use ieee.std_logic_1164.all;

entity d_ff_async is
    port (
        d, clk, set, clr : in std_logic;
        q, q_bar : out std_logic
    );
end d_ff_async;

architecture rtl of d_ff_async is
    signal qi : std_logic;
begin
    process(clk, set, clr)
    begin
        if clr = '1' then
            qi <= '0';
        elsif set = '1' then
            qi <= '1';
        elsif rising_edge(clk) then
            qi <= d;
        end if;
    end process;

    q <= qi;
    q_bar <= not qi;
end rtl;