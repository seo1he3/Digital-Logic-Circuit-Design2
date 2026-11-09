library ieee;
use ieee.std_logic_1164.all;

entity rs_latch is
    port (
        s, r : in std_logic;
        q, q_bar : out std_logic
    );
end rs_latch;

architecture gate_level of rs_latch is
    signal qi, qbi : std_logic;
begin
    qi  <= not (r or qbi);
    qbi <= not (s or qi);
    q <= qi;
    q_bar <= qbi;
end gate_level;