----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
-- 
-- Design Name:    Pseudo-Random Number Receiver
-- Module Name:    prng_send
-- Project Name:   USB 3.0 Module Gearwork
-- Target Devices: Virtex-5 XC5VLX110T
-- Tool versions:  Xilinx ISE Design Suite 14.7
-- Description:    This module generates pseudo-random number for comparison with
--                 the payload received for finding the BER. This PRNG requires 
--                 an all zeros word for resetting back to SEED value.
--
-- License:        This program is free software: you can redistribute it and/or
--                 modify it under the terms of the GNU General Public License
--                 as published by the Free Software Foundation, either version
--                 3 of the License, or (at your option) any later version.
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity prng_send is
    generic(
        SEED : std_logic_vector(39 downto 0) := "1011110010111100101111001011110010111100"
        -- Concat of K28.5 Control Symbol for Word Alignment ( MSB 8 bits)
    );
    port(
        clk   : in  std_logic; 
        enb   : in  std_logic; 
        reset : in  std_logic; 
        mode  : out std_logic;
        rng   : out std_logic_vector (39 downto 0)
    );
    
end prng_send;

architecture rtl of prng_send is

    signal feedback  : std_logic := '0';
    signal shift_reg : std_logic_vector(39 downto 0) := SEED;
    signal hold_prng : std_logic_vector(28 downto 0) := (others => '0');
    signal mode_i    : std_logic := '1';
   
begin

    ----------------------------------------------------------------------------
    --  rng_cnt_proc: LFSR Random Number Generator(Fibonacci) 
    ----------------------------------------------------------------------------
    lfsr_proc : process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                shift_reg <= SEED;

            else
                if enb = '1' then
                    if mode_i = '1' then
                        shift_reg <= shift_reg;

                    elsif hold_prng = "11111111111111111111111111110" then
                        shift_reg <= SEED;

                    else
                        shift_reg <= shift_reg(38 downto 0) & feedback;
                        --case (test_counter(2 downto 0)) is
                        --    when "000" => shift_reg(31 downto 24) <= "11010011"; --D19.6 = D3 = 0D3
                        --    when "001" => shift_reg(31 downto 24) <= "10100101"; --D5.5  = A5 = 1A5
                        --    when "010" => shift_reg(31 downto 24) <= "00101100"; --D12.1 = 2C = 32C
                        --    when "011" => shift_reg(31 downto 24) <= "01000011"; --D3.2  = 43 = 343
                        --    when "100" => shift_reg(31 downto 24) <= "11001110"; --D14.6 = CE = 0CE
                        --    when "101" => shift_reg(31 downto 24) <= "01010010"; --D18.2 = 52 = 352
                        --    when "110" => shift_reg(31 downto 24) <= "10110100"; --D20.5 = B4 = 1B4
                        --    when "111" => shift_reg(31 downto 24) <= "00101010"; --D10.1 = 2A = 32A
                            
                        --    when others => shift_reg(31 downto 24) <= "00000000";
                        --end case;
                        --shift_reg <= shift_reg + '1';

                    end if;

                else
                    shift_reg <= SEED;

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

    feedback <= shift_reg(39) xor shift_reg(31) xor shift_reg(21) xor shift_reg(1) xor shift_reg(0);
    rng <= shift_reg when hold_prng /= "11111111111111111111111111110" else (others =>'0');
    mode <= mode_i;

end rtl;
