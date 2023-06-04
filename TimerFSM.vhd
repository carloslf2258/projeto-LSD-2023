library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TimerFSM is
    Port (
        clk: in std_logic;
        reset: in std_logic;
		  
        newTime: in std_logic;
        timeValue: in std_logic_vector(7 downto 0);
        timerEnable: in std_logic;
		  
        timerExp: out std_logic
    );
end TimerFSM;

architecture Behavioral of TimerFSM is
    signal count: std_logic_vector(7 downto 0);
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                count <= (others => '0');
                timerExp <= '0';
            elsif newTime = '1' then
                count <= timeValue;
                timerExp <= '0';
            elsif timerEnable = '1' then
                if count = "00000000" then
                    timerExp <= '1';
                    count <= (others => '0');
                else
                    count <= std_logic_vector(unsigned(count) - 1);
                    timerExp <= '0';
                end if;
            end if;
        end if;
    end process;
end Behavioral;
