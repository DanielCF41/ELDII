library ieee;
use ieee.std_logic_1164.all;
entity arbi_seq_counter4 is
   port(
      clk, reset: in std_logic;
      q: out std_logic_vector(2 downto 0)
   );
end arbi_seq_counter4;

architecture two_seg_arch of arbi_seq_counter4 is
   signal r_reg: std_logic_vector(2 downto 0);
   signal r_next: std_logic_vector(2 downto 0);
begin
  
   process(clk,reset)
   begin
      if (reset='1') then
         r_reg <= (others=>'0');
      elsif (clk'event and clk='1') then
         r_reg <= r_next;
      end if;
   end process;  
   r_next <= "011" when r_reg="000" else
             "110" when r_reg="011" else
             "101" when r_reg="110" else
             "111" when r_reg="101" else
             "000";  
   q <= r_reg;
end two_seg_arch;