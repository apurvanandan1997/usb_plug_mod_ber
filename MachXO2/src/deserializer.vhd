----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
-- 
-- Create Date:    00:22:57 08/05/2019 
-- Design Name:    
-- Module Name:    deserializer
-- Project Name:   USB 3.0 Module Gearwork
-- Target Devices: LCMXO2-2000HC-TQFP100
-- Tool versions:  Lattice Diamond 3.10 
-- Description:    Deserializer Module for DDR x10 gearing and word alignment
--
-- License:        This program is free software: you can redistribute it and/or
--                 modify it under the terms of the GNU General Public License
--                 as published by the Free Software Foundation, either version
--                 3 of the License, or (at your option) any later version.
-- 
-- Additional Comments: 
--
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity deserializer is
    port (
        eclk     : in  std_logic;
        clk_s    : in  std_logic;
        reset    : in  std_logic;
        sclk     : out std_logic;
        link_rdy : out std_logic;
        q_valid  : out std_logic := '0';  
        datain   : in  std_logic_vector(4 downto 0);
        q        : out std_logic_vector(49 downto 0)
    );
end entity deserializer;

architecture rtl of deserializer is
    
    component ddrx4
    port (
        alignwd      : in  std_logic;
        clk          : in  std_logic;
        clk_s        : in  std_logic;
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
    end component;

    signal q40_buf : std_logic_vector(39 downto 0);
    signal q50_buf : std_logic_vector(49 downto 0) := (others => '0');
    signal q_tmp   : std_logic_vector(39 downto 0) := (others => '0');
    signal counter : std_logic_vector(2 downto 0) := (others => '0');
   
    signal bit_slip : std_logic := '0';
    signal sclk_buf : std_logic;
    signal locked   : std_logic;
    signal lnk_trnd : std_logic := '0';
    signal rx_rdy   : std_logic;
    
    signal lnk_trnd_buf : std_logic_vector(3 downto 0) := (others => '0');
    signal hold_slip    : std_logic_vector(2 downto 0) := (others => '0');

begin

    ddrx4_inst : ddrx4
        port map (
            clk          => eclk,
            clk_s        => clk_s,
            alignwd      => bit_slip,
            dqsdll_reset => reset,
            freeze       => lnk_trnd,
            init         => locked,
            reset        => reset,
            uddcntln     => lnk_trnd,
            datain       => datain,
            lock         => locked,
            rx_ready     => rx_rdy,
            sclk         => sclk_buf,
            q            => q40_buf
        );

    lnk_trnd <= lnk_trnd_buf(0) and lnk_trnd_buf(1) and lnk_trnd_buf(2) and lnk_trnd_buf(3);
    link_rdy <= lnk_trnd;
    sclk <= sclk_buf;
   
    process(sclk_buf)
    begin
        if rising_edge(sclk_buf) then
            if reset = '1' then
                q50_buf  <= (others => '0');
                q <= (others => '0');
                q_valid <= '0';
            
            else
                if rx_rdy = '1' then
                    case counter is
                        when "000"  => q_tmp(39 downto 0)  <= q40_buf(39 downto 0);
                        
                        when "001"  => q_tmp(5  downto 0)  <= q40_buf(7  downto 2);
                                       q_tmp(13 downto 8)  <= q40_buf(15 downto 10);
                                       q_tmp(21 downto 16) <= q40_buf(23 downto 18);
                                       q_tmp(29 downto 24) <= q40_buf(31 downto 26);
                                       q_tmp(37 downto 32) <= q40_buf(39 downto 34);
                                       
                                       q50_buf(9  downto 0)  <= q40_buf(1  downto 0)  & q_tmp(7  downto 0);
                                       q50_buf(19 downto 10) <= q40_buf(9  downto 8)  & q_tmp(15 downto 8);
                                       q50_buf(29 downto 20) <= q40_buf(17 downto 16) & q_tmp(23 downto 16);
                                       q50_buf(39 downto 30) <= q40_buf(25 downto 24) & q_tmp(31 downto 24);
                                       q50_buf(49 downto 40) <= q40_buf(33 downto 32) & q_tmp(39 downto 32);
                        
                        when "010"  => q_tmp(3  downto 0)  <= q40_buf(7  downto 4);
                                       q_tmp(11 downto 8)  <= q40_buf(15 downto 12);
                                       q_tmp(19 downto 16) <= q40_buf(23 downto 20);
                                       q_tmp(27 downto 24) <= q40_buf(31 downto 28);
                                       q_tmp(35 downto 32) <= q40_buf(39 downto 36);
                                       
                                       q50_buf(9  downto 0)  <= q40_buf(3  downto 0)  & q_tmp(5  downto 0);
                                       q50_buf(19 downto 10) <= q40_buf(11 downto 8)  & q_tmp(13 downto 8);
                                       q50_buf(29 downto 20) <= q40_buf(19 downto 16) & q_tmp(21 downto 16);
                                       q50_buf(39 downto 30) <= q40_buf(27 downto 24) & q_tmp(29 downto 24);
                                       q50_buf(49 downto 40) <= q40_buf(35 downto 32) & q_tmp(37 downto 32);
                                       
                        when "011"  => q_tmp(1  downto 0)  <= q40_buf(7  downto 6);
                                       q_tmp(9  downto 8)  <= q40_buf(15 downto 14);
                                       q_tmp(17 downto 16) <= q40_buf(23 downto 22);
                                       q_tmp(25 downto 24) <= q40_buf(31 downto 30);
                                       q_tmp(33 downto 32) <= q40_buf(39 downto 38);
                                       
                                       q50_buf(9  downto 0)  <= q40_buf(5  downto 0)  & q_tmp(3  downto 0);
                                       q50_buf(19 downto 10) <= q40_buf(13 downto 8)  & q_tmp(11 downto 8);
                                       q50_buf(29 downto 20) <= q40_buf(21 downto 16) & q_tmp(19 downto 16);
                                       q50_buf(39 downto 30) <= q40_buf(29 downto 24) & q_tmp(27 downto 24);
                                       q50_buf(49 downto 40) <= q40_buf(37 downto 32) & q_tmp(35 downto 32);
                                       
                        when "100"  => q50_buf(9  downto 0)  <= q40_buf(7  downto 0)  & q_tmp(1  downto 0);
                                       q50_buf(19 downto 10) <= q40_buf(15 downto 8)  & q_tmp(9  downto 8);
                                       q50_buf(29 downto 20) <= q40_buf(23 downto 16) & q_tmp(17 downto 16);
                                       q50_buf(39 downto 30) <= q40_buf(31 downto 24) & q_tmp(25 downto 24);
                                       q50_buf(49 downto 40) <= q40_buf(39 downto 32) & q_tmp(33 downto 32);
                        
                        when others => null;
                    
                    end case;
                    
                    if lnk_trnd = '1' then
                        q <= q50_buf;

                    else
                        q <= (others => '0');
                        
                    end if;

                    if counter /= "010" then
                        q_valid <= lnk_trnd;
                    
                    else 
                        q_valid <= '0';

                    end if;
                else
                    q50_buf  <= (others => '0');
                    q <= (others => '0');
                    q_valid <= '0';

                end if;

            end if;
        end if;
    end process;

    process(sclk_buf)
    begin
        if rising_edge(sclk_buf) then
            if reset = '1' then
                counter <= (others => '0');

            else
                if rx_rdy = '1' then
                    --if bit_slip = '1' then
                    --    counter <= counter;

                    --else
                        if counter = "100" then
                            counter <= (others => '0');

                        else
                            counter <= counter + '1';

                        end if;
                    --end if;
                else
                    counter <= (others => '0');

                end if;
            end if;
        end if;
    end process;

    process(sclk_buf)
    begin
        if rising_edge(sclk_buf) then
            if reset = '1' then
                bit_slip <= '0';
                hold_slip <= (others => '0');

            else
                if rx_rdy = '1' and lnk_trnd = '0' then
                    if counter = "000" then
                        hold_slip <= hold_slip + '1';
                        if hold_slip = "111"  then
                            if q50_buf(9 downto 0) /= "0110111100" and q50_buf(9 downto 0) /= "1001000011" then
                                bit_slip <= '1';
                                lnk_trnd_buf(0) <= '0';

                            else
                                bit_slip <= '0';
                                lnk_trnd_buf(0) <= '1';
                            
                            end if;
                            lnk_trnd_buf(3 downto 1) <= lnk_trnd_buf(2 downto 0);
                        
                        else
                            bit_slip <= '0';

                        end if;
                    elsif counter = "001" then
                        bit_slip <= '0';

                    end if;
                else
                    bit_slip <= '0';
                    hold_slip <= (others => '0');

                end if;
            end if;
        end if;
    end process;

end architecture rtl;