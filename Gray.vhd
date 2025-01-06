library IEEE;
use ieee.std_logic_1164.all;

entity permissionmachine is
    port (
        clk: in std_logic; -- Klocksignal
        reset: in std_logic; -- Återställningssignal
        X: in std_logic; -- Insignal för riktning
        y: out std_logic_vector(1 downto 0); -- Utgång för Gray-kod med 2 bitar.
		Q1: out std_logic; -- Individuell utgång för bit 1 av tillståndet
        Q0: out std_logic  -- Individuell utgång för bit 0 av tillståndet
       
    );
end permissionmachine;

architecture Behavioral of permissionmachine is
    signal state: std_logic_vector(1 downto 0) := "00"; -- Signal för aktuellt tillstånd
begin
    process(clk, reset) -- Asynkront betyder att rising-edge är första villkoret.
    begin
        if reset = '1' then
            state <= "00"; -- Återställning
        elsif rising_edge(clk) then -- Räkning sker på stigande klockkant
            if X = '0' then
                -- Räkning framåt
                case state is
                    when "00" => state <= "01";
                    when "01" => state <= "11";
                    when "11" => state <= "10";
                    when "10" => state <= "00";
                    when others => state <= "00";
                end case;
            else
                -- Räkning bakåt
                case state is
                    when "00" => state <= "10";
                    when "10" => state <= "11";
                    when "11" => state <= "01";
                    when "01" => state <= "00";
                    when others => state <= "00";
                end case;
            end if;
        end if;
    end process;
    
    -- Kopiera tillståndet till Gray-utgången
    y <= state;
    
    -- Separata utsignaler för tillståndsbitar
    Q1 <= state(1); -- MSB
    Q0 <= state(0); -- LSB
end Behavioral;
