library ieee;
-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
use ieee.std_logic_1164.all;

entity ff_D is 
    generic (
    N: natural := 100);
    port(
    clock, preset, enable, reset: in std_LOGIC;
    din: in std_LOGIC;
    qout: out std_LOGIC);
end entity;

--architecture ifsc_v1 of ff_D is
--begin
--    --Flip Flop tipo D com reset assincrono, sensivel a borda de subida.
--    process (clock,reset)
--    begin
--        if (reset = '1') then
--            q <= "0";
--        -- elsif (clock'event and clock = '1' and clock'last_value='0') then 
--        elsif (rising_edge(clock)) then
--            q <= d;
--        end if;
--    end process;
--end architecture;
--
--architecture ifsc_v2 of ff_D is
--begin
--    --Flip Flop tipo D com preset assincrono e sinal de enable, sensivel a borda de descida.
--    process (clock,preset)
--    begin
--        if (preset = '1') then
--            q <= "1";
--        elsif (falling_edge(clock)) then
--            if (enable = '1') then
--                q <= d;
--            end if;
--        end if;
--    end process;
--end architecture;
--
--architecture ifsc_v3 of ff_D is
--begin
--    --Latch tipo D com reset assincrono.
--    process (enable,reset,d)
--    begin
--        if (reset = '1') then
--            q <= "0";
--        elsif (enable='1') then
--            q <= d;
--        end if;
--    end process;
--end architecture;

--architecture ifsc_v4 of ff_D is
--begin
--
--    process (clock,reset)
--    begin
--	  if (reset = '1') then
--        q <= (others => '0');
--     elsif (rising_edge(clock)) then    
--         q <= d;      
--     end if;
--	  
--    end process;
--end architecture;
--
architecture ifsc_v5 of ff_D is

 signal d: std_LOGIC_VECTOR(N-1 downto 0);
 signal q: std_LOGIC_VECTOR(N-1 downto 0);

begin
L1: 
	for k in N - 1 downto 0 generate
		process (clock,reset)
    begin
	  if (reset = '1') then
			q(k) <= '0';
     elsif (rising_edge(clock)) then
			q(k) <= d(k);	
     end if;  
    end process;
	end generate;
	d(0) <= din;
L2: 
	for j in 1 to N - 1 generate
		d(j) <= q(j - 1); 
	end generate;
		qout <= q(N - 1);
end architecture;

configuration cfg_ifsc of ff_D is
--for ifsc_v1 end for;
--for ifsc_v2 end for;
--for ifsc_v3 end for;
--for ifsc_v4 end for;
for ifsc_v5 end for;
end configuration;