-------------------------------------------------------------------------------
--
-- title	: 8b/10b decoder
-- design	: 10-bit to 8-bit decoder
-- project	: 8000 - 8b10b_encdec
-- author	: ken boyette
-- company	: critia computer, inc.
--
-------------------------------------------------------------------------------
--
-- file			: dec_8b10b.vhd
-- version		: 1.0
-- generated	: 09.27.2006
-- by			: itf2vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- description :
--	this module provides 10-bit to 9-bit encoding.
--	it accepts 10-bit encoded parallel data input and generates 8-bit decoded
--	data output in accordance with the 8b/10b standard method.  this method was
--	described in the 1983 ibm publication "a dc-balanced, partitioned-block,
--	8b/10b transmission code" by a.x. widmer and p.a. franaszek.  the method
--	was granted a u.s. patent #4,486,739 in 1984; now expired.
--
--		the parallel 10-bit binary input represent 1024 possible values, called
--		characters - only 268 of which are valid.
--
--		the	input is a 10-bit encoded character whose bits are identified as:
--			ai, bi, ci, di, ei, ii, fi, gi, hi, ji (least significant to most)
--
--		in addition to 256 data output characters, there are 12 special control
--		or k, characters defined for command and synchronization use.
--
--		the eight data output bits are identified as:
--			hi, gi, fi, ei, di, ci, bi, ai (most significant to least)
--
--		the output, ko, is used to indicate the output value is one of the
--		control characters.
--
--		all inputs and outputs are synchronous with an externally supplied
--		byte rate clock byteclk.
--		the encoded output is valid one clock after the input.
--		there is a reset input, reset, to reset the logic.  the next rising
--		byteclk after reset is deasserted latches valid input data.
--
--		note: this vhdl structure closely follows the discrete logic defined
--		in the original article and the subsequent patent.  the figures
--		referenced are those in the patent.
-------------------------------------------------------------------------------
--	this program is licensed under the gpl
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity dec_8b10b is
    port(
		reset : in std_logic ;	-- global asynchronous reset (ah)
		rbyteclk : in std_logic ;	-- master synchronous receive byte clock
		enc_data : in std_logic_vector(9 downto 0);
		dec_data : out std_logic_vector(7 downto 0);
		ctrl_ind : out std_logic
	    );
end dec_8b10b;

architecture behavioral of dec_8b10b is

-- signals to tie things together
	signal aneb, cned, eei, p13, p22, p31 : std_logic ;	-- figure 10 signals
	signal ika, ikb, ikc : std_logic ;	-- figure 11 signals
	signal xa, xb, xc, xd, xe : std_logic ;	-- figure 12 signals
	signal or121, or122, or123, or124, or125, or126, or127 : std_logic ;
	signal xf, xg, xh : std_logic ;	-- figure 13 signals
	signal or131, or132, or133, or134, ior134 : std_logic ;
	signal ai, bi, ci, di, ei, ii : std_logic ;
	signal fi, gi, hi, ji : std_logic ; -- encoded input (ls..ms)
	signal ko : std_logic ;	-- control (k) character indicator (ah)
	signal ho, go, fo, eo, do, co, bo, ao : std_logic; 	-- decoded out (ms..ls)

