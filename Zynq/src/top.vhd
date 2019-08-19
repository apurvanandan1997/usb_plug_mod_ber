----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
-- 
-- Create Date:    17:33 June 23,2019 
-- Design Name:    USB 3.0 Plugin BER Calculation 
-- Module Name:    top
-- Project Name:   
-- Target Device:  XC5VLX110T-FF1136-1
-- Tool Version:   Xilinx ISE 14.7
-- Description:    This design is used for calculating the BER of the 6 LVDS
--                 connection from the main board of AXIOM Beta to the USB 3.0
--                 plugin module. This design is meant to run on Virtex-5 FPGA.
----------------------------------------------------------------------------------
-- This program is free software: you can redistribute it and/or
-- modify it under the terms of the GNU General Public License
-- as published by the Free Software Foundation, either version
-- 3 of the License, or (at your option) any later version.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

library unisim;
use unisim.vcomponents.all;

entity top is
    port (
        -- Data and Clock LVDS lanes
        DATA_LANE_0_P : out std_logic;
        DATA_LANE_0_N : out std_logic;
        DATA_LANE_1_P : out std_logic;
        DATA_LANE_1_N : out std_logic;
        DATA_LANE_2_P : out std_logic;
        DATA_LANE_2_N : out std_logic;
        DATA_LANE_3_P : out std_logic;
        DATA_LANE_3_N : out std_logic;
        DATA_LANE_4_P : out std_logic;
        DATA_LANE_4_N : out std_logic;
        CLK_LANE_P    : out std_logic;
        CLK_LANE_N    : out std_logic;
        I2C_SCL       : inout std_logic;
        I2C_SDA       : inout std_logic 
    --LED           : out std_logic
    );

end top;

architecture rtl of top is

    -- From the PS
    signal ps_fclk      : std_logic;
    signal ps_fclk_bufg : std_logic_vector(3 downto 0);
    signal ps_rst_n     : std_logic_vector(3 downto 0);

    -- Data Signals
    signal rng        : std_logic_vector (39 downto 0);
    signal enc10b_dat : std_logic_vector(49 downto 0);
    signal mode       : std_logic;

    -- PLL internal signals
    signal rst       : std_logic;
    signal pll1_rst  : std_logic;
    signal locked0   : std_logic;
    signal locked1   : std_logic;
    signal clkfbout0 : std_logic;
    signal clkfbout1 : std_logic;
    --signal pll0_clk  : std_logic;
    --signal pll0_bufg : std_logic;
    signal clk       : std_logic;
    signal sclk      : std_logic;
    signal clk_bufg  : std_logic;
    signal sclk_bufg : std_logic;

    -- I2C Signals
    signal i2c_sda_i : std_logic;
    signal i2c_sda_o : std_logic;
    signal i2c_sda_t : std_logic;

    signal i2c_scl_i : std_logic;
    signal i2c_scl_o : std_logic;
    signal i2c_scl_t : std_logic;

    signal i2c1_sda_i : std_logic;
    signal i2c1_sda_o : std_logic;
    signal i2c1_sda_t : std_logic;
    signal i2c1_sda_t_n : std_logic;

    signal i2c1_scl_i : std_logic;
    signal i2c1_scl_o : std_logic;
    signal i2c1_scl_t : std_logic;
    signal i2c1_scl_t_n : std_logic;

