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
    signal pulse: std_logic := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count <= (others => '0');
            pulse <= '0';
        elsif rising_edge(clk) then
            if newTime = '1' then
                count <= timeValue;
                pulse <= '0';
            elsif timerEnable = '1' and count /= "00000000" then
                count <= std_logic_vector(unsigned(count) - 1);
            elsif count = "00000001" and pulse = '0' then -- temos que  por "00000001" pois a contagem por exemplo de 10 fica em 11 pois o primeiro rising edge nao conta pq estamos a introduzir o valor e so no aseguir  eque ele conta
                pulse <= '1';
            elsif pulse = '1' then
                pulse <= '0';
					 count <= "11111111"; -- unica forma de ele nao mandar pulsos atoa pq o contador acabou e nao teve um novo valor para contar entao ficaria sempre a emitir pulsos
            end if;
        end if;
    end process;

    timerExp <= pulse;
end Behavioral;

