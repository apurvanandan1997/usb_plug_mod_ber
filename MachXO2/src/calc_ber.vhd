----------------------------------------------------------------------------
--  calc_ber.vhd
--  Version 1.0
--
--  Copyright (C) 2018 Mahesh Chandra Yayi
--
--  Modified from source : http://vhdlguru.blogspot.com/2017/10/count-number-of-1s-in-binary-number.html
--
--  This program is free software: you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation, either version
--  2 of the License, or (at your option) any later version.
----------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity calc_ber is
    port (
        word_recvd  : in  std_logic_vector(39 downto 0);
        din_clk     : in  std_logic;
        word_actual : in  std_logic_vector(39 downto 0);
        en          : in  std_logic;
        reset       : in  std_logic;
        ber         : out std_logic_vector(31 downto 0) := (others => '0')
    );
end calc_ber;

architecture rtl of calc_ber is

    signal error_bits   : std_logic_vector(39 downto 0);
    signal err_per_byte : std_logic_vector(5 downto 0) ;
    signal count_bytes  : std_logic_vector(29 downto 0) := (others => '0');
    signal total_error  : std_logic_vector(31 downto 0) :=  (others => '0');
    constant ones32 : std_logic_vector(31 downto 0) := (others => '1');

begin
    
    error_bits <= word_actual xor word_recvd;

    count_proc : process(error_bits)

        variable count : unsigned(5 downto 0) := (others => '0');
    begin        
        count := "000000";

        for i in 0 to 7 loop
            count := count + ("00000" & error_bits(i));

        end loop;
        err_per_byte <= std_logic_vector(count);

    end process;

    calc_ber : process(din_clk)
    begin
        if rising_edge(din_clk) then
            if reset = '1' then
                count_bytes    <= (others => '0');
                total_error <= (others => '0');

            else
                if en = '1' then
                    count_bytes <= count_bytes + '1';

                    if count_bytes = ones32(29 downto 0) then
                        ber <= total_error;
                        total_error <= (others => '0');
                        count_bytes <= (others => '0');

                    else
                        total_error <= total_error + err_per_byte;

                    end if;
                else
                    count_bytes    <=  count_bytes;
                    total_error <=  total_error;

                end if;
            end if;
        end if;
    end process;

end rtl;
