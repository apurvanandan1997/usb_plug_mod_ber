----------------------------------------------------------------------------
--  prng32.vhd
--	Pseudo Random Generators
--	Version 1.0
--
--  Copyright (C) 2014 H.Poetzl
--
--  Modified by Mahesh Chandra Yayi
--
--	This program is free software: you can redistribute it and/or
--	modify it under the terms of the GNU General Public License
--	as published by the Free Software Foundation, either version
--	2 of the License, or (at your option) any later version.
----------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
use ieee.std_logic_unsigned.all;

entity prng_recv is
    generic(
        SEED : std_logic_vector(39 downto 0) := "1011110010111100101111001011110010111100"
    );

    port(
    	clk   : in std_logic;
    	ce    : in std_logic;
        reset : in std_logic;
    	rng   : out std_logic_vector (39 downto 0)
    );
end prng_recv;

----------------------------------------------------------------------------
--  LFSR RNG (Fibonacci)
--	(32,22,2,1,0)
--	Version 1.0
----------------------------------------------------------------------------

architecture rtl of prng_recv is

    signal fb : std_logic;
    signal sr : std_logic_vector (39 downto 0) := SEED;

begin

    prng_proc : process (clk)
    begin
        if rising_edge(clk) then    
            if reset = '1'  then
                sr <= SEED;
            
            else
                if ce = '1' then
    		        sr <= sr(38 downto 0) & fb;
                    --sr(31 downto 24) <= sr(30 downto 24) & fb;
                    --sr <= sr + '1';

                else
                    sr <= sr;

                end if;
            end if;
        end if;
    end process;

    rng <= sr;
    fb <= sr(39) xor sr(31) xor sr(21) xor sr(1) xor sr(0);

end rtl;
