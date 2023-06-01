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
        HEX4: out std_logic_vector (7 downto 0);
        HEX: out std_logic_vector (7 downto 0);
        DEC: out std_logic_vector (7 downto 0);
	
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
    signal timeValue: integer;
    signal displaySelect: integer;
    -- Declare components here
begin
    -- Instantiate MyRegister
	Reg: entity work.MyRegister(Behavioral) port map (
		 clk => clk,
		 reset => reset,
		 P1 => SW(0),
		 P2 => not SW(0),
		 Time_adjust => Time_adjust,
		 Start_Stop => key0,
		 --Time_extra => RegExtra,
		 Time_cozer => RegCozer,
		 Time_levedar => RegLevedar,
		 Time_amassar => RegAmassar,
		 Start_Stop_out => RegStart_Stop
	);


    -- Instantiate FSM
    FSM: entity work.FSM(Behavioral) port map (
        clk => clk,
        reset => reset,
        time_amassar => RegAmassar,
        time_levedar => RegLevedar,
        time_cozer => RegCozer,
        start_stop => RegStart_Stop,
        time_expired => timerExp,
        LEDR => LEDR,
        display_select => displaySelect,
        LEDG => LEDG,
        new_time => newTime,
        time_value => timeValue,
        timer_enable => timerEnable
	
    );
    -- Instantiate TimerFSM
    TimerFSM: entity work.TimerFSM(Behavioral) port map (
        clk => clk,
        reset => reset,
        new_time => newTime,
        time_value => timeValue,
        timer_enable => timerEnable,
        time_expired => timerExp
    );
    -- Instantiate DisplaySelect
    DispSelect: entity work.DisplaySelect(Behavioral) port map (
        value => displaySelect,
        DEC => DEC,
        HEX => HEX,
        HEX4 => HEX4
    );
end Behavioral;
