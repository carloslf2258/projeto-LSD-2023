library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Projeto is
	Port (
		CLOCK_50: in std_logic;
		  
		KEY : in std_logic_vector(3 downto 0);
		/*	  KEY(0) and KEY(1) -> TEMPO EXTRA
		KEY(2) -> RESET
		KEY(3) -> START_STOP  */
		
		--BreadType  CASEIRO OU RÚSTICO
		SW: in std_logic_vector (0 downto 0);
		
  --      Time_adjust: in std_logic_vector(2 downto 0);
  
      LEDR: out std_logic;
      LEDG: out std_logic_vector (2 downto 0);
		  
		--Para DisplaySelect
		HEX0 : out std_logic_vector(6 downto 0);
		HEX1 : out std_logic_vector(6 downto 0)
		);
end Projeto;

architecture Behavioral of Projeto is
	-- Declare internal signals here
	signal RegCozer: std_logic_vector (7 downto 0);
	signal RegLevedar: std_logic_vector (7 downto 0);
	signal RegAmassar: std_logic_vector (7 downto 0);
	 
	--signal RegExtra: std_logic_vector (7 downto 0);
	
	signal RegStart_Stop: std_logic;
	
   signal timerExp: std_logic;
   signal newTime, timerEnable: std_logic;
	
   signal timeValue: std_logic_vector (7 downto 0);
	
   signal displaySelect: std_logic_vector (7 downto 0);
   
	 
	--Clk
	signal clk_divided : std_logic := '0';
	 
	begin
	-- Instantiate ClkDividerN
   ClkDivider : entity work.ClkDividerN(Behavioral)
					generic map( divFactor => 50_000_000)
					port map (clkIn => CLOCK_50,
								clkOut => clk_divided
								);
	
   -- Instantiate MyRegister
	Reg: entity work.MyRegister(Behavioral) 
			port map (clk => clk_divided,
						reset => KEY(2),
						
						BreadType => SW(0),
						
						Start_Stop => KEY(3),
						
						Time_cozer => RegCozer,
						Time_levedar => RegLevedar,
						Time_amassar => RegAmassar,
				--		Time_adjust => Time_adjust,
						
						--Time_extra => RegExtra,
				
						Start_Stop_out => RegStart_Stop
						);


    -- Instantiate FSM
	FSM: entity work.FSM(Behavioral) 
			port map (clk => clk_divided,
						reset => KEY(2),
						
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
				port map (clk => clk_divided,
								reset => KEY(2),
								
								newTime => newTime,
								timeValue => timeValue,
								timerEnable => timerEnable,
								
								timerExp => timerExp
								);
								
   -- Instantiate DisplaySelect
	DispSelect: entity work.DisplaySelect(Behavioral) 
					port map (ValueFromFSM => displaySelect,
								Start_Stop => KEY(3),
								HEX0 => HEX0,
								HEX1 => HEX1
								);
								
	process(KEY(3), KEY(2)) -- Start_Stop, reset
    begin
        if KEY(2) = '1' then
            RegStart_Stop <= '0';
        elsif rising_edge(KEY(3)) then
            if RegStart_Stop = '0' then
                RegStart_Stop <= '1';
            else
                RegStart_Stop <= '0';
            end if;
        end if;
    end process;
		
end Behavioral;