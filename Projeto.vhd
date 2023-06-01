library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Projeto is
    Port (
        clk: in std_logic;
        reset: in std_logic;
        key0: in std_logic;
        key1: in std_logic;
        SW: in std_logic_vector (0 downto 0);
        Time_adjust: in std_logic_vector(2 downto 0);
        LEDR: out std_logic;
        LEDG: out std_logic_vector (2 downto 0);
 --       HEX4: out std_logic_vector (7 downto 0);Para que poderiam servir?
 --       HEX: out std_logic_vector (7 downto 0);
        DEC: out std_logic_vector (6 downto 0)
	
    );
end Projeto;

architecture Behavioral of Projeto is
    -- Declare internal signals here
    signal RegCozer: std_logic_vector (4 downto 0);
	 signal RegLevedar: std_logic_vector (4 downto 0);
	 signal RegAmassar: std_logic_vector (4 downto 0);
	 
	 --signal RegExtra: std_logic_vector (4 downto 0);
	 signal RegStart_Stop: std_logic;
    signal timerExp: std_logic;
    signal newTime, timerEnable: std_logic;
    signal timeValue: std_logic_vector (7 downto 0);
    signal displaySelect: std_logic_vector (7 downto 0);
   
	 signal s_DEC : std_logic_vector (6 downto 0);
	 
	begin
    -- Instantiate MyRegister
	Reg: entity work.MyRegister(Behavioral) 
			port map (clk => clk,
						reset => reset,
						
						P1 => SW(0),
						P2 => not SW(0),
						
						Start_Stop => key0,
						
						Time_cozer => RegCozer,
						Time_levedar => RegLevedar,
						Time_amassar => RegAmassar,
						Time_adjust => Time_adjust,
						
						--Time_extra => RegExtra,
				
						Start_Stop_out => RegStart_Stop
						);


    -- Instantiate FSM
    FSM: entity work.FSM(Behavioral) 
			port map (clk => clk,
						reset => reset,
						
						time_amassar => RegAmassar,
						time_levedar => RegLevedar,
						time_cozer => RegCozer,
						timer_exp => timerExp,
						
						start_stop => RegStart_Stop,
						
						LEDR => LEDR,
						LEDG => LEDG,
						
						display_select => displaySelect,
						
						NewTime => newTime,
						TimeValue => timeValue,
						timer_enable => timerEnable 
						);
						
    -- Instantiate TimerFSM
    TimerFSM: entity work.TimerFSM(Behavioral) 
					port map (clk => clk,
								reset => reset,
								
								newTime => newTime,
								timeValue => timeValue,
								timerEnable => timerEnable,
								
								timerExp => timerExp
								);
								
    -- Instantiate DisplaySelect
    DispSelect: entity work.DisplaySelect(Behavioral) 
	 port map (ValueFromFSM => displaySelect,
					Start_Stop => key0,
					DEC => s_DEC
					);
end Behavioral;