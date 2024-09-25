library ieee;  
use ieee.std_logic_1164.all;

entity contador_0_N is
    generic (MAX : natural := 50);
    port     (clock, reset: in  std_logic; 
    q : out integer range 0  to MAX);
end entity;

architecture ifsc_v1 of contador_0_N is

begin
    process (clock,reset)
        variable count : integer range 0  to MAX;
    begin
        if (reset = '1') then
            count := 0;
        elsif (rising_edge(clock)) then
            if(count = MAX) then 
                count := 0;
            else
                count := count + 1;
            end if;
        end if;
        q <= count;
    end process;
end architecture;