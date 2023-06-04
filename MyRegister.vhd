library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity MyRegister is
	Port (
		clk : in STD_LOGIC;
      reset : in STD_LOGIC;
		  
      BreadType : in STD_LOGIC; -- '0' for "CASEIRO", '1' for "RÚSTICO"
		  
		Start_Stop : in STD_LOGIC;
		
		--Tempos predefinidos  
		Time_cozer : out STD_LOGIC_VECTOR(7 downto 0);
		Time_levedar : out STD_LOGIC_VECTOR(7 downto 0);
      Time_amassar : out STD_LOGIC_VECTOR(7 downto 0);
		  
      Start_Stop_out : out STD_LOGIC;
		
		--Para o tempo antes de começar a trabalhar
		time_adjust : in STD_LOGIC_VECTOR(7 downto 0);
		time_adjust_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end MyRegister;

architecture Behavioral of MyRegister is

    signal s_Time_cozer : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal s_Time_levedar : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal s_Time_amassar : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal s_Start_Stop : STD_LOGIC := '0';
	 signal s_time_adjust : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

begin
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                s_Time_cozer <= (others => '0');
                s_Time_levedar <= (others => '0');
                s_Time_amassar <= (others => '0');
                s_Start_Stop <= '0';
					 
				--CASEIRO
            elsif BreadType = '0' then
                s_Time_cozer <= "00001010"; -- 10 segundos
                s_Time_levedar <= "00000100"; -- 4 segundos
                s_Time_amassar <= "00001010"; -- 10 segundos
            
				--RÚSTICO
				else
                s_Time_cozer <= "00001010"; -- 10 segundos
                s_Time_levedar <= "00001000"; -- 8 segundos
                s_Time_amassar <= "00001111"; -- 15 segundos
            end if;
            
				--Se é clicado, muda entre Start e Stop
            if Start_Stop = '1' then
                s_Start_Stop <= not s_Start_Stop;
            end if;
        end if;
    end process;

    Time_cozer <= s_Time_cozer;
    Time_levedar <= s_Time_levedar;
    Time_amassar <= s_Time_amassar;
    Start_Stop_out <= s_Start_Stop;
	 
	 --Atribuir o valor de time_adjust ao sinal s_time_adjust
	 s_time_adjust <= std_logic_vector(unsigned(time_adjust));
	 --Depois meter esse valor no output respetivo
	 time_adjust_out <= s_time_adjust;

end Behavioral;
