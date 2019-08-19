--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:12:39 07/07/2019
-- Design Name:   
-- Module Name:   /home/apurvan/GSoC/usb-plug-mod-working/data_transfer/8b10b_SERDES-Transceiver-master/MachXO2/Receiver/top_tb.vhd
-- Project Name:  test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY top_tb IS
END top_tb;
 
ARCHITECTURE behavior OF top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         LED : OUT  std_logic;
         DATA_LANE : IN  std_logic_vector(4 downto 0);
         CLK_LANE : IN  std_logic;
         FT601_CLK : IN  std_logic;
         FT601_RST_N : OUT  std_logic;
         FT601_DATA : INOUT  std_logic_vector(31 downto 0);
         FT601_BE : OUT  std_logic_vector(3 downto 0);
         FT601_RXF_N : IN  std_logic;
         FT601_TXE_N : IN  std_logic;
         FT601_WR_N : OUT  std_logic;
         FT601_SIWU_N : OUT  std_logic;
         FT601_RD_N : OUT  std_logic;
         FT601_OE_N : OUT  std_logic
         --rst : in std_logic;
         --debug : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
    component enc_8b10b is
      port (
        reset    : in  std_logic ;    -- global asynchronous reset (active high) 
        sbyteclk : in  std_logic ;         -- master synchronous send byte clock
        ctrl_ind : in std_logic;
        unenc_data : in std_logic_vector(7 downto 0);
        enc_data : out std_logic_vector(9 downto 0)
      );
    end component enc_8b10b;

    component prng_send is
            generic(
        SEED : std_logic_vector(31 downto 0) := "10111100110011001111000001010011"
        -- K28.5 Control Symbol for Word Alignment ( MSB 8 bits)
    );
    port(
        clk   : in  std_logic;  -- Clock Input
        enb   : in  std_logic;  -- Enable data generation
        mode  : out  std_logic;  -- Mode select: '0 for PRNG, '1' for K28.5
        reset : in  std_logic;  -- Reset signal (To be Asserted for changing mode)
        rng   : out std_logic_vector (31 downto 0) -- Output Generated Data
    );

    end component prng_send;
    

   --Inputs
   signal LANE0 : std_logic_vector(4 downto 0) := (others => '0');
   signal rst : std_logic := '1';
   signal CLK_300MHz : std_logic := '0';
   --signal debug : std_logic_vector(31 downto 0);
   signal FT601_CLK : std_logic := '0';
   signal FT601_RXF_N : std_logic := '1';
   signal FT601_TXE_N : std_logic := '1';
   signal CLK_60MHz : std_logic := '0';
   signal CLK : std_logic := '0';
   signal mode : std_logic := '0';
   signal enc10b_dat : std_logic_vector(9 downto 0) := (others => '0');

  --BiDirs
   signal FT601_DATA : std_logic_vector(31 downto 0);

 -- --Outputs
   signal LED : std_logic;
   signal FT601_RST_N : std_logic;
   signal FT601_BE : std_logic_vector(3 downto 0);
   signal FT601_WR_N : std_logic;
   signal FT601_SIWU_N : std_logic;
   signal FT601_RD_N : std_logic;
   signal FT601_OE_N : std_logic;
   signal rng : std_logic_vector(31 downto 0) := "10111100000000000000000000000000";

   -- Clock period definitions
   constant CLK_300MHz_period : time := 3.333333333333333333 ns;
   constant FT601_CLK_period : time := 10 ns;
   constant CLK_60MHz_period : time := 16.666666666666666666 ns;
 
