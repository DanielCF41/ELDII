library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_file_para is
	generic ( N: natural := 16;
				 W: natural := 16);
  port(
      clk, reset: in std_logic;
      wr_en: in std_logic;
      w_addr: in std_logic_vector(W - 1 downto 0);
      w_data: in std_logic_vector(N - 1 downto 0);
		r_addr: in std_logic_vector(W -1 downto 0);
		r_data: out std_logic_vector(N-1 downto 0);
		r_addr1: in std_logic_vector(W -1 downto 0);
		r_data1: out std_logic_vector(N-1 downto 0)
   );
end entity;

architecture beh_arch of reg_file_para is
   type reg_file_type is array (2**W-1 downto 0) of
        std_logic_vector(N-1 downto 0);
   signal array_reg: reg_file_type;
   signal array_next: reg_file_type;
begin
   -- register array
   process(clk,reset)
   begin
      if (reset='1') then
         array_reg <= (others=>(others=>'0'));
      elsif (rising_edge(clk)) then
         array_reg <=  array_next;
      end if;
   end process;
   -- next-state logic for register array
   process(array_reg,wr_en,w_addr,w_data)
   begin
      array_next <= array_reg;
      if wr_en='1' then
         array_next(to_integer(unsigned(w_addr))) <= w_data;
      end if;
   end process;
   -- read port
   r_data <=  array_reg(to_integer(unsigned(r_addr)));
end beh_arch;