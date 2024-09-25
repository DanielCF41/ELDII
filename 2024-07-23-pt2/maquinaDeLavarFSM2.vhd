LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY maquinaDeLavarFSM2 IS
PORT (
	clk, rst : IN STD_LOGIC;             
	start : in std_logic;
	gambi: in std_logic;
	t : in integer range 0 to 30;
	nivel : in std_LOGIC;
	m1, m2, b, v : OUT std_logic
	);
END entity;

ARCHITECTURE ifsc_v1 OF maquinaDeLavarFSM2 IS
	TYPE state IS (parado, enche, bate_1, molho, bate_2, esvazia_1, enche_2, enxagua, esvazia_2, centrifuga);
	SIGNAL pr_state, nx_state : state;
BEGIN
	
	PROCESS (clk, rst)
	BEGIN
		IF (rst = '1') THEN
			pr_state <= parado;
		ELSIF rising_edge(clk) THEN
			pr_state <= nx_state;
		END IF;
	END PROCESS;

	PROCESS (pr_state, start, nivel, t, gambi)
	BEGIN
	
	
		CASE pr_state IS
			WHEN parado =>  
				m1 <= '0';
				m2 <= '0';
				b  <= '0';
				v  <= '0';
				
				IF (start = '1') THEN
					nx_state <= enche;
				ELSE
					nx_state <= parado;
				END IF;
				
			WHEN enche =>
				v <= '1';
				IF (nivel = '1') THEN
					nx_state <= bate_1; 
					v <= '0';
				ELSE
					nx_state <= enche;
				END IF;
				
			WHEN bate_1 => 
				m1 <= '1';
				IF (t = 2) THEN
					nx_state <= molho;
					m1 <= '0';
				ELSE
					nx_state <= bate_1;
				END IF;
			
			WHEN molho =>
				IF(t = 30) THEN
					nx_state <= bate_2;
				ELSE 
					nx_state <= molho;
				END IF;
			
			WHEN bate_2 =>
				IF(t = 15) THEN
					nx_state <= esvazia_1;
				ELSE
					nx_state <= bate_2;
				END IF;
			
			WHEN esvazia_1 =>
				b <= '1';
				IF(nivel = '0') THEN
					nx_state <= enche_2;
					b <= '0';
						IF(gambi = '1') THEN
							nx_state <= centrifuga;
						END IF;	
				ELSE
					nx_state <= esvazia_1;
				END IF;
			
			WHEN enche_2 =>
				v <= '1';
				IF(nivel = '1') THEN
					nx_state <= enxagua;
					v <= '0';
				ELSE
					nx_state <= enche_2;
				END IF;
			
			WHEN enxagua =>
				m1 <= '1';
				IF(t = 3) THEN
					nx_state <= esvazia_2;
					m1 <= '0';
				ELSE
					nx_state <= enxagua;
				END IF;
			
			WHEN esvazia_2 =>
				b <= '1';
				IF (nivel = '0') THEN
					nx_state <= centrifuga;
					b <= '0';
				ELSE
					nx_state <= esvazia_2;
				END IF;
			
			WHEN centrifuga =>
				m2 <= '1';
				IF(t = 20) THEN
					nx_state <= parado;
					m2 <= '0';
				ELSE
					nx_state <= centrifuga;
				END IF;
				
		END CASE;
	END PROCESS;
END architecture;
