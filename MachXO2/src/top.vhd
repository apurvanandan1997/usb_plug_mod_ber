----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
-- 
-- Create Date:    00:22:57 08/05/2019 
-- Design Name: 
-- Module Name:    ft601_top
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Top module for MachXO2 gearwork
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
use ieee.std_logic_unsigned.all;

entity top is
    port (
        LED : out std_logic;

        DATA_LANE : in std_logic_vector(4 downto 0);
        CLK_LANE : in std_logic;

        FT601_CLK    : in    std_logic;
        FT601_RST_N  : out   std_logic;
        FT601_DATA   : inout std_logic_vector(31 downto 0);
        FT601_BE     : out   std_logic_vector(3 downto 0);
        FT601_RXF_N  : in    std_logic;
        FT601_TXE_N  : in    std_logic;
        FT601_WR_N   : out   std_logic;
        FT601_SIWU_N : out   std_logic;
        FT601_RD_N   : out   std_logic;
        FT601_OE_N   : out   std_logic

    );

end entity top;

architecture rtl_top of top is

    component dec_8b10b is
        port (
            reset : in std_logic ;  -- global asynchronous reset (ah)
            rbyteclk : in std_logic ;   -- master synchronous receive byte clock
            enc_data : in std_logic_vector(9 downto 0);
            dec_data : out std_logic_vector(7 downto 0);
            ctrl_ind : out std_logic
        );
    end component dec_8b10b;
    component prng_recv is
    generic(
        SEED : std_logic_vector(39 downto 0) := "1011110010111100101111001011110010111100"
    );

    port(
        clk   : in std_logic;
        ce    : in std_logic;
        reset : in std_logic;
        rng   : out std_logic_vector (39 downto 0)
    );
    end component prng_recv;

    component ilvds is
        port (
            a  : in  std_logic;
            an : in  std_logic;
            z  : out std_logic
        );
    end component ilvds;

    component async_fifo
        port (
            data        : in  std_logic_vector(31 downto 0);
            wr_clock    : in  std_logic;
            rd_clock    : in  std_logic;
            wr_en       : in  std_logic;
            rd_en       : in  std_logic;
            reset       : in  std_logic;
            rpreset     : in  std_logic;
            q           : out std_logic_vector(31 downto 0);
            empty       : out std_logic;
            full        : out std_logic;
            almost_empty : out std_logic;
            almost_full  : out std_logic
        );
    end component;

    component osch
        generic (
            nom_freq: string := "133.0"
            );
        port (
            stdby : in std_logic;
            osc: out std_logic;
            sedstdby: out std_logic
            );
        end component;

    attribute NOM_FREQ : string;
    attribute NOM_FREQ of OSCinst0 : label is "133.0";

    signal fifo_in         : std_logic_vector(31 downto 0) := (others => '0');
    signal fifo_wr_clk     : std_logic                     := '0';
    signal fifo_rd_clk     : std_logic                     := '0';
    signal fifo_wr_en      : std_logic                     := '0';
    signal fifo_rd_en      : std_logic                     := '0';
    signal fifo_rst        : std_logic                     := '0';
    signal fifo_rprst      : std_logic                     := '0';
    signal fifo_out        : std_logic_vector(31 downto 0);
    signal fifo_emp        : std_logic;
    signal fifo_full       : std_logic;
    signal fifo_almst_emp  : std_logic;
    signal fifo_almst_full : std_logic;
    
    signal rst        : std_logic;
    signal req_data   : std_logic;
    signal send_data  : std_logic_vector(31 downto 0);
    signal eclk       : std_logic;
    signal sclk       : std_logic;
    signal mode       : std_logic_vector(5 downto 0):= (others => '0');
    signal link_rdy   : std_logic;
    signal clk_int    : std_logic;
    signal data_valid : std_logic;
    signal dec_data   : std_logic_vector (39 downto 0);
    signal enc_data   : std_logic_vector (49 downto 0);
    signal rng_num    : std_logic_vector(39 downto 0);
    signal ber        : std_logic_vector(31 downto 0);
    signal sync_prng  : std_logic;
    signal ber_rdy    : std_logic;

