----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/05/2025 10:49:56 AM
-- Design Name: 
-- Module Name: multiplexer2_testbench - Behavioral
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

entity multiplexer2_tb is
-- No ports for a testbench
end entity multiplexer2_tb;

architecture TB of multiplexer2_tb is

    -- Component declaration for the UUT
    component multiplexer2 is
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
    uut: multiplexer2
        port map(
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

        wait; -- Stop simulation
    end process;

end architecture TB;
