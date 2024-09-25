library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contador_bidirecional is
    generic (
        MIN : natural := 0;
        MAX : natural := 255
    );
    port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        dir : in STD_LOGIC;
        count : buffer INTEGER range MIN to MAX
    );
end entity;

architecture ifsc_v1 of contador_bidirecional is
begin
    process (clk, reset)
    begin
        if reset = '1' then
            count <= MIN;
        elsif rising_edge(clk) then
            if dir = '0' then
                if count = MAX then
                    count <= MIN;
                else
                    count <= count + 1;
                end if;
            else
                if count = MIN then
                    count <= MAX;
                else
                    count <= count - 1;
                end if;
            end if;
        end if;
    end process;
end architecture;