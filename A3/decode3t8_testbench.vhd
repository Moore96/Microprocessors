----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/05/2025 01:08:05 PM
-- Design Name: 
-- Module Name: decode3t8_testbench - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_decode3t8 is
-- Testbench has no ports
end tb_decode3t8;

architecture Behavioral of tb_decode3t8 is
    signal EN, TN : std_logic_vector(2 downto 0) := "000";
    -- Component declaration of the unit under test (UUT)
    component decode3t8
        port(
            G1, G2A_L, G2B_L, A, B, C: in std_logic;
            Y0_L, Y1_L, Y2_L, Y3_L, Y4_L, Y5_L, Y6_L, Y7_L: out std_logic
        );
    end component;

    -- Test signals
    signal G1, G2A_L, G2B_L, A, B, C: std_logic := '0';
    signal Y0_L, Y1_L, Y2_L, Y3_L, Y4_L, Y5_L, Y6_L, Y7_L: std_logic;

begin

    -- Instantiate the UUT
    UUT: decode3t8
        port map(
            G1 => G1,
            G2A_L => G2A_L,
            G2B_L => G2B_L,
            A => A,
            B => B,
            C => C,
            Y0_L => Y0_L,
            Y1_L => Y1_L,
            Y2_L => Y2_L,
            Y3_L => Y3_L,
            Y4_L => Y4_L,
            Y5_L => Y5_L,
            Y6_L => Y6_L,
            Y7_L => Y7_L
        );
    
    -- Test process
    stim_proc: process
    begin
        -- Enable decoder
        EN <= "000";
        for j in 0 to 7 loop
        G1 <= EN(2);
        G2A_L <= EN(1);
        G2B_L <= EN(0);
        TN <= "000";
        -- Cycle through all 3-bit input combinations
        for i in 0 to 7 loop
            A <= TN(0);
            B <= TN(1);
            C <= TN(2);
            TN <= std_logic_vector(unsigned(TN) + 1);
            wait for 10 ns;
        end loop;
        EN <= std_logic_vector(unsigned(EN) + 1);
        end loop;
        -- Stop simulation
        wait;
    end process;

end Behavioral;