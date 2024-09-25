--=============================
-- Listing 8.10 universal shift register
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity shift_register is
	generic (N : natural := 5);
	
   port(
      clk, reset: in std_logic;
 --     ctrl: in std_logic_vector(1 downto 0);
      d: in std_logic_vector(N - 1 downto 0);
      q: out std_logic_vector(N - 1 downto 0);
		out_final: out std_logic_vector(N - 1 downto 0)
   );
end shift_register;

architecture two_seg_arch of shift_register is
	signal ctrl: std_logic_vector(1 downto 0) := "01";
	signal count_clk: integer := 1;
	
   signal r_reg: std_logic_vector(N - 1 downto 0);
   signal r_next: std_logic_vector(N - 1 downto 0);
   signal r_reg2: std_logic_vector(N - 1 downto 0);
   signal r_next2: std_logic_vector(N - 1 downto 0);
	signal d2: std_logic_vector(N - 1 downto 0);
	
	
begin
   -- register
	
   process(clk,reset)
   begin
      if (reset='1') then
         r_reg <= (others=>'0');
			r_reg2 <= (others=>'0');
			d2 <= (others=>'0');
      elsif (clk'event and clk='1') then
			if count_clk = 4 then
				count_clk <= 1;
				ctrl <= "11";	
				d2 <= r_next;
			else
				ctrl <= "01";
				count_clk <= count_clk + 1;
				r_reg <= r_next;
				r_reg2 <= r_next2;
			end if;
      end if;
   end process;
   -- REGISTRADOR 1
   with ctrl select
      r_next <=
         r_reg                    when "00", --no op
         r_reg(N-2 downto 0) & d(0) when "01", --shift left;
         d(N-1) & r_reg(N-1 downto 1) when "10", --shift right;
         d  						          when others;
	-- REGISTRADOR 2		
	with ctrl select
      r_next2 <=
         r_reg2                    when "00", --no op
         r_reg2(N-2 downto 0) & d2(0) when "01", --shift left;
         d2(N-1) & r_reg2(N-1 downto 1) when "10", --shift right;
         d2                        when others;		
			
		out_final <= r_reg2;
end two_seg_arch;