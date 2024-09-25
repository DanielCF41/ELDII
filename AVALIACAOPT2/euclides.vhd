library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity EuclidesMDC is
    Port ( clk    : in  STD_LOGIC;
           reset  : in  STD_LOGIC;
           start  : in  STD_LOGIC;
           a_in   : in  STD_LOGIC_VECTOR(15 downto 0);
           b_in   : in  STD_LOGIC_VECTOR(15 downto 0);
           mdc    : out STD_LOGIC_VECTOR(15 downto 0);
           done   : out STD_LOGIC);
end EuclidesMDC;

architecture Behavioral of EuclidesMDC is

    type state_type is (IDLE, CALC, DONE);
    signal current_state, next_state : state_type;

    signal a, b : STD_LOGIC_VECTOR(15 downto 0);

begin

    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= IDLE;
            a <= (others => '0');
            b <= (others => '0');
        elsif rising_edge(clk) then
            current_state <= next_state;

            if current_state = IDLE then
                if start = '1' then
                    a <= a_in;
                    b <= b_in;
                end if;
            elsif current_state = CALC then
                if b /= 0 then
                    if a > b then
                        a <= a - b;
                    else
                        b <= b - a;
                    end if;
                end if;
            end if;
        end if;
    end process;

    process(current_state, start, a, b)
    begin
        case current_state is
            when IDLE =>
                if start = '1' then
                    next_state <= CALC;
                else
                    next_state <= IDLE;
                end if;
                done <= '0';
            when CALC =>
                if b = 0 then
                    next_state <= DONE;
                else
                    next_state <= CALC;
                end if;
                done <= '0';
            when DONE =>
                next_state <= IDLE;
                done <= '1';
            when others =>
                next_state <= IDLE;
        end case;
    end process;

    mdc <= a when current_state = DONE else (others => '0');

end Behavioral;
