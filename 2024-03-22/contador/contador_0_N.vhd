library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_0_N is 
    generic ( N_bits: natural := 6; MAX: natural:= 1000);
    port(
    clock, reset: in std_LOGIC;
     q: out std_LOGIC_VECTOR(N_bits-1 downto 0)
);
end entity;

architecture ifsc_v1 of contador_0_N is

begin
    process (clock,reset)
        variable count : integer range 0 to MAX;
    begin
        if (reset = '1') then
            count := 0;
        elsif (rising_edge(clock)) then
              if count = MAX then
                    count := 0;
              else
                    count := count + 1;
                end if;
        end if;
          q <= std_LOGIC_VECTOR(to_unsigned(count, N_bits));
    end process;
end architecture;

architecture ifsc_v2 of contador_0_N is
	signal count : integer range 0 to MAX;
begin
    process (clock,reset)
    begin
        if (reset = '1') then
            count <= 0;
        elsif (rising_edge(clock)) then
              if count = MAX then
                    count <= 0;
              else
                    count <= count + 1;
                end if;
        end if;
          q <= std_LOGIC_VECTOR(to_unsigned(count, N_bits));
    end process;
end architecture;

architecture ifsc_v3 of contador_0_N is
	signal q_reg, q_next: integer range 0 to MAX;
begin
    process (clock,reset)
    begin
        if (reset = '1') then
            q_reg <= 0;
        elsif (rising_edge(clock)) then
				q_reg <= q_next;
		  end if;
    end process;
	 
	 q_next <= 0 when q_reg = max else q_reg + 1;
	 
	 q <= std_LOGIC_VECTOR(to_unsigned(q_reg, N_bits));
end architecture;

configuration cfg_ifsc of contador_0_N is
	--for ifsc_v1 end for;
	--for ifsc_v2 end for;
	for ifsc_v3 end for;
end configuration;