begin

	dec_data <= ho & go & fo & eo & do & co & bo & ao when rising_edge(rbyteclk);
	ctrl_ind <= ko;

	ai <= enc_data(0);
	bi <= enc_data(1);
	ci <= enc_data(2);
	di <= enc_data(3);
	ei <= enc_data(4);
	fi <= enc_data(5);
	gi <= enc_data(6);
	hi <= enc_data(7);
	ii <= enc_data(8);
	ji <= enc_data(9);
	--
	-- 6b input function (reference: figure 10)
	--

	-- one 1 and three 0's
	p13 <=	(aneb and (not ci and not di))
			or (cned and (not ai and not bi)) ;
	-- three 1's and one 0
	p31 <=	(aneb and ci and di)
			or (cned and ai and bi) ;
	-- two 1's and two 0's
	p22 <=	(ai and bi and (not ci and not di))
			or (ci and di and (not ai and not bi))
			or (aneb and cned) ;

	-- intermediate term for "ai is not equal to bi"
	aneb <=  ai xor	bi ;

	-- intermediate term for "ci is not equal to di"
	cned <=  ci xor	di ;

	-- intermediate term for "e is equal to i"
	eei <= ei xnor ii ;

	--
	-- k decoder - figure 11
	--

	-- intermediate terms
	ika	<= (ci and di and ei and ii)
		or (not ci and not di and not ei and not ii) ;
	ikb <= p13 and (not ei and ii and gi and hi and ji) ;
	ikc <= p31 and (ei and not ii and not gi and not hi and not ji) ;

	-- process: kfn; determine k output
	kfn: process (reset, rbyteclk, ika, ikb, ikc)
	begin
		if reset = '1' then
			ko <= '0';
		elsif rbyteclk'event and rbyteclk = '0' then
			ko <= ika or ikb or ikc;
		end if;
	end process kfn;

	--
	-- 5b decoder figure 12
	--

	-- logic to determine complimenting a,b,c,d,e,i inputs
	or121 <= (p22 and (not ai and not ci and eei))
		or (p13 and not ei) ;
	or122 <= (ai and bi and ei and ii)
		or (not ci and not di and not ei and not ii)
		or (p31 and ii) ;
	or123 <= (p31 and ii)
		or (p22 and bi and ci and eei)
		or (p13 and di and ei and ii) ;
	or124 <= (p22 and ai and ci and eei)
		or (p13 and not ei) ;
	or125 <= (p13 and not ei)
		or (not ci and not di and not ei and not ii)
		or (not ai and not bi and not ei and not ii) ;
	or126 <= (p22 and not ai and not ci and eei)
		or (p13 and not ii) ;
	or127 <= (p13 and di and ei and ii)
		or (p22 and not bi and not ci and eei) ;

	xa <= or127
		or or121
		or or122 ;
	xb <= or122
		or or123
		or or124 ;
	xc <= or121
		or or123
		or or125 ;
	xd <= or122
		or or124
		or or127 ;
	xe <= or125
		or or126
		or or127 ;

	-- process: dec5b; generate and latch ls 5 decoded bits
	dec5b: process (reset, rbyteclk, xa, xb, xc, xd, xe, ai, bi, ci, di, ei)
	begin
		if reset = '1' then
			ao <= '0' ;
			bo <= '0' ;
			co <= '0' ;
			do <= '0' ;
			eo <= '0' ;
		elsif rbyteclk'event and rbyteclk = '0' then
			ao <= xa xor ai ;	-- least significant bit 0
			bo <= xb xor bi ;
			co <= xc xor ci ;
			do <= xd xor di ;
			eo <= xe xor ei ;	-- most significant bit 6
		end if;
	end process dec5b;

	--
	-- 3b decoder - figure 13
	--

	-- logic for complimenting f,g,h outputs
	or131 <= (gi and hi and ji)
		or (fi and hi and ji)
		or (ior134);
	or132 <= (fi and gi and ji)
		or (not fi and not gi and not hi)
		or (not fi and not gi and hi and ji);
	or133 <= (not fi and not hi and not ji)
		or (ior134)
		or (not gi and not hi and not ji) ;
	or134 <= (not gi and not hi and not ji)
		or (fi and hi and ji)
		or (ior134) ;
	ior134 <= (not (hi and ji))
		and (not (not hi and not ji))
		and (not ci and not di and not ei and not ii) ;

	xf <= or131
		or or132 ;
	xg <= or132
		or or133 ;
	xh <= or132
		or or134 ;

	-- process: dec3b; generate and latch ms 3 decoded bits
	dec3b: process (reset, rbyteclk, xf, xg, xh, fi, gi, hi)
	begin
		if reset = '1' then
			fo <= '0' ;
			go <= '0' ;
			ho <= '0' ;
		elsif rbyteclk'event and rbyteclk ='0' then
			fo <= xf xor fi ;	-- least significant bit 7
			go <= xg xor gi ;
			ho <= xh xor hi ;	-- most significant bit 10
		end if;
	end process dec3b ;

end behavioral;
