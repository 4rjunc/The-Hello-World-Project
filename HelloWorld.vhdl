library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity HelloWorld is
    Port (
        LED : out STD_LOGIC := '0'
    );
end HelloWorld;

architecture Behavioral of HelloWorld is
    signal Counter : integer := 0;
    signal Clock   : STD_LOGIC := '0';
    constant Clock_Divisor : integer := 25000000; -- Adjust for your clock frequency
begin
    process
    begin
        wait until rising_edge(Clock);
        if Counter = Clock_Divisor - 1 then
            LED <= not LED;
            Counter <= 0;
        else
            Counter <= Counter + 1;
        end if;
    end process;

    process
    begin
        Clock <= '0';
        wait for 10 ns; -- Adjust for your clock frequency
        Clock <= '1';
        wait for 10 ns; -- Adjust for your clock frequency
    end process;
end Behavioral;

