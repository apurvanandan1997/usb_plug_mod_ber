----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
--  
-- Design Name:    MachXO2 Top Module
-- Module Name:    machxo2_top
-- Project Name:   USB 3.0 Module Gearwork
-- Target Devices: LCMXO2-2000HC-TQFP100
-- Tool versions:  Lattice Diamond 3.10 
-- Description:    Top module for MachXO2 side of gearwork of USB Plugin Module
--                 Does the interconnections of all the modules.
--
-- License:        This program is free software: you can redistribute it and/or
--                 modify it under the terms of the GNU General Public License
--                 as published by the Free Software Foundation, either version
--                 3 of the License, or (at your option) any later version.
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity machx02_top is
    port (
        LED : out std_logic;
        -- From the Zynq FPGA
        CLK_LANE  : in std_logic;
        DATA_LANE : in std_logic_vector(4 downto 0);
        -- To/From FTDI Ports
        FT601_CLK    : in  std_logic;
        FT601_RXF_N  : in  std_logic;
        FT601_TXE_N  : in  std_logic;
        FT601_WR_N   : out std_logic;
        FT601_SIWU_N : out std_logic;
        FT601_RD_N   : out std_logic;
        FT601_OE_N   : out std_logic;
        FT601_RST_N  : out std_logic := '1';
        FT601_DATA   : out std_logic_vector(31 downto 0);
        FT601_BE     : out std_logic_vector(3 downto 0)
    );
end entity machx02_top;

architecture rtl of machx02_top is

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

    constant zeros : std_logic_vector(39 downto 0) := (others => '0'); 
    
    -- FIFO control signals
    signal fifo_emp   : std_logic;
    signal fifo_wr_en : std_logic;
    signal fifo_rd_en : std_logic;
    signal fifo_out   : std_logic_vector(31 downto 0);
    
    -- Clock and Resets
    signal rst        : std_logic;
    signal eclk       : std_logic;
    signal sclk       : std_logic;
    signal clk_int    : std_logic;
    
    -- Data busses 
    signal dec_data   : std_logic_vector(39 downto 0);
    signal enc_data   : std_logic_vector(49 downto 0);
    signal rnd_num    : std_logic_vector(39 downto 0);
    signal ber        : std_logic_vector(31 downto 0);
    
    -- Control and Sync signals
    signal link_rdy   : std_logic;
    signal sync_prng  : std_logic;
    signal data_valid : std_logic;
    signal mode       : std_logic_vector(5 downto 0):= (others => '0');
    
begin

    LED <= link_rdy;
    rst <= '0';

    -- Control Signals
    mode(5)    <= mode(4) and mode(3) and mode(2) and mode(1) and mode(0);
    sync_prng  <= fifo_wr_en when dec_data = zeros else '0' ;
    fifo_wr_en <= link_rdy and data_valid;

    oscinst0: osch
    generic map (
        nom_freq => "133.0"
    )
    port map (
        stdby => '0',
        osc   => clk_int
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

    decoder_gen : for I in 0 to 4 generate
        decoder_inst : entity work.dec_8b10b
        port map (
            reset    => rst,
            rbyteclk => sclk,
            enc_data => enc_data(I*10+9 downto I*10),
            dec_data => dec_data(I*8+7 downto I*8),
            ctrl_ind => mode(I)
        );
    end generate decoder_gen;
   
    prng_inst : entity work.prng_recv
    generic map (
        SEED => "1011110010111100101111001011110010111100"
        -- Seed also acts as word alignment pattern also (K28.5) 
    )
    port map (
        clk     => sclk,
        ce      => fifo_wr_en,
        reset   => sync_prng,
        rnd_num => rnd_num
    );

    ber_proc : entity work.calc_ber
    port map (
        word_recvd  => dec_data,
        word_actual => rnd_num,
        din_clk     => sclk,
        enable      => fifo_wr_en,
        reset       => sync_prng,
        ber         => ber
    );
        
    cdc_fifo_inst : entity work.async_fifo
    port map (
        data     => ber,
        wr_clock => sclk,
        rd_clock => FT601_CLK,
        wr_en    => fifo_wr_en,
        rd_en    => fifo_rd_en,
        reset    => rst,
        rpreset  => rst,
        q        => fifo_out,
        empty    => fifo_emp
    );

    ft601_comp : entity work.ft601 
    port map (
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
        fifo_rd_en   => fifo_rd_en,
        fifo_emp     => fifo_emp
    );

end architecture rtl;