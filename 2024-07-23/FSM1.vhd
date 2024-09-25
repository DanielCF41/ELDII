LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FSM1 IS
PORT (
	clk, rst : IN STD_LOGIC;
	x : IN integer range 0 to 2;
	y : OUT std_logic
	);
END entity;

ARCHITECTURE ifsc_v1 OF FSM1 IS
	TYPE state IS (A, B, C);
	SIGNAL pr_state, nx_state : state;
	-- ATTRIBUTE ENUM_ENCODING : STRING; --optional attribute
	-- ATTRIBUTE ENUM_ENCODING OF state : TYPE IS "sequential";
	-- ATTRIBUTE SYN_ENCODING OF state : TYPE IS "safe";
BEGIN
	------Logica Sequencial da FSM:------------
	PROCESS (clk, rst)
	BEGIN
		IF (rst = '1') THEN
			pr_state <= A;
		ELSIF rising_edge(clk) THEN
			-- apenas na borda do "clk" ocorre a mudança de estado da FSM
			pr_state <= nx_state;
		END IF;
	END PROCESS;
	------Logica Combinacional da FSM:------------
	PROCESS (pr_state, x)
	BEGIN
		------Valores default das saidas------------
      y <= '0';
		CASE pr_state IS
			WHEN A =>  
				IF (x = 2) THEN
					nx_state <= B;
				ELSE
					nx_state <= A;
				END IF;
			WHEN B =>
				IF (x = 0) THEN
					nx_state <= C;
				ELSIF (x = 1) THEN
					nx_state <= A;
				ELSE
					nx_state <= B;
				END IF;
			WHEN C => 
				y <= '1';
				IF (x = 1) THEN
					nx_state <= A;
				ELSE
					nx_state <= C;
				END IF;
		END CASE;
	END PROCESS;
	------Seção de Saída (opcional):-------
	-- Essa seção visa garantir que a saida new_output esteja sincronizada com o clk.  
	-- Se isso não for importante, ela pode ser suprimida
--	PROCESS (clk, rst)
--	BEGIN
--		IF (rst = '1') THEN
--			new_output <= < valor > ;
--		ELSIF rising_edge(clk) THEN --or falling_edge(clk)
--			new_output <= output;
--		END IF;
--	END PROCESS;
END architecture;
