----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
-- 
-- Desgin Name:    Top level HDL for Zynq 
-- Module Name:    zynq_top
-- Project Name:   USB 3.0 Plugin Module Gearwork
-- Target Device:  Zynq XC7Z020
-- Tool Version:   Xilinx Vivado HLx Edition 2018.3
-- Description:    Top Module for the Zynq FPGA. Connects the whole transmitter
--                 gearwork together.
--
-- License:        This program is free software: you can redistribute it and/or
--                 modify it under the terms of the GNU General Public License
--                 as published by the Free Software Foundation, either version
--                 3 of the License, or (at your option) any later version.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

library unisim;
use unisim.vcomponents.all;

entity zynq_top is
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
    );
end zynq_top;

architecture rtl of zynq_top is

    -- From the PS
    signal ps_fclk      : std_logic;
    signal ps_fclk_bufg : std_logic_vector(3 downto 0);

    -- Data Signals
    signal rnd_num    : std_logic_vector (39 downto 0);
    signal enc_data   : std_logic_vector(49 downto 0);
    signal enc_data_n : std_logic_vector(49 downto 0);
    signal mode       : std_logic;

    -- PLL internal signals
    signal rst       : std_logic;
    signal clk       : std_logic;
    signal sclk      : std_logic;
    signal clkfbout  : std_logic;
    signal clk_bufg  : std_logic;
    signal sclk_bufg : std_logic;
    signal locked    : std_logic;

    -- I2C Signals
    signal i2c_sda_i : std_logic;
    signal i2c_sda_o : std_logic;
    signal i2c_sda_t : std_logic;

    signal i2c_scl_i : std_logic;
    signal i2c_scl_o : std_logic;
    signal i2c_scl_t : std_logic;

    signal i2c_sda_t_n : std_logic;
    signal i2c_scl_t_n : std_logic;

