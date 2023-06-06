library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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
           timer_enable : out std_logic;
			  
			  adjusted_time : in std_logic_vector(7 downto 0);
			  
			  KEY_0 : in std_logic;
			  KEY_1 : in std_logic
			  );
end FSM;

architecture Behavioral of FSM is
    type state_type is (IDLE, AMASSAR, LEVEDAR, COZER, DELAYED_TIME, ACABANDO, EXTRA);
    signal state, next_state : state_type;
    signal total_time : std_logic_vector(7 downto 0) := (others => '0');
	 
	 signal extra_time : std_logic_vector(7 downto 0) := (others => '0');
	 
begin

	--Pode-se dar reset a qualquer momento (assíncrono)
    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
        elsif rising_edge(clk) then
            if start_stop = '1' and state = IDLE then
				
			--Ver se há tempo de ajuste, se não, então avança para AMASSAR
                if adjusted_time = "00000000" then                    
                    state <= AMASSAR;
                else
                    state <= DELAYED_TIME;
                end if;
            else
                state <= next_state;
            end if;						
        end if;
    end process;

    process(state, time_amassar, time_levedar, time_cozer, start_stop, timer_exp, KEY_0, KEY_1, adjusted_time, extra_time)
    begin
	 --Atribuições repetitivas: tira-se dos cases e muda-se no case que importa 
        timer_enable <= '1';
        LEDR <= '0';
        LEDG <= "000";
		  total_time <= std_logic_vector(unsigned(time_amassar) + unsigned(time_levedar) + unsigned(time_cozer));
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
				
				when DELAYED_TIME =>
					 display_select <= adjusted_time;
					 --Valores para TimerFSM
					 NewTime <= '1';
                timeValue <= adjusted_time;
                
                if timer_exp = '1' then
                    next_state <= AMASSAR;
                else
                    next_state <= DELAYED_TIME;
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
						  next_state <= ACABANDO;
					 else
						  next_state <= COZER;
                end if;
					 
				when ACABANDO =>
                LEDR <= '1';
                LEDG <= "000";
					 display_Select<= "00000000";
					 
					 --Valores para TimerFSM
					 NewTime <= '1';
                TimeValue <= "00000010";
                if timer_exp = '1' then
                    LEDR <= '0';
                    next_state <= EXTRA;
                else
                    next_state <= ACABANDO;
                end if;
					 
					 
				when EXTRA =>
					NewTime <= '0';
					LEDR <= '1';
					LEDG <= "001";
					display_select <= extra_time;

					--Se clicar na KEY_1, independente do tempo extra
					if KEY_1 = '1' then
						next_state <= IDLE;
						extra_time <= (others => '0'); -- Reset extra_time
					-- Se clicar na KEY_0, aumenta o tempo extra até 5s
					elsif KEY_0 = '1' then
						if unsigned(extra_time) < 5 then
							extra_time <= std_logic_vector(unsigned(extra_time) + 1);
						end if;
					end if;

					-- Se clicar em start_stop, inicia a cozedura com o tempo extra
					if start_stop = '1' then
						NewTime <= '1';
						TimeValue <= extra_time;
						next_state <= COZER;
						extra_time <= (others => '0'); -- Reset extra_time após iniciar a cozedura
					end if;

					 

				--"Catch all" condition
            when others =>
                next_state <= IDLE;
        end case;
    end process;
end Behavioral;