begin

    FT601_RST_N <= '1';
    LED <= link_rdy;
    rst <= '0';
    mode(5) <= mode(4) and mode(3) and mode(2) and mode(1) and mode(0);

    fifo_rst <= not link_rdy;
    fifo_wr_en <= link_rdy and data_valid;

    send_data <= ber;--rng_num(31 downto 0) - dec_data(31 downto 0);

    sync_prng <= fifo_wr_en when dec_data = "0000000000000000000000000000000000000000" else '0' ;

    oscinst0: osch
    generic map (
        nom_freq => "133.0"
    )
    port map (
        stdby => '0',
        osc => clk_int,
        sedstdby => open
    );

    
    deser_inst : entity work.deserializer
    port map (
        eclk     => CLK_LANE,
        clk_s    => clk_int,
        reset    => rst,
        sclk     => sclk,
        link_rdy => link_rdy,
        q_valid  => data_valid,
        datain   => DATA_LANE,
        q        => enc_data
    );

    decoder_inst0 : dec_8b10b
    port map (
        reset    => rst,
        rbyteclk => sclk,
        enc_data => enc_data(9 downto 0),
        dec_data => dec_data(7 downto 0),
        ctrl_ind => mode(0)
    );

    decoder_inst1 : dec_8b10b
    port map (
        reset    => rst,
        rbyteclk => sclk,
        enc_data => enc_data(19 downto 10),
        dec_data => dec_data(15 downto 8),
        ctrl_ind => mode(1)
    );

    decoder_inst2 : dec_8b10b
    port map (
        reset    => rst,
        rbyteclk => sclk,
        enc_data => enc_data(29 downto 20),
        dec_data => dec_data(23 downto 16),
        ctrl_ind => mode(2)
    );

    decoder_inst3 : dec_8b10b
    port map (
        reset    => rst,
        rbyteclk => sclk,
        enc_data => enc_data(39 downto 30),
        dec_data => dec_data(31 downto 24),
        ctrl_ind => mode(3)
    );

    decoder_inst4 : dec_8b10b
    port map (
        reset    => rst,
        rbyteclk => sclk,
        enc_data => enc_data(49 downto 40),
        dec_data => dec_data(39 downto 32),
        ctrl_ind => mode(4)
    );
   
    prng_inst : prng_recv
        generic map (
            SEED => "1011110010111100101111001011110010111100"
        )
        port map (
            clk   => sclk,
            ce    => fifo_wr_en,
            reset => sync_prng,
            rng   => rng_num
        );

    ber_proc : entity work.calc_ber
        port map (
            byte_recvd  => dec_data,
            din_clk     => sclk,
            byte_actual => rng_num,
            en          => fifo_wr_en,
            reset       => sync_prng,
            ber         => ber
        );
        
    cdc_fifo_inst : async_fifo
        port map (
            data     => send_data,
            wr_clock => sclk,
            rd_clock => FT601_CLK,
            wr_en    => fifo_wr_en,
            rd_en    => req_data,
            reset    => rst,
            rpreset  => rst,
            q        => fifo_out,
            empty    => fifo_emp
        );

    ft601_comp : entity work.ft601 port map (
        clk => FT601_CLK,
        rst => rst,
        --led => LED,
        ft601_data   => FT601_DATA,
        ft601_be     => FT601_BE,
        ft601_rxf_n  => FT601_RXF_N,
        ft601_txe_n  => FT601_TXE_N,
        ft601_wr_n   => FT601_WR_N,
        ft601_siwu_n => FT601_SIWU_N,
        ft601_rd_n   => FT601_RD_N,
        ft601_oe_n   => FT601_OE_N,
        data_in      => fifo_out,
        fifo_rd_en   => req_data,
        fifo_emp     => fifo_emp
    );

end architecture rtl_top;