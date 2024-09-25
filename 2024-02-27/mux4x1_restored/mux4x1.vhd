entity mux4x1 is
	port(
	
		x:   in bit_vector (3 downto 0);
		Sel: in bit_vector (1 downto 0);
		y:   out bit
		
	);
end entity;

architecture ifsc_v1 of mux4x1 is
	begin
	y <= (x(0) and (not Sel(1)) and (not Sel(0))) or
		  (x(1) and (not Sel(1)) and Sel(0)) or
		  (x(2) and Sel(1) and (not Sel(0))) or
		  (x(3) and Sel(1) and Sel(0));
end architecture;

architecture ifsc_v2 of mux4x1 is
	begin 
	
		y <= x(0) when	 Sel = "00" else
			  x(1) when	 Sel = "01" else
			  x(2) when  Sel = "10" else
			  x(3);	
			  
end architecture;

architecture ifsc_v3 of mux4x1 is
	begin
	
	with Sel select
		y <=  x(0) when "00",
				x(1) when "01",
				x(2) when "10",
				x(3) when others;
				
end architecture;

CONFIGURATION cfg_infs OF mux4x1 IS
	FOR ifsc_v1 END FOR;
--	FOR ifsc_v2 END FOR;
--	FOR ifsc_v3 END FOR;
END CONFIGURATION;