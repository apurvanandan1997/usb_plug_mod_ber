library IEEE;
use IEEE.std_logic_1164.all;
library MACHXO2;
use MACHXO2.all;

entity ddrx4 is
    port (
        clk          : in  std_logic;
        clk_s        : in  std_logic;
        alignwd      : in  std_logic;
        dqsdll_reset : in  std_logic;
        freeze       : in  std_logic;
        init         : in  std_logic;
        lock         : out std_logic;
        reset        : in  std_logic;
        rx_ready     : out std_logic;
        sclk         : out std_logic;
        uddcntln     : in  std_logic;
        datain       : in  std_logic_vector(4 downto 0);
        q            : out std_logic_vector(39 downto 0)
    );
end ddrx4;

architecture Structure of ddrx4 is

    -- internal signal declarations
    signal sclk_t      : std_logic;
    signal cdiv1       : std_logic;
    signal rx_reset    : std_logic;
    signal xstop       : std_logic;
    signal freeze_i    : std_logic;
    signal uddcntln_i  : std_logic;
    signal reset_inv   : std_logic;
    signal eclki       : std_logic;
    signal dqsdel      : std_logic;
    signal lock_chk    : std_logic;
    signal freeze_t    : std_logic;
    signal uddcntln_t  : std_logic;
    signal eclko       : std_logic;
    signal buf_clk     : std_logic;

    signal q4          : std_logic_vector(7 downto 0);
    signal q3          : std_logic_vector(7 downto 0);
    signal q2          : std_logic_vector(7 downto 0);
    signal q1          : std_logic_vector(7 downto 0);
    signal q0          : std_logic_vector(7 downto 0);
    signal dataini_t   : std_logic_vector(4 downto 0);
    signal buf_dataini : std_logic_vector(4 downto 0);

    -- local component declarations
    component AND2
        port (
            A : in  std_logic;
            B : in  std_logic;
            Z : out std_logic
        );
    end component;

    component INV
        port (
            A : in  std_logic;
            Z : out std_logic
        );
    end component;

    component OR2
        port (
            A : in  std_logic;
            B : in  std_logic;
            Z : out std_logic
        );
    end component;

    component IB
        port (
            I : in  std_logic;
            O : out std_logic
        );
    end component;

    component IDDRX4B
        port (
            D       : in  std_logic;
            ECLK    : in  std_logic;
            SCLK    : in  std_logic;
            RST     : in  std_logic;
            ALIGNWD : in  std_logic;
            Q0      : out std_logic;
            Q1      : out std_logic;
            Q2      : out std_logic;
            Q3      : out std_logic;
            Q4      : out std_logic;
            Q5      : out std_logic;
            Q6      : out std_logic;
            Q7      : out std_logic
        );
    end component;

    component DQSDLLC
        generic (
            FORCE_MAX_DELAY  : in String;
            FIN              : in String;
            LOCK_SENSITIVITY : in String
        );
        port (
            CLK      : in  std_logic;
            RST      : in  std_logic;
            UDDCNTLN : in  std_logic;
            FREEZE   : in  std_logic;
            LOCK     : out std_logic;
            DQSDEL   : out std_logic
        );
    end component;

    component DELAYE
        generic (
            DEL_VALUE : in String;
            DEL_MODE  : in String
        );
        port (
            A : in  std_logic;
            Z : out std_logic
        );
    end component;

    component DLLDELC
        port (
            CLKI   : in  std_logic;
            DQSDEL : in  std_logic;
            CLKO   : out std_logic
        );
    end component;

    component CLKDIVC
        generic (
            DIV : in String
        );
        port (
            RST     : in  std_logic;
            CLKI    : in  std_logic;
            ALIGNWD : in  std_logic;
            CDIV1   : out std_logic;
            CDIVX   : out std_logic
        );

    end component;

    component ECLKSYNCA
        port (
            ECLKI : in  std_logic;
            STOP  : in  std_logic;
            ECLKO : out std_logic
        );
    end component;

    component rx_sync
        port (
            rstn     : in  std_logic;
            clk      : in  std_logic;
            init     : in  std_logic;
            lock     : in  std_logic;
            uddcntln : out std_logic;
            freeze   : out std_logic;
            rx_stop  : out std_logic;
            rx_reset : out std_logic;
            rx_start : out std_logic
        );
    end component;

    attribute IO_TYPE : string;
    attribute IO_TYPE of Inst2_IB  : label is "LVDS25";
    attribute IO_TYPE of Inst1_IB4 : label is "LVDS25";
    attribute IO_TYPE of Inst1_IB3 : label is "LVDS25";
    attribute IO_TYPE of Inst1_IB2 : label is "LVDS25";
    attribute IO_TYPE of Inst1_IB1 : label is "LVDS25";
    attribute IO_TYPE of Inst1_IB0 : label is "LVDS25";

    attribute syn_keep : boolean;
    attribute NGD_DRC_MASK : integer;
    attribute NGD_DRC_MASK of Structure : architecture is 1;

