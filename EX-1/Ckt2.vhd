entity Ckt2 is
	port(
	a, b, c, d: in bit;
	y: out bit
	);
end entity;

architecture ifsc_v1 of Ckt2 is
	begin
	
	y <= (not (a and b)) or (c and not d and not b);
	
end architecture;
