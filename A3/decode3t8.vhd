----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/05/2025 11:06:55 AM
-- Design Name: 
-- Module Name: decode3t8 - Behavioral
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

entity decode3t8 is PORT(
G1, G2A_L, G2B_L, A, B, C: IN STD_LOGIC; 
Y0_L, Y1_L, Y2_L, Y3_L, Y4_L, Y5_L, Y6_L, Y7_L: OUT STD_LOGIC); 
--  Port ( );
end decode3t8;

architecture Dataflow of decode3t8 is
signal G2A, G2B, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7: STD_LOGIC;
begin
    G2A <= (not G2A_L);
    G2B <= (not G2B_L);
    Y0 <= G1 and G2A and G2B and (not C) and (not B) and (not A);
    Y1 <= G1 and G2A and G2B and (not C) and (not B) and A;
    Y2 <= G1 and G2A and G2B and (not C) and B and (not A);
    Y3 <= G1 and G2A and G2B and (not C) and B and A;
    Y4 <= G1 and G2A and G2B and C and (not B) and (not A);
    Y5 <= G1 and G2A and G2B and C and (not B) and A;
    Y6 <= G1 and G2A and G2B and C and B and (not A);
    Y7 <= G1 and G2A and G2B and C and B and A;
    --Invert Outputs
    Y0_L <= (not Y0);
    Y1_L <= (not Y1);
    Y2_L <= (not Y2);
    Y3_L <= (not Y3);
    Y4_L <= (not Y4);
    Y5_L <= (not Y5);
    Y6_L <= (not Y6);
    Y7_L <= (not Y7);
end Dataflow;

