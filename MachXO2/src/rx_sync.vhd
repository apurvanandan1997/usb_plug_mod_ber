library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library machxo2;
use machxo2.all;

entity rx_sync is
    port(
        rstn     : in  std_logic;
        clk      : in  std_logic;
        init     : in  std_logic;
        lock     : in  std_logic;
        uddcntln : out std_logic;
        freeze   : out std_logic;
        rx_stop  : out std_logic;
        rx_reset : out std_logic;
        rx_start : out std_logic);
end rx_sync;

architecture rtl of rx_sync is

    component INV
        port (
            A : in  std_logic;
            Z : out std_logic
        );
    end component;

    component FD1S3BX
        port (
            D  : in  std_logic;
            CK : in  std_logic;
            PD : in  std_logic;
            Q  : out std_logic
        );
    end component;

    component FD1S3DX
        port (
            D  : in  std_logic;
            CK : in  std_logic;
            CD : in  std_logic;
            Q  : out std_logic
        );
    end component;


    component FD1P3DX
        port (
            D  : in  std_logic;
            SP : in  std_logic;
            CK : in  std_logic;
            CD : in  std_logic;
            Q  : out std_logic
        );
    end component;

    component PFUMX
        port (
            ALUT : in  std_logic;
            BLUT : in  std_logic;
            C0   : in  std_logic;
            Z    : out std_logic
        );
    end component;

    signal STATE                : std_logic_vector(5 downto 0);
    signal STATE_NS             : std_logic_vector(1 downto 0);
    signal STATE_NS_I_1         : std_logic_vector(1 to 1);
    signal STATE_NS_I_X1_1      : std_logic_vector(0 to 0);
    signal STATE_NS_I_MB_1      : std_logic_vector(0 to 0);
    signal CTRL_CNT             : std_logic_vector(2 downto 0);
    signal CTRL_CNT_N0          : std_logic ;
    signal CTRL_CNT_N1          : std_logic ;
    signal CTRL_CNTE_0          : std_logic_vector(2 to 2);
    signal CTRL_CNT_FAST        : std_logic_vector(2 to 2);
    signal CTRL_CNTE_0_FAST     : std_logic_vector(2 to 2);
    signal CTRL_CNT_N0_0_S_SX   : std_logic ;
    signal CTRL_CNT_N1_0_S_0_X0 : std_logic ;
    signal CTRL_CNT_N1_0_S_0_X1 : std_logic ;

    signal UDDCNTLNE_0      : std_logic ;
    signal UDDCNTLN_3       : std_logic ;
    signal FREEZEE_0        : std_logic ;
    signal FREEZE_RNO_0     : std_logic ;
    signal FREEZE_4         : std_logic ;
    signal RX_STOPE_0       : std_logic ;
    signal RX_STOP_5        : std_logic ;
    signal RX_STARTE_0      : std_logic ;
    signal RX_STARTE_0_FAST : std_logic ;
    signal RX_START_6       : std_logic ;
    signal RX_START_FAST    : std_logic ;
    signal LOCK_P1          : std_logic ;
    signal LOCK_P2          : std_logic ;
    signal LOCK_P2_FAST     : std_logic ;

    signal N_118_LI       : std_logic ;
    signal N_137          : std_logic ;
    signal N_161_I        : std_logic ;
    signal N_166          : std_logic ;
    signal N_169_I        : std_logic ;
    signal N_170_I        : std_logic ;
    signal N_171_I        : std_logic ;
    signal N_172_I        : std_logic ;
    signal N_169_I_SX     : std_logic ;
    signal G0_1_S_FAST_SX : std_logic ;
    signal G0_1_S_SX      : std_logic ;
    signal RSTN_I         : std_logic ;
