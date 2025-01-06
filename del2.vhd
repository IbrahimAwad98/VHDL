library IEEE;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity Comparator4 is
    port(
        A: in std_logic_vector(3 downto 0); -- Fyrabitars signal A vilket är större vektor
        B: in std_logic_vector(3 downto 0); -- Fyrabitars signal B
        Display: out std_logic_vector(6 downto 0) -- Utsignal till 7-segmentsdisplay
    );
end Comparator4;

architecture Behavioral of Comparator4 is
begin
    process(A, B)
    begin  
		if unsigned(A) = unsigned(B) then
            Display <= "1000000";
        elsif unsigned(A) > unsigned(B) then
            Display <= "1111001";
        else
            Display <= "0100100";
        end if;
    end process;
end Behavioral;
