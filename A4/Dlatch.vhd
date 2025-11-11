library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- =========================
-- Top-level DLatch
-- =========================
entity DLatch is
    Port (
        D     : in  STD_LOGIC;   -- Data input
        CLK   : in  STD_LOGIC;   -- Clock
        Qa    : out STD_LOGIC;   -- Level-sensitive output
        Qb    : out STD_LOGIC;   -- Rising-edge output
        Qc    : out STD_LOGIC    -- Falling-edge output
    );
end DLatch;

architecture Behavioral of DLatch is
    signal Qa_int, Qb_int, Qc_int : std_logic := '0';
begin
    -- Level-sensitive latch
    process(D, CLK)
    begin
        if CLK = '1' then
            Qa_int <= D;
        end if;
    end process;

    -- Rising-edge latch
    process(CLK)
    begin
        if rising_edge(CLK) then
            Qb_int <= D;
        end if;
    end process;

    -- Falling-edge latch
    process(CLK)
    begin
        if falling_edge(CLK) then
            Qc_int <= D;
        end if;
    end process;

    Qa <= Qa_int;
    Qb <= Qb_int;
    Qc <= Qc_int;

end Behavioral;