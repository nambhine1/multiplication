library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplication is
    Port (
        a : in std_logic_vector (3 downto 0);
        b : in std_logic_vector (3 downto 0);
        mult : out std_logic_vector (7 downto 0)
    );
end multiplication;

architecture Behavioral of multiplication is
begin
    mult <= std_logic_vector(unsigned(a)  *  unsigned(a));
end Behavioral;
