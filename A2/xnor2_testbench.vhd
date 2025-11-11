----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/05/2025 10:11:24 AM
-- Design Name: 
-- Module Name: xnor2_testbench - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;

entity XNOR2_tb is
-- Testbench has no ports
end entity XNOR2_tb;

architecture TB of XNOR2_tb is

    -- Component declaration for the Unit Under Test (UUT)
    component XNOR2 is
        port (
            A : in std_logic;
            B : in std_logic;
            Z : out std_logic
        );
    end component;

    -- Testbench signals
    signal A_tb : std_logic := '0';
    signal B_tb : std_logic := '0';
    signal Z_tb : std_logic;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: XNOR2
        port map (
            A => A_tb,
            B => B_tb,
            Z => Z_tb
        );

    -- Test process
    stim_proc: process
    begin
        -- Test all input combinations
        A_tb <= '0'; B_tb <= '0';
        wait for 10 ns;

        A_tb <= '0'; B_tb <= '1';
        wait for 10 ns;

        A_tb <= '1'; B_tb <= '0';
        wait for 10 ns;

        A_tb <= '1'; B_tb <= '1';
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

end architecture TB;