begin

    RSTN_RNIB582 : INV
        port map (
            A => rstn,
            Z => RSTN_I
        );

    UDDCNTLN_REG_Z104 : FD1S3BX
        port map (
            D  => UDDCNTLNE_0,
            CK => clk,
            PD => RSTN_I,
            Q  => UDDCNTLN_3
        );

    STATE0_REG_Z106 : FD1S3BX
        port map (
            D  => STATE_NS(0),
            CK => clk,
            PD => RSTN_I,
            Q  => STATE(0)
        );

    STATE1_REG_Z108 : FD1S3DX
        port map (
            D  => STATE_NS(1),
            CK => clk,
            CD => RSTN_I,
            Q  => STATE(1)
        );

    STAT2_REG_Z110 : FD1S3DX
        port map (
            D  => N_172_I,
            CK => clk,
            CD => RSTN_I,
            Q  => STATE(2)
        );

    STAT3_REG_Z112 : FD1S3DX
        port map (
            D  => N_171_I,
            CK => clk,
            CD => RSTN_I,
            Q  => STATE(3)
        );

    STAT4_REG_Z114 : FD1S3DX
        port map (
            D  => N_170_I,
            CK => clk,
            CD => RSTN_I,
            Q  => STATE(4)
        );

    STAT5_REG_Z116 : FD1S3DX
        port map (
            D  => N_169_I,
            CK => clk,
            CD => RSTN_I,
            Q  => STATE(5)
        );

    RX_STOP_REG_Z118 : FD1S3DX
        port map (
            D  => RX_STOPE_0,
            CK => clk,
            CD => RSTN_I,
            Q  => RX_STOP_5
        );

    RX_START_FAST_REG_Z120 : FD1S3DX
        port map (
            D  => RX_STARTE_0_FAST,
            CK => clk,
            CD => RSTN_I,
            Q  => RX_START_FAST
        );

    RX_START_REG_Z122 : FD1S3DX
        port map (
            D  => RX_STARTE_0,
            CK => clk,
            CD => RSTN_I,
            Q  => RX_START_6
        );

    RX_RESET_REG_Z124 : FD1S3DX
        port map (
            D  => STATE(2),
            CK => clk,
            CD => RSTN_I,
            Q  => rx_reset
        );

    LOCK_P2_FAST_REG_Z126 : FD1S3DX
        port map (
            D  => LOCK_P1,
            CK => clk,
            CD => RSTN_I,
            Q  => LOCK_P2_FAST
        );

    LOCK_P2_REG_Z128 : FD1S3DX
        port map (
            D  => LOCK_P1,
            CK => clk,
            CD => RSTN_I,
            Q  => LOCK_P2
        );

    LOCK_P1_REG_Z130 : FD1S3DX
        port map (
            D  => lock,
            CK => clk,
            CD => RSTN_I,
            Q  => LOCK_P1
        );

    FREEZE_REG_Z132 : FD1S3DX
        port map (
            D  => FREEZEE_0,
            CK => clk,
            CD => RSTN_I,
            Q  => FREEZE_4
        );

    CTRL_CNT0_REG_Z134 : FD1P3DX
        port map (
            D  => CTRL_CNT_N0,
            SP => N_161_I,
            CK => clk,
            CD => RSTN_I,
            Q  => CTRL_CNT(0)
        );

    CTRL_CNT1_REG_Z136 : FD1P3DX
        port map (
            D  => CTRL_CNT_N1,
            SP => N_161_I,
            CK => clk,
            CD => RSTN_I,
            Q  => CTRL_CNT(1)
        );

    CTRL_CNT_FAST2_REG_Z138 : FD1S3DX
        port map (
            D  => CTRL_CNTE_0_FAST(2),
            CK => clk,
            CD => RSTN_I,
            Q  => CTRL_CNT_FAST(2)
        );

    CTRL_CNT2_REG_Z140 : FD1S3DX
        port map (
            D  => CTRL_CNTE_0(2),
            CK => clk,
            CD => RSTN_I,
            Q  => CTRL_CNT(2)
        );

    CTRL_CNT_N1_0_S_0 : PFUMX
        port map (
            ALUT => CTRL_CNT_N1_0_S_0_X1,
            BLUT => CTRL_CNT_N1_0_S_0_X0,
            C0   => CTRL_CNT(1),
            Z    => CTRL_CNT_N1
        );

    N_118_LI <= not CTRL_CNT(0) and CTRL_CNT(1) and not CTRL_CNT_FAST(2);
    N_137    <= (not RX_START_6 and STATE(5)) or (init and LOCK_P2 and STATE(5));
    N_161_I  <= (not CTRL_CNT_FAST(2)) or (not CTRL_CNT(1)) or (STATE(0));
    N_166    <= (not LOCK_P2_FAST and RX_START_6) or (not init and RX_START_6);
    N_169_I  <= N_137 or N_169_I_SX;
    N_170_I  <= (N_118_LI and STATE(3)) or (not N_118_LI and not N_166 and STATE(4));
    N_171_I  <= (N_118_LI and STATE(2)) or (not N_118_LI and not N_166 and STATE(3));
    N_172_I  <= (N_118_LI and STATE(1)) or (not N_118_LI and not N_166 and STATE(2));

    N_169_I_SX  <= not CTRL_CNT(0) and CTRL_CNT(1) and not CTRL_CNT(2) and STATE(4);
    STATE_NS(0) <= (not LOCK_P2 and not STATE(0) and not STATE_NS_I_MB_1(0)) or
        (not init and not STATE_NS_I_MB_1(0)) or (not init and STATE(0));

    STATE_NS(1) <= (STATE(0) and not STATE_NS_I_1(1)) or
        (not N_118_LI and STATE(1) and not STATE_NS_I_1(1));

    STATE_NS_I_1(1) <= (not LOCK_P2 and RX_START_6 and not STATE(0)) or
        (not init and RX_START_6) or (not init and STATE(0));

    STATE_NS_I_MB_1(0) <= (not CTRL_CNT(1) and not RX_START_FAST) or
        (CTRL_CNT(0) and not RX_START_FAST) or
        (not RX_START_FAST and STATE_NS_I_X1_1(0)) or
        (not CTRL_CNT(0) and CTRL_CNT(1) and STATE_NS_I_X1_1(0));

    STATE_NS_I_X1_1(0) <= (not RX_START_FAST) or
        (not CTRL_CNT_FAST(2) and not STATE(5));

    RX_STARTE_0 <= (not CTRL_CNT(0) and CTRL_CNT(1) and not G0_1_S_SX) or
        (not G0_1_S_SX and RX_START_6);

    RX_STARTE_0_FAST <= (not CTRL_CNT(0) and CTRL_CNT(1) and not G0_1_S_FAST_SX)
        or (not G0_1_S_FAST_SX and RX_START_FAST);

    UDDCNTLNE_0  <= not STATE(2) and UDDCNTLN_3;
    RX_STOPE_0   <= (RX_STOP_5 and not STATE(4)) or (STATE(2));
    FREEZE_RNO_0 <= not CTRL_CNT(0) and not CTRL_CNT(2) and STATE(4);
    FREEZEE_0    <= (not CTRL_CNT(1) and FREEZE_4) or
        (not FREEZE_RNO_0 and FREEZE_4) or (STATE(1));

    CTRL_CNTE_0_FAST(2) <= (CTRL_CNT(0) and CTRL_CNT(1) and not STATE(0))
        or (CTRL_CNT_FAST(2) and not STATE(0));

    CTRL_CNTE_0(2) <= (CTRL_CNT(0) and CTRL_CNT(1) and not STATE(0))
        or (CTRL_CNT(2) and not STATE(0));

    CTRL_CNT_N0 <= (not CTRL_CNT(1) and not CTRL_CNT_N0_0_S_SX) or
        (CTRL_CNT(2) and not CTRL_CNT_N0_0_S_SX) or
        (not CTRL_CNT_N0_0_S_SX and STATE(5));

    CTRL_CNT_N0_0_S_SX   <= (CTRL_CNT(0)) or (STATE(0));
    CTRL_CNT_N1_0_S_0_X0 <= CTRL_CNT(0) and not STATE(0);
    CTRL_CNT_N1_0_S_0_X1 <= (not CTRL_CNT(0) and CTRL_CNT(2) and not STATE(0))
        or (not CTRL_CNT(0) and not STATE(0) and STATE(5));

    G0_1_S_FAST_SX <= (not STATE(5)) or (not LOCK_P2 and not RX_START_FAST)
        or (not CTRL_CNT(2) and not RX_START_FAST);

    G0_1_S_SX <= (not STATE(5)) or (not LOCK_P2 and not RX_START_6)
        or (not CTRL_CNT(2) and not RX_START_6);

    uddcntln <= UDDCNTLN_3;
    freeze   <= FREEZE_4;
    rx_stop  <= RX_STOP_5;
    rx_start <= RX_START_6;

end rtl;

