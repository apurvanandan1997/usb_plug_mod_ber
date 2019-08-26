----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
-- 
-- Design Name:    Pseudo-Random Number Receiver
-- Module Name:    prng_recv
-- Project Name:   USB 3.0 Module Gearwork
-- Target Devices: LCMXO2-2000HC-TQFP100
-- Tool versions:  Lattice Diamond 3.10 
-- Description:    This module generates pseudo-random number for comparison with
--                 the payload received for finding the BER. This PRNG requires 
--                 an all zeros word for resetting back to SEED value.
--
-- License:        This program is free software: you can redistribute it and/or
--                 modify it under the terms of the GNU General Public License
--                 as published by the Free Software Foundation, either version
--                 3 of the License, or (at your option) any later version.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use ieee.std_logic_unsigned.all;

entity prng_recv is
    generic(
        SEED : std_logic_vector(39 downto 0) := "1011110010111100101111001011110010111100"
    );
    port(
    	clk     : in std_logic;
    	ce      : in std_logic;
        reset   : in std_logic;
    	rnd_num : out std_logic_vector(39 downto 0)
    );
end prng_recv;

----------------------------------------------------------------------------
--  Fibonacci LFSR RNG (39,31,21,1,0)
----------------------------------------------------------------------------

architecture rtl of prng_recv is

    signal feedback : std_logic;
    signal shift_reg : std_logic_vector(39 downto 0) := SEED;

begin

    prng_proc : process(clk)
    begin
        if rising_edge(clk) then    
            if reset = '1'  then
                shift_reg <= SEED;
            
            else
                if ce = '1' then
    		        shift_reg <= shift_reg(38 downto 0) & feedback;
                    --shift_reg <= shift_reg + '1';

                else
                    shift_reg <= shift_reg;

                end if;
            end if;
        end if;
    end process;

    rnd_num <= shift_reg;
    feedback <= shift_reg(39) xor shift_reg(31) xor shift_reg(21)  xor shift_reg(1) xor shift_reg(0);

end rtl;
