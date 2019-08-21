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
    -- OSERDES: Output SERDES
    -- Virtex-5
    -- Xilinx HDL Libraries Guide, version 11.2
    ----------------------------------------------------------------------------
    master_serdes_inst_data0 : OSERDESE2
        generic map (
            DATA_RATE_OQ => "DDR",      -- Specify data rate to "DDR" or "SDR"
            DATA_RATE_TQ => "DDR",      -- Specify data rate to "DDR", "SDR", or "BUF"
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
            OFB       => open,       -- 1-bit output: Feedback pa-- 1-bit output: 3-state control th for data 
            OQ        => data_out,   -- 1-bit output
            SHIFTOUT1 => open,       -- 1-bit data expansion output
            SHIFTOUT2 => open,       -- 1-bit data expansion output
            TBYTEOUT  => open,       -- 1-bit output: Byte group tristate 
            TFB       => open,       -- 1-bit output: 3-state control 
            TQ        => open,       -- 1-bit 3-state control output
            CLK       => sclk,       -- 1-bit clock input
            CLKDIV    => clk,        -- 1-bit divided clock input
            D1        => data_in(0), -- 1-bit parallel data input
            D2        => data_in(1), -- 1-bit parallel data input
            D3        => data_in(2), -- 1-bit parallel data input
            D4        => data_in(3), -- 1-bit parallel data input
            D5        => data_in(4), -- 1-bit parallel data input
            D6        => data_in(5), -- 1-bit parallel data input
            D7        => data_in(6), -- 1-bit parallel data input
            D8        => data_in(7), -- 1-bit parallel data input
            OCE       => '1',        -- 1-bit clock enable input
            RST       => rst,        -- 1-bit set/reset input
            SHIFTIN1  => shift1_dat, -- 1-bit data expansion input
            SHIFTIN2  => shift2_dat, -- 1-bit data expansion input
            T1        => '0',        -- 1-bit parallel 3-state input
            T2        => '0',        -- 1-bit parallel 3-state input
            T3        => '0',        -- 1-bit parallel 3-state input
            T4        => '0',        -- 1-bit parallel 3-state input
            TBYTEIN   => '0',        -- 1-bit input: Byte group tristate 
            TCE       => '0'         -- 1-bit 3-state signal clock enable input
        );

    slave_serdes_inst_data0 : OSERDESE2
        generic map (
            DATA_RATE_OQ => "DDR",     -- Specify data rate to "DDR" or "SDR"
            DATA_RATE_TQ => "DDR",     -- Specify data rate to "DDR", "SDR", or "BUF"
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
            OFB       => open,       -- 1-bit output: Feedback path for data 
            OQ        => open,       -- 1-bit output
            SHIFTOUT1 => shift1_dat, -- 1-bit data expansion output
            SHIFTOUT2 => shift2_dat, -- 1-bit data expansion output
            TBYTEOUT  => open,       -- 1-bit output: Byte group tristate 
            TFB       => open,       -- 1-bit output: 3-state control 
            TQ        => open,       -- 1-bit 3-state control output
            CLK       => sclk,       -- 1-bit clock input
            CLKDIV    => clk,        -- 1-bit divided clock input
            D1        => '0',        -- 1-bit parallel data input
            D2        => '0',        -- 1-bit parallel data input
            D3        => data_in(8), -- 1-bit parallel data input
            D4        => data_in(9), -- 1-bit parallel data input
            D5        => '0',        -- 1-bit parallel data input
            D6        => '0',        -- 1-bit parallel data input
            D7        => '0',        -- 1-bit parallel data input 
            D8        => '0',        -- 1-bit parallel data input  
            OCE       => '1',        -- 1-bit clock enable input
            RST       => rst,        -- 1-bit set/reset input
            SHIFTIN1  => '0',        -- 1-bit data expansion input
            SHIFTIN2  => '0',        -- 1-bit data expansion input
            T1        => '0',        -- 1-bit parallel 3-state input
            T2        => '0',        -- 1-bit parallel 3-state input
            T3        => '0',        -- 1-bit parallel 3-state input
            T4        => '0',        -- 1-bit parallel 3-state input
            TBYTEIN   => '0',        -- 1-bit input: Byte group tristate 
            TCE       => '0'         -- 1-bit 3-state signal clock enable input
        );
    -- End of OSERDES_inst instantiation

    ----------------------------------------------------------------------------
    -- OBUFDS: Differential Output Buffer
    -- Virtex-5
    -- Xilinx HDL Libraries Guide, version 11.2
    ----------------------------------------------------------------------------
    OBUFDS_inst : OBUFDS
        generic map (
            IOSTANDARD => "DEFAULT",
            SLEW       => "SLOW"
        )
        port map (
            O  => data_out_p, -- Diff_p output
            OB => data_out_n, -- Diff_n output
            I  => data_out    -- Buffer input
        );
    -- End of OBUFDS_inst instantiation
    
end architecture str;