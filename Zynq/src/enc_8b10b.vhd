-------------------------------------------------------------------------------
--
-- Title    : 8b/10b Encoder
-- Design   : 8-bit to 10-bit Encoder
-- Project  : 8000 - 8b10b_encdec
-- Author   : Ken Boyette
-- Company  : Critia Computer, Inc.
--
-------------------------------------------------------------------------------
--
-- File         : 8b10b_enc.vhd
-- Version      : 1.0
-- Generated    : 09.15.2006
-- By           : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description :
--  This module provides 8-bit to 10-bit encoding.
--  It accepts 8-bit parallel data input and generates 10-bit encoded data
--  output in accordance with the 8b/10b standard.  This coding method was
--  described in the 1983 IBM publication "A DC-Balanced, Partitioned-Block,
--  8B/10B Transmission Code" by A.X. Widmer and P.A. Franaszek and was granted
--  a U.S. Patent #4,486,739 in 1984 which has now expired.
--
--      The parallel 8-bit Binary input represent 256 possible values, called
--      characters.
--      The bits are identified as:
--          HI, GI, FI, EI, DI, CI, BI, AI (Most Significant to Least)
--      The output is a 10-bit encoded character whose bits are identified as:
--          AO, BO, CO, DO, EO, IO, FO, GO, HO, AJO (Least Significant to Most)
--      An additional 12 output characters, K, are defined for command and
--      synchronization use.
--      KI, is used to indicate that the input is for a special character.
--      All inputs and outputs are synchronous with an externally supplied
--      byte rate clock BYTECLK.
--      The encoded output is valid one clock after the input.
--      There is a reset input, RESET, to reset the logic.  The next rising 
--      BYTECLK after RESET is deasserted latches valid input data.
--
--      Note: This VHDL structure closely follows the discrete logic defined 
--      in the original article and the subsequent patent.
--      The Figures referenced are those in the patent.
-------------------------------------------------------------------------------
--      This program is licensed under the GPL.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity enc_8b10b is
    port(
        reset    : in  std_logic ;    -- global asynchronous reset (active high) 
        sbyteclk : in  std_logic ;         -- master synchronous send byte clock
        ctrl_ind : in std_logic;
        unenc_data : in std_logic_vector(7 downto 0);
        enc_data : out std_logic_vector(9 downto 0)
    );
end enc_8b10b;


architecture rtl of enc_8b10b is

    -- signals to tie things together
    signal xlreset, lreset              : std_logic ; -- local synchronized reset
    signal l40, l04, l13, l31, l22      : std_logic ; -- figure 3
    signal f4, g4, h4, k4, s, fneg      : std_logic ; -- figure 4 
    signal pd1s6, nd1s6, pd0s6, nd0s6   : std_logic ; -- figure 5 
    signal nd1s4, nd0s4, pd1s4, pd0s4   : std_logic ; -- figure 5
    signal compls4, compls6, ndl6       : std_logic ; -- figure 6
    signal pdl6, lpdl6, pdl4, lpdl4     : std_logic ; -- figure 6
    signal nao, nbo, nco, ndo, neo, nio : std_logic ; -- figure 7
    signal nfo, ngo, nho, njo, sint     : std_logic ; -- figure 8
    signal ki : std_logic ;             -- control (k) input(active high)
    signal ai, bi, ci, di, ei, fi, gi, hi : std_logic ; -- unencoded input data
    signal jo, ho, go, fo, io, eo, do, co, bo, ao : std_logic;    -- encoded out 

