library ieee;
use ieee.std_logic_1164.all;

entity lion is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
	x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,
	x46,x47,x48,x49,x50,x51,x52,x53,x54,x55 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35 : out std_logic );
end lion;

architecture ARC of lion is

   type states_lion is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,
	s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,
	s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,
	s121,s122,s123,s124,s125,s126,s127 );
   signal current_lion : states_lion;

begin
   process (clk , rst)
   procedure proc_lion is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;
	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;	y32  <= '0' ;
	y33  <= '0' ;	y34  <= '0' ;	y35  <= '0' ;

   case current_lion is
   when s1 =>
      if ( x17 and x18 and x40 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s2;

      elsif ( x17 and x18 and not x40 and x2 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( x17 and x18 and not x40 and not x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( x17 and not x18 and x1 and x19 and x10 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( x17 and not x18 and x1 and x19 and not x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( x17 and not x18 and x1 and not x19 and x39 and x3 and x4 ) = '1' then
         current_lion <= s1;

      elsif ( x17 and not x18 and x1 and not x19 and x39 and x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( x17 and not x18 and x1 and not x19 and x39 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( x17 and not x18 and x1 and not x19 and x39 and not x3 and x4 and not x5 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( x17 and not x18 and x1 and not x19 and x39 and not x3 and not x4 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( x17 and not x18 and x1 and not x19 and not x39 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s2;

      elsif ( x17 and not x18 and not x1 and x19 and x6 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s2;

      elsif ( x17 and not x18 and not x1 and x19 and not x6 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( x17 and not x18 and not x1 and not x19 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( not x17 and x18 and x40 and x19 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( not x17 and x18 and x40 and not x19 and x39 and x3 and x4 ) = '1' then
         current_lion <= s1;

      elsif ( not x17 and x18 and x40 and not x19 and x39 and x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( not x17 and x18 and x40 and not x19 and x39 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( not x17 and x18 and x40 and not x19 and x39 and not x3 and x4 and not x5 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( not x17 and x18 and x40 and not x19 and x39 and not x3 and not x4 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( not x17 and x18 and x40 and not x19 and not x39 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s2;

      elsif ( not x17 and x18 and not x40 and x19 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( not x17 and x18 and not x40 and x19 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( not x17 and x18 and not x40 and not x19 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s2;

      end if;

   when s2 =>
      if ( x17 and x18 and x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s8;

      elsif ( x17 and x18 and not x4 and x40 and x31 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s9;

      elsif ( x17 and x18 and not x4 and x40 and not x31 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s10;

      elsif ( x17 and x18 and not x4 and not x40 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s11;

      elsif ( x17 and not x18 and x11 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s2;

      elsif ( x17 and not x18 and not x11 and x16 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( x17 and not x18 and not x11 and not x16 and x15 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x17 and not x18 and not x11 and not x16 and x15 and not x1 ) = '1' then
         current_lion <= s2;

      elsif ( x17 and not x18 and not x11 and not x16 and not x15 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( x17 and not x18 and not x11 and not x16 and not x15 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( not x17 and not x18 and x1 and x39 and x19 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( not x17 and not x18 and x1 and x39 and not x19 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( not x17 and not x18 and x1 and x39 and not x19 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s9;

      elsif ( not x17 and not x18 and x1 and x39 and not x19 and not x3 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s11;

      elsif ( not x17 and not x18 and x1 and not x39 and x19 and x31 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( not x17 and not x18 and x1 and not x39 and x19 and not x31 ) = '1' then
         current_lion <= s2;

      elsif ( not x17 and not x18 and x1 and not x39 and not x19 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( not x17 and not x18 and not x1 and x19 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( not x17 and not x18 and not x1 and not x19 and x2 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      end if;

   when s3 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( x17 and not x18 and x7 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s17;

      elsif ( x17 and not x18 and not x7 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s18;

      elsif ( not x17 and x18 and x19 and x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( not x17 and x18 and x19 and not x5 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s11;

      elsif ( not x17 and x18 and not x19 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( not x17 and not x18 and x19 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( not x17 and not x18 and not x19 and x5 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( not x17 and not x18 and not x19 and x5 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s9;

      elsif ( not x17 and not x18 and not x19 and x5 and not x3 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s11;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      end if;

   when s4 =>
      if ( x17 and x18 and x6 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s19;

      elsif ( x17 and x18 and not x6 and x8 and x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s8;

      elsif ( x17 and x18 and not x6 and x8 and not x4 and x40 and x31 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s9;

      elsif ( x17 and x18 and not x6 and x8 and not x4 and x40 and not x31 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s10;

      elsif ( x17 and x18 and not x6 and x8 and not x4 and not x40 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s11;

      elsif ( x17 and x18 and not x6 and not x8 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( x17 and x18 and not x6 and not x8 and x15 and x16 and not x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( x17 and x18 and not x6 and not x8 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x17 and x18 and not x6 and not x8 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s4;

      elsif ( x17 and x18 and not x6 and not x8 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x17 and x18 and not x6 and not x8 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( x17 and x18 and not x6 and not x8 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x17 and not x18 and x12 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s2;

      elsif ( x17 and not x18 and not x12 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( not x17 and x18 and x19 and x9 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x17 and x18 and x19 and x9 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x17 and x18 and x19 and x9 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x17 and x18 and x19 and x9 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 and x19 and x9 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s4;

      elsif ( not x17 and x18 and x19 and x9 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 and x19 and x9 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x17 and x18 and x19 and x9 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 and x19 and not x9 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s20;

      elsif ( not x17 and x18 and not x19 and x3 and x4 ) = '1' then
         current_lion <= s4;

      elsif ( not x17 and x18 and not x19 and x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( not x17 and x18 and not x19 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( not x17 and x18 and not x19 and not x3 and x4 and not x5 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( not x17 and x18 and not x19 and not x3 and not x4 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( not x17 and not x18 and x19 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( not x17 and not x18 and x19 and not x35 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x17 and not x18 and x19 and not x35 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x17 and not x18 and x19 and not x35 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x17 and not x18 and x19 and not x35 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and x19 and not x35 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s4;

      elsif ( not x17 and not x18 and x19 and not x35 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and x19 and not x35 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x17 and not x18 and x19 and not x35 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      end if;

   when s5 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( x17 and not x18 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( not x17 and x18 and x19 and x39 and x4 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s10;

      elsif ( not x17 and x18 and x19 and x39 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s11;

      elsif ( not x17 and x18 and x19 and not x39 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( not x17 and x18 and not x19 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( not x17 and not x18 and x19 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( not x17 and not x18 and x19 and not x35 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x17 and not x18 and x19 and not x35 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x17 and not x18 and x19 and not x35 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x17 and not x18 and x19 and not x35 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and x19 and not x35 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s5;

      elsif ( not x17 and not x18 and x19 and not x35 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and x19 and not x35 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x17 and not x18 and x19 and not x35 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and not x19 and x40 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( not x17 and not x18 and not x19 and x40 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s9;

      elsif ( not x17 and not x18 and not x19 and x40 and not x3 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s11;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      end if;

   when s6 =>
      if ( x17 and x18 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s21;

      elsif ( x17 and x18 and not x7 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s18;

      elsif ( x17 and not x18 ) = '1' then
         current_lion <= s6;

      elsif ( not x17 and x18 and x19 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s17;

      elsif ( not x17 and x18 and not x19 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x17 and x18 and not x19 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x17 and x18 and not x19 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x17 and x18 and not x19 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 and not x19 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s6;

      elsif ( not x17 and x18 and not x19 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 and not x19 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x17 and x18 and not x19 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      else
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s11;

      end if;

   when s7 =>
      if ( x17 and x18 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s20;

      elsif ( x17 and not x18 and x5 ) = '1' then
         current_lion <= s7;

      elsif ( x17 and not x18 and not x5 and x14 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( x17 and not x18 and not x5 and not x14 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s10;

      elsif ( not x17 and x18 and x19 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( not x17 and x18 and not x19 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x17 and x18 and not x19 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x17 and x18 and not x19 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x17 and x18 and not x19 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 and not x19 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s7;

      elsif ( not x17 and x18 and not x19 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 and not x19 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x17 and x18 and not x19 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and x19 and x4 and x1 ) = '1' then
         current_lion <= s7;

      elsif ( not x17 and not x18 and x19 and x4 and not x1 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s11;

      elsif ( not x17 and not x18 and x19 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      else
         current_lion <= s7;

      end if;

   when s8 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( x17 and not x18 and x35 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s8;

      elsif ( x17 and not x18 and not x35 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s21;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      end if;

   when s9 =>
      if ( x17 and x18 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s22;

      elsif ( x17 and x18 and not x5 and x6 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( x17 and x18 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( x17 and not x18 and x9 and x10 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( x17 and not x18 and x9 and not x10 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( x17 and not x18 and not x9 and x6 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s22;

      elsif ( x17 and not x18 and not x9 and not x6 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( not x17 and x18 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x17 and x18 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x17 and x18 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x17 and x18 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s9;

      elsif ( not x17 and x18 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x17 and x18 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and x6 and x7 and x39 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( not x17 and not x18 and x6 and x7 and x39 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s9;

      elsif ( not x17 and not x18 and x6 and x7 and x39 and not x3 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s11;

      elsif ( not x17 and not x18 and x6 and x7 and not x39 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( not x17 and not x18 and x6 and not x7 and x8 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s22;

      elsif ( not x17 and not x18 and x6 and not x7 and not x8 and x39 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( not x17 and not x18 and x6 and not x7 and not x8 and x39 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s9;

      elsif ( not x17 and not x18 and x6 and not x7 and not x8 and x39 and not x3 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s11;

      elsif ( not x17 and not x18 and x6 and not x7 and not x8 and not x39 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( not x17 and not x18 and not x6 and x32 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s22;

      elsif ( not x17 and not x18 and not x6 and not x32 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x17 and not x18 and not x6 and not x32 and x15 and x16 and not x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x17 and not x18 and not x6 and not x32 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and not x6 and not x32 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s9;

      elsif ( not x17 and not x18 and not x6 and not x32 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and not x6 and not x32 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      end if;

   when s10 =>
      if ( x17 and x8 and x11 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( x17 and x8 and not x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( x17 and not x8 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( not x17 and x18 and x8 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s21;

      elsif ( not x17 and x18 and not x8 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s18;

      else
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s11;

      end if;

   when s11 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( x17 and not x18 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s10;

      elsif ( x17 and not x18 and not x7 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( not x17 and x18 and x31 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( not x17 and x18 and not x31 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s19;

      elsif ( not x17 and not x18 and x19 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x17 and not x18 and x19 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x17 and not x18 and x19 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x17 and not x18 and x19 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and x19 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s11;

      elsif ( not x17 and not x18 and x19 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and x19 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x17 and not x18 and x19 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and not x19 and x40 and x32 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s22;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s11;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      else
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s10;

      end if;

   when s12 =>
      if ( x15 and x16 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s23;

      elsif ( x15 and not x16 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s24;

      elsif ( x15 and not x16 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x15 and x16 and x4 and x5 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s23;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_lion <= s25;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s24;

      else
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s23;

      end if;

   when s13 =>
      if ( x15 and x16 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x15 and x16 and not x5 and not x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( x15 and not x16 and x6 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s27;

      elsif ( x15 and not x16 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s28;

      elsif ( not x15 and x16 and x4 and x5 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s27;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s30;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      end if;

   when s14 =>
      if ( x15 and x16 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s24;

      elsif ( x15 and not x16 and x12 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s23;

      elsif ( x15 and not x16 and not x12 ) = '1' then
         current_lion <= s14;

      elsif ( not x15 and x16 and x4 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_lion <= s25;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s24;

      elsif ( not x15 and not x16 and x14 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s24;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      end if;

   when s15 =>
      if ( x15 and x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( x15 and x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x15 and not x16 and x2 and x31 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      elsif ( x15 and not x16 and x2 and not x31 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( x15 and not x16 and x2 and not x31 and not x4 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( x15 and not x16 and x2 and not x31 and not x4 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x15 and not x16 and not x2 ) = '1' then
         current_lion <= s15;

      elsif ( not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s32;

      elsif ( not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x15 and x16 and x4 and not x5 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s23;

      elsif ( not x15 and x16 and x4 and not x5 and not x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x15 and x16 and not x4 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x15 and x16 and not x4 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s32;

      end if;

   when s16 =>
      if ( x15 and x16 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s32;

      elsif ( x15 and not x16 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( x15 and not x16 and not x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s32;

      elsif ( not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s32;

      elsif ( not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x15 and x16 and x4 and not x5 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s23;

      elsif ( not x15 and x16 and x4 and not x5 and not x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x15 and x16 and not x4 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s23;

      elsif ( not x15 and x16 and not x4 and not x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s32;

      end if;

   when s17 =>
      if ( x17 and x18 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s22;

      elsif ( x17 and x18 and not x5 and x6 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( x17 and x18 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( x17 and not x18 and x14 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s2;

      elsif ( x17 and not x18 and not x14 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( x17 and not x18 and not x14 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( x17 and not x18 and not x14 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( x17 and not x18 and not x14 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x17 and not x18 and not x14 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s17;

      elsif ( x17 and not x18 and not x14 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x17 and not x18 and not x14 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( x17 and not x18 and not x14 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s8;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s18;

      end if;

   when s18 =>
      if ( x17 and x18 and x6 and x9 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s19;

      elsif ( x17 and x18 and x6 and not x9 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( x17 and x18 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s17;

      elsif ( x17 and not x18 and x10 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( x17 and not x18 and not x10 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s20;

      elsif ( not x17 and x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s8;

      end if;

   when s19 =>
      if ( x17 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( x17 and not x13 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( not x17 and x7 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s9;

      else
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s22;

      end if;

   when s20 =>
      if ( x17 and x18 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s22;

      elsif ( x17 and x18 and not x5 and x6 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( x17 and x18 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( x17 and not x18 and x39 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( x17 and not x18 and x39 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( x17 and not x18 and x39 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( x17 and not x18 and x39 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x17 and not x18 and x39 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s20;

      elsif ( x17 and not x18 and x39 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x17 and not x18 and x39 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( x17 and not x18 and x39 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x17 and not x18 and not x39 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s17;

      elsif ( not x17 and x9 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s9;

      end if;

   when s21 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( x17 and not x18 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s8;

      elsif ( x17 and not x18 and not x6 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s18;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      end if;

   when s22 =>
      if ( x17 and x18 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s22;

      elsif ( x17 and x18 and not x5 and x6 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( x17 and x18 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s6;

      elsif ( x17 and not x18 and x3 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s3;

      elsif ( x17 and not x18 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s7;

      elsif ( not x17 and x18 and x1 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x17 and x18 and x1 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x17 and x18 and x1 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x17 and x18 and x1 and x15 and not x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 and x1 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 and x1 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x17 and x18 and x1 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and x18 and not x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s4;

      elsif ( not x17 and not x18 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x17 and not x18 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x17 and not x18 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x17 and not x18 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and x15 and not x16 and not x1 ) = '1' then
         current_lion <= s22;

      elsif ( not x17 and not x18 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x17 and not x18 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      end if;

   when s23 =>
      if ( x15 and x16 and x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x15 and x16 and not x5 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_lion <= s25;

      elsif ( x15 and not x16 and x13 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( x15 and not x16 and x13 and not x11 and x6 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( x15 and not x16 and x13 and not x11 and x6 and not x4 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( x15 and not x16 and x13 and not x11 and x6 and not x4 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x15 and not x16 and x13 and not x11 and not x6 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( x15 and not x16 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s32;

      elsif ( x15 and not x16 and not x13 and x14 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( x15 and not x16 and not x13 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and x6 and x2 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and x6 and not x2 ) = '1' then
         current_lion <= s23;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and not x6 and not x8 ) = '1' then
         current_lion <= s23;

      elsif ( not x15 and x16 and x4 and x5 and x34 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x15 and x16 and x4 and x5 and not x34 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s33;

      elsif ( not x15 and x16 and x4 and x5 and not x34 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      else
         y11 <= '1' ;
         current_lion <= s34;

      end if;

   when s24 =>
      if ( x15 and x16 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( x15 and x16 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x15 and not x16 and x12 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s23;

      elsif ( x15 and not x16 and not x12 ) = '1' then
         current_lion <= s24;

      elsif ( not x15 and x16 and x4 ) = '1' then
         y11 <= '1' ;
         current_lion <= s34;

      elsif ( not x15 and x16 and not x4 and x34 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      elsif ( not x15 and x16 and not x4 and not x34 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s23;

      elsif ( not x15 and x16 and not x4 and not x34 and not x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      else
         y21 <= '1' ;
         y27 <= '1' ;
         current_lion <= s25;

      end if;

   when s25 =>
      if ( x15 ) = '1' then
         y2 <= '1' ;
         y15 <= '1' ;
         y23 <= '1' ;
         current_lion <= s35;

      elsif ( not x15 and x16 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( not x15 and x16 and not x2 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s23;

      elsif ( not x15 and x16 and not x2 and not x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      else
         y2 <= '1' ;
         y15 <= '1' ;
         y23 <= '1' ;
         current_lion <= s35;

      end if;

   when s26 =>
      if ( x15 and x16 and x5 and x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      elsif ( x15 and x16 and x5 and not x1 and x2 and x3 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s33;

      elsif ( x15 and x16 and x5 and not x1 and x2 and x3 and not x4 ) = '1' then
         y11 <= '1' ;
         current_lion <= s34;

      elsif ( x15 and x16 and x5 and not x1 and x2 and not x3 ) = '1' then
         y11 <= '1' ;
         current_lion <= s34;

      elsif ( x15 and x16 and x5 and not x1 and not x2 ) = '1' then
         y11 <= '1' ;
         current_lion <= s34;

      elsif ( x15 and x16 and not x5 and x6 ) = '1' then
         y11 <= '1' ;
         current_lion <= s34;

      elsif ( x15 and x16 and not x5 and not x6 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( x15 and x16 and not x5 and not x6 and not x37 and x34 and x3 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s33;

      elsif ( x15 and x16 and not x5 and not x6 and not x37 and x34 and x3 and not x4 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( x15 and x16 and not x5 and not x6 and not x37 and x34 and not x3 ) = '1' then
         y11 <= '1' ;
         current_lion <= s34;

      elsif ( x15 and x16 and not x5 and not x6 and not x37 and not x34 ) = '1' then
         y11 <= '1' ;
         current_lion <= s34;

      elsif ( x15 and not x16 and x6 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s27;

      elsif ( x15 and not x16 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s28;

      elsif ( not x15 and x16 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s23;

      else
         y11 <= '1' ;
         current_lion <= s34;

      end if;

   when s27 =>
      if ( x15 and x16 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( x15 and x16 and not x37 and x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( x15 and x16 and not x37 and not x5 and x6 and x2 and x31 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( x15 and x16 and not x37 and not x5 and x6 and x2 and not x31 ) = '1' then
         y11 <= '1' ;
         current_lion <= s34;

      elsif ( x15 and x16 and not x37 and not x5 and x6 and not x2 ) = '1' then
         y11 <= '1' ;
         current_lion <= s34;

      elsif ( x15 and x16 and not x37 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s36;

      elsif ( x15 and not x16 and x7 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s36;

      elsif ( x15 and not x16 and not x7 and x9 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s36;

      elsif ( x15 and not x16 and not x7 and not x9 and x10 and x6 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s27;

      elsif ( x15 and not x16 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s28;

      elsif ( x15 and not x16 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( x15 and not x16 and not x7 and not x9 and not x10 and not x11 ) = '1' then
         current_lion <= s27;

      elsif ( not x15 and x16 and x4 and x5 and x34 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x15 and x16 and x4 and x5 and not x34 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x15 and x16 and x4 and x5 and not x34 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( not x15 and not x16 and x3 and x2 and x11 ) = '1' then
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_lion <= s37;

      elsif ( not x15 and not x16 and x3 and x2 and not x11 and x4 and x12 and x13 and x31 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s33;

      elsif ( not x15 and not x16 and x3 and x2 and not x11 and x4 and x12 and x13 and not x31 ) = '1' then
         y13 <= '1' ;
         current_lion <= s38;

      elsif ( not x15 and not x16 and x3 and x2 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_lion <= s27;

      elsif ( not x15 and not x16 and x3 and x2 and not x11 and x4 and not x12 ) = '1' then
         current_lion <= s27;

      elsif ( not x15 and not x16 and x3 and x2 and not x11 and not x4 ) = '1' then
         current_lion <= s27;

      elsif ( not x15 and not x16 and x3 and not x2 ) = '1' then
         current_lion <= s27;

      elsif ( not x15 and not x16 and not x3 and x34 and x4 and x11 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s39;

      elsif ( not x15 and not x16 and not x3 and x34 and x4 and not x11 and x12 and x13 and x14 ) = '1' then
         y13 <= '1' ;
         current_lion <= s38;

      elsif ( not x15 and not x16 and not x3 and x34 and x4 and not x11 and x12 and x13 and not x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      elsif ( not x15 and not x16 and not x3 and x34 and x4 and not x11 and x12 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      elsif ( not x15 and not x16 and not x3 and x34 and x4 and not x11 and not x12 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and x5 and x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and x5 and not x6 and x7 and x8 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and x5 and not x6 and x7 and not x8 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and x5 and not x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and x5 and not x6 and not x7 and not x8 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and not x5 and x6 and x7 and x9 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and not x5 and x6 and x7 and not x9 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and not x5 and x6 and not x7 and x9 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and not x5 and x6 and not x7 and not x9 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and not x5 and not x6 and x7 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and not x5 and not x6 and x7 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and not x5 and not x6 and not x7 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( not x15 and not x16 and not x3 and x34 and not x4 and not x5 and not x6 and not x7 and not x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      else
         current_lion <= s27;

      end if;

   when s28 =>
      if ( x15 and x16 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s27;

      elsif ( x15 and not x16 and x8 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s36;

      elsif ( x15 and not x16 and not x8 and x9 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s36;

      elsif ( x15 and not x16 and not x8 and not x9 and x10 and x6 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s27;

      elsif ( x15 and not x16 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s28;

      elsif ( x15 and not x16 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( x15 and not x16 and not x8 and not x9 and not x10 and not x11 ) = '1' then
         current_lion <= s28;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s27;

      end if;

   when s29 =>
      if ( x15 and x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( x15 and x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x15 and not x16 ) = '1' then
         y11 <= '1' ;
         current_lion <= s34;

      elsif ( not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s33;

      elsif ( not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( not x15 and x16 and x4 and not x5 and x2 and x3 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s30;

      elsif ( not x15 and x16 and x4 and not x5 and x2 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( not x15 and x16 and x4 and not x5 and not x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s32;

      elsif ( not x15 and x16 and not x4 and x34 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x15 and x16 and not x4 and x34 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s26;

      elsif ( not x15 and x16 and not x4 and not x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s32;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      end if;

   when s30 =>
      if ( x15 and x16 ) = '1' then
         y11 <= '1' ;
         current_lion <= s34;

      elsif ( x15 and not x16 and x13 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( x15 and not x16 and x13 and not x4 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( x15 and not x16 and x13 and not x4 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x15 and not x16 and not x13 and x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      elsif ( x15 and not x16 and not x13 and not x14 and x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and not x7 and not x8 ) = '1' then
         current_lion <= s30;

      elsif ( not x15 and x16 and x4 ) = '1' then
         y13 <= '1' ;
         current_lion <= s38;

      elsif ( not x15 and x16 and not x4 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x15 and x16 and not x4 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      else
         y11 <= '1' ;
         current_lion <= s34;

      end if;

   when s31 =>
      if ( x15 and x16 and x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s24;

      elsif ( x15 and x16 and not x5 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s30;

      elsif ( x15 and not x16 and x12 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s30;

      elsif ( x15 and not x16 and not x12 ) = '1' then
         current_lion <= s31;

      elsif ( not x15 and x16 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s33;

      elsif ( not x15 and not x16 and x13 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s36;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s30;

      end if;

   when s32 =>
      if ( x15 and x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s28;

      elsif ( x15 and not x16 and x2 and x31 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      elsif ( x15 and not x16 and x2 and not x31 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( x15 and not x16 and x2 and not x31 and not x4 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( x15 and not x16 and x2 and not x31 and not x4 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      elsif ( x15 and not x16 and not x2 ) = '1' then
         current_lion <= s32;

      elsif ( not x15 and x16 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s28;

      elsif ( not x15 and x16 and x4 and not x5 and x36 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s28;

      elsif ( not x15 and x16 and x4 and not x5 and not x36 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x15 and x16 and not x4 and x37 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s28;

      elsif ( not x15 and x16 and not x4 and not x37 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s33;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s28;

      end if;

   when s33 =>
      if ( x15 and x16 ) = '1' then
         y11 <= '1' ;
         current_lion <= s34;

      elsif ( x15 and not x16 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x15 and x16 and x4 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s36;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( not x15 and not x16 and x12 and x13 and x3 ) = '1' then
         y13 <= '1' ;
         current_lion <= s38;

      elsif ( not x15 and not x16 and x12 and x13 and not x3 and x14 ) = '1' then
         y13 <= '1' ;
         current_lion <= s38;

      elsif ( not x15 and not x16 and x12 and x13 and not x3 and not x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      elsif ( not x15 and not x16 and x12 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s14;

      else
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s12;

      end if;

   when s34 =>
      if ( x44 and x10 and x39 and x36 ) = '1' then
         current_lion <= s34;

      elsif ( x44 and x10 and x39 and not x36 and x46 and x51 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      elsif ( x44 and x10 and x39 and not x36 and x46 and not x51 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( x44 and x10 and x39 and not x36 and not x46 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s42;

      elsif ( x44 and x10 and not x39 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s43;

      elsif ( x44 and not x10 and x11 and x34 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      elsif ( x44 and not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      elsif ( x44 and not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      elsif ( x44 and not x10 and x11 and not x34 and x32 and not x7 and x54 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      elsif ( x44 and not x10 and x11 and not x34 and x32 and not x7 and x54 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and not x10 and x11 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s42;

      elsif ( x44 and not x10 and x11 and not x34 and not x32 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s46;

      elsif ( x44 and not x10 and not x11 and x12 and x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s42;

      elsif ( x44 and not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( x44 and not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( x44 and not x10 and not x11 and not x12 and x13 and x37 and x41 and x6 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s49;

      elsif ( x44 and not x10 and not x11 and not x12 and x13 and x37 and x41 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and not x10 and not x11 and not x12 and x13 and x37 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and not x10 and not x11 and not x12 and x13 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s42;

      elsif ( x44 and not x10 and not x11 and not x12 and not x13 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and x10 and x11 and x36 and x34 and x3 and x4 ) = '1' then
         current_lion <= s34;

      elsif ( not x44 and x10 and x11 and x36 and x34 and x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( not x44 and x10 and x11 and x36 and x34 and not x3 and x4 and x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and x10 and x11 and x36 and x34 and not x3 and x4 and not x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s46;

      elsif ( not x44 and x10 and x11 and x36 and x34 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( not x44 and x10 and x11 and x36 and not x34 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s42;

      elsif ( not x44 and x10 and x11 and not x36 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( not x44 and x10 and not x11 and x12 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s42;

      elsif ( not x44 and x10 and not x11 and not x12 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s49;

      elsif ( not x44 and not x10 and x37 and x11 ) = '1' then
         y16 <= '1' ;
         y25 <= '1' ;
         y27 <= '1' ;
         current_lion <= s50;

      elsif ( not x44 and not x10 and x37 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( not x44 and not x10 and x37 and not x11 and not x12 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_lion <= s51;

      elsif ( not x44 and not x10 and not x37 and x11 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( not x44 and not x10 and not x37 and x11 and not x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( not x44 and not x10 and not x37 and not x11 and x12 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( not x44 and not x10 and not x37 and not x11 and x12 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( not x44 and not x10 and not x37 and not x11 and not x12 and x34 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( not x44 and not x10 and not x37 and not x11 and not x12 and not x34 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      end if;

   when s35 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      elsif ( not x15 and x14 and x13 ) = '1' then
         y19 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_lion <= s52;

      elsif ( not x15 and x14 and not x13 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s23;

      else
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s36;

      end if;

   when s36 =>
      if ( x15 and x16 ) = '1' then
         y13 <= '1' ;
         current_lion <= s38;

      elsif ( x15 and not x16 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s29;

      elsif ( x15 and not x16 and not x11 and x10 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s33;

      elsif ( x15 and not x16 and not x11 and not x10 ) = '1' then
         current_lion <= s36;

      elsif ( not x15 and x16 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s31;

      elsif ( not x15 and x16 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s24;

      else
         y11 <= '1' ;
         current_lion <= s34;

      end if;

   when s37 =>
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s39;

   when s38 =>
      if ( x15 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s13;

      elsif ( not x15 and x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s16;

      elsif ( not x15 and x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s15;

      else
         y21 <= '1' ;
         y27 <= '1' ;
         current_lion <= s25;

      end if;

   when s39 =>
         y19 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_lion <= s52;

   when s40 =>
      if ( x44 and x35 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and not x35 and x13 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s49;

      elsif ( x44 and not x35 and not x13 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s54;

      elsif ( not x44 and x10 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( not x44 and not x10 and x11 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s49;

      elsif ( not x44 and not x10 and not x11 and x7 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      end if;

   when s41 =>
      if ( x44 and x50 and x19 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      elsif ( x44 and x50 and x19 and not x10 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      elsif ( x44 and x50 and not x19 ) = '1' then
         current_lion <= s41;

      elsif ( x44 and not x50 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      elsif ( not x44 and x10 and x11 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( not x44 and x10 and not x11 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      elsif ( not x44 and not x10 and x11 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      elsif ( not x44 and not x10 and x11 and not x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_lion <= s58;

      elsif ( not x44 and not x10 and not x11 and x12 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s49;

      elsif ( not x44 and not x10 and not x11 and not x12 and x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_lion <= s51;

      elsif ( not x44 and not x10 and not x11 and not x12 and not x37 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      else
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      end if;

   when s42 =>
      if ( x44 and x53 and x47 ) = '1' then
         current_lion <= s42;

      elsif ( x44 and x53 and not x47 and x48 and x51 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( x44 and x53 and not x47 and x48 and not x51 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( x44 and x53 and not x47 and not x48 and x34 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( x44 and x53 and not x47 and not x48 and not x34 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( x44 and not x53 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( not x44 and x11 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( not x44 and not x11 and x1 and x34 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( not x44 and not x11 and x1 and not x34 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( not x44 and not x11 and x1 and not x34 and not x3 ) = '1' then
         current_lion <= s42;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s46;

      end if;

   when s43 =>
      if ( x28 and x49 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      elsif ( x28 and not x49 ) = '1' then
         current_lion <= s43;

      elsif ( not x28 and x27 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      elsif ( not x28 and x27 and not x8 and x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( not x28 and x27 and not x8 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      else
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      end if;

   when s44 =>
      if ( x50 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      else
         current_lion <= s44;

      end if;

   when s45 =>
      if ( x44 and x16 and x54 and x27 and x29 and x48 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_lion <= s59;

      elsif ( x44 and x16 and x54 and x27 and x29 and not x48 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( x44 and x16 and x54 and x27 and not x29 and x33 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( x44 and x16 and x54 and x27 and not x29 and not x33 and x49 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s46;

      elsif ( x44 and x16 and x54 and x27 and not x29 and not x33 and not x49 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( x44 and x16 and x54 and not x27 ) = '1' then
         current_lion <= s45;

      elsif ( x44 and x16 and not x54 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and not x16 and x36 and x55 and x37 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( x44 and not x16 and x36 and x55 and not x37 ) = '1' then
         current_lion <= s45;

      elsif ( x44 and not x16 and x36 and not x55 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and not x16 and not x36 and x25 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and not x16 and not x36 and not x25 and x4 and x5 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s54;

      elsif ( x44 and not x16 and not x36 and not x25 and x4 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( x44 and not x16 and not x36 and not x25 and not x4 ) = '1' then
         current_lion <= s45;

      elsif ( not x44 and x10 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and x10 and not x11 and x12 and x34 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and x10 and not x11 and x12 and not x34 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( not x44 and x10 and not x11 and not x12 and x37 and x41 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s43;

      elsif ( not x44 and x10 and not x11 and not x12 and x37 and not x41 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      elsif ( not x44 and x10 and not x11 and not x12 and x37 and not x41 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      elsif ( not x44 and x10 and not x11 and not x12 and not x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and not x10 and x12 and x2 and x4 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      elsif ( not x44 and not x10 and x12 and x2 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      elsif ( not x44 and not x10 and x12 and not x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and not x10 and not x12 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_lion <= s60;

      elsif ( not x44 and not x10 and not x12 and not x9 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      end if;

   when s46 =>
      if ( x44 and x17 and x19 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      elsif ( x44 and x17 and x19 and not x10 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      elsif ( x44 and x17 and not x19 ) = '1' then
         current_lion <= s46;

      elsif ( x44 and not x17 and x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s42;

      elsif ( x44 and not x17 and not x20 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( x44 and not x17 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( not x44 and x10 and x11 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( not x44 and x10 and not x11 and x12 and x4 and x1 ) = '1' then
         current_lion <= s46;

      elsif ( not x44 and x10 and not x11 and x12 and x4 and not x1 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      elsif ( not x44 and x10 and not x11 and x12 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( not x44 and x10 and not x11 and not x12 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and not x10 and x11 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_lion <= s61;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      end if;

   when s47 =>
      if ( x44 and x51 and x24 and x5 and x36 ) = '1' then
         current_lion <= s47;

      elsif ( x44 and x51 and x24 and x5 and not x36 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      elsif ( x44 and x51 and x24 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and x51 and not x24 and x31 and x29 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      elsif ( x44 and x51 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and x51 and not x24 and not x31 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      elsif ( x44 and not x51 and x11 and x35 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      elsif ( x44 and not x51 and x11 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and not x51 and x11 and not x35 and x45 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and not x51 and x11 and not x35 and not x45 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and not x51 and not x11 and x52 and x35 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_lion <= s61;

      elsif ( x44 and not x51 and not x11 and x52 and not x35 and x45 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and not x51 and not x11 and x52 and not x35 and not x45 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and not x51 and not x11 and not x52 and x41 and x6 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s49;

      elsif ( x44 and not x51 and not x11 and not x52 and x41 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and not x51 and not x11 and not x52 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( not x44 and x10 and x11 and x3 and x4 ) = '1' then
         current_lion <= s47;

      elsif ( not x44 and x10 and x11 and x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( not x44 and x10 and x11 and not x3 and x4 and x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and x10 and x11 and not x3 and x4 and not x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s46;

      elsif ( not x44 and x10 and x11 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( not x44 and x10 and not x11 and x34 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and x10 and not x11 and not x34 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( not x44 and not x10 and x11 and x6 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s43;

      elsif ( not x44 and not x10 and x11 and not x6 and x8 and x4 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s54;

      elsif ( not x44 and not x10 and x11 and not x6 and x8 and not x4 and x1 and x41 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      elsif ( not x44 and not x10 and x11 and not x6 and x8 and not x4 and x1 and not x41 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      elsif ( not x44 and not x10 and x11 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      elsif ( not x44 and not x10 and x11 and not x6 and not x8 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( not x44 and not x10 and not x11 and x12 and x9 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( not x44 and not x10 and not x11 and x12 and not x9 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_lion <= s61;

      elsif ( not x44 and not x10 and not x11 and not x12 and x6 ) = '1' then
         y6 <= '1' ;
         y12 <= '1' ;
         current_lion <= s62;

      elsif ( not x44 and not x10 and not x11 and not x12 and not x6 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      end if;

   when s48 =>
      if ( x44 and x13 and x23 and x51 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      elsif ( x44 and x13 and x23 and not x51 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( x44 and x13 and not x23 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      elsif ( x44 and not x13 and x28 and x35 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      elsif ( x44 and not x13 and x28 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and not x13 and x28 and not x35 and x45 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and not x13 and x28 and not x35 and not x45 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and not x13 and not x28 and x6 and x35 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_lion <= s61;

      elsif ( x44 and not x13 and not x28 and x6 and not x35 and x45 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and not x13 and not x28 and x6 and not x35 and not x45 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x44 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      elsif ( not x44 and x10 and x11 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s46;

      elsif ( not x44 and x10 and not x11 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( not x44 and not x10 and x11 and x37 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y22 <= '1' ;
         y35 <= '1' ;
         current_lion <= s63;

      elsif ( not x44 and not x10 and x11 and not x37 and x41 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and not x10 and x11 and not x37 and not x41 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s46;

      elsif ( not x44 and not x10 and not x11 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      else
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      end if;

   when s49 =>
      if ( x44 and x8 and x53 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      elsif ( x44 and x8 and not x53 and x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and x8 and not x53 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      elsif ( x44 and not x8 and x51 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      elsif ( x44 and not x8 and not x51 and x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and not x8 and not x51 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      elsif ( not x44 and x10 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      elsif ( not x44 and not x10 and x11 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s49;

      elsif ( not x44 and not x10 and not x11 and x12 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      elsif ( not x44 and not x10 and not x11 and x12 and not x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_lion <= s58;

      else
         y17 <= '1' ;
         y21 <= '1' ;
         y32 <= '1' ;
         current_lion <= s64;

      end if;

   when s50 =>
      if ( x7 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_lion <= s51;

      else
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      end if;

   when s51 =>
      if ( x44 and x29 and x50 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_lion <= s58;

      elsif ( x44 and x29 and not x50 ) = '1' then
         current_lion <= s51;

      elsif ( x44 and not x29 and x45 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and not x29 and not x45 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( not x44 and x11 and x6 and x9 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s43;

      elsif ( not x44 and x11 and x6 and not x9 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y22 <= '1' ;
         y35 <= '1' ;
         current_lion <= s63;

      elsif ( not x44 and x11 and not x6 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s49;

      elsif ( not x44 and not x11 and x8 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      else
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s54;

      end if;

   when s52 =>
         y11 <= '1' ;
         current_lion <= s34;

   when s53 =>
      if ( x44 and x10 and x12 and x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_lion <= s65;

      elsif ( x44 and x10 and x12 and not x23 and x4 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      elsif ( x44 and x10 and x12 and not x23 and not x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( x44 and x10 and not x12 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s68;

      elsif ( x44 and not x10 and x37 and x22 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         current_lion <= s69;

      elsif ( x44 and not x10 and x37 and not x22 and x2 and x42 and x11 ) = '1' then
         current_lion <= s53;

      elsif ( x44 and not x10 and x37 and not x22 and x2 and x42 and not x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( x44 and not x10 and x37 and not x22 and x2 and not x42 and x11 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( x44 and not x10 and x37 and not x22 and x2 and not x42 and x11 and not x5 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s72;

      elsif ( x44 and not x10 and x37 and not x22 and x2 and not x42 and not x11 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      elsif ( x44 and not x10 and x37 and not x22 and not x2 ) = '1' then
         y11 <= '1' ;
         current_lion <= s73;

      elsif ( x44 and not x10 and not x37 and x11 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( x44 and not x10 and not x37 and x11 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( x44 and not x10 and not x37 and not x11 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( not x44 and x10 and x39 and x36 ) = '1' then
         current_lion <= s53;

      elsif ( not x44 and x10 and x39 and not x36 and x46 and x51 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s74;

      elsif ( not x44 and x10 and x39 and not x36 and x46 and not x51 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( not x44 and x10 and x39 and not x36 and not x46 ) = '1' then
         y11 <= '1' ;
         current_lion <= s73;

      elsif ( not x44 and x10 and not x39 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s75;

      elsif ( not x44 and not x10 and x11 and x34 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      elsif ( not x44 and not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s74;

      elsif ( not x44 and not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      elsif ( not x44 and not x10 and x11 and not x34 and x32 and not x7 and x54 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s74;

      elsif ( not x44 and not x10 and x11 and not x34 and x32 and not x7 and x54 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and not x10 and x11 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y11 <= '1' ;
         current_lion <= s73;

      elsif ( not x44 and not x10 and x11 and not x34 and not x32 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s72;

      elsif ( not x44 and not x10 and not x11 and x12 and x20 ) = '1' then
         y11 <= '1' ;
         current_lion <= s73;

      elsif ( not x44 and not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( not x44 and not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      elsif ( not x44 and not x10 and not x11 and not x12 and x13 and x36 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s68;

      elsif ( not x44 and not x10 and not x11 and not x12 and x13 and x36 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and not x10 and not x11 and not x12 and x13 and x36 and not x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and not x10 and not x11 and not x12 and x13 and not x36 ) = '1' then
         y11 <= '1' ;
         current_lion <= s73;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      end if;

   when s54 =>
      if ( x44 and x46 and x42 and x23 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s43;

      elsif ( x44 and x46 and x42 and not x23 ) = '1' then
         current_lion <= s54;

      elsif ( x44 and x46 and not x42 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and not x46 and x34 and x23 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s43;

      elsif ( x44 and not x46 and x34 and not x23 ) = '1' then
         current_lion <= s54;

      elsif ( x44 and not x46 and not x34 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( not x44 and x10 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( not x44 and not x10 and x11 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      elsif ( not x44 and not x10 and x11 and not x5 and x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( not x44 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and not x10 and not x11 and x36 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      end if;

   when s55 =>
      if ( x38 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      else
         current_lion <= s55;

      end if;

   when s56 =>
      if ( x10 and x6 and x7 and x2 and x41 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s43;

      elsif ( x10 and x6 and x7 and x2 and not x41 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      elsif ( x10 and x6 and x7 and x2 and not x41 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      elsif ( x10 and x6 and x7 and not x2 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x10 and x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and x41 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s43;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and not x41 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and not x41 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      elsif ( x10 and x6 and not x7 and not x8 and not x2 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( x10 and not x6 and x34 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      elsif ( x10 and not x6 and not x34 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( not x10 and x11 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      elsif ( not x10 and x11 and not x5 and x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( not x10 and x11 and not x5 and not x6 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      else
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      end if;

   when s57 =>
      if ( x10 and x12 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x10 and not x12 and x1 and x34 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      elsif ( x10 and not x12 and x1 and not x34 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x10 and not x12 and not x1 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      elsif ( not x10 and x11 and x37 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y22 <= '1' ;
         y35 <= '1' ;
         current_lion <= s63;

      elsif ( not x10 and x11 and not x37 and x41 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x10 and x11 and not x37 and not x41 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s46;

      elsif ( not x10 and not x11 and x12 and x41 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( not x10 and not x11 and x12 and not x41 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s43;

      elsif ( not x10 and not x11 and not x12 and x6 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      end if;

   when s58 =>
      if ( x44 and x17 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s54;

      elsif ( x44 and not x17 and x49 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      elsif ( x44 and not x17 and not x49 ) = '1' then
         current_lion <= s58;

      elsif ( not x44 and x6 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s54;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_lion <= s58;

      end if;

   when s59 =>
      if ( x44 and x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      elsif ( x44 and not x3 and x34 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_lion <= s58;

      elsif ( x44 and not x3 and not x34 and x28 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( x44 and not x3 and not x34 and not x28 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( not x44 and x10 and x5 and x41 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s43;

      elsif ( not x44 and x10 and x5 and not x41 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      elsif ( not x44 and x10 and x5 and not x41 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      elsif ( not x44 and x10 and not x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s46;

      elsif ( not x44 and not x10 and x11 and x37 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y22 <= '1' ;
         y35 <= '1' ;
         current_lion <= s63;

      elsif ( not x44 and not x10 and x11 and not x37 and x41 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and not x10 and x11 and not x37 and not x41 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s46;

      else
         current_lion <= s59;

      end if;

   when s60 =>
      if ( x44 and x50 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_lion <= s58;

      elsif ( x44 and not x50 ) = '1' then
         current_lion <= s60;

      elsif ( not x44 and x11 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_lion <= s59;

      elsif ( not x44 and not x11 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_lion <= s59;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      end if;

   when s61 =>
      if ( x44 and x1 and x28 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s48;

      elsif ( x44 and x1 and not x28 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s47;

      elsif ( x44 and not x1 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      elsif ( not x44 and x10 and x37 and x2 and x41 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s43;

      elsif ( not x44 and x10 and x37 and x2 and not x41 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      elsif ( not x44 and x10 and x37 and x2 and not x41 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      elsif ( not x44 and x10 and x37 and not x2 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      elsif ( not x44 and x10 and not x37 and x2 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_lion <= s59;

      elsif ( not x44 and x10 and not x37 and x2 and not x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s55;

      elsif ( not x44 and x10 and not x37 and not x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s40;

      else
         current_lion <= s61;

      end if;

   when s62 =>
      if ( x42 and x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      elsif ( x42 and not x5 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s57;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      end if;

   when s63 =>
      if ( x8 and x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_lion <= s51;

      elsif ( x8 and not x37 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_lion <= s60;

      elsif ( x8 and not x37 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s45;

      else
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      end if;

   when s64 =>
      if ( x44 and x1 and x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      elsif ( x44 and x1 and not x37 and x9 ) = '1' then
         current_lion <= s64;

      elsif ( x44 and x1 and not x37 and not x9 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s53;

      elsif ( x44 and not x1 and x9 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s44;

      elsif ( x44 and not x1 and not x9 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s56;

      elsif ( not x44 and x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and not x10 and x11 and x37 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y22 <= '1' ;
         y35 <= '1' ;
         current_lion <= s63;

      elsif ( not x44 and not x10 and x11 and not x37 and x41 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s41;

      elsif ( not x44 and not x10 and x11 and not x37 and not x41 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s46;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s46;

      end if;

   when s65 =>
      if ( x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s77;

      elsif ( not x19 and x26 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      elsif ( not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         current_lion <= s79;

      end if;

   when s66 =>
      if ( x44 and x19 and x28 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_lion <= s79;

      elsif ( x44 and x19 and x28 and not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( x44 and x19 and x28 and not x1 and not x35 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s72;

      elsif ( x44 and x19 and not x28 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( x44 and not x19 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s72;

      elsif ( not x44 and x13 and x23 and x51 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s74;

      elsif ( not x44 and x13 and x23 and not x51 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( not x44 and x13 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s74;

      elsif ( not x44 and not x13 and x28 and x35 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s74;

      elsif ( not x44 and not x13 and x28 and x35 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and not x13 and x28 and not x35 and x45 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and not x13 and x28 and not x35 and not x45 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and not x13 and not x28 and x6 and x35 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s81;

      elsif ( not x44 and not x13 and not x28 and x6 and not x35 and x45 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and not x13 and not x28 and x6 and not x35 and not x45 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      end if;

   when s67 =>
      if ( x44 and x30 and x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_lion <= s82;

      elsif ( x44 and x30 and x16 and not x6 and x8 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s77;

      elsif ( x44 and x30 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      elsif ( x44 and x30 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      elsif ( x44 and x30 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_lion <= s79;

      elsif ( x44 and x30 and x16 and not x6 and not x8 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( x44 and x30 and not x16 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( x44 and x30 and not x16 and not x10 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( x44 and not x30 and x5 and x9 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( x44 and not x30 and x5 and not x9 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s81;

      elsif ( x44 and not x30 and not x5 and x43 and x11 ) = '1' then
         current_lion <= s67;

      elsif ( x44 and not x30 and not x5 and x43 and not x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( x44 and not x30 and not x5 and not x43 and x11 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s72;

      elsif ( x44 and not x30 and not x5 and not x43 and not x11 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      elsif ( not x44 and x51 and x24 and x5 and x36 ) = '1' then
         current_lion <= s67;

      elsif ( not x44 and x51 and x24 and x5 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s74;

      elsif ( not x44 and x51 and x24 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and x51 and not x24 and x31 and x29 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s74;

      elsif ( not x44 and x51 and not x24 and x31 and not x29 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and x51 and not x24 and not x31 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s74;

      elsif ( not x44 and not x51 and x11 and x35 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s74;

      elsif ( not x44 and not x51 and x11 and x35 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and not x51 and x11 and not x35 and x45 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and not x51 and x11 and not x35 and not x45 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and not x51 and not x11 and x52 and x35 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s81;

      elsif ( not x44 and not x51 and not x11 and x52 and not x35 and x45 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and not x51 and not x11 and x52 and not x35 and not x45 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and not x51 and not x11 and not x52 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s68;

      elsif ( not x44 and not x51 and not x11 and not x52 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      end if;

   when s68 =>
      if ( x44 and x12 and x27 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      elsif ( x44 and x12 and x27 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( x44 and x12 and x27 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( x44 and x12 and not x27 and x37 and x29 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s75;

      elsif ( x44 and x12 and not x27 and x37 and not x29 ) = '1' then
         current_lion <= s68;

      elsif ( x44 and x12 and not x27 and not x37 and x29 ) = '1' then
         current_lion <= s68;

      elsif ( x44 and x12 and not x27 and not x37 and not x29 ) = '1' then
         current_lion <= s68;

      elsif ( x44 and not x12 and x29 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s77;

      elsif ( x44 and not x12 and not x29 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s85;

      elsif ( not x44 and x17 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         current_lion <= s86;

      elsif ( not x44 and not x17 and x49 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      else
         current_lion <= s68;

      end if;

   when s69 =>
      if ( x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s84;

      end if;

   when s70 =>
      if ( x44 and x14 and x8 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( x44 and x14 and x8 and not x10 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( x44 and x14 and not x8 and x30 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s75;

      elsif ( x44 and x14 and not x8 and x30 and not x37 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      elsif ( x44 and x14 and not x8 and x30 and not x37 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s84;

      elsif ( x44 and x14 and not x8 and not x30 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( x44 and not x14 and x3 and x32 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      elsif ( x44 and not x14 and x3 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( x44 and not x14 and not x3 ) = '1' then
         current_lion <= s70;

      elsif ( not x44 and x16 and x54 and x27 and x29 and x48 ) = '1' then
         y13 <= '1' ;
         current_lion <= s87;

      elsif ( not x44 and x16 and x54 and x27 and x29 and not x48 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( not x44 and x16 and x54 and x27 and not x29 and x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( not x44 and x16 and x54 and x27 and not x29 and not x33 and x49 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s72;

      elsif ( not x44 and x16 and x54 and x27 and not x29 and not x33 and not x49 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( not x44 and x16 and x54 and not x27 ) = '1' then
         current_lion <= s70;

      elsif ( not x44 and x16 and not x54 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and not x16 and x37 and x55 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( not x44 and not x16 and x37 and x55 and not x1 ) = '1' then
         current_lion <= s70;

      elsif ( not x44 and not x16 and x37 and not x55 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and not x16 and not x37 and x25 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and not x16 and not x37 and not x25 and x4 and x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s77;

      elsif ( not x44 and not x16 and not x37 and not x25 and x4 and not x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      else
         current_lion <= s70;

      end if;

   when s71 =>
      if ( x44 and x24 and x26 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s74;

      elsif ( x44 and x24 and x26 and not x7 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y30 <= '1' ;
         current_lion <= s88;

      elsif ( x44 and x24 and not x26 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s84;

      elsif ( x44 and not x24 and x28 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s68;

      elsif ( x44 and not x24 and not x28 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and x31 and x19 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      elsif ( not x44 and x31 and x19 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s84;

      elsif ( not x44 and x31 and not x19 ) = '1' then
         current_lion <= s71;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s84;

      end if;

   when s72 =>
      if ( x44 and x19 and x13 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s81;

      elsif ( x44 and x19 and not x13 and x32 and x18 and x12 ) = '1' then
         current_lion <= s72;

      elsif ( x44 and x19 and not x13 and x32 and x18 and not x12 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s84;

      elsif ( x44 and x19 and not x13 and x32 and not x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( x44 and x19 and not x13 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( x44 and not x19 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and x17 and x19 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      elsif ( not x44 and x17 and x19 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s84;

      elsif ( not x44 and x17 and not x19 ) = '1' then
         current_lion <= s72;

      elsif ( not x44 and not x17 and x20 ) = '1' then
         y11 <= '1' ;
         current_lion <= s73;

      elsif ( not x44 and not x17 and not x20 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      else
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      end if;

   when s73 =>
      if ( x44 and x11 and x25 and x42 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      elsif ( x44 and x11 and x25 and not x42 and x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( x44 and x11 and x25 and not x42 and not x5 ) = '1' then
         current_lion <= s73;

      elsif ( x44 and x11 and not x25 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s72;

      elsif ( x44 and not x11 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      elsif ( not x44 and x53 and x47 ) = '1' then
         current_lion <= s73;

      elsif ( not x44 and x53 and not x47 and x48 and x51 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      elsif ( not x44 and x53 and not x47 and x48 and not x51 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( not x44 and x53 and not x47 and not x48 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( not x44 and x53 and not x47 and not x48 and not x34 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      else
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      end if;

   when s74 =>
      if ( x44 and x35 and x7 and x36 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_lion <= s79;

      elsif ( x44 and x35 and x7 and not x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( x44 and x35 and not x7 ) = '1' then
         current_lion <= s74;

      elsif ( x44 and not x35 and x7 and x37 ) = '1' then
         current_lion <= s74;

      elsif ( x44 and not x35 and x7 and not x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      elsif ( x44 and not x35 and not x7 ) = '1' then
         current_lion <= s74;

      elsif ( not x44 and x43 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      elsif ( not x44 and not x43 and x2 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s85;

      elsif ( not x44 and not x43 and not x2 and x28 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      end if;

   when s75 =>
      if ( x44 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( x44 and not x5 and x34 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      elsif ( x44 and not x5 and not x34 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      elsif ( not x44 and x35 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and not x35 and x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s68;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s77;

      end if;

   when s76 =>
      if ( x44 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s84;

      elsif ( x44 and not x10 and x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s74;

      elsif ( x44 and not x10 and not x25 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s85;

      elsif ( not x44 and x8 and x53 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      elsif ( not x44 and x8 and not x53 and x36 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and x8 and not x53 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      elsif ( not x44 and not x8 and x51 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      elsif ( not x44 and not x8 and not x51 and x36 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      end if;

   when s77 =>
      if ( x44 and x33 and x8 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_lion <= s79;

      elsif ( x44 and x33 and x8 and not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( x44 and x33 and x8 and not x1 and not x35 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s72;

      elsif ( x44 and x33 and not x8 and x32 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s75;

      elsif ( x44 and x33 and not x8 and x32 and not x37 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      elsif ( x44 and x33 and not x8 and x32 and not x37 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s84;

      elsif ( x44 and x33 and not x8 and not x32 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s72;

      elsif ( x44 and not x33 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      elsif ( not x44 and x1 and x28 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      elsif ( not x44 and x1 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      end if;

   when s78 =>
      if ( x44 and x16 and x19 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      elsif ( x44 and x16 and x19 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( x44 and x16 and x19 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( x44 and x16 and not x19 and x1 and x30 and x26 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s75;

      elsif ( x44 and x16 and not x19 and x1 and x30 and not x26 and x3 ) = '1' then
         current_lion <= s78;

      elsif ( x44 and x16 and not x19 and x1 and x30 and not x26 and not x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s75;

      elsif ( x44 and x16 and not x19 and x1 and not x30 ) = '1' then
         current_lion <= s78;

      elsif ( x44 and x16 and not x19 and not x1 and x30 and x26 and x37 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      elsif ( x44 and x16 and not x19 and not x1 and x30 and x26 and x37 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s84;

      elsif ( x44 and x16 and not x19 and not x1 and x30 and x26 and not x37 ) = '1' then
         current_lion <= s78;

      elsif ( x44 and x16 and not x19 and not x1 and x30 and not x26 and x43 ) = '1' then
         current_lion <= s78;

      elsif ( x44 and x16 and not x19 and not x1 and x30 and not x26 and not x43 and x37 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      elsif ( x44 and x16 and not x19 and not x1 and x30 and not x26 and not x43 and x37 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s84;

      elsif ( x44 and x16 and not x19 and not x1 and x30 and not x26 and not x43 and not x37 ) = '1' then
         current_lion <= s78;

      elsif ( x44 and x16 and not x19 and not x1 and not x30 ) = '1' then
         current_lion <= s78;

      elsif ( x44 and not x16 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and x28 and x49 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      elsif ( not x44 and x28 and not x49 ) = '1' then
         current_lion <= s78;

      elsif ( not x44 and not x28 and x27 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      elsif ( not x44 and not x28 and x27 and not x8 and x36 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and not x28 and x27 and not x8 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      elsif ( not x44 and not x28 and not x27 and x50 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      end if;

   when s79 =>
      if ( x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_lion <= s79;

      elsif ( not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s72;

      end if;

   when s80 =>
      if ( x37 and x15 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s89;

      elsif ( x37 and not x15 ) = '1' then
         y11 <= '1' ;
         current_lion <= s90;

      else
         y11 <= '1' ;
         current_lion <= s90;

      end if;

   when s81 =>
      if ( x44 and x9 ) = '1' then
         y13 <= '1' ;
         current_lion <= s87;

      elsif ( x44 and not x9 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( x44 and not x9 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      elsif ( not x44 and x29 and x50 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s85;

      elsif ( not x44 and x29 and not x50 ) = '1' then
         current_lion <= s81;

      elsif ( not x44 and not x29 and x45 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s70;

      end if;

   when s82 =>
      if ( x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_lion <= s82;

      elsif ( x16 and not x6 and x8 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s77;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      elsif ( x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_lion <= s79;

      elsif ( x16 and not x6 and not x8 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x16 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      else
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      end if;

   when s83 =>
      if ( x44 and x22 and x2 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      elsif ( x44 and x22 and x2 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( x44 and x22 and x2 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( x44 and x22 and not x2 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( x44 and not x22 and x31 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( x44 and not x22 and not x31 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( not x44 and x46 and x3 and x23 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s75;

      elsif ( not x44 and x46 and x3 and not x23 ) = '1' then
         current_lion <= s83;

      elsif ( not x44 and x46 and not x3 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x44 and not x46 and x33 and x23 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s75;

      elsif ( not x44 and not x46 and x33 and not x23 ) = '1' then
         current_lion <= s83;

      else
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      end if;

   when s84 =>
      if ( x44 and x25 and x22 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( x44 and x25 and not x22 and x6 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      elsif ( x44 and x25 and not x22 and x6 and not x8 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( x44 and x25 and not x22 and not x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      elsif ( x44 and not x25 and x29 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         current_lion <= s69;

      elsif ( x44 and not x25 and not x29 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s75;

      elsif ( not x44 and x38 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      elsif ( not x44 and not x38 and x50 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s66;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s78;

      end if;

   when s85 =>
      if ( x1 and x37 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      elsif ( x1 and not x37 and x9 ) = '1' then
         current_lion <= s85;

      elsif ( x1 and not x37 and not x9 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s80;

      elsif ( not x1 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s76;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      end if;

   when s86 =>
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

   when s87 =>
      if ( x44 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s83;

      elsif ( x44 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s67;

      elsif ( x44 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s71;

      elsif ( not x44 and x50 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s85;

      else
         current_lion <= s87;

      end if;

   when s88 =>
      if ( x16 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_lion <= s82;

      elsif ( x16 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_lion <= s79;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s68;

      end if;

   when s89 =>
      if ( x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s91;

      elsif ( not x15 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s92;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s91;

      end if;

   when s90 =>
      if ( x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s91;

      elsif ( not x15 and x2 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s93;

      elsif ( not x15 and x2 and not x3 and x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s94;

      elsif ( not x15 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s89;

      else
         current_lion <= s90;

      end if;

   when s91 =>
      if ( x15 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s95;

      elsif ( not x15 and x2 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s93;

      elsif ( not x15 and x2 and not x3 and x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s94;

      elsif ( not x15 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s89;

      else
         current_lion <= s91;

      end if;

   when s92 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_lion <= s96;

      elsif ( not x15 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s97;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s95;

      end if;

   when s93 =>
      if ( x15 and x13 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_lion <= s98;

      elsif ( x15 and not x13 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_lion <= s99;

      elsif ( not x15 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_lion <= s99;

      else
         current_lion <= s93;

      end if;

   when s94 =>
      if ( x15 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s92;

      elsif ( not x15 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s97;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s95;

      end if;

   when s95 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s97;

      elsif ( not x15 and x8 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_lion <= s98;

      elsif ( not x15 and not x8 and x9 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_lion <= s98;

      elsif ( not x15 and not x8 and not x9 and x10 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s97;

      elsif ( not x15 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s95;

      elsif ( not x15 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s100;

      else
         current_lion <= s95;

      end if;

   when s96 =>
      if ( x26 and x37 and x28 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s101;

      elsif ( x26 and x37 and not x28 and x32 and x3 and x25 ) = '1' then
         current_lion <= s96;

      elsif ( x26 and x37 and not x28 and x32 and x3 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      elsif ( x26 and x37 and not x28 and x32 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s103;

      elsif ( x26 and x37 and not x28 and x32 and not x3 and x4 and not x5 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s104;

      elsif ( x26 and x37 and not x28 and x32 and not x3 and not x4 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s101;

      elsif ( x26 and x37 and not x28 and not x32 ) = '1' then
         y11 <= '1' ;
         current_lion <= s105;

      elsif ( x26 and not x37 and x28 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      elsif ( x26 and not x37 and x28 and not x2 and x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      elsif ( x26 and not x37 and x28 and not x2 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      elsif ( x26 and not x37 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      elsif ( not x26 and x27 ) = '1' then
         y11 <= '1' ;
         current_lion <= s105;

      elsif ( not x26 and not x27 and x28 and x1 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s101;

      elsif ( not x26 and not x27 and x28 and not x1 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      elsif ( not x26 and not x27 and x28 and not x1 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      else
         y11 <= '1' ;
         current_lion <= s105;

      end if;

   when s97 =>
      if ( x15 and x3 and x2 and x11 ) = '1' then
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_lion <= s107;

      elsif ( x15 and x3 and x2 and not x11 and x4 and x12 and x13 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s108;

      elsif ( x15 and x3 and x2 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_lion <= s97;

      elsif ( x15 and x3 and x2 and not x11 and x4 and not x12 ) = '1' then
         current_lion <= s97;

      elsif ( x15 and x3 and x2 and not x11 and not x4 ) = '1' then
         current_lion <= s97;

      elsif ( x15 and x3 and not x2 ) = '1' then
         current_lion <= s97;

      elsif ( x15 and not x3 and x33 and x4 and x11 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s110;

      elsif ( x15 and not x3 and x33 and x4 and not x11 and x12 and x13 and x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_lion <= s109;

      elsif ( x15 and not x3 and x33 and x4 and not x11 and x12 and x13 and not x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s93;

      elsif ( x15 and not x3 and x33 and x4 and not x11 and x12 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s111;

      elsif ( x15 and not x3 and x33 and x4 and not x11 and not x12 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s112;

      elsif ( x15 and not x3 and x33 and not x4 and x5 and x6 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s100;

      elsif ( x15 and not x3 and x33 and not x4 and x5 and not x6 and x7 and x8 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s100;

      elsif ( x15 and not x3 and x33 and not x4 and x5 and not x6 and x7 and not x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s92;

      elsif ( x15 and not x3 and x33 and not x4 and x5 and not x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s92;

      elsif ( x15 and not x3 and x33 and not x4 and x5 and not x6 and not x7 and not x8 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s100;

      elsif ( x15 and not x3 and x33 and not x4 and not x5 and x6 and x7 and x9 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s100;

      elsif ( x15 and not x3 and x33 and not x4 and not x5 and x6 and x7 and not x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s92;

      elsif ( x15 and not x3 and x33 and not x4 and not x5 and x6 and not x7 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s92;

      elsif ( x15 and not x3 and x33 and not x4 and not x5 and x6 and not x7 and not x9 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s100;

      elsif ( x15 and not x3 and x33 and not x4 and not x5 and not x6 and x7 and x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s100;

      elsif ( x15 and not x3 and x33 and not x4 and not x5 and not x6 and x7 and not x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s92;

      elsif ( x15 and not x3 and x33 and not x4 and not x5 and not x6 and not x7 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s92;

      elsif ( x15 and not x3 and x33 and not x4 and not x5 and not x6 and not x7 and not x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s100;

      elsif ( x15 and not x3 and not x33 ) = '1' then
         current_lion <= s97;

      elsif ( not x15 and x7 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_lion <= s98;

      elsif ( not x15 and not x7 and x9 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_lion <= s98;

      elsif ( not x15 and not x7 and not x9 and x10 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_lion <= s97;

      elsif ( not x15 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_lion <= s95;

      elsif ( not x15 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s100;

      else
         current_lion <= s97;

      end if;

   when s98 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_lion <= s96;

      elsif ( not x15 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s100;

      elsif ( not x15 and not x11 and x10 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_lion <= s108;

      else
         current_lion <= s98;

      end if;

   when s99 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_lion <= s96;

      elsif ( not x15 and x13 and x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s94;

      elsif ( not x15 and x13 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s89;

      elsif ( not x15 and not x13 and x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s93;

      elsif ( not x15 and not x13 and not x14 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s93;

      elsif ( not x15 and not x13 and not x14 and not x9 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s93;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s93;

      else
         current_lion <= s99;

      end if;

   when s100 =>
      if ( x15 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s94;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_lion <= s96;

      end if;

   when s101 =>
      if ( x26 and x28 and x3 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s113;

      elsif ( x26 and x28 and x3 and not x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      elsif ( x26 and x28 and not x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s103;

      elsif ( x26 and not x28 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s104;

      elsif ( not x26 and x27 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      elsif ( not x26 and not x27 and x5 and x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      elsif ( not x26 and not x27 and x5 and not x28 and x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s115;

      elsif ( not x26 and not x27 and x5 and not x28 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s116;

      elsif ( not x26 and not x27 and x5 and not x28 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      elsif ( not x26 and not x27 and not x5 and x28 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s104;

      end if;

   when s102 =>
      if ( x26 and x28 and x9 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s104;

      elsif ( x26 and x28 and not x9 and x23 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      elsif ( x26 and x28 and not x9 and not x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      elsif ( x26 and not x28 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s103;

      elsif ( not x26 and x27 and x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s103;

      elsif ( not x26 and x27 and not x4 ) = '1' then
         current_lion <= s1;

      elsif ( not x26 and not x27 and x28 and x32 and x24 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s113;

      elsif ( not x26 and not x27 and x28 and x32 and not x24 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      elsif ( not x26 and not x27 and x28 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s103;

      elsif ( not x26 and not x27 and not x28 and x18 and x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s115;

      elsif ( not x26 and not x27 and not x28 and x18 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s116;

      elsif ( not x26 and not x27 and not x28 and x18 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s103;

      end if;

   when s103 =>
      if ( x26 and x28 and x6 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s101;

      elsif ( x26 and x28 and not x6 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      elsif ( x26 and x28 and not x6 and not x4 ) = '1' then
         current_lion <= s1;

      elsif ( x26 and not x28 ) = '1' then
         current_lion <= s1;

      elsif ( not x26 and x27 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      elsif ( not x26 and not x27 and x28 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_lion <= s117;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      end if;

   when s104 =>
      if ( x26 and x28 and x7 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s101;

      elsif ( x26 and x28 and not x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      elsif ( x26 and not x28 ) = '1' then
         current_lion <= s1;

      elsif ( not x26 and x27 and x25 and x9 ) = '1' then
         current_lion <= s104;

      elsif ( not x26 and x27 and x25 and not x9 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      elsif ( not x26 and x27 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s103;

      end if;

   when s105 =>
      if ( x26 and x28 and x9 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s104;

      elsif ( x26 and x28 and not x9 and x23 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      elsif ( x26 and x28 and not x9 and not x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      elsif ( x26 and not x28 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s101;

      elsif ( not x26 and x36 and x27 and x32 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s101;

      elsif ( not x26 and x36 and x27 and not x32 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      elsif ( not x26 and x36 and x27 and not x32 and not x3 ) = '1' then
         current_lion <= s105;

      elsif ( not x26 and x36 and not x27 and x5 and x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s115;

      elsif ( not x26 and x36 and not x27 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s116;

      elsif ( not x26 and x36 and not x27 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      elsif ( not x26 and x36 and not x27 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      elsif ( not x26 and not x36 and x27 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s104;

      elsif ( not x26 and not x36 and not x27 and x2 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s101;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      end if;

   when s106 =>
      if ( x26 and x28 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s116;

      elsif ( x26 and x28 and not x23 and x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      elsif ( x26 and x28 and not x23 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      elsif ( x26 and not x28 and x3 and x25 ) = '1' then
         current_lion <= s106;

      elsif ( x26 and not x28 and x3 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      elsif ( x26 and not x28 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s103;

      elsif ( x26 and not x28 and not x3 and x4 and not x5 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s104;

      elsif ( x26 and not x28 and not x3 and not x4 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s101;

      elsif ( not x26 and x27 and x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s103;

      elsif ( not x26 and x27 and not x4 ) = '1' then
         current_lion <= s1;

      elsif ( not x26 and not x27 and x28 and x11 ) = '1' then
         current_lion <= s1;

      elsif ( not x26 and not x27 and x28 and not x11 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s118;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s103;

      end if;

   when s107 =>
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_lion <= s110;

   when s108 =>
      if ( x15 and x12 and x13 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_lion <= s109;

      elsif ( x15 and x12 and x13 and not x3 and x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_lion <= s109;

      elsif ( x15 and x12 and x13 and not x3 and not x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s93;

      elsif ( x15 and x12 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s111;

      elsif ( x15 and not x12 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s112;

      else
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s112;

      end if;

   when s109 =>
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s119;

   when s110 =>
         y19 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_lion <= s120;

   when s111 =>
      if ( x15 and x14 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s121;

      elsif ( x15 and not x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_lion <= s93;

      elsif ( not x15 and x12 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s122;

      else
         current_lion <= s111;

      end if;

   when s112 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s122;

      elsif ( not x15 and x6 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s121;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_lion <= s111;

      end if;

   when s113 =>
      if ( x26 ) = '1' then
         y11 <= '1' ;
         current_lion <= s105;

      elsif ( not x26 and x28 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_lion <= s123;

      elsif ( not x26 and x28 and not x5 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s124;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      end if;

   when s114 =>
      if ( x26 and x21 ) = '1' then
         current_lion <= s1;

      elsif ( x26 and not x21 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_lion <= s103;

      elsif ( not x26 and x27 ) = '1' then
         current_lion <= s1;

      elsif ( not x26 and not x27 and x28 and x3 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s101;

      elsif ( not x26 and not x27 and x28 and not x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s115;

      elsif ( not x26 and not x27 and not x28 and x19 and x24 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s125;

      elsif ( not x26 and not x27 and not x28 and x19 and not x24 ) = '1' then
         current_lion <= s1;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s113;

      end if;

   when s115 =>
      if ( x28 and x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s116;

      elsif ( x28 and not x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s125;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      end if;

   when s116 =>
      if ( x26 and x8 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_lion <= s101;

      elsif ( x26 and x8 and not x37 and x14 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s104;

      elsif ( x26 and x8 and not x37 and not x14 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      elsif ( x26 and not x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_lion <= s113;

      elsif ( not x26 and x28 ) = '1' then
         current_lion <= s1;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s115;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s116;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      elsif ( not x26 and not x28 and x6 and x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      elsif ( not x26 and not x28 and x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s125;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_lion <= s115;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s116;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_lion <= s114;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      elsif ( not x26 and not x28 and not x6 and x24 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_lion <= s125;

      else
         current_lion <= s1;

      end if;

   when s117 =>
      if ( x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s126;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_lion <= s124;

      end if;

   when s118 =>
      if ( x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_lion <= s126;

      end if;

   when s119 =>
         y14 <= '1' ;
         y31 <= '1' ;
         current_lion <= s127;

   when s120 =>
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_lion <= s96;

   when s121 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s119;

      elsif ( not x15 and x12 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s122;

      else
         current_lion <= s121;

      end if;

   when s122 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_lion <= s96;

      elsif ( not x15 and x13 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_lion <= s100;

      elsif ( not x15 and x13 and not x11 and x6 and x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_lion <= s94;

      elsif ( not x15 and x13 and not x11 and x6 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_lion <= s89;

      elsif ( not x15 and x13 and not x11 and not x6 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s92;

      elsif ( not x15 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_lion <= s91;

      elsif ( not x15 and not x13 and x14 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s112;

      elsif ( not x15 and not x13 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s112;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and x33 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s112;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and not x33 ) = '1' then
         current_lion <= s122;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_lion <= s112;

      else
         current_lion <= s122;

      end if;

   when s123 =>
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_lion <= s104;

   when s124 =>
      if ( x9 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_lion <= s116;

      end if;

   when s125 =>
      if ( x28 and x25 ) = '1' then
         current_lion <= s1;

      elsif ( x28 and not x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_lion <= s106;

      else
         current_lion <= s1;

      end if;

   when s126 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_lion <= s102;

   when s127 =>
      if ( x14 and x13 ) = '1' then
         y19 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_lion <= s120;

      elsif ( x14 and not x13 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_lion <= s122;

      else
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_lion <= s98;

      end if;

   end case;
   end proc_lion;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;
	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;	y32  <= '0' ;
	y33  <= '0' ;	y34  <= '0' ;	y35  <= '0' ;
	current_lion <= s1;
      elsif (clk'event and clk ='1') then
        proc_lion;
      end if;
   end process;
end ARC;
