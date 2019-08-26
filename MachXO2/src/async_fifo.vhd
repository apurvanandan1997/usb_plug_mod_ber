library IEEE;
use IEEE.std_logic_1164.all;

library MACHXO2;
use MACHXO2.all;

entity async_fifo is
    port (
        data         : in  std_logic_vector(31 downto 0);
        wr_clock     : in  std_logic;
        rd_clock     : in  std_logic;
        wr_en        : in  std_logic;
        rd_en        : in  std_logic;
        reset        : in  std_logic;
        rpreset      : in  std_logic;
        q            : out std_logic_vector(31 downto 0);
        empty        : out std_logic;
        full         : out std_logic;
        almost_empty : out std_logic;
        almost_full  : out std_logic
    );
end async_fifo;

architecture Structure of async_fifo is

    -- internal signal declarations
    signal vhi_pin   : std_logic;
    signal empty_int : std_logic;
    signal full_int  : std_logic;
    signal vlo_pin   : std_logic;

    -- local component declarations
    component VHI
        port (
            Z : out std_logic
        );

    end component;

    component VLO
        port (
            Z : out std_logic
        );
    end component;

    component FIFO8KB
        generic (
            FULLPOINTER1        : in String;
            FULLPOINTER         : in String;
            AFPOINTER1          : in String;
            AFPOINTER           : in String;
            AEPOINTER1          : in String;
            AEPOINTER           : in String;
            ASYNC_RESET_RELEASE : in String;
            RESETMODE           : in String;
            GSR                 : in String;
            CSDECODE_R          : in String;
            CSDECODE_W          : in String;
            REGMODE             : in String;
            DATA_WIDTH_R        : in Integer;
            DATA_WIDTH_W        : in Integer
        );
        port (
            DI0    : in  std_logic;
            DI1    : in  std_logic;
            DI2    : in  std_logic;
            DI3    : in  std_logic;
            DI4    : in  std_logic;
            DI5    : in  std_logic;
            DI6    : in  std_logic;
            DI7    : in  std_logic;
            DI8    : in  std_logic;
            DI9    : in  std_logic;
            DI10   : in  std_logic;
            DI11   : in  std_logic;
            DI12   : in  std_logic;
            DI13   : in  std_logic;
            DI14   : in  std_logic;
            DI15   : in  std_logic;
            DI16   : in  std_logic;
            DI17   : in  std_logic;
            CSW0   : in  std_logic;
            CSW1   : in  std_logic;
            CSR0   : in  std_logic;
            CSR1   : in  std_logic;
            FULLI  : in  std_logic;
            EMPTYI : in  std_logic;
            WE     : in  std_logic;
            RE     : in  std_logic;
            ORE    : in  std_logic;
            CLKW   : in  std_logic;
            CLKR   : in  std_logic;
            RST    : in  std_logic;
            RPRST  : in  std_logic;
            DO0    : out std_logic;
            DO1    : out std_logic;
            DO2    : out std_logic;
            DO3    : out std_logic;
            DO4    : out std_logic;
            DO5    : out std_logic;
            DO6    : out std_logic;
            DO7    : out std_logic;
            DO8    : out std_logic;
            DO9    : out std_logic;
            DO10   : out std_logic;
            DO11   : out std_logic;
            DO12   : out std_logic;
            DO13   : out std_logic;
            DO14   : out std_logic;
            DO15   : out std_logic;
            DO16   : out std_logic;
            DO17   : out std_logic;
            EF     : out std_logic;
            AEF    : out std_logic;
            AFF    : out std_logic;
            FF     : out std_logic
        );
    end component;

    attribute syn_keep                  : boolean;
    attribute NGD_DRC_MASK              : integer;
    attribute NGD_DRC_MASK of Structure : architecture is 1;