begin
    -- component instantiation statements
    INV_0 : INV
        port map (
            A => reset,
            Z => reset_inv
        );

    AND2_t1 : AND2
        port map (
            A => uddcntln,
            B => uddcntln_i,
            Z => uddcntln_t
        );

    OR2_t0 : OR2
        port map (
            A => freeze,
            B => freeze_i,
            Z => freeze_t
        );

    Inst8_IDDRX4B4 : IDDRX4B
        port map (
            D       => dataini_t(4),
            ECLK    => eclko,
            SCLK    => sclk_t,
            RST     => rx_reset,
            ALIGNWD => alignwd,
            Q0      => q4(0),
            Q1      => q4(1),
            Q2      => q4(2),
            Q3      => q4(3),
            Q4      => q4(4),
            Q5      => q4(5),
            Q6      => q4(6),
            Q7      => q4(7)
        );

    Inst8_IDDRX4B3 : IDDRX4B
        port map (
            D       => dataini_t(3),
            ECLK    => eclko,
            SCLK    => sclk_t,
            RST     => rx_reset,
            ALIGNWD => alignwd,
            Q0      => q3(0),
            Q1      => q3(1),
            Q2      => q3(2),
            Q3      => q3(3),
            Q4      => q3(4),
            Q5      => q3(5),
            Q6      => q3(6),
            Q7      => q3(7)
        );

    Inst8_IDDRX4B2 : IDDRX4B
        port map (
            D       => dataini_t(2),
            ECLK    => eclko,
            SCLK    => sclk_t,
            RST     => rx_reset,
            ALIGNWD => alignwd,
            Q0      => q2(0),
            Q1      => q2(1),
            Q2      => q2(2),
            Q3      => q2(3),
            Q4      => q2(4),
            Q5      => q2(5),
            Q6      => q2(6),
            Q7      => q2(7)
        );

    Inst8_IDDRX4B1 : IDDRX4B
        port map (
            D       => dataini_t(1),
            ECLK    => eclko,
            SCLK    => sclk_t,
            RST     => rx_reset,
            ALIGNWD => alignwd,
            Q0      => q1(0),
            Q1      => q1(1),
            Q2      => q1(2),
            Q3      => q1(3),
            Q4      => q1(4),
            Q5      => q1(5),
            Q6      => q1(6),
            Q7      => q1(7)
        );

    Inst8_IDDRX4B0 : IDDRX4B
        port map (
            D       => dataini_t(0),
            ECLK    => eclko,
            SCLK    => sclk_t,
            RST     => rx_reset,
            ALIGNWD => alignwd,
            Q0      => q0(0),
            Q1      => q0(1),
            Q2      => q0(2),
            Q3      => q0(3),
            Q4      => q0(4),
            Q5      => q0(5),
            Q6      => q0(6),
            Q7      => q0(7)
        );

    Inst7_CLKDIVC : CLKDIVC
        generic map (
            DIV => "4.0"
        )
        port map (
            RST     => rx_reset,
            CLKI    => eclko,
            ALIGNWD => alignwd,
            CDIV1   => cdiv1,
            CDIVX   => sclk_t);

    Inst6_ECLKSYNCA : ECLKSYNCA
        port map (
            ECLKI => eclki,
            STOP  => xstop,
            ECLKO => eclko
        );

    Inst5_rx_sync : rx_sync
        port map (
            rstn     => reset_inv,
            clk      => clk_s,
            init     => init,
            lock     => lock_chk,
            uddcntln => uddcntln_i,
            freeze   => freeze_i,
            rx_stop  => xstop,
            rx_reset => rx_reset,
            rx_start => rx_ready
        );

    Inst4_DLLDELC : DLLDELC
        port map (
            CLKI   => buf_clk,
            DQSDEL => dqsdel,
            CLKO   => eclki
        );

    Inst3_DQSDLLC : DQSDLLC
        generic map (
            FORCE_MAX_DELAY  => "NO",
            FIN => "375.0",
            LOCK_SENSITIVITY => "LOW"
        )
        port map (
            CLK      => eclko,
            RST      => dqsdll_reset,
            UDDCNTLN => uddcntln_t,
            FREEZE   => freeze_t,
            LOCK     => lock_chk,
            DQSDEL   => dqsdel
        );

    udel_dataini4 : DELAYE
        generic map (
            DEL_VALUE => "DELAY8",
            DEL_MODE  => "USER_DEFINED"
        )
        port map (
            A => buf_dataini(4),
            Z => dataini_t(4)
        );

    udel_dataini3 : DELAYE
        generic map (
            DEL_VALUE => "DELAY8",
            DEL_MODE  => "USER_DEFINED"
        )
        port map (
            A => buf_dataini(3),
            Z => dataini_t(3)
        );

    udel_dataini2 : DELAYE
        generic map (
            DEL_VALUE => "DELAY8",
            DEL_MODE  => "USER_DEFINED"
        )
        port map (
            A => buf_dataini(2),
            Z => dataini_t(2)
        );

    udel_dataini1 : DELAYE
        generic map (
            DEL_VALUE => "DELAY8",
            DEL_MODE  => "USER_DEFINED"
        )
        port map (
            A => buf_dataini(1),
            Z => dataini_t(1)
        );

    udel_dataini0 : DELAYE
        generic map (
            DEL_VALUE => "DELAY8",
            DEL_MODE  => "USER_DEFINED"
        )
        port map (
            A => buf_dataini(0),
            Z => dataini_t(0)
        );

    Inst2_IB : IB
        port map (
            I => clk,
            O => buf_clk
        );

    Inst1_IB4 : IB
        port map (
            I => datain(4),
            O => buf_dataini(4)
        );

    Inst1_IB3 : IB
        port map (
            I => datain(3),
            O => buf_dataini(3)
        );

    Inst1_IB2 : IB
        port map (
            I => datain(2),
            O => buf_dataini(2)
        );

    Inst1_IB1 : IB
        port map (
            I => datain(1),
            O => buf_dataini(1)
        );

    Inst1_IB0 : IB
        port map (
            I => datain(0),
            O => buf_dataini(0)
        );

    q <= q4 & q3 & q2 & q1 & q0;
    sclk  <= sclk_t;
    lock  <= lock_chk;

end Structure;

