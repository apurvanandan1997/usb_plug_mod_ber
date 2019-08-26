----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
-- 
-- Desgin Name:    OSERDESE2 10:1 DDR Wrapper
-- Module Name:    serdes_10_1
-- Project Name:   USB 3.0 Plugin Module Gearwork
-- Target Device:  Zynq XC7Z020
-- Tool Version:   Xilinx Vivado HLx Edition 2018.3
-- Description:    This module is a wrapper for OSERDESE2 primitive & simplifies
--                 its usage by setting the frequently used attributes on the 
--                 ports of the primitive, just leaving us with the data, clock 
--                 and reset ports.
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

entity serdes_10_1 is
    port (
        sclk       : in  std_logic;
        clk        : in  std_logic;
        rst        : in  std_logic;
        data_in    : in  std_logic_vector(9 downto 0);
        data_out_p : out std_logic;
        data_out_n : out std_logic
    );
end serdes_10_1;

architecture str of serdes_10_1 is

    signal shift1_dat : std_logic := '0';
    signal shift2_dat : std_logic := '0';
    signal data_out   : std_logic := '0';

begin

    ----------------------------------------------------------------------------
    -- OSERDESE2: Output SERDES
    -- Zynq-7000 SoC
    ----------------------------------------------------------------------------
    master_serdes_inst_data0 : OSERDESE2
        generic map (
            DATA_RATE_OQ => "DDR",      -- Specify data rate to "DDR" or "SDR"
            DATA_RATE_TQ => "BUF",      -- Specify data rate to "DDR", "SDR", or "BUF"
            DATA_WIDTH   => 10,         -- Specify data width - For DDR: 4,6,8, or 10
                                        -- For SDR or BUF: 2,3,4,5,6,7, or 8
            INIT_OQ        => '0',      -- INIT for Q1 register - ’1’ or ’0’
            INIT_TQ        => '0',      -- INIT for Q2 register - ’1’ or ’0’
            SERDES_MODE    => "MASTER", -- Set SERDES mode to "MASTER" or "SLAVE"
            SRVAL_OQ       => '0',      -- Define Q1 output value upon SR assertion - ’1’ or ’0’
            SRVAL_TQ       => '0',      -- Define Q1 output value upon SR assertion - ’1’ or ’0’
            TBYTE_CTL      => "FALSE",  -- Enable tristate byte operation (FALSE, TRUE) 
            TBYTE_SRC      => "FALSE",  -- Tristate byte source (FALSE, TRUE) 
            TRISTATE_WIDTH => 1         -- Specify parallel to serial converter width
        )                               -- When DATA_RATE_TQ = DDR: 2 or 4
                                        -- When DATA_RATE_TQ = SDR or BUF: 1 "
        port map (
            OFB       => open,          -- Output: Feedback paath for data 
            OQ        => data_out,      -- Output
            SHIFTOUT1 => open,          -- Data expansion output
            SHIFTOUT2 => open,          -- Data expansion output
            TBYTEOUT  => open,          -- Output: Byte group tristate 
            TFB       => open,          -- Output: 3-state control 
            TQ        => open,          -- 3-state control output
            CLK       => sclk,          -- Clock input
            CLKDIV    => clk,           -- Divided clock input
            D1        => data_in(0),    -- Parallel data input
            D2        => data_in(1),    -- Parallel data input
            D3        => data_in(2),    -- Parallel data input
            D4        => data_in(3),    -- Parallel data input
            D5        => data_in(4),    -- Parallel data input
            D6        => data_in(5),    -- Parallel data input
            D7        => data_in(6),    -- Parallel data input
            D8        => data_in(7),    -- Parallel data input
            OCE       => '1',           -- Clock enable input
            RST       => rst,           -- Set/reset input
            SHIFTIN1  => shift1_dat,    -- Data expansion input
            SHIFTIN2  => shift2_dat,    -- Data expansion input
            T1        => '0',           -- Parallel 3-state input
            T2        => '0',           -- Parallel 3-state input
            T3        => '0',           -- Parallel 3-state input
            T4        => '0',           -- Parallel 3-state input
            TBYTEIN   => '0',           -- Input: Byte group tristate 
            TCE       => '0'            -- 3-state signal clock enable input
        );

    slave_serdes_inst_data0 : OSERDESE2
        generic map (
            DATA_RATE_OQ => "DDR",     -- Specify data rate to "DDR" or "SDR"
            DATA_RATE_TQ => "BUF",     -- Specify data rate to "DDR", "SDR", or "BUF"
            DATA_WIDTH   => 10,        -- Specify data width - For DDR: 4,6,8, or 10
                                       -- For SDR or BUF: 2,3,4,5,6,7, or 8
            INIT_OQ        => '1',     -- INIT for Q1 register - ’1’ or ’0’
            INIT_TQ        => '1',     -- INIT for Q2 register - ’1’ or ’0’
            SERDES_MODE    => "SLAVE", -- Set SERDES mode to "MASTER" or "SLAVE"
            SRVAL_OQ       => '0',     -- Define Q1 output value upon SR assertion - ’1’ or ’0’
            SRVAL_TQ       => '0',     -- Define Q1 output value upon SR assertion - ’1’ or ’0’
            TBYTE_CTL      => "FALSE", -- Enable tristate byte operation (FALSE, TRUE) 
            TBYTE_SRC      => "FALSE", -- Tristate byte source (FALSE, TRUE) 
            TRISTATE_WIDTH => 1        -- Specify parallel to serial converter width
        )                              -- When DATA_RATE_TQ = DDR: 2 or 4
                                       -- When DATA_RATE_TQ = SDR or BUF: 1 "
        port map (
            OFB       => open,         -- Output: Feedback path for data 
            OQ        => open,         -- Output
            SHIFTOUT1 => shift1_dat,   -- Data expansion output
            SHIFTOUT2 => shift2_dat,   -- Data expansion output
            TBYTEOUT  => open,         -- Output: Byte group tristate 
            TFB       => open,         -- Output: 3-state control 
            TQ        => open,         -- 3-state control output
            CLK       => sclk,         -- Clock input
            CLKDIV    => clk,          -- Divided clock input
            D1        => '0',          -- Parallel data input
            D2        => '0',          -- Parallel data input
            D3        => data_in(8),   -- Parallel data input
            D4        => data_in(9),   -- Parallel data input
            D5        => '0',          -- Parallel data input
            D6        => '0',          -- Parallel data input
            D7        => '0',          -- Parallel data input 
            D8        => '0',          -- Parallel data input  
            OCE       => '1',          -- Clock enable input
            RST       => rst,          -- Set/reset input
            SHIFTIN1  => '0',          -- Data expansion input
            SHIFTIN2  => '0',          -- Data expansion input
            T1        => '0',          -- Parallel 3-state input
            T2        => '0',          -- Parallel 3-state input
            T3        => '0',          -- Parallel 3-state input
            T4        => '0',          -- Parallel 3-state input
            TBYTEIN   => '0',          -- Input: Byte group tristate 
            TCE       => '0'           -- 3-state signal clock enable input
        );
    -- End of OSERDES_inst instantiation

    ----------------------------------------------------------------------------
    -- OBUFDS: Differential Output Buffer
    -- Zynq-7000
    ----------------------------------------------------------------------------
    OBUFDS_inst : OBUFDS
        generic map (
            IOSTANDARD => "DEFAULT",
            SLEW       => "SLOW"
        )
        port map (
            O  => data_out_p,          -- Diff_p output
            OB => data_out_n,          -- Diff_n output
            I  => data_out             -- Buffer input
        );
    -- End of OBUFDS_inst instantiation
    
end architecture str;