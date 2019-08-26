----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
-- 
-- Desgin Name:    BER Calculator
-- Module Name:    calc_ber
-- Project Name:   USB 3.0 Plugin Module Gearwork
-- Target Device:  LCMXO2-2000HC-TQFP100
-- Tool Version:   Lattice Diamond 3.10_x64
-- Description:    Counts the number of errored bit received in every 2^30 40-bit 
--                 words and updates it on the output after approx every 
--                 20 seconds.
-- 
-- License:        This program is free software: you can redistribute it and/or
--                 modify it under the terms of the GNU General Public License
--                 as published by the Free Software Foundation, either version
--                 3 of the License, or (at your option) any later version.
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity calc_ber is
    port (
        din_clk     : in  std_logic;
        enable      : in  std_logic;
        reset       : in  std_logic;
        word_recvd  : in  std_logic_vector(39 downto 0);
        word_actual : in  std_logic_vector(39 downto 0);
        ber         : out std_logic_vector(31 downto 0) := (others => '0')
    );
end calc_ber;

architecture rtl of calc_ber is

    signal error_bits   : std_logic_vector(39 downto 0);
    signal err_per_byte : std_logic_vector(5 downto 0);
    signal count_bytes  : std_logic_vector(29 downto 0) := (others => '0');
    signal total_error  : std_logic_vector(35 downto 0) := (others => '0');
    constant ones       : std_logic_vector(31 downto 0) := (others => '1');
    constant zeros      : std_logic_vector(31 downto 0) := (others => '0');

begin
    
    error_bits <= word_actual xor word_recvd;

    count_proc : process(error_bits)

        variable count : unsigned(5 downto 0) := (others => '0');
    begin        
        count := "000000";

        for i in 0 to 39 loop
            count := count + ("00000" & error_bits(i));

        end loop;
        err_per_byte <= std_logic_vector(count);

    end process;

    calc_ber : process(din_clk)
    begin
        if rising_edge(din_clk) then
            if reset = '1' then
                count_bytes <= (others => '0');
                total_error <= (others => '0');

            else
                if enable = '1' then
                    count_bytes <= count_bytes + '1';

                    if count_bytes = ones(29 downto 0) then
                        total_error <= (others => '0');
                        count_bytes <= (others => '0');
                        ber <= total_error(31 downto 0);

                    else
                        total_error <= total_error + err_per_byte;

                    end if;
                else
                    count_bytes <=  count_bytes;
                    total_error <=  total_error;

                end if;
            end if;
        end if;
    end process;

end rtl;
