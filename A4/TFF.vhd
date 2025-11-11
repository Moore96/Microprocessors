----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2025 09:34:13 AM
-- Design Name: 
-- Module Name: TFF - Behavioral
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

entity TFF is
    Port (
        T     : in  STD_LOGIC;   -- Data input
        CLK   : in  STD_LOGIC;   -- Clock
        Enable: in  STD_LOGIC;
        Q     : out STD_LOGIC;   -- Level-sensitive output
        Q_not  : out STD_LOGIC
    );
end TFF;

architecture Behavioral of TFF is
    signal Q_int : std_logic := '0';
begin
    process(CLK) begin
        if falling_edge(CLK) then
            if (Enable='1') and (T='1') then
                Q_int <= not(Q_int);
            end if;
        end if;
    end process;
    Q <= Q_int;
    Q_not <= not(Q_int);
end Behavioral;
