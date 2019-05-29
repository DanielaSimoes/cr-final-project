library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity ones_counter is
  Generic (number_of_bits : integer := 22);
  Port ( clk : in std_logic; 
         btnC: in std_logic;
         word: in std_logic_vector(number_of_bits-1 downto 0);
         number: out std_logic_vector(15 downto 0));
end ones_counter;

architecture Behavioral of ones_counter is

type state_type is (initial_state, final_state);
signal C_S, N_S     : state_type;
signal index, next_index    : integer range 0 to number_of_bits-1;
signal Res_min, Res_max, next_Res_min, next_Res_max        : integer range 0 to number_of_bits;
signal n_o_ones, next_n_o_ones : integer range 0 to number_of_bits;
signal max_n_o_ones, next_max_n_o_ones : integer range 0 to number_of_bits;
signal min_n_o_ones, next_min_n_o_ones : integer range 0 to number_of_bits;

begin

process (clk)
begin
    if rising_edge(clk)then
        if (btnC = '1') then
            C_S <= initial_state;
            index <= 0;
            n_o_ones <= 0;
            Res_min <= 22;
            Res_max <= 0;
        else
            C_S <= N_S;
            index <= next_index;
            n_o_ones <= next_n_o_ones;
            Res_min <= next_Res_min;
            Res_max <= next_Res_max;
            max_n_o_ones <= next_max_n_o_ones;
            min_n_o_ones <= next_min_n_o_ones;
        end if;
    end if;
end process;

process(C_S, word, index, n_o_ones, Res_min, Res_max)
begin
    N_S <= C_S;
    next_index <= index;
    next_n_o_ones <= n_o_ones;
    next_max_n_o_ones <= max_n_o_ones;
    next_min_n_o_ones <= min_n_o_ones;
    next_Res_min <= Res_min;
    next_Res_max <= Res_max;
    
    case C_S is
        when initial_state => next_index <= index +1; 
        N_S <= initial_state;
            if word(index) = '1' then
                if n_o_ones >= max_n_o_ones then
                    next_max_n_o_ones <= n_o_ones + 1;
                end if;
            
                next_n_o_ones <= n_o_ones + 1;
            else
                next_n_o_ones <= 0;
                if (n_o_ones > 0) and (n_o_ones <= min_n_o_ones) then
                    next_min_n_o_ones <= n_o_ones;
                end if;
            end if;
            
        if (index = 21) then
            N_S <= final_state;
            if (n_o_ones > 0) and (n_o_ones <= min_n_o_ones) then
                next_min_n_o_ones <= n_o_ones;
            end if;
        end if;
        
        when final_state => N_S <= initial_state;
            next_Res_max <= max_n_o_ones;
            next_Res_min <= min_n_o_ones;
            next_n_o_ones <= 0;
            next_index <= 0;
            next_max_n_o_ones <= 0;
            next_min_n_o_ones <= 22;
        when others => N_S <= initial_state;
    end case;
end process; 

number <= std_logic_vector(to_unsigned(Res_max,16));

end Behavioral;