begin

    enc_data <= jo & io & ho & go & fo & eo & do & co & bo & ao when rising_edge(sbyteclk);
    ai <= unenc_data(0);
    bi <= unenc_data(1);
    ci <= unenc_data(2);
    di <= unenc_data(3);
    ei <= unenc_data(4);
    fi <= unenc_data(5);
    gi <= unenc_data(6);
    hi <= unenc_data(7);
    ki <= ctrl_ind;
    ----------------------------------------------------------------------------
    -- process: syncrst; synchronize and delay reset one clock for startup
    ----------------------------------------------------------------------------
    syncrst : process (reset, xlreset, sbyteclk)
    begin
        if sbyteclk'event and sbyteclk = '1' then
            xlreset <= reset ;
        
        end if;
        if sbyteclk'event and sbyteclk = '0' then
            lreset <= xlreset ;
        
        end if ;
    end process syncrst ;

    ----------------------------------------------------------------------------
    -- 5b input function (reference: figure 3)
    ----------------------------------------------------------------------------

    -- four 1's
    l40 <= ai and bi and ci and di ;                   -- 1,1,1,1
                                                       -- four 0's
    l04 <= not ai and not bi and not ci and not di ;   -- 0,0,0,0
                                                       -- one 1 and three 0's
    l13 <= (not ai and not bi and not ci and di)       -- 0,0,0,1
        or (not ai and not bi and ci and not di)       -- 0,0,1,0     
        or (not ai and bi and not ci and not di)       -- 0,1,0,0
        or (ai and not bi and not ci and not di) ;     -- 1,0,0,0
                                                       -- three 1's and one 0     
    l31 <= (ai and bi and ci and not di)               -- 1,1,1,0  
        or (ai and bi and not ci and di)               -- 1,1,0,1
        or (ai and not bi and ci and di)               -- 1,0,1,1
        or (not ai and bi and ci and di) ;             -- 0,1,1,1
                                                       -- two 1's and two 0's
    l22 <= (not ai and not bi and ci and di)           -- 0,0,1,1
        or (not ai and bi and ci and not di)           -- 0,1,1,0
        or (ai and bi and not ci and not di)           -- 1,1,0,0
        or (ai and not bi and not ci and di)           -- 1,0,0,1
        or (not ai and bi and not ci and di)           -- 0,1,0,1
        or (ai and not bi and ci and not di) ;         -- 1,0,1,0

    ----------------------------------------------------------------------------
    -- 3b input function (reference: figure 4)
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    -- process: fn3b; latch 3b and k inputs
    ----------------------------------------------------------------------------
    fn3b : process (sbyteclk, fi, gi, hi, ki)
    begin -- falling edge of clock latches f,g,h,k inputs
        if sbyteclk'event and sbyteclk = '0' then
            f4 <= fi ;
            g4 <= gi ;
            h4 <= hi ;
            k4 <= ki ;
        
        end if;
    end process fn3b;

    ----------------------------------------------------------------------------
    -- process: fns; create and latch "s" function
    ----------------------------------------------------------------------------
    fns : process (lreset, sbyteclk, pdl6, l31, di, ei, ndl6, l13)
    begin
        if lreset = '1' then
            s <= '0' ;
        
        elsif sbyteclk'event and sbyteclk = '1' then
            s <= (pdl6 and l31 and di and not ei)
                or (ndl6 and l13 and ei and not di) ;
        
        end if;
    end process fns ;

    -- intermediate term for "f4 is not equal to g4"
    fneg <= f4 xor g4 ;

    ----------------------------------------------------------------------------
    -- disparity control - figure 5
    ----------------------------------------------------------------------------

    pd1s6 <= (not l22 and not l31 and not ei)
        or (l13 and di and ei) ;

    nd1s6 <= (l31 and not di and not ei)
        or (ei and not l22 and not l13)
        or k4 ;

    pd0s6 <= (not l22 and not l13 and ei)
        or k4 ;

    nd0s6 <= (not l22 and not l31 and not ei)
        or (l13 and di and ei) ;

    nd1s4 <= (f4 and g4);
    nd0s4 <= (not f4 and not g4);

    pd1s4 <= (not f4 and not g4)
        or (fneg and k4) ;

    pd0s4 <= (f4 and g4 and h4) ;

    ----------------------------------------------------------------------------
    -- disparity control - figure 6
    ----------------------------------------------------------------------------

    pdl6 <= (pd0s6 and not compls6)
        or (compls6 and nd0s6)
        or (not nd0s6 and not pd0s6 and lpdl4) ;

    ndl6 <= not pdl6 ;

    pdl4 <= (lpdl6 and not pd0s4 and not nd0s4)
        or (nd0s4 and compls4)
        or (not compls4 and pd0s4) ;

    ----------------------------------------------------------------------------
    -- process: cmpls4; disparity determines complimenting s4
    ----------------------------------------------------------------------------
    cmpls4 : process (lreset, sbyteclk, pdl6)
    begin
        if lreset = '1' then
            lpdl6 <= '0' ;
        
        elsif sbyteclk'event and sbyteclk = '1' then -- rising edge
            lpdl6 <= pdl6 ;                          -- .. latches s4
        
        end if;
    end process cmpls4 ;

    compls4 <= (pd1s4 and not lpdl6)
        xor (nd1s4 and lpdl6) ;

    ----------------------------------------------------------------------------
    -- process: cmpls6; disparity determines complimenting s6
    ----------------------------------------------------------------------------
    cmpls6 : process (lreset, sbyteclk, pdl4)
    begin
        if lreset = '1' then
            lpdl4 <= '0' ;
        
        elsif sbyteclk'event and sbyteclk = '0' then -- falling edge
            lpdl4 <= pdl4 ;                          -- .. latches s6
        
        end if;
    end process cmpls6;

    compls6 <= (nd1s6 and lpdl4)
        xor (pd1s6 and not lpdl4) ;

    ----------------------------------------------------------------------------
    -- 5b/6b encoder - figure 7
    ----------------------------------------------------------------------------

    -- logic for non-complimented (normal) a,b,c,d,e,i outputs
    nao <= ai ;
    nbo <= l04
        or (bi and not l40) ;

    nco <= ci
        or l04
        or (l13 and di and ei) ;

    ndo <= (di and not l40) ;
    neo <= (ei and not (l13 and di and ei))
        or (l13 and not ei) ;

    nio <= (l22 and not ei)
        or (l04 and ei)
        or (l13 and not di and ei)
        or (l40 and ei)
        or (l22 and ki) ;

    ----------------------------------------------------------------------------
    -- process: enc5b6b; generate and latch ls 6 encoded bits
    ----------------------------------------------------------------------------
    enc5b6b : process (lreset, sbyteclk, compls6, nao, nbo, nco, ndo, neo, nio)
    begin
        if lreset = '1' then
            ao <= '0' ;
            bo <= '0' ;
            co <= '0' ;
            do <= '0' ;
            eo <= '0' ;
            io <= '0' ;
        
        elsif sbyteclk'event and sbyteclk = '1' then
            ao <= compls6 xor nao ; -- least significant bit 0
            bo <= compls6 xor nbo ;
            co <= compls6 xor nco ;
            do <= compls6 xor ndo ;
            eo <= compls6 xor neo ;
            io <= compls6 xor nio ; -- most significant bit 6
        
        end if;
    end process enc5b6b;

    ----------------------------------------------------------------------------
    -- 3b/4b encoder - figure 8
    ----------------------------------------------------------------------------

    -- logic for the non-complimented f,g,h,j outputs
    sint <= (s and f4 and g4 and h4)
        or (k4 and f4 and g4 and h4) ;
    nfo <= (f4 and not sint) ;
    ngo <= g4
        or (not f4 and not g4 and not h4) ;
    nho <= h4 ;
    njo <= sint
        or (fneg and not h4) ;

    ----------------------------------------------------------------------------
    -- process: enc3b4b; generate and latch ms 4 encoded bits
    ----------------------------------------------------------------------------
    enc3b4b : process (lreset, sbyteclk, compls4, nfo, ngo, nho, njo)
    begin
        if lreset = '1' then
            fo <= '0' ;
            go <= '0' ;
            ho <= '0' ;
            jo <= '0' ;

        elsif sbyteclk'event and sbyteclk ='0' then
            fo <= compls4 xor nfo ; -- least significant bit 7
            go <= compls4 xor ngo ;
            ho <= compls4 xor nho ;
            jo <= compls4 xor njo ; -- most significant bit 10
            
        end if;
    end process enc3b4b ;

end rtl;

