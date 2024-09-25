library ieee;
use ieee.numeric_std.all ;
use ieee.std_logic_1164.all;

entity contador_bcd is
    port (
        clk , rst  : std_logic;
        dezena , unidade  : out std_logic_vector (3 downto 0);
        MAX_DU: out std_logic;    
        MIN_DU: out std_logic
    );
end entity;

architecture ifsc_v1 of contador_bcd is
	signal count_dezena   : integer range 0 to 9 := 0;
   signal count_unidade  : integer range  0 to 9 := 0;
begin
   process (clk,rst)
   begin
		if (rst = '1') then
			count_unidade <= 0;
         count_dezena  <= 0;
         MAX_DU <= '0';
      elsif (rising_edge(clk)) then
         if count_dezena = 2 and count_unidade = 3 then    
				MAX_DU <= '1';
         elsif count_unidade = 9 then
            count_unidade <= 0;
            count_dezena <= count_dezena + 1;
         else
            count_unidade <= count_unidade + 1;
         end if ;
      end if;
    end process;
     
    dezena     <= std_logic_vector(to_unsigned(count_dezena,4));
    unidade    <= std_logic_vector(to_unsigned(count_unidade,4));
        
end architecture;

architecture ifsc_v2 of contador_bcd is
    signal dezena_out : std_logic_vector(3 downto 0);
    signal unidade_out : std_logic_vector(3 downto 0);
begin
    process (clk, rst)
        variable max_d : std_logic_vector(3 downto 0) := "0010"; 
        variable max_u : std_logic_vector(3 downto 0) := "0011"; 
        variable count_dezena : std_logic_vector(3 downto 0);
        variable count_unidade : std_logic_vector(3 downto 0);
    begin
        if (rst = '1') then
            count_dezena := "0000";
            count_unidade := "0000";
        elsif (rising_edge(clk)) then
            if count_unidade = "1001" then
					count_unidade := std_logic_vector(unsigned(count_unidade) + 6);
               if count_dezena = max_d then
						count_dezena := max_d;
               else
                  count_dezena := std_logic_vector(unsigned(count_dezena) + 1);
               end if;
            else
                if count_dezena = max_d and count_unidade = max_u then
                    count_unidade := max_u;
                else
                    count_unidade := std_logic_vector(unsigned(count_unidade) + 1);
                end if;
            end if;
        end if;
		  dezena <= count_dezena;
        unidade <= count_unidade;
    end process;
end architecture ifsc_v2;



architecture ifsc_v3 of contador_bcd is
	signal dezena_out : std_logic_vector(3 downto 0);
   signal count_dezena: integer range 0 to 9 := 5; 
   signal count_unidade: integer range 0 to 9 := 9; 
begin
    process (clk, rst)
    begin
        if rst = '1' then
            count_dezena <= 5; 
            count_unidade <= 9; 
            MIN_DU <= '0';
        elsif rising_edge(clk) then
            if count_dezena = 0 and count_unidade = 0 then 
                MIN_DU <= '1'; 
            elsif count_unidade = 0 then
                count_unidade <= 9;
                count_dezena <= count_dezena - 1; 
            else
                count_unidade <= count_unidade - 1; 
            end if;
        end if;
    end process;

    dezena  <= std_logic_vector(to_unsigned(count_dezena, 4));
    unidade <= std_logic_vector(to_unsigned(count_unidade, 4));
end architecture ifsc_v3;


configuration cfg_ifsc of contador_bcd is
   for ifsc_v1 end for;
--    for ifsc_v2 end for;
--    for ifsc_v3 end for;
end configuration;