begin

    rst <= not locked ;
    enc_data_n <= not enc_data;

    i2c_scl_t <= not i2c_scl_t_n;
    i2c_sda_t <= not i2c_sda_t_n;

    --------------------------------------------------------------------
    -- I2C Interface
    --------------------------------------------------------------------

    PS7_stub_inst : entity work.ps7_stub
        port map (
            ps_fclk      => ps_fclk_bufg,
            i2c1_sda_i   => i2c_sda_i,
            i2c1_sda_o   => i2c_sda_o,
            i2c1_sda_t_n => i2c_sda_t_n,
            i2c1_scl_i   => i2c_scl_i,
            i2c1_scl_o   => i2c_scl_o,
            i2c1_scl_t_n => i2c_scl_t_n
        );

    IOBUF_sda_inst : IOBUF
        port map (
            I  => i2c_sda_o,
            O  => i2c_sda_i,
            T  => i2c_sda_t,
            IO => I2C_SDA 
        );

    PULLUP_sda_inst : PULLUP
        port map ( 
            O => I2C_SDA 
        );

    IOBUF_scl_inst : IOBUF
        port map (
            I  => i2c_scl_o,
            O  => i2c_scl_i,
            T  => i2c_scl_t, 
            IO => I2C_SCL 
        );

    PULLUP_scl_inst : PULLUP
        port map ( 
            O => I2C_SCL 
        );
            
    PLL_BASE_inst0 : PLLE2_BASE
        generic map (
            CLKFBOUT_MULT  => 30,     -- Multiplication factor for all output clocks
            CLKFBOUT_PHASE => 0.0,    -- Phase shift (degrees) of all output clocks
            CLKIN1_PERIOD  => 20.000, -- Clock period (ns) of input clock on CLKIN

            CLKOUT0_DIVIDE     => 20,  -- Division factor for CLKOUT0 (1 to 128)
            CLKOUT0_DUTY_CYCLE => 0.5, -- Duty cycle for CLKOUT0 (0.01 to 0.99)
            CLKOUT0_PHASE      => 0.0, -- Phase shift (degrees) for CLKOUT0 (0.0 to 360.0)

            CLKOUT1_DIVIDE     => 4,   -- Division factor for CLKOUT1 (1 to 128)
            CLKOUT1_DUTY_CYCLE => 0.5, -- Duty cycle for CLKOUT1 (0.01 to 0.99)
            CLKOUT1_PHASE      => 0.0, -- Phase shift (degrees) for CLKOUT1 (0.0 to 360.0)

            DIVCLK_DIVIDE => 1,           -- Division factor for all clocks (1 to 52)
            BANDWIDTH     => "OPTIMIZED", -- "HIGH", "LOW" or "OPTIMIZED"
            REF_JITTER1   => 0.010,       -- Input reference jitter (0.000 to 0.999 UI%)
            STARTUP_WAIT  => "FALSE"
        )
        port map (
            CLKFBOUT => clkfbout,  -- General output feedback signal
            CLKFBIN  => clkfbout,  -- Clock feedback input
            CLKIN1   => ps_fclk,    --pll0_clk,  -- Clock input
            CLKOUT0  => clk_bufg,   -- One of six general clock output signals
            CLKOUT1  => sclk_bufg,  -- One of six general clock output signals
            LOCKED   => locked,    -- Active high PLL lock signal
            PWRDWN   => '0',        -- Power Down PLL
            RST      => '0'         -- Asynchronous PLL reset
        );
    -- End of PLL_BASE_inst instantiation

    ----------------------------------------------------------------------------
    -- BUFG: Global Clock Buffer
    -- Zynq-7020
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

    ----------------------------------------------------------------------------
    --  data_gen_inst: Fiboanacci LFSR Random Number Generator (39,31,21,1,0)
    ----------------------------------------------------------------------------
    data_gen_inst : entity work.prng_send
        generic map (
            SEED => "1011110010111100101111001011110010111100" -- K28.5 
            -- Seed taken here is concat of 5 K28.5 , which 
            -- acts as word alignment pattern also.
        )
        port map (
            clk     => clk,
            enb     => '1',
            mode    => mode,
            reset   => rst,
            rnd_num => rnd_num
        );
    -- End of Pseudo-Random Number generator instantiation

    ----------------------------------------------------------------------------
    -- enc_8b10b: 8-bit to 10-bit Encoder
    -- Author: Ken Boyette, Critia Computer, Inc.
    ----------------------------------------------------------------------------
    encoder_gen : for I in 0 to 4 generate
        encoder_inst : entity work.enc_8b10b
        port map (
            reset      => rst,
            sbyteclk   => clk,
            ctrl_ind   => mode,
            unenc_data => rnd_num(I*8+7 downto I*8),
            enc_data   => enc_data(I*10+9 downto I*10)
        );
    end generate encoder_gen;
    -- End of 8b10b encoder instantiation

    ----------------------------------------------------------------------------
    -- serdes_10_1: 10:1 SerDes using Xilinx OSEDRESE2 and OBUFDS
    ----------------------------------------------------------------------------

    serdes_inst_data0 : entity work.serdes_10_1
        port map(
            sclk       => sclk,
            clk        => clk,
            rst        => rst,
            data_in    => enc_data_n(9 downto 0),
            data_out_p => DATA_LANE_0_P,
            data_out_n => DATA_LANE_0_N
        );

    serdes_inst_data1 : entity work.serdes_10_1
        port map(
            sclk       => sclk,
            clk        => clk,
            rst        => rst,
            data_in    => enc_data_n(19 downto 10),
            data_out_p => DATA_LANE_1_P,
            data_out_n => DATA_LANE_1_N
        );

    serdes_inst_data2 : entity work.serdes_10_1
        port map(
            sclk       => sclk,
            clk        => clk,
            rst        => rst,
            data_in    => enc_data(29 downto 20),
            data_out_p => DATA_LANE_2_P,
            data_out_n => DATA_LANE_2_N
        );

    serdes_inst_data3 : entity work.serdes_10_1
        port map(
            sclk       => sclk,
            clk        => clk,
            rst        => rst,
            data_in    => enc_data(39 downto 30),
            data_out_p => DATA_LANE_3_P,
            data_out_n => DATA_LANE_3_N
        );

    serdes_inst_data4 : entity work.serdes_10_1
        port map(
            sclk       => sclk,
            clk        => clk,
            rst        => rst,
            data_in    => enc_data_n(49 downto 40),
            data_out_p => DATA_LANE_4_P,
            data_out_n => DATA_LANE_4_N
        );

    serdes_inst_clk : entity work.serdes_10_1
        port map(
            sclk       => sclk,
            clk        => clk,
            rst        => rst,
            data_in    => "1010101010",
            data_out_p => CLK_LANE_P,
            data_out_n => CLK_LANE_N
        );
    -- End of Serdes 10:1 instantiation

end rtl;
