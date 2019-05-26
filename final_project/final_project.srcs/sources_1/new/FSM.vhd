library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FSM is
  Generic (number_of_bits : integer := 16);
  Port (clk : in STD_LOGIC;
        word : in std_logic_vector(number_of_bits-1 downto 0);
        reset: in STD_LOGIC
   );
end FSM;

architecture Behavioral of FSM is


type state_type is (initial_state, final_state);
signal C_S, N_S     : state_type;
signal index, next_index    : integer range 0 to number_of_bits-1;
signal Res, next_Res        : integer range 0 to number_of_bits;
signal n_o_ones, next_n_o_ones : integer range 0 to number_of_bits;
signal max_n_o_ones, next_max_n_o_ones : integer range 0 to number_of_bits;
signal input_disp : std_logic_vector(3 downto 0);

begin

process (clk)
begin
    if rising_edge(clk)then
        if (reset = '1') then
            C_S <= initial_state;
            index <= 0;
            n_o_ones <= 0;
            Res <= 0;
        else
            C_S <= N_S;
            index <= next_index;
            n_o_ones <= next_n_o_ones;
            Res <= next_Res;
            max_n_o_ones <= next_max_n_o_ones;
        end if;
    end if;
end process;

process(C_S, word, index, n_o_ones, Res)
begin
    N_S <= C_S;
    next_index <= index;
    next_n_o_ones <= n_o_ones;
    next_max_n_o_ones <= max_n_o_ones;
    next_Res <= Res;
    
    case C_S is
        when initial_state => next_index <= index +1; N_S <= initial_state;
            if word(index) = '1' then
                if n_o_ones >= max_n_o_ones then
                    next_max_n_o_ones <= n_o_ones + 1;
                end if;
                next_n_o_ones <= n_o_ones + 1;
            else
                next_n_o_ones <= 0;
            end if;
            
        if (index = 15) then
            N_S <= final_state;
        end if;
        
        when final_state => N_S <= initial_state;
            next_Res <= max_n_o_ones;
            next_n_o_ones <= 0;
            next_index <= 0;
            next_max_n_o_ones <= 0;
        when others => N_S <= initial_state;
    end case;
end process; 


end Behavioral;