begin

    empty <= empty_int;
    full  <= full_int;

    -- component instantiation statements

    vhi_pin_inst : VHI
        port map (
            Z => vhi_pin
        );

    vlo_pin_inst : VLO
        port map (
            Z => vlo_pin
        );

    async_fifo_0_7 : FIFO8KB
        generic map (
            FULLPOINTER1        => "0b01111111111100",
            FULLPOINTER         => "0b10000000000000",
            AFPOINTER1          => "0b01011111111100",
            AFPOINTER           => "0b01100000000000",
            AEPOINTER1          => "0b00100000000100",
            AEPOINTER           => "0b00100000000000",
            ASYNC_RESET_RELEASE => "SYNC",
            GSR                 => "ENABLED",
            RESETMODE           => "ASYNC",
            REGMODE             => "NOREG",
            CSDECODE_R          => "0b11",
            CSDECODE_W          => "0b11",
            DATA_WIDTH_R        => 4,
            DATA_WIDTH_W        => 4
        )
        port map (
            DI0    => data(0),
            DI1    => data(1),
            DI2    => data(2),
            DI3    => data(3),
            DI4    => vlo_pin,
            DI5    => vlo_pin,
            DI6    => vlo_pin,
            DI7    => vlo_pin,
            DI8    => vlo_pin,
            DI9    => vlo_pin,
            DI10   => vlo_pin,
            DI11   => vlo_pin,
            DI12   => vlo_pin,
            DI13   => vlo_pin,
            DI14   => vlo_pin,
            DI15   => vlo_pin,
            DI16   => vlo_pin,
            DI17   => vlo_pin,
            CSW0   => vhi_pin,
            CSW1   => vhi_pin,
            CSR0   => vhi_pin,
            CSR1   => vhi_pin,
            FULLI  => full_int,
            EMPTYI => empty_int,
            WE     => wr_en,
            RE     => rd_en,
            ORE    => rd_en,
            CLKW   => wr_clock,
            CLKR   => rd_clock,
            RST    => reset,
            RPRST  => rpreset,
            DO0    => q(0),
            DO1    => q(1),
            DO2    => q(2),
            DO3    => q(3),
            DO4    => open,
            DO5    => open,
            DO6    => open,
            DO7    => open,
            DO8    => open,
            DO9    => open,
            DO10   => open,
            DO11   => open,
            DO12   => open,
            DO13   => open,
            DO14   => open,
            DO15   => open,
            DO16   => open,
            DO17   => open,
            EF     => empty_int,
            AEF    => almost_empty,
            AFF    => almost_full,
            FF     => full_int
        );

    async_fifo_1_6 : FIFO8KB
        generic map (
            FULLPOINTER1        => "0b00000000000000",
            FULLPOINTER         => "0b11111111111100",
            AFPOINTER1          => "0b00000000000000",
            AFPOINTER           => "0b11111111111100",
            AEPOINTER1          => "0b00000000000000",
            AEPOINTER           => "0b11111111111100",
            ASYNC_RESET_RELEASE => "SYNC",
            GSR                 => "ENABLED",
            RESETMODE           => "ASYNC",
            REGMODE             => "NOREG",
            CSDECODE_R          => "0b11",
            CSDECODE_W          => "0b11",
            DATA_WIDTH_R        => 4,
            DATA_WIDTH_W        => 4
        )
        port map (
            DI0    => data(4),
            DI1    => data(5),
            DI2    => data(6),
            DI3    => data(7),
            DI4    => vlo_pin,
            DI5    => vlo_pin,
            DI6    => vlo_pin,
            DI7    => vlo_pin,
            DI8    => vlo_pin,
            DI9    => vlo_pin,
            DI10   => vlo_pin,
            DI11   => vlo_pin,
            DI12   => vlo_pin,
            DI13   => vlo_pin,
            DI14   => vlo_pin,
            DI15   => vlo_pin,
            DI16   => vlo_pin,
            DI17   => vlo_pin,
            CSW0   => vhi_pin,
            CSW1   => vhi_pin,
            CSR0   => vhi_pin,
            CSR1   => vhi_pin,
            FULLI  => full_int,
            EMPTYI => empty_int,
            WE     => wr_en,
            RE     => rd_en,
            ORE    => rd_en,
            CLKW   => wr_clock,
            CLKR   => rd_clock,
            RST    => reset,
            RPRST  => rpreset,
            DO0    => q(4),
            DO1    => q(5),
            DO2    => q(6),
            DO3    => q(7),
            DO4    => open,
            DO5    => open,
            DO6    => open,
            DO7    => open,
            DO8    => open,
            DO9    => open,
            DO10   => open,
            DO11   => open,
            DO12   => open,
            DO13   => open,
            DO14   => open,
            DO15   => open,
            DO16   => open,
            DO17   => open,
            EF     => open,
            AEF    => open,
            AFF    => open,
            FF     => open
        );

    async_fifo_2_5 : FIFO8KB
        generic map (
            FULLPOINTER1        => "0b00000000000000",
            FULLPOINTER         => "0b11111111111100",
            AFPOINTER1          => "0b00000000000000",
            AFPOINTER           => "0b11111111111100",
            AEPOINTER1          => "0b00000000000000",
            AEPOINTER           => "0b11111111111100",
            ASYNC_RESET_RELEASE => "SYNC",
            GSR                 => "ENABLED",
            RESETMODE           => "ASYNC",
            REGMODE             => "NOREG",
            CSDECODE_R          => "0b11",
            CSDECODE_W          => "0b11",
            DATA_WIDTH_R        => 4,
            DATA_WIDTH_W        => 4
        )
        port map (
            DI0    => data(8),
            DI1    => data(9),
            DI2    => data(10),
            DI3    => data(11),
            DI4    => vlo_pin,
            DI5    => vlo_pin,
            DI6    => vlo_pin,
            DI7    => vlo_pin,
            DI8    => vlo_pin,
            DI9    => vlo_pin,
            DI10   => vlo_pin,
            DI11   => vlo_pin,
            DI12   => vlo_pin,
            DI13   => vlo_pin,
            DI14   => vlo_pin,
            DI15   => vlo_pin,
            DI16   => vlo_pin,
            DI17   => vlo_pin,
            CSW0   => vhi_pin,
            CSW1   => vhi_pin,
            CSR0   => vhi_pin,
            CSR1   => vhi_pin,
            FULLI  => full_int,
            EMPTYI => empty_int,
            WE     => wr_en,
            RE     => rd_en,
            ORE    => rd_en,
            CLKW   => wr_clock,
            CLKR   => rd_clock,
            RST    => reset,
            RPRST  => rpreset,
            DO0    => q(8),
            DO1    => q(9),
            DO2    => q(10),
            DO3    => q(11),
            DO4    => open,
            DO5    => open,
            DO6    => open,
            DO7    => open,
            DO8    => open,
            DO9    => open,
            DO10   => open,
            DO11   => open,
            DO12   => open,
            DO13   => open,
            DO14   => open,
            DO15   => open,
            DO16   => open,
            DO17   => open,
            EF     => open,
            AEF    => open,
            AFF    => open,
            FF     => open
        );

    async_fifo_3_4 : FIFO8KB
        generic map (
            FULLPOINTER1        => "0b00000000000000",
            FULLPOINTER         => "0b11111111111100",
            AFPOINTER1          => "0b00000000000000",
            AFPOINTER           => "0b11111111111100",
            AEPOINTER1          => "0b00000000000000",
            AEPOINTER           => "0b11111111111100",
            ASYNC_RESET_RELEASE => "SYNC",
            GSR                 => "ENABLED",
            RESETMODE           => "ASYNC",
            REGMODE             => "NOREG",
            CSDECODE_R          => "0b11",
            CSDECODE_W          => "0b11",
            DATA_WIDTH_R        => 4,
            DATA_WIDTH_W        => 4
        )
        port map (
            DI0    => data(12),
            DI1    => data(13),
            DI2    => data(14),
            DI3    => data(15),
            DI4    => vlo_pin,
            DI5    => vlo_pin,
            DI6    => vlo_pin,
            DI7    => vlo_pin,
            DI8    => vlo_pin,
            DI9    => vlo_pin,
            DI10   => vlo_pin,
            DI11   => vlo_pin,
            DI12   => vlo_pin,
            DI13   => vlo_pin,
            DI14   => vlo_pin,
            DI15   => vlo_pin,
            DI16   => vlo_pin,
            DI17   => vlo_pin,
            CSW0   => vhi_pin,
            CSW1   => vhi_pin,
            CSR0   => vhi_pin,
            CSR1   => vhi_pin,
            FULLI  => full_int,
            EMPTYI => empty_int,
            WE     => wr_en,
            RE     => rd_en,
            ORE    => rd_en,
            CLKW   => wr_clock,
            CLKR   => rd_clock,
            RST    => reset,
            RPRST  => rpreset,
            DO0    => q(12),
            DO1    => q(13),
            DO2    => q(14),
            DO3    => q(15),
            DO4    => open,
            DO5    => open,
            DO6    => open,
            DO7    => open,
            DO8    => open,
            DO9    => open,
            DO10   => open,
            DO11   => open,
            DO12   => open,
            DO13   => open,
            DO14   => open,
            DO15   => open,
            DO16   => open,
            DO17   => open,
            EF     => open,
            AEF    => open,
            AFF    => open,
            FF     => open
        );

    async_fifo_4_3 : FIFO8KB
        generic map (
            FULLPOINTER1        => "0b00000000000000",
            FULLPOINTER         => "0b11111111111100",
            AFPOINTER1          => "0b00000000000000",
            AFPOINTER           => "0b11111111111100",
            AEPOINTER1          => "0b00000000000000",
            AEPOINTER           => "0b11111111111100",
            ASYNC_RESET_RELEASE => "SYNC",
            GSR                 => "ENABLED",
            RESETMODE           => "ASYNC",
            REGMODE             => "NOREG",
            CSDECODE_R          => "0b11",
            CSDECODE_W          => "0b11",
            DATA_WIDTH_R        => 4,
            DATA_WIDTH_W        => 4
        )
        port map (
            DI0    => data(16),
            DI1    => data(17),
            DI2    => data(18),
            DI3    => data(19),
            DI4    => vlo_pin,
            DI5    => vlo_pin,
            DI6    => vlo_pin,
            DI7    => vlo_pin,
            DI8    => vlo_pin,
            DI9    => vlo_pin,
            DI10   => vlo_pin,
            DI11   => vlo_pin,
            DI12   => vlo_pin,
            DI13   => vlo_pin,
            DI14   => vlo_pin,
            DI15   => vlo_pin,
            DI16   => vlo_pin,
            DI17   => vlo_pin,
            CSW0   => vhi_pin,
            CSW1   => vhi_pin,
            CSR0   => vhi_pin,
            CSR1   => vhi_pin,
            FULLI  => full_int,
            EMPTYI => empty_int,
            WE     => wr_en,
            RE     => rd_en,
            ORE    => rd_en,
            CLKW   => wr_clock,
            CLKR   => rd_clock,
            RST    => reset,
            RPRST  => rpreset,
            DO0    => q(16),
            DO1    => q(17),
            DO2    => q(18),
            DO3    => q(19),
            DO4    => open,
            DO5    => open,
            DO6    => open,
            DO7    => open,
            DO8    => open,
            DO9    => open,
            DO10   => open,
            DO11   => open,
            DO12   => open,
            DO13   => open,
            DO14   => open,
            DO15   => open,
            DO16   => open,
            DO17   => open,
            EF     => open,
            AEF    => open,
            AFF    => open,
            FF     => open
        );

    async_fifo_5_2 : FIFO8KB
        generic map (
            FULLPOINTER1        => "0b00000000000000",
            FULLPOINTER         => "0b11111111111100",
            AFPOINTER1          => "0b00000000000000",
            AFPOINTER           => "0b11111111111100",
            AEPOINTER1          => "0b00000000000000",
            AEPOINTER           => "0b11111111111100",
            ASYNC_RESET_RELEASE => "SYNC",
            GSR                 => "ENABLED",
            RESETMODE           => "ASYNC",
            REGMODE             => "NOREG",
            CSDECODE_R          => "0b11",
            CSDECODE_W          => "0b11",
            DATA_WIDTH_R        => 4,
            DATA_WIDTH_W        => 4
        )
        port map (
            DI0    => data(20),
            DI1    => data(21),
            DI2    => data(22),
            DI3    => data(23),
            DI4    => vlo_pin,
            DI5    => vlo_pin,
            DI6    => vlo_pin,
            DI7    => vlo_pin,
            DI8    => vlo_pin,
            DI9    => vlo_pin,
            DI10   => vlo_pin,
            DI11   => vlo_pin,
            DI12   => vlo_pin,
            DI13   => vlo_pin,
            DI14   => vlo_pin,
            DI15   => vlo_pin,
            DI16   => vlo_pin,
            DI17   => vlo_pin,
            CSW0   => vhi_pin,
            CSW1   => vhi_pin,
            CSR0   => vhi_pin,
            CSR1   => vhi_pin,
            FULLI  => full_int,
            EMPTYI => empty_int,
            WE     => wr_en,
            RE     => rd_en,
            ORE    => rd_en,
            CLKW   => wr_clock,
            CLKR   => rd_clock,
            RST    => reset,
            RPRST  => rpreset,
            DO0    => q(20),
            DO1    => q(21),
            DO2    => q(22),
            DO3    => q(23),
            DO4    => open,
            DO5    => open,
            DO6    => open,
            DO7    => open,
            DO8    => open,
            DO9    => open,
            DO10   => open,
            DO11   => open,
            DO12   => open,
            DO13   => open,
            DO14   => open,
            DO15   => open,
            DO16   => open,
            DO17   => open,
            EF     => open,
            AEF    => open,
            AFF    => open,
            FF     => open
        );

    async_fifo_6_1 : FIFO8KB
        generic map (
            FULLPOINTER1        => "0b00000000000000",
            FULLPOINTER         => "0b11111111111100",
            AFPOINTER1          => "0b00000000000000",
            AFPOINTER           => "0b11111111111100",
            AEPOINTER1          => "0b00000000000000",
            AEPOINTER           => "0b11111111111100",
            ASYNC_RESET_RELEASE => "SYNC",
            GSR                 => "ENABLED",
            RESETMODE           => "ASYNC",
            REGMODE             => "NOREG",
            CSDECODE_R          => "0b11",
            CSDECODE_W          => "0b11",
            DATA_WIDTH_R        => 4,
            DATA_WIDTH_W        => 4
        )
        port map (
            DI0    => data(24),
            DI1    => data(25),
            DI2    => data(26),
            DI3    => data(27),
            DI4    => vlo_pin,
            DI5    => vlo_pin,
            DI6    => vlo_pin,
            DI7    => vlo_pin,
            DI8    => vlo_pin,
            DI9    => vlo_pin,
            DI10   => vlo_pin,
            DI11   => vlo_pin,
            DI12   => vlo_pin,
            DI13   => vlo_pin,
            DI14   => vlo_pin,
            DI15   => vlo_pin,
            DI16   => vlo_pin,
            DI17   => vlo_pin,
            CSW0   => vhi_pin,
            CSW1   => vhi_pin,
            CSR0   => vhi_pin,
            CSR1   => vhi_pin,
            FULLI  => full_int,
            EMPTYI => empty_int,
            WE     => wr_en,
            RE     => rd_en,
            ORE    => rd_en,
            CLKW   => wr_clock,
            CLKR   => rd_clock,
            RST    => reset,
            RPRST  => rpreset,
            DO0    => q(24),
            DO1    => q(25),
            DO2    => q(26),
            DO3    => q(27),
            DO4    => open,
            DO5    => open,
            DO6    => open,
            DO7    => open,
            DO8    => open,
            DO9    => open,
            DO10   => open,
            DO11   => open,
            DO12   => open,
            DO13   => open,
            DO14   => open,
            DO15   => open,
            DO16   => open,
            DO17   => open,
            EF     => open,
            AEF    => open,
            AFF    => open,
            FF     => open
        );

    async_fifo_7_0 : FIFO8KB
        generic map (
            FULLPOINTER1        => "0b00000000000000",
            FULLPOINTER         => "0b11111111111100",
            AFPOINTER1          => "0b00000000000000",
            AFPOINTER           => "0b11111111111100",
            AEPOINTER1          => "0b00000000000000",
            AEPOINTER           => "0b11111111111100",
            ASYNC_RESET_RELEASE => "SYNC",
            GSR                 => "ENABLED",
            RESETMODE           => "ASYNC",
            REGMODE             => "NOREG",
            CSDECODE_R          => "0b11",
            CSDECODE_W          => "0b11",
            DATA_WIDTH_R        => 4,
            DATA_WIDTH_W        => 4
        )
        port map (
            DI0    => data(28),
            DI1    => data(29),
            DI2    => data(30),
            DI3    => data(31),
            DI4    => vlo_pin,
            DI5    => vlo_pin,
            DI6    => vlo_pin,
            DI7    => vlo_pin,
            DI8    => vlo_pin,
            DI9    => vlo_pin,
            DI10   => vlo_pin,
            DI11   => vlo_pin,
            DI12   => vlo_pin,
            DI13   => vlo_pin,
            DI14   => vlo_pin,
            DI15   => vlo_pin,
            DI16   => vlo_pin,
            DI17   => vlo_pin,
            CSW0   => vhi_pin,
            CSW1   => vhi_pin,
            CSR0   => vhi_pin,
            CSR1   => vhi_pin,
            FULLI  => full_int,
            EMPTYI => empty_int,
            WE     => wr_en,
            RE     => rd_en,
            ORE    => rd_en,
            CLKW   => wr_clock,
            CLKR   => rd_clock,
            RST    => reset,
            RPRST  => rpreset,
            DO0    => q(28),
            DO1    => q(29),
            DO2    => q(30),
            DO3    => q(31),
            DO4    => open,
            DO5    => open,
            DO6    => open,
            DO7    => open,
            DO8    => open,
            DO9    => open,
            DO10   => open,
            DO11   => open,
            DO12   => open,
            DO13   => open,
            DO14   => open,
            DO15   => open,
            DO16   => open,
            DO17   => open,
            EF     => open,
            AEF    => open,
            AFF    => open,
            FF     => open
        );

end Structure;

