----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2025 10:12:52 AM
-- Design Name: 
-- Module Name: TFF_testbench - Behavioral
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

entity TFF_testbench is
--  Port ( );
end TFF_testbench;

architecture Behavioral of TFF_testbench is
component TFF is 
    Port ( 
        T     : in  STD_LOGIC;   -- Data input
        CLK   : in  STD_LOGIC;   -- Clock
        Enable: in  STD_LOGIC;
        Q     : out STD_LOGIC;   -- Level-sensitive output
        Q_not  : out STD_LOGIC
    ); 
end component; 
    signal T_tb, Clock_tb, Enable_tb, Q_tb, Q_not_tb : std_logic := '0';
begin
TST: TFF 
    port map ( 
        T => T_tb, 
        CLK => Clock_tb, 
        Enable => Enable_tb, 
        Q => Q_tb, 
        Q_not => Q_not_tb 
    ); 
    
clk_process: process 
begin 
    while true loop 
        Clock_tb <= '0'; wait for 20 ns; 
        Clock_tb <= '1'; wait for 20 ns; 
    end loop; 
end process; 

stim_proc: process 
begin 
    wait for 10 ns; 
    T_tb <= '1'; wait for 20 ns; 
    T_tb <= '0'; wait for 20 ns; 
    T_tb <= '1'; wait for 20 ns; 
    T_tb <= '0'; wait for 20 ns;
    T_tb <= '1'; wait for 20 ns; 
    T_tb <= '0'; wait for 20 ns;
    Enable_tb <= '1'; wait for 20 ns;
    T_tb <= '1'; wait for 20 ns; 
    T_tb <= '0'; wait for 20 ns; 
    T_tb <= '1'; wait for 20 ns; 
    T_tb <= '0'; wait for 20 ns;
    T_tb <= '1'; wait for 20 ns; 
    T_tb <= '0'; wait for 20 ns;
    T_tb <= '1'; wait for 20 ns; 
    T_tb <= '0'; wait for 20 ns; 
    T_tb <= '0'; wait for 20 ns;
    T_tb <= '0'; wait for 20 ns;    
    Enable_tb <= '0'; wait for 20 ns;
    T_tb <= '1'; wait for 20 ns; 
    T_tb <= '0'; wait for 20 ns; 
    T_tb <= '1'; wait for 20 ns; 
    T_tb <= '0'; wait for 20 ns;
    T_tb <= '1'; wait for 20 ns; 
    T_tb <= '0'; wait for 20 ns;
    wait; -- stop simulation 
end process; 

end Behavioral;
