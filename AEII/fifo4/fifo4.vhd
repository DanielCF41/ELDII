library ieee;
use ieee.std_logic_1164.all;

entity fifo4 is
	generic (N_fifo: natural := 16;
				W_fifo: natural := 4);
	port(
		clk_fifo, reset_fifo  : in std_logic;
		wr_fifo, rd_fifo      : in std_logic;
		full_fifo, empty_fifo : out std_logic;
		data_in_fifo          : in std_logic_vector(N_fifo-1 downto 0);
		data_out_fifo         : out std_logic_vector(N_fifo-1 downto 0)
	);
end entity;	

architecture ifsc_v1 of fifo4 is

	signal w_addr_fifo, r_addr_fifo : std_logic_vector(W_fifo-1 downto 0);
	signal full_sgn                 : std_logic;
	signal w_en_sgn                 : std_logic;
	
	component fifo_sync_ctrl4 is
		generic (W: natural := 4);
		port(
			clk, reset     : in std_logic;
			wr, rd         : in std_logic;
			full, empty    : out std_logic;
			w_addr, r_addr : out std_logic_vector(W-1 downto 0)
			);
		end component;
	
	component reg_file_para is
		generic ( N: natural := 16;
					 W: natural := 8);
		port(
			clk, reset : in std_logic;
			wr_en      : in std_logic;
			w_addr     : in std_logic_vector(W - 1 downto 0);
			w_data     : in std_logic_vector(N - 1 downto 0);
			r_addr     : in std_logic_vector(W -1 downto 0);
			r_addr1     : in std_logic_vector(W -1 downto 0);
			r_data     : out std_logic_vector(N-1 downto 0);
			r_data1     : out std_logic_vector(N-1 downto 0)
			);
	end component;
	
begin
	
		fifo_ctrl : fifo_sync_ctrl4 
		generic map (W => W_fifo)
		port map(
			clk    =>    clk_fifo, 
			reset  =>  reset_fifo,  
			wr     =>     wr_fifo, 
			rd     =>     rd_fifo, 
			full   =>    full_sgn, 
			empty  =>  empty_fifo,
			w_addr => w_addr_fifo, 
			r_addr =>  r_addr_fifo
			);
			
		fifo_reg : reg_file_para
		generic map ( N => N_fifo ,
						  W => W_fifo )
		port map(
			clk     =>      clk_fifo,
			reset   =>    reset_fifo, 
			wr_en   =>      w_en_sgn,     
			w_addr  =>   w_addr_fifo,  
			w_data  =>  data_in_fifo,
			r_addr =>   r_addr_fifo,
			r_data => data_out_fifo,
			r_addr1 => (others => '0'),
			r_data1 =>  open
			);
			
			w_en_sgn <= ((not full_sgn) and (wr_fifo));
			full_fifo <= full_sgn;
end architecture;	