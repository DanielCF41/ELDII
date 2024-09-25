library ieee;
use ieee.std_logic_1164.all;

entity flip_flopD is
	port(
	clock, reset, d : in std_LOGIC;
	preset, enable: in std_LOGIC;
	q : out std_LOGIC
	);
end entity;	

--architecture ifsc_v1 of flip_flopD is  
--begin
--	process(clock, reset)
--	begin
--		if(reset = '1') then
--			q <= '0';
--		elsif (rising_edge(clock)) then
--			q <= d;
--		end if;
--	end process;	
--end architecture;

architecture ifsc_v2 of flip_flopD is
begin	
	process(clock, preset)
	begin
		if(preset = '0') then
			q <= '1';
		elsif (falling_edge(clock)) then
			if(enable = '1') then
				q <= d;
			end if;
		end if;
	end process;
end architecture;	