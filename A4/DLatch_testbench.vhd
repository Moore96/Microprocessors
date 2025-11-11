library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
entity tb_DLatch is 
end tb_DLatch; 

architecture Behavioral of tb_DLatch is 
-- Component declaration matching your top-level DLatch 
component DLatch is 
    Port ( 
        D : in STD_LOGIC; 
        CLK : in STD_LOGIC; 
        Qa : out STD_LOGIC; 
        Qb : out STD_LOGIC; 
        Qc : out STD_LOGIC 
    ); 
end component; 

-- Signals to connect to DUT 
signal D_tb, Clock_tb : STD_LOGIC := '0'; 
signal Qa_tb, Qb_tb, Qc_tb : STD_LOGIC := '0'; 

begin 
-- Instantiate DUT 
DUT: DLatch 
    port map ( 
        D => D_tb, 
        CLK => Clock_tb, 
        Qa => Qa_tb, 
        Qb => Qb_tb, 
        Qc => Qc_tb 
    ); 
    
-- Clock generation: 16 ns period 
clk_process: process 
begin 
    while true loop 
        Clock_tb <= '0'; wait for 6 ns; 
        Clock_tb <= '1'; wait for 6 ns; 
    end loop; 
end process; 

-- Stimulus for D input 
stim_proc: process 
begin 
    wait for 5 ns; 
    D_tb <= '1'; wait for 2 ns; 
    D_tb <= '0'; wait for 1 ns; 
    D_tb <= '1'; wait for 2 ns; 
    D_tb <= '0'; wait for 3 ns; 
    D_tb <= '1'; wait for 2 ns; 
    D_tb <= '0'; wait for 1 ns; 
    D_tb <= '1'; wait for 1 ns; 
    D_tb <= '0'; wait for 2 ns; 
    D_tb <= '1'; wait for 1 ns; 
    D_tb <= '0'; wait for 1 ns; 
    D_tb <= '1'; wait for 4 ns; 
    D_tb <= '0'; wait for 6 ns; 
    wait; -- stop simulation 
end process; 
end Behavioral;