library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity DisplaySelect is
    Port (
        ValueFromFSM: in std_logic_vector(7 downto 0);
        Start_Stop: in std_logic;
        HEX0 : out std_logic_vector(6 downto 0);
		  HEX1 : out std_logic_vector(6 downto 0)
    );
end DisplaySelect;

architecture Behavioral of DisplaySelect is
begin
	process(ValueFromFSM, Start_Stop)
	variable segmento : std_logic_vector(6 downto 0);
	variable dozens : std_logic_vector(3 downto 0);
	variable unis : std_logic_vector(3 downto 0);

    begin
		if Start_Stop = '1' then
			HEX0 <= "0001001";  -- This corresponds to "=" in 7-segment display
			HEX1 <= "1111111";
		else
			dozens := ValueFromFSM(7 downto 4);
			unis := ValueFromFSM(3 downto 0);

--Nota: No display as secçoes do HEX são ativas com 0	
		
		  --Convertir o dígito das dezenas
			case dozens is
				when "0000" => segmento := "1000000";  -- 0
            when "0001" => segmento := "1111001";  -- 1
            when "0010" => segmento := "0100100";  -- 2
            when "0011" => segmento := "0110000";  -- 3
            when "0100" => segmento := "0011001";  -- 4
            when "0101" => segmento := "0010010";  -- 5
            when "0110" => segmento := "0000010";  -- 6
            when "0111" => segmento := "1111000";  -- 7
            when "1000" => segmento := "0000000";  -- 8
            when "1001" => segmento := "0010000";  -- 9
            when others => segmento := "1111111";  -- Default case
			end case;
			HEX1 <= segmento;
				
				--Convertir o dígito das unidades
			case unis is
				when "0000" => segmento := "1000000";  -- 0
            when "0001" => segmento := "1111001";  -- 1
            when "0010" => segmento := "0100100";  -- 2
            when "0011" => segmento := "0110000";  -- 3
            when "0100" => segmento := "0011001";  -- 4
            when "0101" => segmento := "0010010";  -- 5
            when "0110" => segmento := "0000010";  -- 6
            when "0111" => segmento := "1111000";  -- 7
            when "1000" => segmento := "0000000";  -- 8
            when "1001" => segmento := "0010000";  -- 9
            when others => segmento := "1111111";  -- Default case
         end case;
			HEX0 <= segmento;

		end if;
	end process;
end Behavioral;

