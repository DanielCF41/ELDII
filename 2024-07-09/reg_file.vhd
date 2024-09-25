--=============================
 --Listing 9.15 register file
--=============================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_file is
	generic ( N: natural := 16;
				 W: natural := 2);
   port(
      clk, reset: in std_logic;
      wr_en: in std_logic;
      w_addr: in std_logic_vector(W - 1 downto 0);
      w_data: in std_logic_vector(N - 1 downto 0);
      r_addr0, r_addr1: in std_logic_vector(W - 1 downto 0);
      r_data0, r_data1: out std_logic_vector(N - 1 downto 0)
   );
end reg_file;

architecture no_loop_arch of reg_file is
   type reg_file_type is array (2**W-1 downto 0) of
        std_logic_vector(N-1 downto 0);
   signal array_reg: reg_file_type;
   signal array_next: reg_file_type;
   signal en: std_logic_vector(2**W-1 downto 0);
begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         array_reg <= (others => (others=>'0'));
      elsif (rising_edge(clk)) then
         array_reg <= array_next;
      end if;
   end process;
	
   -- enable logic for register
   process(array_reg,wr_en,w_data)
   begin
		array_next <= array_reg;
		if wr_en = '1' then
			array_next(to_integer(unsigned(w_addr))) <= w_data;
		end if;	
   end process;
	r_data0 <= array_reg(to_integer(unsigned(r_addr0)));
	r_data1 <= array_reg(to_integer(unsigned(r_addr1)));

end no_loop_arch;

