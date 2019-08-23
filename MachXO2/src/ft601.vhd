----------------------------------------------------------------------------------
-- Company:        apertus° Association
-- Engineer:       Apurva Nandan
-- 
-- Create Date:    00:22:57 08/05/2019 
-- Design Name: 
-- Module Name:    ft601
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    FT601 Controller in FT245 mode
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ft601 is
    port (
        clk : in  std_logic;
        rst : in  std_logic;
        led : out std_logic;

        -- To FT601 chip
        ft601_rxf_n  : in  std_logic;
        ft601_txe_n  : in  std_logic;
        ft601_wr_n   : out std_logic;
        ft601_siwu_n : out std_logic;
        ft601_rd_n   : out std_logic;
        ft601_oe_n   : out std_logic;
        ft601_be     : out std_logic_vector(3 downto 0);
        ft601_data   : out std_logic_vector(31 downto 0);

        -- From Internal FIFOs
        data_in    : in  std_logic_vector(31 downto 0);
        fifo_rd_en : out std_logic;
        fifo_emp   : in  std_logic
    );

end entity ft601;


architecture rtl of ft601 is

    signal tx_active : std_logic := '0';
    signal req_data  : std_logic := '0';

begin

    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                tx_active  <= '0';
                
            else
                if tx_active = '0' then
                    if ft601_txe_n = '0' and fifo_emp = '0' then
                        tx_active  <= '1';
                
                    else
                        tx_active  <= '0';
                
                    end if;
                elsif tx_active = '1' then
                    if ft601_txe_n = '1' or fifo_emp = '1' then
                        tx_active  <= '0';
                
                    else
                        tx_active  <= '1';
                
                    end if;
                end if;
            end if;
        end if;
    end process;

    ft601_data   <= data_in(7 downto 0) & data_in(15 downto 8) & data_in(23 downto 16) & data_in(31 downto 24);
    ft601_wr_n   <= not req_data;
    ft601_be     <= "1111";
    ft601_siwu_n <= '1';
    ft601_oe_n   <= '1';
    ft601_rd_n   <= '1';

    req_data <= (not fifo_emp) and tx_active and (not ft601_txe_n);
    fifo_rd_en <= req_data;
    
    led <= not rst when tx_active = '1' else '0';

end architecture rtl;