BEGIN

  --enc10b_dat <= enc10b_dat_buf when rising_edge(CLK_60MHz);
 
  -- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          LED => LED,
          DATA_LANE => LANE0,
          CLK_LANE => CLK,
          FT601_CLK => FT601_CLK,
          FT601_RST_N => FT601_RST_N,
          FT601_DATA => FT601_DATA,
          FT601_BE => FT601_BE,
          FT601_RXF_N => FT601_RXF_N,
          FT601_TXE_N => FT601_TXE_N,
          FT601_WR_N => FT601_WR_N,
          FT601_SIWU_N => FT601_SIWU_N,
          FT601_RD_N => FT601_RD_N,
          FT601_OE_N => FT601_OE_N
          --rst => rst,
          --debug => debug
        );

    enc_inst : enc_8b10b
        port map (
            reset => rst,
            sbyteclk => CLK_60MHz,
            ctrl_ind => mode,
            unenc_data => rng(31 downto 24),
            enc_data => enc10b_dat
        );

    data_gen_inst : prng_send
        generic map (
            SEED => "10111100110011001111000001010011" -- K28.5 
        )
        port map (
            clk   => CLK_60MHz,
            enb   => LED,
            mode  => mode,
            reset => rst,
            rng   => rng
        );

  process
  begin
    wait for 5*CLK_60MHz_period;
    rst <= '0';
    wait;
  end process;
   -- Clock process definitions
   CLK_300MHz_process :process
   begin
    CLK_300MHz <= '1';
    wait for CLK_300MHz_period/2;
    CLK_300MHz <= '0';
    wait for CLK_300MHz_period/2;
   end process;
   -- Clock process definitions
   CLK_60MHz_process :process
   begin
    CLK_60MHz <= '1';
    wait for CLK_60MHz_period/2;
    CLK_60MHz <= '0';
    wait for CLK_60MHz_period/2;
   end process;

   FT601_CLK_process :process
   begin
    FT601_CLK <= '1';
    wait for FT601_CLK_period/2;
    FT601_CLK <= '0';
    wait for FT601_CLK_period/2;
   end process;

   --rst_proc : process
   --begin
   -- wait for 10 us;
   -- FT601_TXE_N <= '0';
   -- wait for 10 us;
   -- FT601_TXE_N <= '1';
   -- wait for 10 us;
   -- FT601_TXE_N <= '0';
   -- wait for 10 us;
   -- FT601_TXE_N <= '1';
   -- wait;
   -- end process;

   -- Stimulus process
   stim_proc: process
   begin    
        wait until rising_edge(CLK_300MHz);
        LANE0 <= enc10b_dat(0 downto 0) & enc10b_dat(0 downto 0) & enc10b_dat(0 downto 0) & enc10b_dat(0 downto 0) & enc10b_dat(0 downto 0);
        CLK <= '1';

        wait until falling_edge(CLK_300MHz);
        LANE0 <= enc10b_dat(1 downto 1) & enc10b_dat(1 downto 1) & enc10b_dat(1 downto 1) & enc10b_dat(1 downto 1) & enc10b_dat(1 downto 1);
        CLK <= '0';

        wait until rising_edge(CLK_300MHz);
        LANE0 <= enc10b_dat(2 downto 2) & enc10b_dat(2 downto 2) & enc10b_dat(2 downto 2) & enc10b_dat(2 downto 2) & enc10b_dat(2 downto 2);
        CLK <= '1';

        wait until falling_edge(CLK_300MHz);
        LANE0 <= enc10b_dat(3 downto 3) & enc10b_dat(3 downto 3) & enc10b_dat(3 downto 3) & enc10b_dat(3 downto 3) & enc10b_dat(3 downto 3);
        CLK <= '0';

        wait until rising_edge(CLK_300MHz);
        LANE0 <= enc10b_dat(4 downto 4) & enc10b_dat(4 downto 4) & enc10b_dat(4 downto 4) & enc10b_dat(4 downto 4) & enc10b_dat(4 downto 4);
        CLK <= '1';

        wait until falling_edge(CLK_300MHz);
        LANE0 <= enc10b_dat(5 downto 5) & enc10b_dat(5 downto 5) & enc10b_dat(5 downto 5) & enc10b_dat(5 downto 5) & enc10b_dat(5 downto 5);
        CLK <= '0';

        wait until rising_edge(CLK_300MHz);
        LANE0 <= enc10b_dat(6 downto 6) & enc10b_dat(6 downto 6) & enc10b_dat(6 downto 6) & enc10b_dat(6 downto 6) & enc10b_dat(6 downto 6);
        CLK <= '1';

        wait until falling_edge(CLK_300MHz);
        LANE0 <= enc10b_dat(7 downto 7) & enc10b_dat(7 downto 7) & enc10b_dat(7 downto 7) & enc10b_dat(7 downto 7) & enc10b_dat(7 downto 7);
        CLK <= '0';

        wait until rising_edge(CLK_300MHz);
        LANE0 <= enc10b_dat(8 downto 8) & enc10b_dat(8 downto 8) & enc10b_dat(8 downto 8) & enc10b_dat(8 downto 8) & enc10b_dat(8 downto 8);
        CLK <= '1';

        wait until falling_edge(CLK_300MHz);
        LANE0 <= enc10b_dat(9 downto 9) & enc10b_dat(9 downto 9) & enc10b_dat(9 downto 9) & enc10b_dat(9 downto 9) & enc10b_dat(9 downto 9);
        CLK <= '0';

   end process;

END;
