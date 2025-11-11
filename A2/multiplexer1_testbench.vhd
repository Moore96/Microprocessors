----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/05/2025 10:17:36 AM
-- Design Name: 
-- Module Name: multiplexer1_testbench - Behavioral
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

entity multiplexer1_tb is
-- Testbench has no ports
end entity multiplexer1_tb;

architecture TB of multiplexer1_tb is

    -- Component declaration for the Unit Under Test (UUT)
    component multiplexer1 is
        port(
            x0, x1, sel : in std_logic;
            y : out std_logic
        );
    end component;

    -- Testbench signals
    signal x0_tb  : std_logic := '0';
    signal x1_tb  : std_logic := '0';
    signal sel_tb : std_logic := '0';
    signal y_tb   : std_logic;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: multiplexer1
        port map (
            x0  => x0_tb,
            x1  => x1_tb,
            sel => sel_tb,
            y   => y_tb
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test all combinations of x0, x1, and sel
        -- sel selects between x0 ('0') and x1 ('1')
        
        -- sel = 0 → y = x0
        sel_tb <= '0';
        x0_tb <= '0'; x1_tb <= '0'; wait for 10 ns;
        x0_tb <= '1'; x1_tb <= '0'; wait for 10 ns;
        x0_tb <= '0'; x1_tb <= '1'; wait for 10 ns;
        x0_tb <= '1'; x1_tb <= '1'; wait for 10 ns;

        -- sel = 1 → y = x1
        sel_tb <= '1';
        x0_tb <= '0'; x1_tb <= '0'; wait for 10 ns;
        x0_tb <= '1'; x1_tb <= '0'; wait for 10 ns;
        x0_tb <= '0'; x1_tb <= '1'; wait for 10 ns;
        x0_tb <= '1'; x1_tb <= '1'; wait for 10 ns;

        -- End simulation
        wait;
    end process;

end architecture TB;