begin

    rst <= not locked1 ;--or not ps_rst_n(0);
    --LED <= not mode;
    pll1_rst <= '0';--ps_rst_n(0);--not locked0;

    PS7_stub_inst : entity work.ps7_stub
        port map (
            ps_fclk => ps_fclk_bufg,
            i2c1_sda_i => i2c1_sda_i,
            i2c1_sda_o => i2c1_sda_o,
            i2c1_sda_t_n => i2c1_sda_t_n,
            --
            i2c1_scl_i => i2c1_scl_i,
            i2c1_scl_o => i2c1_scl_o,
            i2c1_scl_t_n => i2c1_scl_t_n,
            ps_reset_n => ps_rst_n
        );


    --------------------------------------------------------------------
    -- I2C Interface
    --------------------------------------------------------------------

    i2c_sda_o <= i2c1_sda_o;
    i2c_sda_t <= i2c1_sda_t;

    i2c1_sda_i <= i2c_sda_i;
    i2c1_sda_t <= not i2c1_sda_t_n;

    IOBUF_sda_inst : IOBUF
    port map (
        I => i2c_sda_o, O => i2c_sda_i,
        T => i2c_sda_t, IO => i2c_sda );

    PULLUP_sda_inst : PULLUP
        port map ( O => i2c_sda );

    i2c_scl_o <= i2c1_scl_o;
    i2c_scl_t <= i2c1_scl_t;

    i2c1_scl_i <= i2c_scl_i;
    i2c1_scl_t <= not i2c1_scl_t_n;

    IOBUF_scl_inst : IOBUF
    port map (
        I => i2c_scl_o, O => i2c_scl_i,
        T => i2c_scl_t, IO => i2c_scl );

    PULLUP_scl_inst : PULLUP
        port map ( O => i2c_scl );
            
    ----------------------------------------------------------------------------
    -- PLL_BASE: Phase-Lock Loop Clock Circuit
    -- Virtex-5
    -- Xilinx HDL Libraries Guide, version 11.2 
    ----------------------------------------------------------------------------
    --PLL_BASE_inst0 : PLLE2_BASE
    --    generic map (
    --        CLKFBOUT_MULT      => 5,                    -- Multiplication factor for all output clocks
    --        CLKFBOUT_PHASE     => 0.0,                  -- Phase shift (degrees) of all output clocks
    --        CLKIN_PERIOD       => 10.000,               -- Clock period (ns) of input clock on CLKIN
    --      
    --        CLKOUT0_DIVIDE     => 2,                    -- Division factor for CLKOUT0 (1 to 128)
    --        CLKOUT0_DUTY_CYCLE => 0.5,                  -- Duty cycle for CLKOUT0 (0.01 to 0.99)
    --        CLKOUT0_PHASE      => 0.0,                  -- Phase shift (degrees) for CLKOUT0 (0.0 to 360.0)
    --      
    --        DIVCLK_DIVIDE => 1,                         -- Division factor for all clocks (1 to 52)
    --        BANDWIDTH          => "OPTIMIZED",          -- "HIGH", "LOW" or "OPTIMIZED"
    --        REF_JITTER1    => 0.010,                    -- Input reference jitter (0.000 to 0.999 UI%)
    --        STARTUP_WAIT => "FALSE"
    --    )
    --    port map (
    --        CLKFBIN  => clkfbout0, -- Clock feedback input
    --        CLKFBOUT => clkfbout0, -- General output feedback signal
    --        CLKIN    => USER_CLK,  -- Clock input
    --        CLKOUT0  => pll0_bufg,  -- One of six general clock output signals
    --        LOCKED   => locked0,   -- Active high PLL lock signal
    --        PWRDWN   => '0',       -- Power down PLL
    --        RST      => RESET      -- Asynchronous PLL reset
    --    );

    PLL_BASE_inst1 : PLLE2_BASE
        generic map (
            CLKFBOUT_MULT  => 18,     -- Multiplication factor for all output clocks
            CLKFBOUT_PHASE => 0.0,    -- Phase shift (degrees) of all output clocks
            CLKIN1_PERIOD  => 20.000, -- Clock period (ns) of input clock on CLKIN

            CLKOUT0_DIVIDE     => 15,  -- Division factor for CLKOUT0 (1 to 128)
            CLKOUT0_DUTY_CYCLE => 0.5, -- Duty cycle for CLKOUT0 (0.01 to 0.99)
            CLKOUT0_PHASE      => 0.0, -- Phase shift (degrees) for CLKOUT0 (0.0 to 360.0)

            CLKOUT1_DIVIDE     => 3,   -- Division factor for CLKOUT1 (1 to 128)
            CLKOUT1_DUTY_CYCLE => 0.5, -- Duty cycle for CLKOUT1 (0.01 to 0.99)
            CLKOUT1_PHASE      => 0.0, -- Phase shift (degrees) for CLKOUT1 (0.0 to 360.0)

            DIVCLK_DIVIDE => 1,           -- Division factor for all clocks (1 to 52)
            BANDWIDTH     => "OPTIMIZED", -- "HIGH", "LOW" or "OPTIMIZED"
            REF_JITTER1   => 0.010,       -- Input reference jitter (0.000 to 0.999 UI%)
            STARTUP_WAIT  => "FALSE"
        )
        port map (
            CLKFBOUT => clkfbout1,  -- General output feedback signal
            CLKFBIN  => clkfbout1,  -- Clock feedback input
            CLKIN1   => ps_fclk,    --pll0_clk,  -- Clock input
            CLKOUT0  => clk_bufg,   -- One of six general clock output signals
            CLKOUT1  => sclk_bufg,  -- One of six general clock output signals
            LOCKED   => locked1,    -- Active high PLL lock signal
            PWRDWN   => '0',        -- Power Down PLL
            RST      => pll1_rst    -- Asynchronous PLL reset
        );
    -- End of PLL_BASE_inst instantiation

    ----------------------------------------------------------------------------
    -- BUFG: Global Clock Buffer
    -- Zynq-7020
    -- Xilinx HDL Libraries Guide, version 11.2
    ----------------------------------------------------------------------------
    BUFG_inst0 : BUFG
        port map (
            O => ps_fclk,        -- 1-bit Clock buffer output
            I => ps_fclk_bufg(0) -- 1-bit Clock buffer input
        );

    BUFG_inst1 : BUFG
        port map (
            O => sclk,     -- 1-bit Clock buffer output
            I => sclk_bufg -- 1-bit Clock buffer input
        );

    BUFG_inst2 : BUFG
        port map (
            O => clk,     -- 1-bit Clock buffer output
            I => clk_bufg -- 1-bit Clock buffer input
        );

    --BUFG_inst3 : BUFG
    --    port map (
    --        O => pll0_clk,     -- 1-bit Clock buffer output
    --        I => pll0_bufg -- 1-bit Clock buffer input
    --    );
    -- End of BUFG instantiation

    ----------------------------------------------------------------------------
    --  prng_cnt: LFSR Random Number Generator (Fibonacci (32,22,2,1,0)) 
    --  With availabilty of 8-bit counter mode
    --  Copyright (C) 2014 H.Poetzl, Version 1.0
    ----------------------------------------------------------------------------
    data_gen_inst : entity work.prng_send
        generic map (
            SEED => "1011110010111100101111001011110010111100" -- K28.5 
        )
        port map (
            clk   => clk,
            enb   => '1',--ps_rst_n(1),
            mode  => mode,
            reset => rst,
            rng   => rng
        );
    -- End of Pseudo-Random Number generator instantiation

    ----------------------------------------------------------------------------
    -- enc_8b10b: 8-bit to 10-bit Encoder
    -- Author: Ken Boyette, Critia Computer, Inc.
    -- Version 1.0
    ----------------------------------------------------------------------------
    enc_inst0 : entity work.enc_8b10b
        port map (
            reset => rst,
            sbyteclk => clk,
            ctrl_ind => mode,
            unenc_data => rng(7 downto 0),
            enc_data => enc10b_dat(9 downto 0)
        );

    enc_inst1 : entity work.enc_8b10b
        port map (
            reset => rst,
            sbyteclk => clk,
            ctrl_ind => mode,
            unenc_data => rng(15 downto 8),
            enc_data => enc10b_dat(19 downto 10)
        );

    enc_inst2 : entity work.enc_8b10b
        port map (
            reset => rst,
            sbyteclk => clk,
            ctrl_ind => mode,
            unenc_data => rng(23 downto 16),
            enc_data => enc10b_dat(29 downto 20)
        );

    enc_inst3 : entity work.enc_8b10b
        port map (
            reset => rst,
            sbyteclk => clk,
            ctrl_ind => mode,
            unenc_data => rng(31 downto 24),
            enc_data => enc10b_dat(39 downto 30)
        );

    enc_inst4 : entity work.enc_8b10b
        port map (
            reset => rst,
            sbyteclk => clk,
            ctrl_ind => mode,
            unenc_data => rng(39 downto 32),
            enc_data => enc10b_dat(49 downto 40)
        );

    -- End of 8b10b encoder instantiation

    ----------------------------------------------------------------------------
    -- serdes_10_1: 10:1 SerDes using Xilinx OSEDRES and OBUFDS for LVDS output
    -- Author : Apurva Nandan
    -- Version 1.0
    ----------------------------------------------------------------------------

    serdes_inst_data0 : entity work.serdes_10_1
        port map(
            sclk       => sclk,
            clk        => clk,
            rst        => rst,
            data_in    => enc10b_dat(9 downto 0),
            data_out_p => DATA_LANE_0_P,
            data_out_n => DATA_LANE_0_N
        );

    serdes_inst_data1 : entity work.serdes_10_1
        port map(
            sclk       => sclk,
            clk        => clk,
            rst        => rst,
            data_in    => enc10b_dat(19 downto 10),
            data_out_p => DATA_LANE_1_P,
            data_out_n => DATA_LANE_1_N
        );

    serdes_inst_data2 : entity work.serdes_10_1
        port map(
            sclk       => sclk,
            clk        => clk,
            rst        => rst,
            data_in    => enc10b_dat(29 downto 20),
            data_out_p => DATA_LANE_2_P,
            data_out_n => DATA_LANE_2_N
        );

    serdes_inst_data3 : entity work.serdes_10_1
        port map(
            sclk       => sclk,
            clk        => clk,
            rst        => rst,
            data_in    => enc10b_dat(39 downto 30),
            data_out_p => DATA_LANE_3_P,
            data_out_n => DATA_LANE_3_N
        );

    serdes_inst_data4 : entity work.serdes_10_1
        port map(
            sclk       => sclk,
            clk        => clk,
            rst        => rst,
            data_in    => enc10b_dat(49 downto 40),
            data_out_p => DATA_LANE_4_P,
            data_out_n => DATA_LANE_4_N
        );

    serdes_inst_clk : entity work.serdes_10_1
        port map(
            sclk       => sclk,
            clk        => clk,
            rst        => rst,
            data_in    => "0101010101",
            data_out_p => CLK_LANE_P,
            data_out_n => CLK_LANE_N
        );

    -- End of Serdes 10:1 instantiation

end rtl;
