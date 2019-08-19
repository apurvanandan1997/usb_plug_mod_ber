----------------------------------------------------------------------------
--  prng_cnt.vhd
--  Pseudo Random Generator cum Training Pattern Genrator
--  Version 1.0
--
--  Copyright (C) 2014 H.Poetzl
--
--  Modified by Apurva Nandan
--
--  This program is free software: you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation, either version
--  2 of the License, or (at your option) any later version.
----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity prng_send is
    generic(
        SEED : std_logic_vector(39 downto 0) := "1011110010111100101111001011110010111100"
        -- K28.5 Control Symbol for Word Alignment ( MSB 8 bits)
    );
    port(
        clk   : in  std_logic;  -- Clock Input
        enb   : in  std_logic;  -- Enable data generation
        mode  : out  std_logic;  -- Mode select: '0 for PRNG, '1' for K28.5
        reset : in  std_logic;  -- Reset signal (To be Asserted for changing mode)
        rng   : out std_logic_vector (39 downto 0) -- Output Generated Data
    );
    
end prng_send;

architecture rtl of prng_send is

    signal fb : std_logic := '0';
    signal sr : std_logic_vector (39 downto 0) := SEED;
    signal hold_prng : std_logic_vector(28 downto 0) := (others => '0');
    signal mode_i : std_logic := '1';
   
begin

    ----------------------------------------------------------------------------
    --  rng_cnt_proc: LFSR Random Number Generator(Fibonacci) 
    --  With availabilty of 8-bit counter mode (32,22,2,1,0)
    ----------------------------------------------------------------------------
    lfsr_proc : process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                sr <= SEED;

            else
                if enb = '1' then
                    if mode_i = '1' then
                        sr <= sr;

                    elsif hold_prng = "11111111111111111111111111110" then
                        sr <= SEED;

                    else
                        --sr <= sr(30 downto 0) & fb;
                        --sr(31 downto 24) <= sr( 30 downto 24) & fb;
                        --case (test_counter(2 downto 0)) is
                        --    when "000" => sr(31 downto 24) <= "11010011"; --D19.6 = D3 = 0D3
                        --    when "001" => sr(31 downto 24) <= "10100101"; --D5.5  = A5 = 1A5
                        --    when "010" => sr(31 downto 24) <= "00101100"; --D12.1 = 2C = 32C
                        --    when "011" => sr(31 downto 24) <= "01000011"; --D3.2  = 43 = 343
                        --    when "100" => sr(31 downto 24) <= "11001110"; --D14.6 = CE = 0CE
                        --    when "101" => sr(31 downto 24) <= "01010010"; --D18.2 = 52 = 352
                        --    when "110" => sr(31 downto 24) <= "10110100"; --D20.5 = B4 = 1B4
                        --    when "111" => sr(31 downto 24) <= "00101010"; --D10.1 = 2A = 32A
                            
                        --    when others => sr(31 downto 24) <= "00000000";
                        --end case;
                        sr <= sr + '1';--"01110011";

                    end if;

                else
                    sr <= SEED;

                end if;
            end if;
        end if;
    end process;


    link_train_wait: process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                hold_prng <= (others => '0');
                mode_i <= '1';

            else
                if enb = '1' then
                        
                    if hold_prng = "11111111111111111111111111111" then
                        hold_prng <= hold_prng;

                    else 
                        hold_prng <= hold_prng + '1';

                    end if;

                    if hold_prng = "00000000000000000000000000000" then
                        mode_i <= '1';

                    elsif hold_prng = "01111111111111111111111111111" then -- "000000000000000000000011111111" then-- 
                        mode_i <= '0';

                    end if;
                else
                    hold_prng <= (others => '0');
                    mode_i <= '1';

                end if;
            end if;
        end if;
    end process;

    fb <= sr(31) xor sr(28) xor sr(25) xor sr(24);--sr(31) xor sr(21) xor sr(1) xor sr(0);
    rng <= sr;
    mode <= mode_i;

end rtl;
