----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/05/2025 10:54:18 AM
-- Design Name: 
-- Module Name: notgate - Behavioral
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

ENTITY notgate IS PORT(
i: IN STD_LOGIC;
o: OUT STD_LOGIC);
END notgate;
ARCHITECTURE Dataflow OF notgate IS
BEGIN
o <= not i;
END Dataflow;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY and2gate IS PORT(
i1, i2: IN STD_LOGIC;
o: OUT STD_LOGIC);
END and2gate;
ARCHITECTURE Dataflow OF and2gate IS
BEGIN
o <= i1 AND i2;
END Dataflow;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY or2gate IS PORT(
i1, i2: IN STD_LOGIC;
o: OUT STD_LOGIC);
END or2gate;
ARCHITECTURE Dataflow OF or2gate IS
BEGIN
o <= i1 OR i2;
END Dataflow;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY multiplexer IS PORT(
x0, x1, sel: IN STD_LOGIC;
y: OUT STD_LOGIC);
END multiplexer;
    ARCHITECTURE Structural OF multiplexer IS
COMPONENT notgate PORT(
i: IN STD_LOGIC;
o: OUT STD_LOGIC);
END COMPONENT;
COMPONENT and2gate PORT(
i1, i2: IN STD_LOGIC;
o: OUT STD_LOGIC);
END COMPONENT;
COMPONENT and3gate PORT(
i1, i2, i3: IN STD_LOGIC;
o: OUT STD_LOGIC);
END COMPONENT;
COMPONENT or2gate PORT(
i1, i2: IN STD_LOGIC;
o: OUT STD_LOGIC);
END COMPONENT;
SIGNAL sn, snd0, sd1: STD_LOGIC;
BEGIN
U1: notgate PORT MAP(sel,sn);
U2: and2gate PORT MAP(x0, sn, snd0);
U3: and2gate PORT MAP(x1, sel, sd1);
U4: or2gate PORT MAP(snd0, sd1, y);
END Structural;
