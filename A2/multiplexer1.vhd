----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/05/2025 10:16:15 AM
-- Design Name: 
-- Module Name: multiplexer1 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplexer1 is
port(
x0,x1,sel:in std_logic;
y : out std_logic
);
end multiplexer1;
architecture mux_behavioral of multiplexer1 is
begin
process(sel,x0,x1)
begin
    if sel = '0' then
        y <= x0;
    else
        y <= x1;
    end if;
--y <= x0 when sel = '0' else x1;
end process;
end mux_behavioral;
