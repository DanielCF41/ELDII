library std;
use std.standard.all;

entity nand_gate is
	port(
	a, b: in bit;
	x: out bit
	);
end entity;

architecture ifsc_v1 of nand_gate is
	begin
	
	x <= a nand b;
	
end architecture;
