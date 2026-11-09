library ieee;
use ieee.std_logic_1164.all;

entity d_latch is
    port (
        d, en : in std_logic;
        q, q_bar : out std_logic
    );
end d_latch;

architecture rtl of d_latch is
    signal qi : std_logic;
begin
    process(d, en)
    begin
        if en = '1' then
            qi <= d;
        end if;
    end process;

    q <= qi;
    q_bar <= not qi;
end rtl;