library ieee;
use ieee.std_logic_1164.all;

entity jk_ff is
    port (
        j, k, clk : in std_logic;
        q, q_bar : out std_logic
    );
end jk_ff;

architecture rtl of jk_ff is
    signal qi : std_logic;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if j = '0' and k = '0' then
                null;
            elsif j = '0' and k = '1' then
                qi <= '0';
            elsif j = '1' and k = '0' then
                qi <= '1';
            elsif j = '1' and k = '1' then
                qi <= not qi;
            end if;
        end if;
    end process;

    q <= qi;
    q_bar <= not qi;
end rtl;