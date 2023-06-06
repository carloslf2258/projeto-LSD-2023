library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity BinToDec is
    port
    (
        binIn   : in  std_logic_vector(7 downto 0);
        decOut : out std_logic_vector(7 downto 0)
    );
end BinToDec;

architecture Behavioral of BinToDec is
    signal s_binIn : unsigned(7 downto 0);
begin
    s_binIn <= unsigned(binIn);
    decOut <= std_logic_vector(s_binIn / 10)(7 downto 0);
end Behavioral;
