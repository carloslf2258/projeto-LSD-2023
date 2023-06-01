library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ClkDividerN is
    generic(divFactor : positive := 50000000);
    port(
        clkIn  : in  std_logic;
        clkOut : out std_logic
    );
end ClkDividerN;

architecture Behavioral of ClkDividerN is
    signal s_divCounter : natural := 0;
    signal s_clkOut : std_logic := '0'; 

begin
    count_proc : process(clkIn)
    begin
        if (rising_edge(clkIn)) then
            if (s_divCounter >= divFactor - 1) then
                s_divCounter <= 0;
                s_clkOut <= not s_clkOut;  
            else
                s_divCounter <= s_divCounter + 1;
            end if;
        end if;
    end process;

    clkOut <= s_clkOut; 

end Behavioral;