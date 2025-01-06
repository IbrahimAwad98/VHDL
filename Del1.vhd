library IEEE;
use ieee.std_logic_1164.all;

entity Comparator2 is
    port(
        A: in std_logic_vector(1 downto 0); -- Insignal A vektor, A = (A1, A0)
        B: in std_logic_vector(1 downto 0); -- Insignal B vektor, B = (B1, B0)
        Segment: out std_logic_vector(0 to 6) -- Utsignal till 7-segmentsdisplay (7 bitar a-g) --tolking ska sker vänster till höger
    );
end Comparator2;

architecture Behavioral of Comparator2 is
begin
    process(A, B) 
        variable greater: std_logic;  -- Variabel för A < B
        variable less: std_logic;  -- Variabel för A > B
    begin
        -- Booleska uttryck
        greater := ((NOT A(1) AND B(1)) OR ((NOT A(1) AND NOT A(0)) AND B(0)) OR (NOT A(0) AND B(1))); -- A < B
        less := (A(1) AND NOT B(1)) OR (A(0) AND NOT B(0) AND A(1)); -- A > B

        -- 7-segmentsdisplay: Välj utdata beroende på resultat
        if greater = '1' then
            Segment <= "1110010"; -- Binärkod för "<" (A < B) --g och d konstanter och siffror mellan dem skiftar. 
        elsif less = '1' then
            Segment <= "1100110"; -- Binärkod för ">" (A > B) 
        else --equal
            Segment <= "1110110"; -- Binärkod för "=" (A = B) 
        end if;
    end process;
end Behavioral;