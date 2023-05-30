library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity FSM is
    Port ( clk : in std_logic;
			  reset : in std_logic;
        --   time_extra : in std_logic_vector(7 downto 0);--2 segundos
           
			  time_cozer : in std_logic_vector(7 downto 0);
           time_levedar : in std_logic_vector(7 downto 0);
           time_amassar : in std_logic_vector(7 downto 0);
           start_stop : in std_logic;
           
			  timer_exp : in std_logic;
           
			  LEDR : 			out std_logic;
           display_select :out std_logic_vector(7 downto 0); -- increased size to accommodate total times to 8 digits
           LEDG : 			out std_logic_vector(2 downto 0);
           NewTime : 		out std_logic;
           TimeValue : 		out std_logic_vector(7 downto 0);
           timer_enable : 	out std_logic);
end FSM;

architecture Behavioral of FSM is
    type state_type is (IDLE, AMASSAR, LEVEDAR, COZER);
    signal state, next_state : state_type;
    signal total_time : std_logic_vector(7 downto 0);
    signal counter : std_logic_vector(7 downto 0);
    signal display_time : std_logic_vector(7 downto 0); -- added variable to control display value
begin
    display_select <= display_time; -- assign display_select the value of display_time

    -- process for state transition
    sync_proc : process(clock, reset) --reset assíncrono
    begin
        if reset = '1' then
            state <= IDLE;
        elsif rising_edge(clock) then
            state <= next_state;
        end if;
    end process;

    -- process for state outputs and next state logic
    comb_proc : process(state, time_cozer, time_levedar, time_amassar, start_stop, timer_exp)
    begin
		timer_enable <= '1';
        case state is
            when IDLE =>
                total_time <= time_amassar + time_levedar + time_cozer; -- calculate total time
                display_time <= total_time; -- display total time
                if start_stop = '1' then
                    next_state <= AMASSAR;
                else
                    next_state <= IDLE;
                end if;
            when AMASSAR =>
					 LEDR <= '1'; -- Ligando o LEDR
                LEDG <= "100"; -- LEDG(2) ON
                counter <= time_amassar;
                TimeValue <= counter;
                display_time <= counter; -- display individual time
                if timer_exp = '1' then
                    next_state <= LEVEDAR;
                else
                    next_state <= AMASSAR;
                end if;
            when LEVEDAR =>
					 LEDR <= '1'; -- Ligando o LEDR
                LEDG <= "010"; -- LEDG(1) ON
                counter <= time_levedar;
                TimeValue <= counter;
                display_time <= counter; -- display individual time
                if timer_exp = '1' then
                    next_state <= COZER;
                else
                    next_state <= LEVEDAR;
                end if;
            when COZER =>
					 LEDR <= '1'; -- Ligando o LEDR
                LEDG <= "001"; -- LEDG(0) ON
                counter <= time_cozer;
                TimeValue <= counter;
                display_time <= counter; -- display individual time
           /*     if timer_exp = '1' then
                    next_state <= EXTRA;
                else
                    next_state <= COZER;
                end if;             */
					 next_state <= IDLE;
 /*           when EXTRA =>
                 -- LEDG desligados significa que acabou de cozer e o led vermelho ainda fica liga 2 segundos (extra)
					 LEDR <= '1'; -- Ligando o LEDR
                counter <= "00000010";-- Depois mudar para time_extra para a fase 2
                TimeValue <= counter;
                display_time <= counter; -- display individual time
					 
                if timer_exp = '1' then
                    next_state <= IDLE;
                else
                    next_state <= EXTRA;
                end if;                        */
				 when others =>
					 LEDR <= '0';
					 next_state <= IDLE;
					 
        end case;
    end process;
end Behavioral;

