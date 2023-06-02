library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MyRegister is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
		  
        P1 : in STD_LOGIC;
        P2 : in STD_LOGIC;
		  
		  Start_Stop : in STD_LOGIC;
		  
		  Time_cozer : out STD_LOGIC_VECTOR(3 downto 0);
		  Time_levedar : out STD_LOGIC_VECTOR(3 downto 0);
        Time_amassar : out STD_LOGIC_VECTOR(3 downto 0);
    --    Time_adjust : in STD_LOGIC_VECTOR(2 downto 0);
        
      --  Time_extra : out STD_LOGIC_VECTOR(2 downto 0);
        
		  
        Start_Stop_out : out STD_LOGIC
    );
end MyRegister;

architecture Behavioral of MyRegister is
    signal s_Time_extra : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    signal s_Time_cozer : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal s_Time_levedar : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal s_Time_amassar : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal s_Start_Stop : STD_LOGIC := '0';

begin
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
            --    s_Time_extra <= (others => '0');
                s_Time_cozer <= (others => '0');
                s_Time_levedar <= (others => '0');
                s_Time_amassar <= (others => '0');
                s_Start_Stop <= '0';
            elsif P1 = '1' then
                s_Time_cozer <= "1010"; -- 10 segundos
                s_Time_levedar <= "0100"; -- 4 segundos
                s_Time_amassar <= "1010"; -- 10 segundos
            else --P2
                s_Time_cozer <= "1010"; -- 10 segundos
                s_Time_levedar <= "1000"; -- 8 segundos
                s_Time_amassar <= "1111"; -- 15 segundos
            end if;
            
            if Start_Stop = '1' then
                s_Start_Stop <= not s_Start_Stop;
        --        s_Time_extra <= Time_adjust;
            end if;
        end if;
    end process;

 --   Time_extra <= s_Time_extra;
    Time_cozer <= s_Time_cozer;
    Time_levedar <= s_Time_levedar;
    Time_amassar <= s_Time_amassar;
    Start_Stop_out <= s_Start_Stop;

end Behavioral;
