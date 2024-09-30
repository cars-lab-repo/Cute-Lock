library ieee;
use ieee.std_logic_1164.all;

entity camel is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
	x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,
	x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37 : out std_logic );
end camel;

architecture ARC of camel is

   type states_camel is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,
	s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,
	s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,
	s121,s122,s123,s124,s125,s126,s127,s128 );
   signal current_camel : states_camel;

begin
   process (clk , rst)
   procedure proc_camel is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;
	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;	y32  <= '0' ;
	y33  <= '0' ;	y34  <= '0' ;	y35  <= '0' ;	y36  <= '0' ;
	y37  <= '0' ;

   case current_camel is
   when s1 =>
      if ( x10 and x11 and x43 and x13 and x32 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s2;

      elsif ( x10 and x11 and x43 and x13 and x32 and x3 and not x6 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x10 and x11 and x43 and x13 and x32 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x10 and x11 and x43 and x13 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      elsif ( x10 and x11 and x43 and not x13 and x5 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s4;

      elsif ( x10 and x11 and x43 and not x13 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x10 and x11 and not x43 and x44 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s5;

      elsif ( x10 and x11 and not x43 and not x44 and x14 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s6;

      elsif ( x10 and x11 and not x43 and not x44 and x14 and not x7 and x1 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( x10 and x11 and not x43 and not x44 and x14 and not x7 and x1 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x10 and x11 and not x43 and not x44 and x14 and not x7 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      elsif ( x10 and x11 and not x43 and not x44 and not x14 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( x10 and not x11 and x12 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s6;

      elsif ( x10 and not x11 and x12 and not x8 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( x10 and not x11 and x12 and not x8 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x10 and not x11 and not x12 and x13 and x45 and x32 and x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s5;

      elsif ( x10 and not x11 and not x12 and x13 and x45 and x32 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x10 and not x11 and not x12 and x13 and x45 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      elsif ( x10 and not x11 and not x12 and x13 and not x45 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s9;

      elsif ( x10 and not x11 and not x12 and not x13 and x1 and x14 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( x10 and not x11 and not x12 and not x13 and x1 and x14 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x10 and not x11 and not x12 and not x13 and x1 and not x14 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x10 and not x11 and not x12 and not x13 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      end if;

   when s2 =>
      if ( x42 and x43 and x13 and x10 and x4 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s6;

      elsif ( x42 and x43 and x13 and x10 and not x4 ) = '1' then
         current_camel <= s2;

      elsif ( x42 and x43 and x13 and not x10 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and x43 and x13 and not x10 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( x42 and x43 and x13 and not x10 and not x3 and not x33 ) = '1' then
         current_camel <= s2;

      elsif ( x42 and x43 and not x13 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and x43 and not x13 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( x42 and x43 and not x13 and not x3 and not x33 ) = '1' then
         current_camel <= s2;

      elsif ( x42 and not x43 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and not x43 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( x42 and not x43 and not x3 and not x33 ) = '1' then
         current_camel <= s2;

      elsif ( not x42 and x12 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and x12 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( not x42 and x12 and not x3 and not x33 ) = '1' then
         current_camel <= s2;

      elsif ( not x42 and not x12 and x44 and x45 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and not x12 and x44 and x45 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( not x42 and not x12 and x44 and x45 and not x3 and not x33 ) = '1' then
         current_camel <= s2;

      elsif ( not x42 and not x12 and x44 and not x45 and x41 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s12;

      elsif ( not x42 and not x12 and x44 and not x45 and not x41 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and not x12 and x44 and not x45 and not x41 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( not x42 and not x12 and x44 and not x45 and not x41 and not x3 and not x33 ) = '1' then
         current_camel <= s2;

      elsif ( not x42 and not x12 and not x44 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and not x12 and not x44 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      else
         current_camel <= s2;

      end if;

   when s3 =>
      if ( x42 and x43 and x10 and x4 and x34 and x44 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s12;

      elsif ( x42 and x43 and x10 and x4 and x34 and not x44 ) = '1' then
         y13 <= '1' ;
         current_camel <= s13;

      elsif ( x42 and x43 and x10 and x4 and not x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and x43 and x10 and not x4 ) = '1' then
         current_camel <= s3;

      elsif ( x42 and x43 and not x10 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s2;

      elsif ( x42 and not x43 and x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s2;

      elsif ( x42 and not x43 and not x13 and x41 and x14 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and not x43 and not x13 and x41 and x14 and not x4 ) = '1' then
         current_camel <= s3;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s3;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and not x13 and not x41 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s2;

      elsif ( not x42 and x10 and x12 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and x10 and x12 and not x4 ) = '1' then
         current_camel <= s3;

      elsif ( not x42 and x10 and not x12 and x44 and x45 and x35 and x3 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( not x42 and x10 and not x12 and x44 and x45 and x35 and not x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and x10 and not x12 and x44 and x45 and not x35 ) = '1' then
         current_camel <= s3;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s3;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and x10 and not x12 and not x44 and x14 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and x10 and not x12 and not x44 and x14 and not x4 ) = '1' then
         current_camel <= s3;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s3;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s2;

      end if;

   when s4 =>
      if ( x11 and x12 and x33 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      elsif ( x11 and x12 and not x33 ) = '1' then
         current_camel <= s4;

      elsif ( x11 and not x12 and x3 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x11 and not x12 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x11 and not x12 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x11 and not x12 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and not x12 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s4;

      elsif ( x11 and not x12 and x3 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and not x12 and x3 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x11 and not x12 and x3 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and not x12 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( not x11 and x3 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x11 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x11 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x11 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s4;

      elsif ( not x11 and x3 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and x3 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x11 and x3 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      end if;

   when s5 =>
      if ( x42 and x43 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( x42 and not x43 and x44 and x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( x42 and not x43 and x44 and not x10 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( x42 and not x43 and not x44 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( not x42 and x12 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( not x42 and not x12 and x13 and x14 and x41 and x2 and x37 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x42 and not x12 and x13 and x14 and x41 and x2 and not x37 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( not x42 and not x12 and x13 and x14 and x41 and not x2 ) = '1' then
         current_camel <= s5;

      elsif ( not x42 and not x12 and x13 and x14 and not x41 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( not x42 and not x12 and x13 and not x14 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      else
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      end if;

   when s6 =>
      if ( x11 and x43 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s22;

      elsif ( x11 and not x43 and x13 and x7 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x11 and not x43 and x13 and x7 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x11 and not x43 and x13 and x7 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x11 and not x43 and x13 and x7 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and not x43 and x13 and x7 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s6;

      elsif ( x11 and not x43 and x13 and x7 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and not x43 and x13 and x7 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x11 and not x43 and x13 and x7 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and not x43 and x13 and not x7 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s22;

      elsif ( x11 and not x43 and not x13 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s22;

      elsif ( not x11 and x12 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s22;

      elsif ( not x11 and not x12 and x45 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s22;

      elsif ( not x11 and not x12 and not x45 and x7 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x11 and not x12 and not x45 and x7 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x11 and not x12 and not x45 and x7 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x11 and not x12 and not x45 and x7 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and not x12 and not x45 and x7 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s6;

      elsif ( not x11 and not x12 and not x45 and x7 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and not x12 and not x45 and x7 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x11 and not x12 and not x45 and x7 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s22;

      end if;

   when s7 =>
      if ( x42 and x43 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and x43 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x42 and x43 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x42 and x43 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x42 and x43 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and x43 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s7;

      elsif ( x42 and x43 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and x43 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x42 and x43 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and x43 and not x3 and not x2 ) = '1' then
         current_camel <= s7;

      elsif ( x42 and not x43 and x13 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s7;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and x13 and not x3 and not x2 ) = '1' then
         current_camel <= s7;

      elsif ( x42 and not x43 and not x13 and x45 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s22;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s7;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and not x2 ) = '1' then
         current_camel <= s7;

      elsif ( x42 and not x43 and not x13 and not x45 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s7;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and not x2 ) = '1' then
         current_camel <= s7;

      elsif ( not x42 and x12 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s22;

      elsif ( not x42 and x12 and not x41 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s7;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and x12 and not x41 and not x3 and not x2 ) = '1' then
         current_camel <= s7;

      elsif ( not x42 and not x12 and x44 and x14 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s7;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and not x2 ) = '1' then
         current_camel <= s7;

      elsif ( not x42 and not x12 and x44 and not x14 and x10 and x5 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      elsif ( not x42 and not x12 and x44 and not x14 and x10 and not x5 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( not x42 and not x12 and x44 and not x14 and x10 and not x5 and not x32 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s7;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and not x2 ) = '1' then
         current_camel <= s7;

      elsif ( not x42 and not x12 and not x44 and x45 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s22;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s7;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and not x2 ) = '1' then
         current_camel <= s7;

      elsif ( not x42 and not x12 and not x44 and not x45 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s7;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      else
         current_camel <= s7;

      end if;

   when s8 =>
      if ( x11 and x43 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s12;

      elsif ( x11 and not x43 and x44 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s12;

      elsif ( x11 and not x43 and not x44 and x45 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s12;

      elsif ( x11 and not x43 and not x44 and not x45 and x10 and x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      elsif ( x11 and not x43 and not x44 and not x45 and x10 and not x32 and x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x11 and not x43 and not x44 and not x45 and x10 and not x32 and not x33 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( x11 and not x43 and not x44 and not x45 and not x10 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s12;

      elsif ( not x11 and x12 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s12;

      elsif ( not x11 and not x12 and x13 and x14 and x41 and x2 and x37 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x11 and not x12 and x13 and x14 and x41 and x2 and not x37 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( not x11 and not x12 and x13 and x14 and x41 and not x2 ) = '1' then
         current_camel <= s8;

      elsif ( not x11 and not x12 and x13 and x14 and not x41 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s12;

      elsif ( not x11 and not x12 and x13 and not x14 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s12;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s12;

      end if;

   when s9 =>
      if ( x11 and x43 and x41 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x11 and x43 and x41 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x11 and x43 and x41 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x11 and x43 and x41 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and x43 and x41 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s9;

      elsif ( x11 and x43 and x41 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and x43 and x41 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x11 and x43 and x41 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and x43 and not x41 and x2 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      elsif ( x11 and x43 and not x41 and x2 and not x4 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( x11 and x43 and not x41 and not x2 ) = '1' then
         current_camel <= s9;

      elsif ( x11 and not x43 and x13 and x2 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      elsif ( x11 and not x43 and x13 and x2 and not x4 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( x11 and not x43 and x13 and not x2 ) = '1' then
         current_camel <= s9;

      elsif ( x11 and not x43 and not x13 and x45 and x41 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x11 and not x43 and not x13 and x45 and x41 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x11 and not x43 and not x13 and x45 and x41 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x11 and not x43 and not x13 and x45 and x41 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and not x43 and not x13 and x45 and x41 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s9;

      elsif ( x11 and not x43 and not x13 and x45 and x41 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and not x43 and not x13 and x45 and x41 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x11 and not x43 and not x13 and x45 and x41 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and not x43 and not x13 and x45 and not x41 and x2 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      elsif ( x11 and not x43 and not x13 and x45 and not x41 and x2 and not x4 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( x11 and not x43 and not x13 and x45 and not x41 and not x2 ) = '1' then
         current_camel <= s9;

      elsif ( x11 and not x43 and not x13 and not x45 and x2 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      elsif ( x11 and not x43 and not x13 and not x45 and x2 and not x4 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( x11 and not x43 and not x13 and not x45 and not x2 ) = '1' then
         current_camel <= s9;

      elsif ( not x11 and x12 and x41 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x11 and x12 and x41 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x11 and x12 and x41 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x11 and x12 and x41 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and x12 and x41 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s9;

      elsif ( not x11 and x12 and x41 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and x12 and x41 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x11 and x12 and x41 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and x12 and not x41 and x2 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      elsif ( not x11 and x12 and not x41 and x2 and not x4 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( not x11 and x12 and not x41 and not x2 ) = '1' then
         current_camel <= s9;

      elsif ( not x11 and not x12 and x44 and x10 and x14 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x11 and not x12 and x44 and x10 and x14 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x11 and not x12 and x44 and x10 and x14 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x11 and not x12 and x44 and x10 and x14 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and not x12 and x44 and x10 and x14 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s9;

      elsif ( not x11 and not x12 and x44 and x10 and x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and not x12 and x44 and x10 and x14 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x11 and not x12 and x44 and x10 and x14 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and not x12 and x44 and x10 and not x14 and x1 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s2;

      elsif ( not x11 and not x12 and x44 and x10 and not x14 and not x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s12;

      elsif ( not x11 and not x12 and x44 and not x10 and x2 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      elsif ( not x11 and not x12 and x44 and not x10 and x2 and not x4 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( not x11 and not x12 and x44 and not x10 and not x2 ) = '1' then
         current_camel <= s9;

      elsif ( not x11 and not x12 and not x44 and x45 and x41 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x11 and not x12 and not x44 and x45 and x41 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x11 and not x12 and not x44 and x45 and x41 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x11 and not x12 and not x44 and x45 and x41 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and not x12 and not x44 and x45 and x41 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s9;

      elsif ( not x11 and not x12 and not x44 and x45 and x41 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and not x12 and not x44 and x45 and x41 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x11 and not x12 and not x44 and x45 and x41 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and not x12 and not x44 and x45 and not x41 and x2 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      elsif ( not x11 and not x12 and not x44 and x45 and not x41 and x2 and not x4 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      elsif ( not x11 and not x12 and not x44 and x45 and not x41 and not x2 ) = '1' then
         current_camel <= s9;

      elsif ( not x11 and not x12 and not x44 and not x45 and x2 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s11;

      elsif ( not x11 and not x12 and not x44 and not x45 and x2 and not x4 ) = '1' then
         y1 <= '1' ;
         current_camel <= s8;

      else
         current_camel <= s9;

      end if;

   when s10 =>
      if ( x11 and x43 and x41 and x13 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s2;

      elsif ( x11 and x43 and x41 and x13 and x3 and not x6 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x11 and x43 and x41 and x13 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x11 and x43 and x41 and not x13 and x5 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s4;

      elsif ( x11 and x43 and x41 and not x13 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x11 and x43 and not x41 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s9;

      elsif ( x11 and not x43 and x44 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s9;

      elsif ( x11 and not x43 and not x44 and x10 and x45 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( x11 and not x43 and not x44 and x10 and x45 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x11 and not x43 and not x44 and x10 and not x45 and x32 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s4;

      elsif ( x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s10;

      elsif ( x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and not x15 and not x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x11 and not x43 and not x44 and x10 and not x45 and not x32 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x11 and not x43 and not x44 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s9;

      elsif ( not x11 and x41 and x12 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( not x11 and x41 and x12 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( not x11 and x41 and not x12 and x13 and x45 and x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s5;

      elsif ( not x11 and x41 and not x12 and x13 and x45 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( not x11 and x41 and not x12 and x13 and not x45 and x39 and x1 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( not x11 and x41 and not x12 and x13 and not x45 and x39 and not x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( not x11 and x41 and not x12 and x13 and not x45 and not x39 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( not x11 and x41 and not x12 and not x13 and x45 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( not x11 and x41 and not x12 and not x13 and x45 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( not x11 and x41 and not x12 and not x13 and not x45 and x32 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s4;

      elsif ( not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s10;

      elsif ( not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and not x15 and not x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and x41 and not x12 and not x13 and not x45 and not x32 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s9;

      end if;

   when s11 =>
      if ( x42 and x43 and x44 and x10 and x33 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( x42 and x43 and x44 and x10 and not x33 ) = '1' then
         current_camel <= s11;

      elsif ( x42 and x43 and x44 and not x10 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( x42 and x43 and not x44 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( x42 and not x43 and x13 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( x42 and not x43 and not x13 and x41 and x2 and x45 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( x42 and not x43 and not x13 and x41 and x2 and not x45 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and not x43 and not x13 and x41 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( x42 and not x43 and not x13 and not x41 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( not x42 and x12 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( not x42 and not x12 and x44 and x14 and x10 and x33 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( not x42 and not x12 and x44 and x14 and x10 and not x33 ) = '1' then
         current_camel <= s11;

      elsif ( not x42 and not x12 and x44 and x14 and not x10 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( not x42 and not x12 and x44 and not x14 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( not x42 and not x12 and not x44 and x41 and x2 and x45 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( not x42 and not x12 and not x44 and x41 and x2 and not x45 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and not x12 and not x44 and x41 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      end if;

   when s12 =>
      if ( x11 and x43 and x13 and x10 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s6;

      elsif ( x11 and x43 and x13 and not x10 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x11 and x43 and x13 and not x10 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s5;

      elsif ( x11 and x43 and x13 and not x10 and not x34 and not x37 ) = '1' then
         current_camel <= s12;

      elsif ( x11 and x43 and not x13 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x11 and x43 and not x13 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s5;

      elsif ( x11 and x43 and not x13 and not x34 and not x37 ) = '1' then
         current_camel <= s12;

      elsif ( x11 and not x43 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x11 and not x43 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s5;

      elsif ( x11 and not x43 and not x34 and not x37 ) = '1' then
         current_camel <= s12;

      elsif ( not x11 and x12 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x11 and x12 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s5;

      elsif ( not x11 and x12 and not x34 and not x37 ) = '1' then
         current_camel <= s12;

      elsif ( not x11 and not x12 and x44 and x14 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x11 and not x12 and x44 and x14 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s5;

      elsif ( not x11 and not x12 and x44 and x14 and not x34 and not x37 ) = '1' then
         current_camel <= s12;

      elsif ( not x11 and not x12 and x44 and not x14 and x41 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( not x11 and not x12 and x44 and not x14 and x41 and not x32 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x11 and not x12 and x44 and not x14 and not x41 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x11 and not x12 and x44 and not x14 and not x41 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s5;

      elsif ( not x11 and not x12 and x44 and not x14 and not x41 and not x34 and not x37 ) = '1' then
         current_camel <= s12;

      elsif ( not x11 and not x12 and not x44 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x11 and not x12 and not x44 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s5;

      else
         current_camel <= s12;

      end if;

   when s13 =>
      if ( x33 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      else
         current_camel <= s13;

      end if;

   when s14 =>
      if ( x46 and x16 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s24;

      elsif ( x46 and not x16 and x37 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s25;

      elsif ( x46 and not x16 and not x37 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x46 and x47 and x4 and x36 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s24;

      elsif ( not x46 and x47 and x4 and not x36 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_camel <= s26;

      elsif ( not x46 and x47 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s25;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s24;

      end if;

   when s15 =>
      if ( x15 and x16 and x5 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( x15 and x16 and not x5 and x37 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x15 and x16 and not x5 and not x37 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( x15 and not x16 and x37 ) = '1' then
         y1 <= '1' ;
         current_camel <= s28;

      elsif ( x15 and not x16 and not x37 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s29;

      elsif ( not x15 and x47 and x35 and x36 ) = '1' then
         y1 <= '1' ;
         current_camel <= s28;

      elsif ( not x15 and x47 and x35 and not x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( not x15 and x47 and not x35 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s31;

      else
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      end if;

   when s16 =>
      if ( x46 and x16 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s25;

      elsif ( x46 and not x16 and x12 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s24;

      elsif ( x46 and not x16 and not x12 ) = '1' then
         current_camel <= s16;

      elsif ( not x46 and x47 and x4 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_camel <= s26;

      elsif ( not x46 and x47 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s25;

      elsif ( not x46 and not x47 and x14 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s25;

      else
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      end if;

   when s17 =>
      if ( x46 and x47 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x46 and x47 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x46 and not x47 and x2 and x34 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      elsif ( x46 and not x47 and x2 and not x34 and x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x46 and not x47 and x2 and not x34 and not x4 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x46 and not x47 and x2 and not x34 and not x4 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x46 and not x47 and not x2 ) = '1' then
         current_camel <= s17;

      elsif ( not x46 and x16 and x35 and x5 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s33;

      elsif ( not x46 and x16 and x35 and x5 and not x1 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x46 and x16 and x35 and not x5 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s24;

      elsif ( not x46 and x16 and x35 and not x5 and not x32 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x46 and x16 and not x35 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x46 and x16 and not x35 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s33;

      end if;

   when s18 =>
      if ( x15 and x47 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s33;

      elsif ( x15 and not x47 and x36 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( x15 and not x47 and not x36 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s33;

      elsif ( not x15 and x16 and x35 and x5 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s33;

      elsif ( not x15 and x16 and x35 and x5 and not x1 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x15 and x16 and x35 and not x5 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s24;

      elsif ( not x15 and x16 and x35 and not x5 and not x32 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x15 and x16 and not x35 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s24;

      elsif ( not x15 and x16 and not x35 and not x32 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s33;

      end if;

   when s19 =>
      if ( x11 and x43 and x13 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( x11 and x43 and x13 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( x11 and x43 and x13 and not x8 and not x1 ) = '1' then
         current_camel <= s19;

      elsif ( x11 and x43 and not x13 and x10 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s6;

      elsif ( x11 and x43 and not x13 and not x10 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( x11 and x43 and not x13 and not x10 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( x11 and x43 and not x13 and not x10 and not x8 and not x1 ) = '1' then
         current_camel <= s19;

      elsif ( x11 and not x43 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( x11 and not x43 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( x11 and not x43 and not x8 and not x1 ) = '1' then
         current_camel <= s19;

      elsif ( not x11 and x12 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x11 and x12 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x11 and x12 and not x8 and not x1 ) = '1' then
         current_camel <= s19;

      elsif ( not x11 and not x12 and x44 and x45 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x11 and not x12 and x44 and x45 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x11 and not x12 and x44 and x45 and not x8 and not x1 ) = '1' then
         current_camel <= s19;

      elsif ( not x11 and not x12 and x44 and not x45 and x41 and x40 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s6;

      elsif ( not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s19;

      elsif ( not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x11 and not x12 and x44 and not x45 and x41 and not x40 and not x7 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s22;

      elsif ( not x11 and not x12 and x44 and not x45 and not x41 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x11 and not x12 and x44 and not x45 and not x41 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x11 and not x12 and x44 and not x45 and not x41 and not x8 and not x1 ) = '1' then
         current_camel <= s19;

      elsif ( not x11 and not x12 and not x44 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x11 and not x12 and not x44 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      else
         current_camel <= s19;

      end if;

   when s20 =>
      if ( x11 and x43 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( x11 and x43 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x11 and x43 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( x11 and x43 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      elsif ( x11 and x43 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_camel <= s20;

      elsif ( x11 and not x43 and x44 and x10 and x35 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( x11 and not x43 and x44 and x10 and not x35 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( x11 and not x43 and x44 and not x10 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( x11 and not x43 and x44 and not x10 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x11 and not x43 and x44 and not x10 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( x11 and not x43 and x44 and not x10 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      elsif ( x11 and not x43 and x44 and not x10 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_camel <= s20;

      elsif ( x11 and not x43 and not x44 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( x11 and not x43 and not x44 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x11 and not x43 and not x44 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( x11 and not x43 and not x44 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      elsif ( x11 and not x43 and not x44 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_camel <= s20;

      elsif ( not x11 and x12 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x11 and x12 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x11 and x12 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( not x11 and x12 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      elsif ( not x11 and x12 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_camel <= s20;

      elsif ( not x11 and not x12 and x13 and x45 and x41 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s6;

      elsif ( not x11 and not x12 and x13 and x45 and not x41 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x11 and not x12 and x13 and x45 and not x41 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x11 and not x12 and x13 and x45 and not x41 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( not x11 and not x12 and x13 and x45 and not x41 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      elsif ( not x11 and not x12 and x13 and x45 and not x41 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_camel <= s20;

      elsif ( not x11 and not x12 and x13 and not x45 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x11 and not x12 and x13 and not x45 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x11 and not x12 and x13 and not x45 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( not x11 and not x12 and x13 and not x45 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      elsif ( not x11 and not x12 and x13 and not x45 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_camel <= s20;

      elsif ( not x11 and not x12 and not x13 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( not x11 and not x12 and not x13 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x11 and not x12 and not x13 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( not x11 and not x12 and not x13 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      else
         current_camel <= s20;

      end if;

   when s21 =>
      if ( x42 and x43 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x42 and not x43 and x44 and x10 and x36 and x6 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s6;

      elsif ( x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and x15 and x47 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s21;

      elsif ( x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and x44 and x10 and x36 and not x6 and not x7 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s22;

      elsif ( x42 and not x43 and x44 and x10 and not x36 and x35 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s23;

      elsif ( x42 and not x43 and x44 and x10 and not x36 and not x35 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( x42 and not x43 and x44 and not x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x42 and not x43 and not x44 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( not x42 and x12 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( not x42 and not x12 and x13 and x14 and x41 and x4 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s6;

      elsif ( not x42 and not x12 and x13 and x14 and x41 and not x4 ) = '1' then
         current_camel <= s21;

      elsif ( not x42 and not x12 and x13 and x14 and not x41 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( not x42 and not x12 and x13 and not x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      end if;

   when s22 =>
      if ( x42 and x43 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s9;

      elsif ( x42 and x43 and not x35 ) = '1' then
         current_camel <= s22;

      elsif ( x42 and not x43 and x13 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x42 and not x43 and x13 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x42 and not x43 and x13 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x42 and not x43 and x13 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and x13 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s22;

      elsif ( x42 and not x43 and x13 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and x13 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x42 and not x43 and x13 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and not x13 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s9;

      elsif ( x42 and not x43 and not x13 and not x35 ) = '1' then
         current_camel <= s22;

      elsif ( not x42 and x12 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s9;

      elsif ( not x42 and x12 and not x35 ) = '1' then
         current_camel <= s22;

      elsif ( not x42 and not x12 and x44 and x14 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s9;

      elsif ( not x42 and not x12 and x44 and x14 and not x35 ) = '1' then
         current_camel <= s22;

      elsif ( not x42 and not x12 and x44 and not x14 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x42 and not x12 and x44 and not x14 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x42 and not x12 and x44 and not x14 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x42 and not x12 and x44 and not x14 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and x44 and not x14 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s22;

      elsif ( not x42 and not x12 and x44 and not x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and x44 and not x14 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x42 and not x12 and x44 and not x14 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and not x44 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s9;

      else
         current_camel <= s22;

      end if;

   when s23 =>
      if ( x42 and x43 and x34 and x44 and x10 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s2;

      elsif ( x42 and x43 and x34 and x44 and x10 and not x6 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x42 and x43 and x34 and x44 and not x10 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and x43 and x34 and not x44 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and x43 and not x34 and x13 and x41 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x42 and x43 and not x34 and x13 and not x41 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( x42 and x43 and not x34 and x13 and not x41 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      elsif ( x42 and x43 and not x34 and x13 and not x41 and not x1 and not x38 ) = '1' then
         current_camel <= s23;

      elsif ( x42 and x43 and not x34 and not x13 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( x42 and x43 and not x34 and not x13 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      elsif ( x42 and x43 and not x34 and not x13 and not x1 and not x38 ) = '1' then
         current_camel <= s23;

      elsif ( x42 and not x43 and x10 and x44 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s21;

      elsif ( x42 and not x43 and x10 and not x44 and x45 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( x42 and not x43 and x10 and not x44 and x45 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x42 and not x43 and x10 and not x44 and not x45 and x32 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s4;

      elsif ( x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s23;

      elsif ( x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and not x15 and not x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x42 and not x43 and x10 and not x44 and not x45 and not x32 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( x42 and not x43 and not x10 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( x42 and not x43 and not x10 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( x42 and not x43 and not x10 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      elsif ( x42 and not x43 and not x10 and not x34 and not x1 and not x38 ) = '1' then
         current_camel <= s23;

      elsif ( not x42 and x12 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and x12 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( not x42 and x12 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      elsif ( not x42 and x12 and not x34 and not x1 and not x38 ) = '1' then
         current_camel <= s23;

      elsif ( not x42 and not x12 and x41 and x13 and x14 and x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s5;

      elsif ( not x42 and not x12 and x41 and x13 and x14 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( not x42 and not x12 and x41 and x13 and not x14 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( not x42 and not x12 and x41 and not x13 and x45 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s7;

      elsif ( not x42 and not x12 and x41 and not x13 and x45 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( not x42 and not x12 and x41 and not x13 and not x45 and x32 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s4;

      elsif ( not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_camel <= s23;

      elsif ( not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and not x15 and not x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x42 and not x12 and x41 and not x13 and not x45 and not x32 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s3;

      elsif ( not x42 and not x12 and not x41 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s10;

      elsif ( not x42 and not x12 and not x41 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s20;

      elsif ( not x42 and not x12 and not x41 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s19;

      else
         current_camel <= s23;

      end if;

   when s24 =>
      if ( x15 and x16 and x36 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x15 and x16 and not x36 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_camel <= s26;

      elsif ( x15 and not x16 and x13 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( x15 and not x16 and x13 and not x11 and x37 and x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x15 and not x16 and x13 and not x11 and x37 and not x4 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x15 and not x16 and x13 and not x11 and x37 and not x4 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x15 and not x16 and x13 and not x11 and not x37 and x36 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( x15 and not x16 and x13 and not x11 and not x37 and not x36 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s33;

      elsif ( x15 and not x16 and not x13 and x45 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x15 and not x16 and not x13 and not x45 and x40 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x15 and not x16 and not x13 and not x45 and not x40 and x6 and x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x15 and not x16 and not x13 and not x45 and not x40 and x6 and not x2 ) = '1' then
         current_camel <= s24;

      elsif ( x15 and not x16 and not x13 and not x45 and not x40 and not x6 and x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x15 and not x16 and not x13 and not x45 and not x40 and not x6 and not x8 ) = '1' then
         current_camel <= s24;

      elsif ( not x15 and x47 and x35 and x5 and x33 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x15 and x47 and x35 and x5 and not x33 and x1 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s34;

      elsif ( not x15 and x47 and x35 and x5 and not x33 and not x1 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( not x15 and x47 and x35 and not x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x15 and x47 and not x35 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      else
         y11 <= '1' ;
         current_camel <= s35;

      end if;

   when s25 =>
      if ( x15 and x16 and x5 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x15 and x16 and not x5 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x15 and not x16 and x12 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s24;

      elsif ( x15 and not x16 and not x12 ) = '1' then
         current_camel <= s25;

      elsif ( not x15 and x47 and x35 ) = '1' then
         y11 <= '1' ;
         current_camel <= s35;

      elsif ( not x15 and x47 and not x35 and x33 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      elsif ( not x15 and x47 and not x35 and not x33 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s24;

      elsif ( not x15 and x47 and not x35 and not x33 and not x32 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      else
         y21 <= '1' ;
         y27 <= '1' ;
         current_camel <= s26;

      end if;

   when s26 =>
      if ( x46 ) = '1' then
         y15 <= '1' ;
         y23 <= '1' ;
         y31 <= '1' ;
         current_camel <= s36;

      elsif ( not x46 and x16 and x2 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( not x46 and x16 and not x2 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s24;

      elsif ( not x46 and x16 and not x2 and not x32 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      else
         y15 <= '1' ;
         y23 <= '1' ;
         y31 <= '1' ;
         current_camel <= s36;

      end if;

   when s27 =>
      if ( x46 and x16 and x36 and x1 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      elsif ( x46 and x16 and x36 and not x1 and x2 and x3 and x35 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s34;

      elsif ( x46 and x16 and x36 and not x1 and x2 and x3 and not x35 ) = '1' then
         y11 <= '1' ;
         current_camel <= s35;

      elsif ( x46 and x16 and x36 and not x1 and x2 and not x3 ) = '1' then
         y11 <= '1' ;
         current_camel <= s35;

      elsif ( x46 and x16 and x36 and not x1 and not x2 ) = '1' then
         y11 <= '1' ;
         current_camel <= s35;

      elsif ( x46 and x16 and not x36 and x6 ) = '1' then
         y11 <= '1' ;
         current_camel <= s35;

      elsif ( x46 and x16 and not x36 and not x6 and x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( x46 and x16 and not x36 and not x6 and not x32 and x33 and x34 and x4 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s34;

      elsif ( x46 and x16 and not x36 and not x6 and not x32 and x33 and x34 and not x4 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( x46 and x16 and not x36 and not x6 and not x32 and x33 and not x34 ) = '1' then
         y11 <= '1' ;
         current_camel <= s35;

      elsif ( x46 and x16 and not x36 and not x6 and not x32 and not x33 ) = '1' then
         y11 <= '1' ;
         current_camel <= s35;

      elsif ( x46 and not x16 and x37 ) = '1' then
         y1 <= '1' ;
         current_camel <= s28;

      elsif ( x46 and not x16 and not x37 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s29;

      elsif ( not x46 and x47 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s24;

      else
         y11 <= '1' ;
         current_camel <= s35;

      end if;

   when s28 =>
      if ( x15 and x16 and x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( x15 and x16 and not x32 and x36 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( x15 and x16 and not x32 and not x36 and x6 and x2 and x3 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( x15 and x16 and not x32 and not x36 and x6 and x2 and not x3 ) = '1' then
         y11 <= '1' ;
         current_camel <= s35;

      elsif ( x15 and x16 and not x32 and not x36 and x6 and not x2 ) = '1' then
         y11 <= '1' ;
         current_camel <= s35;

      elsif ( x15 and x16 and not x32 and not x36 and not x6 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s37;

      elsif ( x15 and not x16 and x7 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s37;

      elsif ( x15 and not x16 and not x7 and x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s37;

      elsif ( x15 and not x16 and not x7 and not x9 and x41 and x37 ) = '1' then
         y1 <= '1' ;
         current_camel <= s28;

      elsif ( x15 and not x16 and not x7 and not x9 and x41 and not x37 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s29;

      elsif ( x15 and not x16 and not x7 and not x9 and not x41 and x42 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( x15 and not x16 and not x7 and not x9 and not x41 and not x42 ) = '1' then
         current_camel <= s28;

      elsif ( not x15 and x47 and x35 and x5 and x33 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x15 and x47 and x35 and x5 and not x33 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x15 and x47 and x35 and x5 and not x33 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( not x15 and x47 and x35 and not x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( not x15 and x47 and not x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( not x15 and not x47 and x34 and x2 and x42 ) = '1' then
         y2 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         y36 <= '1' ;
         current_camel <= s38;

      elsif ( not x15 and not x47 and x34 and x2 and not x42 and x4 and x12 and x13 and x3 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s34;

      elsif ( not x15 and not x47 and x34 and x2 and not x42 and x4 and x12 and x13 and not x3 ) = '1' then
         y13 <= '1' ;
         current_camel <= s39;

      elsif ( not x15 and not x47 and x34 and x2 and not x42 and x4 and x12 and not x13 ) = '1' then
         current_camel <= s28;

      elsif ( not x15 and not x47 and x34 and x2 and not x42 and x4 and not x12 ) = '1' then
         current_camel <= s28;

      elsif ( not x15 and not x47 and x34 and x2 and not x42 and not x4 ) = '1' then
         current_camel <= s28;

      elsif ( not x15 and not x47 and x34 and not x2 ) = '1' then
         current_camel <= s28;

      elsif ( not x15 and not x47 and not x34 and x33 and x35 and x11 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_camel <= s40;

      elsif ( not x15 and not x47 and not x34 and x33 and x35 and not x11 and x43 and x44 and x14 ) = '1' then
         y13 <= '1' ;
         current_camel <= s39;

      elsif ( not x15 and not x47 and not x34 and x33 and x35 and not x11 and x43 and x44 and not x14 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      elsif ( not x15 and not x47 and not x34 and x33 and x35 and not x11 and x43 and not x44 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      elsif ( not x15 and not x47 and not x34 and x33 and x35 and not x11 and not x43 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and x36 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and x36 and not x37 and x38 and x39 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and x36 and not x37 and x38 and not x39 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and x36 and not x37 and not x38 and x8 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and x36 and not x37 and not x38 and not x8 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and not x36 and x6 and x7 and x9 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and not x36 and x6 and x7 and not x9 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and not x36 and x6 and not x7 and x40 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and not x36 and x6 and not x7 and not x40 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and not x36 and not x6 and x38 and x41 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and not x36 and not x6 and x38 and not x41 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and not x36 and not x6 and not x38 and x10 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( not x15 and not x47 and not x34 and x33 and not x35 and not x36 and not x6 and not x38 and not x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      else
         current_camel <= s28;

      end if;

   when s29 =>
      if ( x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_camel <= s28;

      elsif ( x15 and not x16 and x39 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s37;

      elsif ( x15 and not x16 and not x39 and x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s37;

      elsif ( x15 and not x16 and not x39 and not x9 and x41 and x37 ) = '1' then
         y1 <= '1' ;
         current_camel <= s28;

      elsif ( x15 and not x16 and not x39 and not x9 and x41 and not x37 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s29;

      elsif ( x15 and not x16 and not x39 and not x9 and not x41 and x42 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( x15 and not x16 and not x39 and not x9 and not x41 and not x42 ) = '1' then
         current_camel <= s29;

      else
         y1 <= '1' ;
         current_camel <= s28;

      end if;

   when s30 =>
      if ( x46 and x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x46 and x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x46 and not x16 ) = '1' then
         y11 <= '1' ;
         current_camel <= s35;

      elsif ( not x46 and x47 and x4 and x5 and x1 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s34;

      elsif ( not x46 and x47 and x4 and x5 and not x1 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( not x46 and x47 and x4 and not x5 and x2 and x3 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s31;

      elsif ( not x46 and x47 and x4 and not x5 and x2 and not x3 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( not x46 and x47 and x4 and not x5 and not x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s33;

      elsif ( not x46 and x47 and not x4 and x33 and x34 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x46 and x47 and not x4 and x33 and not x34 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s27;

      elsif ( not x46 and x47 and not x4 and not x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s33;

      else
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      end if;

   when s31 =>
      if ( x15 and x16 ) = '1' then
         y11 <= '1' ;
         current_camel <= s35;

      elsif ( x15 and not x16 and x13 and x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x15 and not x16 and x13 and not x4 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x15 and not x16 and x13 and not x4 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x15 and not x16 and not x13 and x45 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      elsif ( x15 and not x16 and not x13 and not x45 and x9 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      elsif ( x15 and not x16 and not x13 and not x45 and not x9 and x38 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      elsif ( x15 and not x16 and not x13 and not x45 and not x9 and not x38 and x39 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      elsif ( x15 and not x16 and not x13 and not x45 and not x9 and not x38 and not x39 ) = '1' then
         current_camel <= s31;

      elsif ( not x15 and x47 and x4 ) = '1' then
         y13 <= '1' ;
         current_camel <= s39;

      elsif ( not x15 and x47 and not x4 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x15 and x47 and not x4 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      else
         y11 <= '1' ;
         current_camel <= s35;

      end if;

   when s32 =>
      if ( x46 and x16 and x36 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s25;

      elsif ( x46 and x16 and not x36 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s31;

      elsif ( x46 and not x16 and x43 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s31;

      elsif ( x46 and not x16 and not x43 ) = '1' then
         current_camel <= s32;

      elsif ( not x46 and x47 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s34;

      elsif ( not x46 and not x47 and x44 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s37;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s31;

      end if;

   when s33 =>
      if ( x46 and x47 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s29;

      elsif ( x46 and not x47 and x2 and x34 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      elsif ( x46 and not x47 and x2 and not x34 and x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( x46 and not x47 and x2 and not x34 and not x4 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( x46 and not x47 and x2 and not x34 and not x4 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      elsif ( x46 and not x47 and not x2 ) = '1' then
         current_camel <= s33;

      elsif ( not x46 and x16 and x4 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s29;

      elsif ( not x46 and x16 and x4 and not x5 and x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s29;

      elsif ( not x46 and x16 and x4 and not x5 and not x1 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x46 and x16 and not x4 and x32 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s29;

      elsif ( not x46 and x16 and not x4 and not x32 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s34;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s29;

      end if;

   when s34 =>
      if ( x15 and x16 ) = '1' then
         y11 <= '1' ;
         current_camel <= s35;

      elsif ( x15 and not x16 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x15 and x47 and x4 and x5 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      elsif ( not x15 and x47 and x4 and not x5 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s37;

      elsif ( not x15 and x47 and not x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( not x15 and not x47 and x43 and x44 and x34 ) = '1' then
         y13 <= '1' ;
         current_camel <= s39;

      elsif ( not x15 and not x47 and x43 and x44 and not x34 and x14 ) = '1' then
         y13 <= '1' ;
         current_camel <= s39;

      elsif ( not x15 and not x47 and x43 and x44 and not x34 and not x14 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      elsif ( not x15 and not x47 and x43 and not x44 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s16;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s14;

      end if;

   when s35 =>
      if ( x55 and x10 and x39 and x36 ) = '1' then
         current_camel <= s35;

      elsif ( x55 and x10 and x39 and not x36 and x46 and x51 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s41;

      elsif ( x55 and x10 and x39 and not x36 and x46 and not x51 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( x55 and x10 and x39 and not x36 and not x46 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s43;

      elsif ( x55 and x10 and not x39 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s44;

      elsif ( x55 and not x10 and x42 and x34 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      elsif ( x55 and not x10 and x42 and x34 and not x8 and x36 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s41;

      elsif ( x55 and not x10 and x42 and x34 and not x8 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and not x10 and x42 and not x34 and x32 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      elsif ( x55 and not x10 and x42 and not x34 and x32 and not x7 and x54 and x36 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s41;

      elsif ( x55 and not x10 and x42 and not x34 and x32 and not x7 and x54 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and not x10 and x42 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s43;

      elsif ( x55 and not x10 and x42 and not x34 and not x32 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s47;

      elsif ( x55 and not x10 and not x42 and x43 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s43;

      elsif ( x55 and not x10 and not x42 and x43 and not x20 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( x55 and not x10 and not x42 and x43 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( x55 and not x10 and not x42 and not x43 and x13 and x32 and x3 and x6 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s50;

      elsif ( x55 and not x10 and not x42 and not x43 and x13 and x32 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and not x10 and not x42 and not x43 and x13 and x32 and not x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and not x10 and not x42 and not x43 and x13 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s43;

      elsif ( x55 and not x10 and not x42 and not x43 and not x13 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and x41 and x11 and x1 and x33 and x34 and x35 ) = '1' then
         current_camel <= s35;

      elsif ( not x55 and x41 and x11 and x1 and x33 and x34 and not x35 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( not x55 and x41 and x11 and x1 and x33 and not x34 and x4 and x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and x41 and x11 and x1 and x33 and not x34 and x4 and not x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s47;

      elsif ( not x55 and x41 and x11 and x1 and x33 and not x34 and not x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( not x55 and x41 and x11 and x1 and not x33 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s43;

      elsif ( not x55 and x41 and x11 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( not x55 and x41 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s43;

      elsif ( not x55 and x41 and not x11 and not x12 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s50;

      elsif ( not x55 and not x41 and x32 and x42 ) = '1' then
         y23 <= '1' ;
         y25 <= '1' ;
         y32 <= '1' ;
         current_camel <= s51;

      elsif ( not x55 and not x41 and x32 and not x42 and x43 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( not x55 and not x41 and x32 and not x42 and not x43 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_camel <= s52;

      elsif ( not x55 and not x41 and not x32 and x11 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( not x55 and not x41 and not x32 and x11 and not x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( not x55 and not x41 and not x32 and not x11 and x12 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( not x55 and not x41 and not x32 and not x11 and x12 and not x35 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( not x55 and not x41 and not x32 and not x11 and not x12 and x33 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( not x55 and not x41 and not x32 and not x11 and not x12 and not x33 and x40 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      end if;

   when s36 =>
      if ( x46 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      elsif ( not x46 and x14 and x44 ) = '1' then
         y3 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s53;

      elsif ( not x46 and x14 and not x44 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s24;

      else
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s37;

      end if;

   when s37 =>
      if ( x46 and x16 ) = '1' then
         y13 <= '1' ;
         current_camel <= s39;

      elsif ( x46 and not x16 and x42 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s30;

      elsif ( x46 and not x16 and not x42 and x10 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s34;

      elsif ( x46 and not x16 and not x42 and not x10 ) = '1' then
         current_camel <= s37;

      elsif ( not x46 and x47 and x3 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s32;

      elsif ( not x46 and x47 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s25;

      else
         y11 <= '1' ;
         current_camel <= s35;

      end if;

   when s38 =>
         y27 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_camel <= s40;

   when s39 =>
      if ( x15 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s15;

      elsif ( not x15 and x47 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s18;

      elsif ( not x15 and x47 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s17;

      else
         y21 <= '1' ;
         y27 <= '1' ;
         current_camel <= s26;

      end if;

   when s40 =>
         y3 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s53;

   when s41 =>
      if ( x55 and x35 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x55 and not x35 and x13 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s50;

      elsif ( x55 and not x35 and not x13 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s55;

      elsif ( not x55 and x41 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( not x55 and not x41 and x42 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s50;

      elsif ( not x55 and not x41 and not x42 and x38 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      else
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      end if;

   when s42 =>
      if ( x55 and x50 and x19 and x41 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      elsif ( x55 and x50 and x19 and not x41 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      elsif ( x55 and x50 and not x19 ) = '1' then
         current_camel <= s42;

      elsif ( x55 and not x50 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      elsif ( not x55 and x10 and x11 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( not x55 and x10 and not x11 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      elsif ( not x55 and not x10 and x42 and x38 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s41;

      elsif ( not x55 and not x10 and x42 and not x38 ) = '1' then
         y8 <= '1' ;
         current_camel <= s59;

      elsif ( not x55 and not x10 and not x42 and x12 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s50;

      elsif ( not x55 and not x10 and not x42 and not x12 and x1 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_camel <= s52;

      elsif ( not x55 and not x10 and not x42 and not x12 and not x1 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      end if;

   when s43 =>
      if ( x55 and x53 and x47 ) = '1' then
         current_camel <= s43;

      elsif ( x55 and x53 and not x47 and x59 and x51 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( x55 and x53 and not x47 and x59 and not x51 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( x55 and x53 and not x47 and not x59 and x34 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( x55 and x53 and not x47 and not x59 and not x34 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( x55 and not x53 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( not x55 and x11 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( not x55 and not x11 and x1 and x33 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( not x55 and not x11 and x1 and not x33 and x34 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( not x55 and not x11 and x1 and not x33 and not x34 ) = '1' then
         current_camel <= s43;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s47;

      end if;

   when s44 =>
      if ( x28 and x57 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      elsif ( x28 and not x57 ) = '1' then
         current_camel <= s44;

      elsif ( not x28 and x27 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      elsif ( not x28 and x27 and not x8 and x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( not x28 and x27 and not x8 and not x37 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      end if;

   when s45 =>
      if ( x50 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      else
         current_camel <= s45;

      end if;

   when s46 =>
      if ( x55 and x47 and x54 and x27 and x29 and x59 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_camel <= s60;

      elsif ( x55 and x47 and x54 and x27 and x29 and not x59 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( x55 and x47 and x54 and x27 and not x29 and x33 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( x55 and x47 and x54 and x27 and not x29 and not x33 and x57 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s47;

      elsif ( x55 and x47 and x54 and x27 and not x29 and not x33 and not x57 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( x55 and x47 and x54 and not x27 ) = '1' then
         current_camel <= s46;

      elsif ( x55 and x47 and not x54 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x55 and not x47 and x37 and x56 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( x55 and not x47 and x37 and x56 and not x1 ) = '1' then
         current_camel <= s46;

      elsif ( x55 and not x47 and x37 and not x56 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x55 and not x47 and not x37 and x25 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x55 and not x47 and not x37 and not x25 and x35 and x36 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s55;

      elsif ( x55 and not x47 and not x37 and not x25 and x35 and not x36 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( x55 and not x47 and not x37 and not x25 and not x35 ) = '1' then
         current_camel <= s46;

      elsif ( not x55 and x41 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and x41 and not x11 and x12 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and x41 and not x11 and x12 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( not x55 and x41 and not x11 and not x12 and x32 and x3 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s44;

      elsif ( not x55 and x41 and not x11 and not x12 and x32 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      elsif ( not x55 and x41 and not x11 and not x12 and x32 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      elsif ( not x55 and x41 and not x11 and not x12 and not x32 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and not x41 and x43 and x33 and x35 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      elsif ( not x55 and not x41 and x43 and x33 and not x35 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      elsif ( not x55 and not x41 and x43 and not x33 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and not x41 and not x43 and x40 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s61;

      elsif ( not x55 and not x41 and not x43 and not x40 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      end if;

   when s47 =>
      if ( x55 and x17 and x19 and x41 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      elsif ( x55 and x17 and x19 and not x41 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      elsif ( x55 and x17 and not x19 ) = '1' then
         current_camel <= s47;

      elsif ( x55 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_camel <= s43;

      elsif ( x55 and not x17 and not x20 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( x55 and not x17 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( not x55 and x10 and x11 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( not x55 and x10 and not x11 and x43 and x4 and x32 ) = '1' then
         current_camel <= s47;

      elsif ( not x55 and x10 and not x11 and x43 and x4 and not x32 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      elsif ( not x55 and x10 and not x11 and x43 and not x4 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( not x55 and x10 and not x11 and not x43 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and not x10 and x42 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_camel <= s62;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      end if;

   when s48 =>
      if ( x55 and x51 and x24 and x36 ) = '1' then
         current_camel <= s48;

      elsif ( x55 and x51 and x24 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and x51 and not x24 and x31 and x29 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s41;

      elsif ( x55 and x51 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and x51 and not x24 and not x31 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s41;

      elsif ( x55 and not x51 and x42 and x35 and x36 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s41;

      elsif ( x55 and not x51 and x42 and x35 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and not x51 and x42 and not x35 and x58 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x55 and not x51 and x42 and not x35 and not x58 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and not x51 and not x42 and x52 and x35 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_camel <= s62;

      elsif ( x55 and not x51 and not x42 and x52 and not x35 and x58 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x55 and not x51 and not x42 and x52 and not x35 and not x58 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and not x51 and not x42 and not x52 and x3 and x6 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s50;

      elsif ( x55 and not x51 and not x42 and not x52 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and not x51 and not x42 and not x52 and not x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( not x55 and x10 and x11 and x34 and x35 ) = '1' then
         current_camel <= s48;

      elsif ( not x55 and x10 and x11 and x34 and not x35 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( not x55 and x10 and x11 and not x34 and x4 and x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and x10 and x11 and not x34 and x4 and not x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s47;

      elsif ( not x55 and x10 and x11 and not x34 and not x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( not x55 and x10 and not x11 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and x10 and not x11 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( not x55 and not x10 and x42 and x37 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s44;

      elsif ( not x55 and not x10 and x42 and not x37 and x8 and x4 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s55;

      elsif ( not x55 and not x10 and x42 and not x37 and x8 and not x4 and x1 and x34 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      elsif ( not x55 and not x10 and x42 and not x37 and x8 and not x4 and x1 and not x34 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      elsif ( not x55 and not x10 and x42 and not x37 and x8 and not x4 and not x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      elsif ( not x55 and not x10 and x42 and not x37 and not x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( not x55 and not x10 and not x42 and x12 and x9 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( not x55 and not x10 and not x42 and x12 and not x9 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_camel <= s62;

      elsif ( not x55 and not x10 and not x42 and not x12 and x6 ) = '1' then
         y6 <= '1' ;
         y12 <= '1' ;
         current_camel <= s63;

      elsif ( not x55 and not x10 and not x42 and not x12 and not x6 and x40 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      end if;

   when s49 =>
      if ( x55 and x44 and x23 and x51 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s41;

      elsif ( x55 and x44 and x23 and not x51 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( x55 and x44 and not x23 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s41;

      elsif ( x55 and not x44 and x28 and x35 and x36 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s41;

      elsif ( x55 and not x44 and x28 and x35 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and not x44 and x28 and not x35 and x58 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x55 and not x44 and x28 and not x35 and not x58 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and not x44 and not x28 and x37 and x35 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_camel <= s62;

      elsif ( x55 and not x44 and not x28 and x37 and not x35 and x58 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x55 and not x44 and not x28 and x37 and not x35 and not x58 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and not x44 and not x28 and not x37 and x39 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x55 and not x44 and not x28 and not x37 and not x39 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      elsif ( not x55 and x41 and x11 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s47;

      elsif ( not x55 and x41 and not x11 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( not x55 and not x41 and x42 and x32 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s64;

      elsif ( not x55 and not x41 and x42 and not x32 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and not x41 and x42 and not x32 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s47;

      elsif ( not x55 and not x41 and not x42 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      else
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      end if;

   when s50 =>
      if ( x55 and x8 and x53 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      elsif ( x55 and x8 and not x53 and x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x55 and x8 and not x53 and not x37 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      elsif ( x55 and not x8 and x51 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      elsif ( x55 and not x8 and not x51 and x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x55 and not x8 and not x51 and not x37 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      elsif ( not x55 and x41 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      elsif ( not x55 and not x41 and x42 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s50;

      elsif ( not x55 and not x41 and not x42 and x43 and x39 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s41;

      elsif ( not x55 and not x41 and not x42 and x43 and not x39 ) = '1' then
         y8 <= '1' ;
         current_camel <= s59;

      else
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y21 <= '1' ;
         current_camel <= s65;

      end if;

   when s51 =>
      if ( x7 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_camel <= s52;

      else
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      end if;

   when s52 =>
      if ( x55 and x29 and x50 ) = '1' then
         y8 <= '1' ;
         current_camel <= s59;

      elsif ( x55 and x29 and not x50 ) = '1' then
         current_camel <= s52;

      elsif ( x55 and not x29 and x58 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x55 and not x29 and not x58 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( not x55 and x11 and x6 and x40 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s44;

      elsif ( not x55 and x11 and x6 and not x40 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s64;

      elsif ( not x55 and x11 and not x6 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s50;

      elsif ( not x55 and not x11 and x39 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      else
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s55;

      end if;

   when s53 =>
         y11 <= '1' ;
         current_camel <= s35;

   when s54 =>
      if ( x55 and x10 and x43 and x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_camel <= s66;

      elsif ( x55 and x10 and x43 and not x23 and x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      elsif ( x55 and x10 and x43 and not x23 and not x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( x55 and x10 and not x43 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s69;

      elsif ( x55 and not x10 and x1 and x22 ) = '1' then
         y10 <= '1' ;
         y26 <= '1' ;
         y37 <= '1' ;
         current_camel <= s70;

      elsif ( x55 and not x10 and x1 and not x22 and x2 and x3 and x42 ) = '1' then
         current_camel <= s54;

      elsif ( x55 and not x10 and x1 and not x22 and x2 and x3 and not x42 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( x55 and not x10 and x1 and not x22 and x2 and not x3 and x11 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( x55 and not x10 and x1 and not x22 and x2 and not x3 and x11 and not x5 ) = '1' then
         y1 <= '1' ;
         current_camel <= s73;

      elsif ( x55 and not x10 and x1 and not x22 and x2 and not x3 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      elsif ( x55 and not x10 and x1 and not x22 and not x2 ) = '1' then
         y11 <= '1' ;
         current_camel <= s74;

      elsif ( x55 and not x10 and not x1 and x42 and x35 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( x55 and not x10 and not x1 and x42 and not x35 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( x55 and not x10 and not x1 and not x42 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( not x55 and x41 and x39 and x36 ) = '1' then
         current_camel <= s54;

      elsif ( not x55 and x41 and x39 and not x36 and x46 and x51 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s75;

      elsif ( not x55 and x41 and x39 and not x36 and x46 and not x51 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( not x55 and x41 and x39 and not x36 and not x46 ) = '1' then
         y11 <= '1' ;
         current_camel <= s74;

      elsif ( not x55 and x41 and not x39 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s76;

      elsif ( not x55 and not x41 and x11 and x34 and x8 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      elsif ( not x55 and not x41 and x11 and x34 and not x8 and x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s75;

      elsif ( not x55 and not x41 and x11 and x34 and not x8 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and not x41 and x11 and not x34 and x32 and x38 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      elsif ( not x55 and not x41 and x11 and not x34 and x32 and not x38 and x54 and x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s75;

      elsif ( not x55 and not x41 and x11 and not x34 and x32 and not x38 and x54 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and not x41 and x11 and not x34 and x32 and not x38 and not x54 ) = '1' then
         y11 <= '1' ;
         current_camel <= s74;

      elsif ( not x55 and not x41 and x11 and not x34 and not x32 ) = '1' then
         y1 <= '1' ;
         current_camel <= s73;

      elsif ( not x55 and not x41 and not x11 and x12 and x51 ) = '1' then
         y11 <= '1' ;
         current_camel <= s74;

      elsif ( not x55 and not x41 and not x11 and x12 and not x51 and x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( not x55 and not x41 and not x11 and x12 and not x51 and not x33 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      elsif ( not x55 and not x41 and not x11 and not x12 and x44 and x32 and x34 and x37 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s69;

      elsif ( not x55 and not x41 and not x11 and not x12 and x44 and x32 and x34 and not x37 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and not x41 and not x11 and not x12 and x44 and x32 and not x34 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and not x41 and not x11 and not x12 and x44 and not x32 ) = '1' then
         y11 <= '1' ;
         current_camel <= s74;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      end if;

   when s55 =>
      if ( x55 and x46 and x3 and x23 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s44;

      elsif ( x55 and x46 and x3 and not x23 ) = '1' then
         current_camel <= s55;

      elsif ( x55 and x46 and not x3 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x55 and not x46 and x2 and x23 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s44;

      elsif ( x55 and not x46 and x2 and not x23 ) = '1' then
         current_camel <= s55;

      elsif ( x55 and not x46 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( not x55 and x10 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( not x55 and not x10 and x11 and x5 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      elsif ( not x55 and not x10 and x11 and not x5 and x37 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( not x55 and not x10 and x11 and not x5 and not x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and not x10 and not x11 and x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      end if;

   when s56 =>
      if ( x38 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      else
         current_camel <= s56;

      end if;

   when s57 =>
      if ( x10 and x6 and x7 and x33 and x3 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s44;

      elsif ( x10 and x6 and x7 and x33 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      elsif ( x10 and x6 and x7 and x33 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      elsif ( x10 and x6 and x7 and not x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x10 and x6 and not x7 and x39 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      elsif ( x10 and x6 and not x7 and not x39 and x33 and x3 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s44;

      elsif ( x10 and x6 and not x7 and not x39 and x33 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      elsif ( x10 and x6 and not x7 and not x39 and x33 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      elsif ( x10 and x6 and not x7 and not x39 and not x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( x10 and not x6 and x2 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      elsif ( x10 and not x6 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( not x10 and x11 and x5 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      elsif ( not x10 and x11 and not x5 and x37 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( not x10 and x11 and not x5 and not x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      end if;

   when s58 =>
      if ( x41 and x12 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x41 and not x12 and x32 and x2 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      elsif ( x41 and not x12 and x32 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      elsif ( x41 and not x12 and not x32 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      elsif ( not x41 and x42 and x32 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s64;

      elsif ( not x41 and x42 and not x32 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x41 and x42 and not x32 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s47;

      elsif ( not x41 and not x42 and x43 and x34 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( not x41 and not x42 and x43 and not x34 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s44;

      elsif ( not x41 and not x42 and not x43 and x6 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s54;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      end if;

   when s59 =>
      if ( x55 and x48 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s55;

      elsif ( x55 and not x48 and x57 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      elsif ( x55 and not x48 and not x57 ) = '1' then
         current_camel <= s59;

      elsif ( not x55 and x37 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s55;

      else
         y8 <= '1' ;
         current_camel <= s59;

      end if;

   when s60 =>
      if ( x55 and x34 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      elsif ( x55 and not x34 and x2 ) = '1' then
         y8 <= '1' ;
         current_camel <= s59;

      elsif ( x55 and not x34 and not x2 and x28 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( x55 and not x34 and not x2 and not x28 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( not x55 and x41 and x36 and x3 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s44;

      elsif ( not x55 and x41 and x36 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      elsif ( not x55 and x41 and x36 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      elsif ( not x55 and x41 and not x36 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s47;

      elsif ( not x55 and not x41 and x11 and x32 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s64;

      elsif ( not x55 and not x41 and x11 and not x32 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and not x41 and x11 and not x32 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s47;

      else
         current_camel <= s60;

      end if;

   when s61 =>
      if ( x55 and x50 ) = '1' then
         y8 <= '1' ;
         current_camel <= s59;

      elsif ( x55 and not x50 ) = '1' then
         current_camel <= s61;

      elsif ( not x55 and x42 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_camel <= s60;

      elsif ( not x55 and not x42 and x9 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_camel <= s60;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      end if;

   when s62 =>
      if ( x55 and x37 and x28 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s49;

      elsif ( x55 and x37 and not x28 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s48;

      elsif ( x55 and not x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      elsif ( not x55 and x10 and x32 and x33 and x3 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s44;

      elsif ( not x55 and x10 and x32 and x33 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      elsif ( not x55 and x10 and x32 and x33 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      elsif ( not x55 and x10 and x32 and not x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      elsif ( not x55 and x10 and not x32 and x33 and x9 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_camel <= s60;

      elsif ( not x55 and x10 and not x32 and x33 and not x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s56;

      elsif ( not x55 and x10 and not x32 and not x33 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s41;

      else
         current_camel <= s62;

      end if;

   when s63 =>
      if ( x3 and x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      elsif ( x3 and not x5 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s58;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      end if;

   when s64 =>
      if ( x39 and x1 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_camel <= s52;

      elsif ( x39 and not x1 and x4 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s61;

      elsif ( x39 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s46;

      else
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      end if;

   when s65 =>
      if ( x55 and x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      elsif ( x55 and not x37 and x40 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s45;

      elsif ( x55 and not x37 and not x40 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s57;

      elsif ( not x55 and x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and not x10 and x42 and x32 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s64;

      elsif ( not x55 and not x10 and x42 and not x32 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s42;

      elsif ( not x55 and not x10 and x42 and not x32 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s47;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s47;

      end if;

   when s66 =>
      if ( x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s78;

      elsif ( not x19 and x26 and x5 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      elsif ( not x19 and x26 and not x5 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      else
         y11 <= '1' ;
         y36 <= '1' ;
         current_camel <= s80;

      end if;

   when s67 =>
      if ( x55 and x50 and x28 and x32 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         y35 <= '1' ;
         current_camel <= s80;

      elsif ( x55 and x50 and x28 and not x32 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( x55 and x50 and x28 and not x32 and not x35 ) = '1' then
         y1 <= '1' ;
         current_camel <= s73;

      elsif ( x55 and x50 and not x28 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( x55 and not x50 ) = '1' then
         y1 <= '1' ;
         current_camel <= s73;

      elsif ( not x55 and x13 and x23 and x51 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s75;

      elsif ( not x55 and x13 and x23 and not x51 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( not x55 and x13 and not x23 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s75;

      elsif ( not x55 and not x13 and x28 and x35 and x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s75;

      elsif ( not x55 and not x13 and x28 and x35 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and not x13 and x28 and not x35 and x58 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and not x13 and x28 and not x35 and not x58 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and not x13 and not x28 and x6 and x35 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s82;

      elsif ( not x55 and not x13 and not x28 and x6 and not x35 and x58 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and not x13 and not x28 and x6 and not x35 and not x58 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      else
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      end if;

   when s68 =>
      if ( x55 and x30 and x16 and x37 ) = '1' then
         y6 <= '1' ;
         y13 <= '1' ;
         y34 <= '1' ;
         current_camel <= s83;

      elsif ( x55 and x30 and x16 and not x37 and x39 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s78;

      elsif ( x55 and x30 and x16 and not x37 and x39 and not x19 and x26 and x5 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      elsif ( x55 and x30 and x16 and not x37 and x39 and not x19 and x26 and not x5 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      elsif ( x55 and x30 and x16 and not x37 and x39 and not x19 and not x26 ) = '1' then
         y11 <= '1' ;
         y36 <= '1' ;
         current_camel <= s80;

      elsif ( x55 and x30 and x16 and not x37 and not x39 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( x55 and x30 and not x16 and x41 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( x55 and x30 and not x16 and not x41 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( x55 and not x30 and x36 and x9 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( x55 and not x30 and x36 and not x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s82;

      elsif ( x55 and not x30 and not x36 and x3 and x42 ) = '1' then
         current_camel <= s68;

      elsif ( x55 and not x30 and not x36 and x3 and not x42 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( x55 and not x30 and not x36 and not x3 and x11 ) = '1' then
         y1 <= '1' ;
         current_camel <= s73;

      elsif ( x55 and not x30 and not x36 and not x3 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      elsif ( not x55 and x51 and x24 and x5 and x36 ) = '1' then
         current_camel <= s68;

      elsif ( not x55 and x51 and x24 and x5 and not x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s75;

      elsif ( not x55 and x51 and x24 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and x51 and not x24 and x31 and x29 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s75;

      elsif ( not x55 and x51 and not x24 and x31 and not x29 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and x51 and not x24 and not x31 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s75;

      elsif ( not x55 and not x51 and x42 and x35 and x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s75;

      elsif ( not x55 and not x51 and x42 and x35 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and not x51 and x42 and not x35 and x58 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and not x51 and x42 and not x35 and not x58 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and not x51 and not x42 and x52 and x35 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s82;

      elsif ( not x55 and not x51 and not x42 and x52 and not x35 and x58 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and not x51 and not x42 and x52 and not x35 and not x58 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and not x51 and not x42 and not x52 and x34 and x37 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s69;

      elsif ( not x55 and not x51 and not x42 and not x52 and x34 and not x37 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      end if;

   when s69 =>
      if ( x55 and x43 and x27 and x33 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      elsif ( x55 and x43 and x27 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( x55 and x43 and x27 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( x55 and x43 and not x27 and x1 and x29 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s76;

      elsif ( x55 and x43 and not x27 and x1 and not x29 ) = '1' then
         current_camel <= s69;

      elsif ( x55 and x43 and not x27 and not x1 and x29 ) = '1' then
         current_camel <= s69;

      elsif ( x55 and x43 and not x27 and not x1 and not x29 ) = '1' then
         current_camel <= s69;

      elsif ( x55 and not x43 and x29 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s78;

      elsif ( x55 and not x43 and not x29 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s86;

      elsif ( not x55 and x48 ) = '1' then
         y13 <= '1' ;
         y36 <= '1' ;
         current_camel <= s87;

      elsif ( not x55 and not x48 and x57 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      else
         current_camel <= s69;

      end if;

   when s70 =>
      if ( x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      else
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s85;

      end if;

   when s71 =>
      if ( x55 and x45 and x8 and x41 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( x55 and x45 and x8 and not x41 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( x55 and x45 and not x8 and x30 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s76;

      elsif ( x55 and x45 and not x8 and x30 and not x32 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      elsif ( x55 and x45 and not x8 and x30 and not x32 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s85;

      elsif ( x55 and x45 and not x8 and not x30 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( x55 and not x45 and x34 and x32 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      elsif ( x55 and not x45 and x34 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( x55 and not x45 and not x34 ) = '1' then
         current_camel <= s71;

      elsif ( not x55 and x47 and x54 and x27 and x29 and x59 ) = '1' then
         y13 <= '1' ;
         current_camel <= s88;

      elsif ( not x55 and x47 and x54 and x27 and x29 and not x59 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( not x55 and x47 and x54 and x27 and not x29 and x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( not x55 and x47 and x54 and x27 and not x29 and not x33 and x57 ) = '1' then
         y1 <= '1' ;
         current_camel <= s73;

      elsif ( not x55 and x47 and x54 and x27 and not x29 and not x33 and not x57 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( not x55 and x47 and x54 and not x27 ) = '1' then
         current_camel <= s71;

      elsif ( not x55 and x47 and not x54 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and not x47 and x37 and x56 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( not x55 and not x47 and x37 and x56 and not x1 ) = '1' then
         current_camel <= s71;

      elsif ( not x55 and not x47 and x37 and not x56 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and not x47 and not x37 and x25 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and not x47 and not x37 and not x25 and x35 and x36 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s78;

      elsif ( not x55 and not x47 and not x37 and not x25 and x35 and not x36 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      else
         current_camel <= s71;

      end if;

   when s72 =>
      if ( x55 and x24 and x26 and x7 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s75;

      elsif ( x55 and x24 and x26 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_camel <= s89;

      elsif ( x55 and x24 and not x26 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s85;

      elsif ( x55 and not x24 and x28 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s69;

      elsif ( x55 and not x24 and not x28 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and x31 and x50 and x10 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      elsif ( not x55 and x31 and x50 and not x10 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s85;

      elsif ( not x55 and x31 and not x50 ) = '1' then
         current_camel <= s72;

      else
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s85;

      end if;

   when s73 =>
      if ( x55 and x19 and x44 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s82;

      elsif ( x55 and x19 and not x44 and x32 and x18 and x12 ) = '1' then
         current_camel <= s73;

      elsif ( x55 and x19 and not x44 and x32 and x18 and not x12 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s85;

      elsif ( x55 and x19 and not x44 and x32 and not x18 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( x55 and x19 and not x44 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( x55 and not x19 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and x17 and x50 and x10 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      elsif ( not x55 and x17 and x50 and not x10 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s85;

      elsif ( not x55 and x17 and not x50 ) = '1' then
         current_camel <= s73;

      elsif ( not x55 and not x17 and x51 ) = '1' then
         y11 <= '1' ;
         current_camel <= s74;

      elsif ( not x55 and not x17 and not x51 and x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      end if;

   when s74 =>
      if ( x55 and x11 and x25 and x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      elsif ( x55 and x11 and x25 and not x34 and x36 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( x55 and x11 and x25 and not x34 and not x36 ) = '1' then
         current_camel <= s74;

      elsif ( x55 and x11 and not x25 ) = '1' then
         y1 <= '1' ;
         current_camel <= s73;

      elsif ( x55 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      elsif ( not x55 and x53 and x47 ) = '1' then
         current_camel <= s74;

      elsif ( not x55 and x53 and not x47 and x59 and x51 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      elsif ( not x55 and x53 and not x47 and x59 and not x51 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( not x55 and x53 and not x47 and not x59 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( not x55 and x53 and not x47 and not x59 and not x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      end if;

   when s75 =>
      if ( x55 and x35 and x7 and x1 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         y35 <= '1' ;
         current_camel <= s80;

      elsif ( x55 and x35 and x7 and not x1 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( x55 and x35 and not x7 ) = '1' then
         current_camel <= s75;

      elsif ( x55 and not x35 and x38 and x32 ) = '1' then
         current_camel <= s75;

      elsif ( x55 and not x35 and x38 and not x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      elsif ( x55 and not x35 and not x38 ) = '1' then
         current_camel <= s75;

      elsif ( not x55 and x34 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      elsif ( not x55 and not x34 and x2 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s86;

      elsif ( not x55 and not x34 and not x2 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      end if;

   when s76 =>
      if ( x55 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( x55 and not x5 and x34 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      elsif ( x55 and not x5 and not x34 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      elsif ( not x55 and x35 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and not x35 and x44 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s69;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s78;

      end if;

   when s77 =>
      if ( x55 and x41 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s85;

      elsif ( x55 and not x41 and x25 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s75;

      elsif ( x55 and not x41 and not x25 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s86;

      elsif ( not x55 and x39 and x53 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      elsif ( not x55 and x39 and not x53 and x37 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and x39 and not x53 and not x37 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      elsif ( not x55 and not x39 and x51 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      elsif ( not x55 and not x39 and not x51 and x37 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      else
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      end if;

   when s78 =>
      if ( x55 and x33 and x8 and x32 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         y35 <= '1' ;
         current_camel <= s80;

      elsif ( x55 and x33 and x8 and not x32 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( x55 and x33 and x8 and not x32 and not x35 ) = '1' then
         y1 <= '1' ;
         current_camel <= s73;

      elsif ( x55 and x33 and not x8 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s76;

      elsif ( x55 and x33 and not x8 and not x32 ) = '1' then
         y1 <= '1' ;
         current_camel <= s73;

      elsif ( x55 and not x33 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      elsif ( not x55 and x37 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      elsif ( not x55 and x37 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      else
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      end if;

   when s79 =>
      if ( x55 and x16 and x50 and x33 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      elsif ( x55 and x16 and x50 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( x55 and x16 and x50 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( x55 and x16 and not x50 and x32 and x30 and x26 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s76;

      elsif ( x55 and x16 and not x50 and x32 and x30 and not x26 and x34 ) = '1' then
         current_camel <= s79;

      elsif ( x55 and x16 and not x50 and x32 and x30 and not x26 and not x34 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s76;

      elsif ( x55 and x16 and not x50 and x32 and not x30 ) = '1' then
         current_camel <= s79;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and x26 and x1 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and x26 and x1 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s85;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and x26 and not x1 ) = '1' then
         current_camel <= s79;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and not x26 and x3 ) = '1' then
         current_camel <= s79;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and not x26 and not x3 and x1 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and not x26 and not x3 and x1 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s85;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and not x26 and not x3 and not x1 ) = '1' then
         current_camel <= s79;

      elsif ( x55 and x16 and not x50 and not x32 and not x30 ) = '1' then
         current_camel <= s79;

      elsif ( x55 and not x16 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and x28 and x57 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      elsif ( not x55 and x28 and not x57 ) = '1' then
         current_camel <= s79;

      elsif ( not x55 and not x28 and x27 and x8 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      elsif ( not x55 and not x28 and x27 and not x8 and x37 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      elsif ( not x55 and not x28 and not x27 and x50 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      else
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      end if;

   when s80 =>
      if ( x32 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         y35 <= '1' ;
         current_camel <= s80;

      elsif ( not x32 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      else
         y1 <= '1' ;
         current_camel <= s73;

      end if;

   when s81 =>
      if ( x32 and x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s90;

      elsif ( x32 and not x15 ) = '1' then
         y11 <= '1' ;
         current_camel <= s91;

      else
         y11 <= '1' ;
         current_camel <= s91;

      end if;

   when s82 =>
      if ( x55 and x40 ) = '1' then
         y13 <= '1' ;
         current_camel <= s88;

      elsif ( x55 and not x40 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( x55 and not x40 and not x3 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      elsif ( not x55 and x29 and x50 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s86;

      elsif ( not x55 and x29 and not x50 ) = '1' then
         current_camel <= s82;

      elsif ( not x55 and not x29 and x58 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s71;

      end if;

   when s83 =>
      if ( x16 and x37 ) = '1' then
         y6 <= '1' ;
         y13 <= '1' ;
         y34 <= '1' ;
         current_camel <= s83;

      elsif ( x16 and not x37 and x39 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s78;

      elsif ( x16 and not x37 and x39 and not x19 and x26 and x5 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      elsif ( x16 and not x37 and x39 and not x19 and x26 and not x5 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      elsif ( x16 and not x37 and x39 and not x19 and not x26 ) = '1' then
         y11 <= '1' ;
         y36 <= '1' ;
         current_camel <= s80;

      elsif ( x16 and not x37 and not x39 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x16 and x41 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      else
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      end if;

   when s84 =>
      if ( x55 and x22 and x2 and x33 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      elsif ( x55 and x22 and x2 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( x55 and x22 and x2 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( x55 and x22 and not x2 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( x55 and not x22 and x31 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( x55 and not x22 and not x31 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( not x55 and x46 and x3 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s76;

      elsif ( not x55 and x46 and x3 and not x23 ) = '1' then
         current_camel <= s84;

      elsif ( not x55 and x46 and not x3 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( not x55 and not x46 and x33 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s76;

      elsif ( not x55 and not x46 and x33 and not x23 ) = '1' then
         current_camel <= s84;

      else
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      end if;

   when s85 =>
      if ( x55 and x25 and x52 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( x55 and x25 and not x52 and x6 and x39 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      elsif ( x55 and x25 and not x52 and x6 and not x39 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s81;

      elsif ( x55 and x25 and not x52 and not x6 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      elsif ( x55 and not x25 and x29 ) = '1' then
         y10 <= '1' ;
         y26 <= '1' ;
         y37 <= '1' ;
         current_camel <= s70;

      elsif ( x55 and not x25 and not x29 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s76;

      elsif ( not x55 and x38 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      elsif ( not x55 and not x38 and x50 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s67;

      else
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s79;

      end if;

   when s86 =>
      if ( x37 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      elsif ( not x37 and x40 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s77;

      else
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      end if;

   when s87 =>
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

   when s88 =>
      if ( x55 and x33 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s84;

      elsif ( x55 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s68;

      elsif ( x55 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s72;

      elsif ( not x55 and x50 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s86;

      else
         current_camel <= s88;

      end if;

   when s89 =>
      if ( x47 and x9 ) = '1' then
         y6 <= '1' ;
         y13 <= '1' ;
         y34 <= '1' ;
         current_camel <= s83;

      elsif ( x47 and not x9 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         y35 <= '1' ;
         current_camel <= s80;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s69;

      end if;

   when s90 =>
      if ( x15 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s92;

      elsif ( not x15 and x36 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s93;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s92;

      end if;

   when s91 =>
      if ( x46 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s92;

      elsif ( not x46 and x2 and x34 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s94;

      elsif ( not x46 and x2 and not x34 and x35 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s95;

      elsif ( not x46 and x2 and not x34 and not x35 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s90;

      else
         current_camel <= s91;

      end if;

   when s92 =>
      if ( x46 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s96;

      elsif ( not x46 and x2 and x34 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s94;

      elsif ( not x46 and x2 and not x34 and x35 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s95;

      elsif ( not x46 and x2 and not x34 and not x35 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s90;

      else
         current_camel <= s92;

      end if;

   when s93 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_camel <= s97;

      elsif ( not x15 and x37 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s98;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s96;

      end if;

   when s94 =>
      if ( x15 and x13 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_camel <= s99;

      elsif ( x15 and not x13 ) = '1' then
         y8 <= '1' ;
         current_camel <= s100;

      elsif ( not x15 and x12 ) = '1' then
         y8 <= '1' ;
         current_camel <= s100;

      else
         current_camel <= s94;

      end if;

   when s95 =>
      if ( x46 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s93;

      elsif ( not x46 and x37 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s98;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s96;

      end if;

   when s96 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s98;

      elsif ( not x15 and x39 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_camel <= s99;

      elsif ( not x15 and not x39 and x40 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_camel <= s99;

      elsif ( not x15 and not x39 and not x40 and x10 and x37 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s98;

      elsif ( not x15 and not x39 and not x40 and x10 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s96;

      elsif ( not x15 and not x39 and not x40 and not x10 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s101;

      else
         current_camel <= s96;

      end if;

   when s97 =>
      if ( x26 and x32 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s102;

      elsif ( x26 and x32 and not x28 and x33 and x34 and x25 ) = '1' then
         current_camel <= s97;

      elsif ( x26 and x32 and not x28 and x33 and x34 and not x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      elsif ( x26 and x32 and not x28 and x33 and not x34 and x35 and x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s104;

      elsif ( x26 and x32 and not x28 and x33 and not x34 and x35 and not x36 ) = '1' then
         y1 <= '1' ;
         current_camel <= s105;

      elsif ( x26 and x32 and not x28 and x33 and not x34 and not x35 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s102;

      elsif ( x26 and x32 and not x28 and not x33 ) = '1' then
         y11 <= '1' ;
         current_camel <= s106;

      elsif ( x26 and not x32 and x28 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      elsif ( x26 and not x32 and x28 and not x2 and x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      elsif ( x26 and not x32 and x28 and not x2 and not x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      elsif ( x26 and not x32 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      elsif ( not x26 and x27 ) = '1' then
         y11 <= '1' ;
         current_camel <= s106;

      elsif ( not x26 and not x27 and x28 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s102;

      elsif ( not x26 and not x27 and x28 and not x1 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      elsif ( not x26 and not x27 and x28 and not x1 and not x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      else
         y11 <= '1' ;
         current_camel <= s106;

      end if;

   when s98 =>
      if ( x46 and x34 and x2 and x42 ) = '1' then
         y2 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         y36 <= '1' ;
         current_camel <= s108;

      elsif ( x46 and x34 and x2 and not x42 and x35 and x43 and x44 and x3 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s109;

      elsif ( x46 and x34 and x2 and not x42 and x35 and x43 and x44 and not x3 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_camel <= s110;

      elsif ( x46 and x34 and x2 and not x42 and x35 and x43 and not x44 ) = '1' then
         current_camel <= s98;

      elsif ( x46 and x34 and x2 and not x42 and x35 and not x43 ) = '1' then
         current_camel <= s98;

      elsif ( x46 and x34 and x2 and not x42 and not x35 ) = '1' then
         current_camel <= s98;

      elsif ( x46 and x34 and not x2 ) = '1' then
         current_camel <= s98;

      elsif ( x46 and not x34 and x33 and x4 and x11 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_camel <= s111;

      elsif ( x46 and not x34 and x33 and x4 and not x11 and x12 and x13 and x14 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_camel <= s110;

      elsif ( x46 and not x34 and x33 and x4 and not x11 and x12 and x13 and not x14 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s94;

      elsif ( x46 and not x34 and x33 and x4 and not x11 and x12 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s112;

      elsif ( x46 and not x34 and x33 and x4 and not x11 and not x12 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s113;

      elsif ( x46 and not x34 and x33 and not x4 and x5 and x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s101;

      elsif ( x46 and not x34 and x33 and not x4 and x5 and not x37 and x7 and x39 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s101;

      elsif ( x46 and not x34 and x33 and not x4 and x5 and not x37 and x7 and not x39 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s93;

      elsif ( x46 and not x34 and x33 and not x4 and x5 and not x37 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s93;

      elsif ( x46 and not x34 and x33 and not x4 and x5 and not x37 and not x7 and not x8 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s101;

      elsif ( x46 and not x34 and x33 and not x4 and not x5 and x6 and x38 and x40 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s101;

      elsif ( x46 and not x34 and x33 and not x4 and not x5 and x6 and x38 and not x40 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s93;

      elsif ( x46 and not x34 and x33 and not x4 and not x5 and x6 and not x38 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s93;

      elsif ( x46 and not x34 and x33 and not x4 and not x5 and x6 and not x38 and not x9 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s101;

      elsif ( x46 and not x34 and x33 and not x4 and not x5 and not x6 and x7 and x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s101;

      elsif ( x46 and not x34 and x33 and not x4 and not x5 and not x6 and x7 and not x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s93;

      elsif ( x46 and not x34 and x33 and not x4 and not x5 and not x6 and not x7 and x41 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s93;

      elsif ( x46 and not x34 and x33 and not x4 and not x5 and not x6 and not x7 and not x41 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s101;

      elsif ( x46 and not x34 and not x33 ) = '1' then
         current_camel <= s98;

      elsif ( not x46 and x38 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_camel <= s99;

      elsif ( not x46 and not x38 and x40 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_camel <= s99;

      elsif ( not x46 and not x38 and not x40 and x10 and x37 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_camel <= s98;

      elsif ( not x46 and not x38 and not x40 and x10 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_camel <= s96;

      elsif ( not x46 and not x38 and not x40 and not x10 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s101;

      else
         current_camel <= s98;

      end if;

   when s99 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_camel <= s97;

      elsif ( not x15 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s101;

      elsif ( not x15 and not x42 and x41 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_camel <= s109;

      else
         current_camel <= s99;

      end if;

   when s100 =>
      if ( x46 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_camel <= s97;

      elsif ( not x46 and x44 and x35 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s95;

      elsif ( not x46 and x44 and not x35 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s90;

      elsif ( not x46 and not x44 and x14 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s94;

      elsif ( not x46 and not x44 and not x14 and x40 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s94;

      elsif ( not x46 and not x44 and not x14 and not x40 and x38 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s94;

      elsif ( not x46 and not x44 and not x14 and not x40 and not x38 and x39 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s94;

      else
         current_camel <= s100;

      end if;

   when s101 =>
      if ( x15 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s95;

      else
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_camel <= s97;

      end if;

   when s102 =>
      if ( x26 and x28 and x3 and x5 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s114;

      elsif ( x26 and x28 and x3 and not x5 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      elsif ( x26 and x28 and not x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s104;

      elsif ( x26 and not x28 ) = '1' then
         y1 <= '1' ;
         current_camel <= s105;

      elsif ( not x26 and x27 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      elsif ( not x26 and not x27 and x36 and x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      elsif ( not x26 and not x27 and x36 and not x28 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s116;

      elsif ( not x26 and not x27 and x36 and not x28 and not x3 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s117;

      elsif ( not x26 and not x27 and x36 and not x28 and not x3 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      elsif ( not x26 and not x27 and not x36 and x28 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      else
         y1 <= '1' ;
         current_camel <= s105;

      end if;

   when s103 =>
      if ( x26 and x28 and x9 ) = '1' then
         y1 <= '1' ;
         current_camel <= s105;

      elsif ( x26 and x28 and not x9 and x23 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      elsif ( x26 and x28 and not x9 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      elsif ( x26 and not x28 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s104;

      elsif ( not x26 and x27 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s104;

      elsif ( not x26 and x27 and not x35 ) = '1' then
         current_camel <= s1;

      elsif ( not x26 and not x27 and x28 and x2 and x24 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s114;

      elsif ( not x26 and not x27 and x28 and x2 and not x24 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      elsif ( not x26 and not x27 and x28 and not x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s104;

      elsif ( not x26 and not x27 and not x28 and x49 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s116;

      elsif ( not x26 and not x27 and not x28 and x49 and not x3 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s117;

      elsif ( not x26 and not x27 and not x28 and x49 and not x3 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s104;

      end if;

   when s104 =>
      if ( x26 and x28 and x37 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s102;

      elsif ( x26 and x28 and not x37 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      elsif ( x26 and x28 and not x37 and not x4 ) = '1' then
         current_camel <= s1;

      elsif ( x26 and not x28 ) = '1' then
         current_camel <= s1;

      elsif ( not x26 and x27 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      elsif ( not x26 and not x27 and x28 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_camel <= s118;

      else
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      end if;

   when s105 =>
      if ( x26 and x28 and x7 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s102;

      elsif ( x26 and x28 and not x7 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      elsif ( x26 and not x28 ) = '1' then
         current_camel <= s1;

      elsif ( not x26 and x27 and x25 and x9 ) = '1' then
         current_camel <= s105;

      elsif ( not x26 and x27 and x25 and not x9 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      elsif ( not x26 and x27 and not x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s104;

      end if;

   when s106 =>
      if ( x26 and x28 and x9 ) = '1' then
         y1 <= '1' ;
         current_camel <= s105;

      elsif ( x26 and x28 and not x9 and x23 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      elsif ( x26 and x28 and not x9 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      elsif ( x26 and not x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s102;

      elsif ( not x26 and x1 and x27 and x33 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s102;

      elsif ( not x26 and x1 and x27 and not x33 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      elsif ( not x26 and x1 and x27 and not x33 and not x34 ) = '1' then
         current_camel <= s106;

      elsif ( not x26 and x1 and not x27 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s116;

      elsif ( not x26 and x1 and not x27 and x5 and not x3 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s117;

      elsif ( not x26 and x1 and not x27 and x5 and not x3 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      elsif ( not x26 and x1 and not x27 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      elsif ( not x26 and not x1 and x27 ) = '1' then
         y1 <= '1' ;
         current_camel <= s105;

      elsif ( not x26 and not x1 and not x27 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s102;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      end if;

   when s107 =>
      if ( x26 and x28 and x23 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s117;

      elsif ( x26 and x28 and not x23 and x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      elsif ( x26 and x28 and not x23 and not x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      elsif ( x26 and not x28 and x34 and x25 ) = '1' then
         current_camel <= s107;

      elsif ( x26 and not x28 and x34 and not x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      elsif ( x26 and not x28 and not x34 and x35 and x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s104;

      elsif ( x26 and not x28 and not x34 and x35 and not x36 ) = '1' then
         y1 <= '1' ;
         current_camel <= s105;

      elsif ( x26 and not x28 and not x34 and not x35 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s102;

      elsif ( not x26 and x27 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s104;

      elsif ( not x26 and x27 and not x35 ) = '1' then
         current_camel <= s1;

      elsif ( not x26 and not x27 and x28 and x11 ) = '1' then
         current_camel <= s1;

      elsif ( not x26 and not x27 and x28 and not x11 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_camel <= s119;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s104;

      end if;

   when s108 =>
         y27 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_camel <= s111;

   when s109 =>
      if ( x46 and x12 and x13 and x3 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_camel <= s110;

      elsif ( x46 and x12 and x13 and not x3 and x14 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_camel <= s110;

      elsif ( x46 and x12 and x13 and not x3 and not x14 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s94;

      elsif ( x46 and x12 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s112;

      elsif ( x46 and not x12 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s113;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s113;

      end if;

   when s110 =>
         y19 <= '1' ;
         current_camel <= s120;

   when s111 =>
         y3 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s121;

   when s112 =>
      if ( x15 and x45 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s122;

      elsif ( x15 and not x45 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_camel <= s94;

      elsif ( not x15 and x43 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s123;

      else
         current_camel <= s112;

      end if;

   when s113 =>
      if ( x15 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s123;

      elsif ( not x15 and x6 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s122;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         current_camel <= s112;

      end if;

   when s114 =>
      if ( x26 ) = '1' then
         y11 <= '1' ;
         current_camel <= s106;

      elsif ( not x26 and x28 and x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_camel <= s124;

      elsif ( not x26 and x28 and not x36 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s125;

      else
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      end if;

   when s115 =>
      if ( x26 and x21 ) = '1' then
         current_camel <= s1;

      elsif ( x26 and not x21 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_camel <= s104;

      elsif ( not x26 and x27 ) = '1' then
         current_camel <= s1;

      elsif ( not x26 and not x27 and x28 and x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s102;

      elsif ( not x26 and not x27 and x28 and not x34 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s116;

      elsif ( not x26 and not x27 and not x28 and x19 and x24 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s126;

      elsif ( not x26 and not x27 and not x28 and x19 and not x24 ) = '1' then
         current_camel <= s1;

      else
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s114;

      end if;

   when s116 =>
      if ( x28 and x7 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s117;

      elsif ( x28 and not x7 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s126;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      end if;

   when s117 =>
      if ( x26 and x39 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_camel <= s102;

      elsif ( x26 and x39 and not x32 and x14 ) = '1' then
         y1 <= '1' ;
         current_camel <= s105;

      elsif ( x26 and x39 and not x32 and not x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      elsif ( x26 and not x39 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_camel <= s114;

      elsif ( not x26 and x28 ) = '1' then
         current_camel <= s1;

      elsif ( not x26 and not x28 and x6 and x38 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s116;

      elsif ( not x26 and not x28 and x6 and x38 and x5 and not x3 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s117;

      elsif ( not x26 and not x28 and x6 and x38 and x5 and not x3 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      elsif ( not x26 and not x28 and x6 and x38 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      elsif ( not x26 and not x28 and x6 and not x38 and x8 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s126;

      elsif ( not x26 and not x28 and x6 and not x38 and not x8 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_camel <= s116;

      elsif ( not x26 and not x28 and x6 and not x38 and not x8 and x5 and not x3 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s117;

      elsif ( not x26 and not x28 and x6 and not x38 and not x8 and x5 and not x3 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_camel <= s115;

      elsif ( not x26 and not x28 and x6 and not x38 and not x8 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      elsif ( not x26 and not x28 and not x6 and x24 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_camel <= s126;

      else
         current_camel <= s1;

      end if;

   when s118 =>
      if ( x37 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s127;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_camel <= s125;

      end if;

   when s119 =>
      if ( x8 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_camel <= s127;

      end if;

   when s120 =>
         y13 <= '1' ;
         y14 <= '1' ;
         y26 <= '1' ;
         current_camel <= s128;

   when s121 =>
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_camel <= s97;

   when s122 =>
      if ( x46 ) = '1' then
         y19 <= '1' ;
         current_camel <= s120;

      elsif ( not x46 and x43 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s123;

      else
         current_camel <= s122;

      end if;

   when s123 =>
      if ( x46 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_camel <= s97;

      elsif ( not x46 and x44 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_camel <= s101;

      elsif ( not x46 and x44 and not x11 and x6 and x35 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_camel <= s95;

      elsif ( not x46 and x44 and not x11 and x6 and not x35 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_camel <= s90;

      elsif ( not x46 and x44 and not x11 and not x6 and x36 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s93;

      elsif ( not x46 and x44 and not x11 and not x6 and not x36 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_camel <= s92;

      elsif ( not x46 and not x44 and x14 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s113;

      elsif ( not x46 and not x44 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s113;

      elsif ( not x46 and not x44 and not x14 and not x9 and x37 and x33 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s113;

      elsif ( not x46 and not x44 and not x14 and not x9 and x37 and not x33 ) = '1' then
         current_camel <= s123;

      elsif ( not x46 and not x44 and not x14 and not x9 and not x37 and x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_camel <= s113;

      else
         current_camel <= s123;

      end if;

   when s124 =>
         y1 <= '1' ;
         current_camel <= s105;

   when s125 =>
      if ( x40 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      else
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_camel <= s117;

      end if;

   when s126 =>
      if ( x28 and x25 ) = '1' then
         current_camel <= s1;

      elsif ( x28 and not x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s107;

      else
         current_camel <= s1;

      end if;

   when s127 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_camel <= s103;

   when s128 =>
      if ( x45 and x13 ) = '1' then
         y3 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_camel <= s121;

      elsif ( x45 and not x13 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_camel <= s123;

      else
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_camel <= s99;

      end if;

   end case;
   end proc_camel;

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
	y33  <= '0' ;	y34  <= '0' ;	y35  <= '0' ;	y36  <= '0' ;
	y37  <= '0' ;
	current_camel <= s1;
      elsif (clk'event and clk ='1') then
        proc_camel;
      end if;
   end process;
end ARC;
