library ieee;
use ieee.std_logic_1164.all;

entity carry_ripple_adder is
	generic (N : integer := 10);
	port (
		a, b : std_logic_vector (N-1 downto 0);
		cin  : std_logic;
		s    : out std_logic_vector (N-1 downto 0);
		cout : out std_logic
	);
end entity;

architecture estrutural_sequencial_v1 of carry_ripple_adder is
begin
	-- Uso de um codigo sequencial para geracao de um circuito combinacional
	process (a, b, cin) is
		variable c : std_logic;
	begin
		c := cin;
		for i in 0 to N-1 loop
			s(i) <= a(i) xor b(i) xor c;
			c := (a(i) and b(i)) or (a(i) and c) or (b(i) and c);
		end loop;
		cout <= c;
	end process;
end architecture;

architecture estrutural_concorrente_v1 of carry_ripple_adder is
	signal c : std_logic_vector(N downto 0);
begin
	-- Uso de um codigo concorrente para geracao de um circuito combinacional
	c(0) <= cin;
	l1: for i in 0 to N-1 generate
		s(i) <= a(i) xor b(i) xor c(i);
		c(i+1) <= (a(i) and b(i)) or (a(i) and c(i)) or (b(i) and c(i));
	end generate;
	cout <= c(N);
end architecture;