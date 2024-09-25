library ieee;
use ieee.std_logic_1164.all;

entity latch_D is
	port(
		clock, enable, reset, d: in std_logic;
		q: out std_logic
	);
end entity;

architecture ifsc_v1 of latch_D is
begin
	process(clock, reset, d)
	begin 
		if(reset = '1') then 
			q <= '0';
		elsif (enable = '1') then
			q <= d;
		end if;
	end process;
end architecture;