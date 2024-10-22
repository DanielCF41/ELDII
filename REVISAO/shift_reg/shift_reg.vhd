library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
	generic(N : natural := 4);
	port(
		clock, reset: in std_logic;
		d_in: in std_logic;
		q_out: out std_logic_vector(N - 1 downto 0)
	);
end entity;	

architecture ifsc_v1 of shift_reg is
	signal d: std_logic_vector (N - 1 downto 0);
	signal q: std_logic_vector (N - 1 downto 0);
begin
	process(clock, reset)
	begin
		if (reset = '1') then
			q <= "0000";
		elsif (rising_edge(clock)) then
			q <= d_in & q(N - 2 downto 0);
		end if;
	end process;	
	q_out <= q;
end architecture;