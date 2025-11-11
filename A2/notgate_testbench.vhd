----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/05/2025 10:55:31 AM
-- Design Name: 
-- Module Name: notgate_testbench - Behavioral
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

entity multiplexer_tb is
-- No ports for testbench
end multiplexer_tb;

architecture TB of multiplexer_tb is

    -- Component declaration for UUT
    component multiplexer
        port(
            x0  : in std_logic;
            x1  : in std_logic;
            sel : in std_logic;
            y   : out std_logic
        );
    end component;

    -- Testbench signals
    signal x0_tb  : std_logic := '0';
    signal x1_tb  : std_logic := '0';
    signal sel_tb : std_logic := '0';
    signal y_tb   : std_logic;

begin

    -- Instantiate Unit Under Test (UUT)
    UUT: multiplexer
        port map (
            x0  => x0_tb,
            x1  => x1_tb,
            sel => sel_tb,
            y   => y_tb
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test all input combinations
        sel_tb <= '0'; x0_tb <= '0'; x1_tb <= '0'; wait for 10 ns;
        sel_tb <= '0'; x0_tb <= '1'; x1_tb <= '0'; wait for 10 ns;
        sel_tb <= '0'; x0_tb <= '0'; x1_tb <= '1'; wait for 10 ns;
        sel_tb <= '0'; x0_tb <= '1'; x1_tb <= '1'; wait for 10 ns;

        sel_tb <= '1'; x0_tb <= '0'; x1_tb <= '0'; wait for 10 ns;
        sel_tb <= '1'; x0_tb <= '1'; x1_tb <= '0'; wait for 10 ns;
        sel_tb <= '1'; x0_tb <= '0'; x1_tb <= '1'; wait for 10 ns;
        sel_tb <= '1'; x0_tb <= '1'; x1_tb <= '1'; wait for 10 ns;

        wait; -- End simulation
    end process;

end architecture TB;