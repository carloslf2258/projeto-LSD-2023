library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DisplaySelect is
    Port (
        ValueFromFSM: in std_logic_vector(7 downto 0);
        Start_Stop: in std_logic;
        DEC: out std_logic_vector(6 downto 0)
    );
end DisplaySelect;

architecture Behavioral of DisplaySelect is
begin
    process(ValueFromFSM, Start_Stop)
    begin
        if Start_Stop = '1' then
            DEC <= "0001001";  -- This corresponds to "=" in 7-segment display
        else
            case ValueFromFSM is
                when "00000000" => DEC <= "0000001";  -- 0
                when "00000001" => DEC <= "1001111";  -- 1
                when "00000010" => DEC <= "0010010";  -- 2
                when "00000011" => DEC <= "0000110";  -- 3
                when "00000100" => DEC <= "1001100";  -- 4
                when "00000101" => DEC <= "0100100";  -- 5
                when "00000110" => DEC <= "0100000";  -- 6
                when "00000111" => DEC <= "0001111";  -- 7
                when "00001000" => DEC <= "0000000";  -- 8
                when "00001001" => DEC <= "0000100";  -- 9
                when "00001010" => DEC <= "0001000";  -- 10
                when others => DEC <= "1111111";  -- Default case
            end case;
        end if;
    end process;
end Behavioral;

