----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.06.2024 19:27:42
-- Design Name: 
-- Module Name: tb_muliplication - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_muliplication is
--  Port ( );
end tb_muliplication;

architecture Behavioral of tb_muliplication is
    signal a : std_logic_vector (3 downto 0);
    signal b : std_logic_vector (3 downto 0);
    signal mult : std_logic_vector (7 downto 0);
begin

inst_mult : entity work.multiplication 
  Port map (
        a => a, 
        b => b,
        mult => mult
   );
   
   -- stimulus gen 
   stimilus : process 
     begin
        a <= "0000";
        b <= "0000";
        
        for i in 0 to 15 loop 
            a <= std_logic_vector (to_unsigned (i, a'length));
            b <= std_logic_vector (to_unsigned(i, b'length));
            wait for 100 ns;
        end loop;
        report "simulation : PASSED";
        std.env.stop;
     end process stimilus;
     
--     checker : process
--        variable mult_var : integer := 0;
--        begin
--            mult_var := to_integer(unsigned(a)) * to_integer(unsigned(b));
--            if (to_integer(unsigned(mult)) /= mult_var) then
--                report "mismatched" severity failure;
--            end if;
--     end process;

end Behavioral;
