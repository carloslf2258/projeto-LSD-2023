library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FSM is
    Port ( clk : in std_logic;
           reset : in std_logic;
			  start_stop : in std_logic;
			  timer_exp : in std_logic;
			  
			  time_amassar : in std_logic_vector(7 downto 0);
           time_levedar : in std_logic_vector(7 downto 0);
			  time_cozer : in std_logic_vector(7 downto 0);
			  
			  LEDR : out std_logic;
			  LEDG : out std_logic_vector(2 downto 0);
			  display_select : out std_logic_vector(7 downto 0);
			  NewTime : out std_logic;
           TimeValue : out std_logic_vector(7 downto 0);
           timer_enable : out std_logic
			  );
end FSM;

architecture Behavioral of FSM is
    type state_type is (IDLE, AMASSAR, LEVEDAR, COZER);
    signal state, next_state : state_type;
    signal total_time : std_logic_vector(7 downto 0) := (others => '0');
	 
begin

	--Pode-se dar reset a qualquer momento (assíncrono)
    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    process(state, time_amassar, time_levedar, time_cozer, start_stop, timer_exp)
    begin
	 --Atribuições repetitivas: tira-se dos cases e muda-se no case que importa 
        timer_enable <= '1';
        LEDR <= '0';
        LEDG <= "000";
		  total_time <= time_amassar + time_levedar + time_cozer;
        display_select <= total_time;
        
        case state is
            when IDLE =>
                if start_stop = '1' then
                    display_select <= total_time;
						  --Valores para TimerFSM
						  newTime <= '1';
                    timeValue <= total_time;
                    
						  next_state <= AMASSAR;
                else
                    display_select <= (others => '0'); 
                    next_state <= IDLE;
                end if;

            when AMASSAR =>
                LEDR <= '1';
                LEDG <= "100"; -- LEDG(2) ON
                display_select <= time_amassar;
					 
					 --Valores para TimerFSM
					 newTime <= '1';
                timeValue <= time_amassar;
                
					 if timer_exp = '1' then
                    next_state <= LEVEDAR;
                else
                    next_state <= AMASSAR;
                end if;

            when LEVEDAR =>
                LEDR <= '1';
                LEDG <= "010"; -- LEDG(1) ON
                display_select <= time_levedar;
					 
					 --Valores para TimerFSM
					 newTime <= '1';
                timeValue <= time_levedar;
					 
                if timer_exp = '1' then
                    next_state <= COZER;
                else
                    next_state <= LEVEDAR;
                end if;

            when COZER =>
                LEDR <= '1';
                LEDG <= "001"; -- LEDG(0) ON
                display_select <= time_cozer;
					 
					 --Valores para TimerFSM
					 newTime <= '1';
                timeValue <= time_cozer;
					 
                if timer_exp = '1' then
                    next_state <= IDLE;
                end if;

            when others =>
                next_state <= IDLE;
        end case;
    end process;
end Behavioral;
