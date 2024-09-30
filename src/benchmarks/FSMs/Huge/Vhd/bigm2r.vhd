library ieee;
use ieee.std_logic_1164.all;

entity bigm2r is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
	x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,
	x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,
	x61,x62,x63 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54 : out std_logic );
end bigm2r;

architecture ARC of bigm2r is

   type states_bigm2r is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,
	s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,
	s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,
	s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,
	s136,s137,s138,s139,s140,s141,s142,s143,s144,s145,s146,s147,s148,s149,s150,
	s151,s152,s153,s154,s155,s156,s157,s158,s159,s160,s161,s162,s163,s164,s165,
	s166,s167,s168,s169,s170,s171,s172,s173,s174 );
   signal current_bigm2r : states_bigm2r;

begin
   process (clk , rst)
   procedure proc_bigm2r is
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
	y37  <= '0' ;	y38  <= '0' ;	y39  <= '0' ;	y40  <= '0' ;
	y41  <= '0' ;	y42  <= '0' ;	y43  <= '0' ;	y44  <= '0' ;
	y45  <= '0' ;	y46  <= '0' ;	y47  <= '0' ;	y48  <= '0' ;
	y49  <= '0' ;	y50  <= '0' ;	y51  <= '0' ;	y52  <= '0' ;
	y53  <= '0' ;	y54  <= '0' ;

   case current_bigm2r is
   when s1 =>
      if ( x63 and x62 and x16 and x15 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x63 and x62 and x16 and x15 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and x62 and x16 and x15 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x63 and x62 and x16 and not x15 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and x62 and not x16 and x15 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and x62 and not x16 and x15 and not x1 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x63 and x62 and not x16 and not x15 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and x62 and not x16 and not x15 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and not x62 and x10 and x11 and x43 and x13 and x32 and x3 and x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x63 and not x62 and x10 and x11 and x43 and x13 and x32 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x10 and x11 and x43 and x13 and x32 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x10 and x11 and x43 and x13 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and not x62 and x10 and x11 and x43 and not x13 and x5 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s8;

      elsif ( x63 and not x62 and x10 and x11 and x43 and not x13 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x10 and x11 and not x43 and x44 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and x10 and x11 and not x43 and not x44 and x14 and x7 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x63 and not x62 and x10 and x11 and not x43 and not x44 and x14 and not x7 and x1 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x10 and x11 and not x43 and not x44 and x14 and not x7 and x1 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x10 and x11 and not x43 and not x44 and x14 and not x7 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and not x62 and x10 and x11 and not x43 and not x44 and not x14 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( x63 and not x62 and x10 and not x11 and x12 and x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x63 and not x62 and x10 and not x11 and x12 and not x8 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x10 and not x11 and x12 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x10 and not x11 and not x12 and x13 and x45 and x32 and x36 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and x10 and not x11 and not x12 and x13 and x45 and x32 and not x36 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x10 and not x11 and not x12 and x13 and x45 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and not x62 and x10 and not x11 and not x12 and x13 and not x45 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( x63 and not x62 and x10 and not x11 and not x12 and not x13 and x1 and x14 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x10 and not x11 and not x12 and not x13 and x1 and x14 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x10 and not x11 and not x12 and not x13 and x1 and not x14 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x10 and not x11 and not x12 and not x13 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and not x62 and not x10 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x63 and x62 and x17 and x18 and x40 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x63 and x62 and x17 and x18 and not x40 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and x17 and x18 and not x40 and not x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and x17 and not x18 and x19 and x1 and x10 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and x17 and not x18 and x19 and x1 and not x10 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and x17 and not x18 and x19 and not x1 and x6 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x63 and x62 and x17 and not x18 and x19 and not x1 and not x6 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and x17 and not x18 and not x19 and x1 and x39 and x4 and x5 and x3 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x63 and x62 and x17 and not x18 and not x19 and x1 and x39 and x4 and x5 and not x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and x17 and not x18 and not x19 and x1 and x39 and x4 and not x5 and x3 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x63 and x62 and x17 and not x18 and not x19 and x1 and x39 and x4 and not x5 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and x17 and not x18 and not x19 and x1 and x39 and not x4 and x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and x17 and not x18 and not x19 and x1 and x39 and not x4 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and x17 and not x18 and not x19 and x1 and not x39 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x63 and x62 and x17 and not x18 and not x19 and not x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and not x17 and x18 and x40 and x19 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and not x17 and x18 and x40 and not x19 and x39 and x4 and x5 and x3 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x63 and x62 and not x17 and x18 and x40 and not x19 and x39 and x4 and x5 and not x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and not x17 and x18 and x40 and not x19 and x39 and x4 and not x5 and x3 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x63 and x62 and not x17 and x18 and x40 and not x19 and x39 and x4 and not x5 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and not x17 and x18 and x40 and not x19 and x39 and not x4 and x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and not x17 and x18 and x40 and not x19 and x39 and not x4 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and not x17 and x18 and x40 and not x19 and not x39 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x63 and x62 and not x17 and x18 and not x40 and x19 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and not x17 and x18 and not x40 and x19 and not x4 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and not x17 and x18 and not x40 and not x19 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and not x17 and not x18 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x63 and not x62 and x16 and x15 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x63 and not x62 and x16 and x15 and not x5 and x6 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x63 and not x62 and x16 and x15 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( not x63 and not x62 and x16 and not x15 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x63 and not x62 and not x16 and x15 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x63 and not x62 and not x16 and x15 and not x1 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x63 and not x62 and not x16 and not x15 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      else
         y1 <= '1' ;
         current_bigm2r <= s5;

      end if;

   when s2 =>
      if ( x63 and x62 and x16 and x15 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x63 and x62 and x16 and not x15 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x63 and x62 and x16 and not x15 and x4 and not x5 ) = '1' then
         y18 <= '1' ;
         current_bigm2r <= s19;

      elsif ( x63 and x62 and x16 and not x15 and not x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x63 and x62 and not x16 and x15 and x6 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x63 and x62 and not x16 and x15 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x63 and x62 and not x16 and not x15 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x63 and not x62 and x15 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      elsif ( x63 and not x62 and not x15 and x6 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s22;

      elsif ( x63 and not x62 and not x15 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( not x63 and x62 and x44 and x10 and x12 and x23 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s23;

      elsif ( not x63 and x62 and x44 and x10 and x12 and not x23 and x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x63 and x62 and x44 and x10 and x12 and not x23 and not x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and x44 and x10 and not x12 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( not x63 and x62 and x44 and not x10 and x37 and x22 ) = '1' then
         y29 <= '1' ;
         current_bigm2r <= s26;

      elsif ( not x63 and x62 and x44 and not x10 and x37 and not x22 and x2 and x11 and x42 ) = '1' then
         current_bigm2r <= s2;

      elsif ( not x63 and x62 and x44 and not x10 and x37 and not x22 and x2 and x11 and not x42 and x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x63 and x62 and x44 and not x10 and x37 and not x22 and x2 and x11 and not x42 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x63 and x62 and x44 and not x10 and x37 and not x22 and x2 and not x11 and x42 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and x44 and not x10 and x37 and not x22 and x2 and not x11 and not x42 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x63 and x62 and x44 and not x10 and x37 and not x22 and not x2 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( not x63 and x62 and x44 and not x10 and not x37 and x11 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and x44 and not x10 and not x37 and x11 and not x4 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and x44 and not x10 and not x37 and not x11 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and not x44 and x10 and x39 and x46 and x51 and x36 ) = '1' then
         current_bigm2r <= s2;

      elsif ( not x63 and x62 and not x44 and x10 and x39 and x46 and x51 and not x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x63 and x62 and not x44 and x10 and x39 and x46 and not x51 and x36 ) = '1' then
         current_bigm2r <= s2;

      elsif ( not x63 and x62 and not x44 and x10 and x39 and x46 and not x51 and not x36 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x63 and x62 and not x44 and x10 and x39 and not x46 and x36 ) = '1' then
         current_bigm2r <= s2;

      elsif ( not x63 and x62 and not x44 and x10 and x39 and not x46 and not x36 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( not x63 and x62 and not x44 and x10 and not x39 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x63 and x62 and not x44 and not x10 and x11 and x34 and x8 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x63 and x62 and not x44 and not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x63 and x62 and not x44 and not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x63 and x62 and not x44 and not x10 and x11 and not x34 and x32 and not x7 and x54 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x63 and x62 and not x44 and not x10 and x11 and not x34 and x32 and not x7 and x54 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x10 and x11 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( not x63 and x62 and not x44 and not x10 and x11 and not x34 and not x32 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x63 and x62 and not x44 and not x10 and not x11 and x12 and x20 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( not x63 and x62 and not x44 and not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and not x44 and not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x63 and x62 and not x44 and not x10 and not x11 and not x12 and x13 and x36 and x3 and x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( not x63 and x62 and not x44 and not x10 and not x11 and not x12 and x13 and x36 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x10 and not x11 and not x12 and x13 and x36 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x10 and not x11 and not x12 and x13 and not x36 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( not x63 and x62 and not x44 and not x10 and not x11 and not x12 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x63 and not x62 and x16 and x15 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x63 and not x62 and x16 and not x15 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x63 and not x62 and x16 and not x15 and x4 and not x5 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( not x63 and not x62 and x16 and not x15 and not x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( not x63 and not x62 and not x16 and x15 and x6 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( not x63 and not x62 and not x16 and x15 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      else
         y11 <= '1' ;
         current_bigm2r <= s34;

      end if;

   when s3 =>
      if ( x15 and x16 and x5 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x15 and x16 and not x5 and x62 and x6 and x63 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x15 and x16 and not x5 and x62 and x6 and not x63 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x15 and x16 and not x5 and x62 and not x6 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x15 and x16 and not x5 and not x62 and x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x15 and x16 and not x5 and not x62 and not x37 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x15 and not x16 and x62 and x63 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( x15 and not x16 and x62 and x63 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x15 and not x16 and x62 and not x63 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x15 and not x16 and x62 and not x63 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x15 and not x16 and not x62 and x37 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x15 and not x16 and not x62 and not x37 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x15 and x62 and x16 and x4 and x5 and x63 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x15 and x62 and x16 and x4 and x5 and not x63 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x15 and x62 and x16 and x4 and not x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x15 and x62 and x16 and not x4 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( not x15 and x62 and not x16 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x15 and not x62 and x47 and x35 and x36 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x15 and not x62 and x47 and x35 and not x36 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x15 and not x62 and x47 and not x35 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      else
         y38 <= '1' ;
         current_bigm2r <= s36;

      end if;

   when s4 =>
      if ( x62 and x15 and x16 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x62 and x15 and not x16 and x12 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x62 and x15 and not x16 and not x12 ) = '1' then
         current_bigm2r <= s4;

      elsif ( x62 and not x15 and x16 and x4 ) = '1' then
         y18 <= '1' ;
         current_bigm2r <= s19;

      elsif ( x62 and not x15 and x16 and not x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x62 and not x15 and not x16 and x14 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x62 and not x15 and not x16 and not x14 and x63 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x62 and not x15 and not x16 and not x14 and not x63 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x62 and x63 and x42 and x43 and x13 and x10 and x4 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x62 and x63 and x42 and x43 and x13 and x10 and not x4 ) = '1' then
         current_bigm2r <= s4;

      elsif ( not x62 and x63 and x42 and x43 and x13 and not x10 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and x42 and x43 and x13 and not x10 and not x3 and x33 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and x42 and x43 and x13 and not x10 and not x3 and not x33 ) = '1' then
         current_bigm2r <= s4;

      elsif ( not x62 and x63 and x42 and x43 and not x13 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and x42 and x43 and not x13 and not x3 and x33 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and x42 and x43 and not x13 and not x3 and not x33 ) = '1' then
         current_bigm2r <= s4;

      elsif ( not x62 and x63 and x42 and not x43 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and x42 and not x43 and not x3 and x33 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and x42 and not x43 and not x3 and not x33 ) = '1' then
         current_bigm2r <= s4;

      elsif ( not x62 and x63 and not x42 and x12 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and not x42 and x12 and not x3 and x33 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and not x42 and x12 and not x3 and not x33 ) = '1' then
         current_bigm2r <= s4;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and x45 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and x45 and not x3 and x33 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and x45 and not x3 and not x33 ) = '1' then
         current_bigm2r <= s4;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and not x45 and x41 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and not x45 and not x41 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and not x45 and not x41 and not x3 and x33 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and not x45 and not x41 and not x3 and not x33 ) = '1' then
         current_bigm2r <= s4;

      elsif ( not x62 and x63 and not x42 and not x12 and not x44 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and not x42 and not x12 and not x44 and not x3 and x33 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and not x42 and not x12 and not x44 and not x3 and not x33 ) = '1' then
         current_bigm2r <= s4;

      elsif ( not x62 and not x63 and x61 and x12 and x27 and x33 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and not x63 and x61 and x12 and x27 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x63 and x61 and x12 and x27 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x62 and not x63 and x61 and x12 and not x27 and x29 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x62 and not x63 and x61 and x12 and not x27 and x29 and not x1 and x9 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and not x63 and x61 and x12 and not x27 and x29 and not x1 and x9 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x62 and not x63 and x61 and x12 and not x27 and x29 and not x1 and not x9 ) = '1' then
         current_bigm2r <= s4;

      elsif ( not x62 and not x63 and x61 and x12 and not x27 and not x29 ) = '1' then
         current_bigm2r <= s4;

      elsif ( not x62 and not x63 and x61 and not x12 and x29 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( not x62 and not x63 and x61 and not x12 and not x29 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( not x62 and not x63 and not x61 and x17 ) = '1' then
         y27 <= '1' ;
         current_bigm2r <= s49;

      elsif ( not x62 and not x63 and not x61 and not x17 and x57 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      else
         current_bigm2r <= s4;

      end if;

   when s5 =>
      if ( x63 and x62 and x16 and x15 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and x62 and x16 and x15 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and x62 and x16 and not x15 and x4 and x5 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and x62 and x16 and not x15 and x4 and x5 and not x1 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and x62 and x16 and not x15 and x4 and not x5 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x63 and x62 and x16 and not x15 and x4 and not x5 and not x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x63 and x62 and x16 and not x15 and not x4 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and x62 and x16 and not x15 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and x62 and not x16 and x15 and x2 and x3 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and x62 and not x16 and x15 and x2 and not x3 and x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and x62 and not x16 and x15 and x2 and not x3 and not x4 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and x62 and not x16 and x15 and x2 and not x3 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and x62 and not x16 and x15 and not x2 ) = '1' then
         current_bigm2r <= s5;

      elsif ( x63 and x62 and not x16 and not x15 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x42 and x43 and x44 and x10 and x33 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and x42 and x43 and x44 and x10 and not x33 ) = '1' then
         current_bigm2r <= s5;

      elsif ( x63 and not x62 and x42 and x43 and x44 and not x10 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and x42 and x43 and not x44 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and x42 and not x43 and x13 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and x2 and x45 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and x2 and not x45 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and not x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and not x41 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and not x42 and x12 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and x10 and x33 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and x10 and not x33 ) = '1' then
         current_bigm2r <= s5;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and not x10 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x41 and x2 and x45 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x41 and x2 and not x45 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x41 and not x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and not x41 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and x18 and x17 and x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x63 and x62 and x18 and x17 and not x4 and x40 and x31 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and x62 and x18 and x17 and not x4 and x40 and not x31 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x63 and x62 and x18 and x17 and not x4 and not x40 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and x62 and x18 and not x17 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and not x18 and x17 and x11 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x63 and x62 and not x18 and x17 and not x11 and x16 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and not x18 and x17 and not x11 and not x16 and x15 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x18 and x17 and not x11 and not x16 and x15 and not x1 ) = '1' then
         current_bigm2r <= s5;

      elsif ( not x63 and x62 and not x18 and x17 and not x11 and not x16 and not x15 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and not x18 and x17 and not x11 and not x16 and not x15 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and x1 and x39 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and x1 and not x39 and x31 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and x1 and not x39 and not x31 ) = '1' then
         current_bigm2r <= s5;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and not x1 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and not x18 and not x17 and not x19 and x1 and x39 and x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and not x18 and not x17 and not x19 and x1 and x39 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and x62 and not x18 and not x17 and not x19 and x1 and x39 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and x62 and not x18 and not x17 and not x19 and x1 and not x39 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and not x18 and not x17 and not x19 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and not x18 and not x17 and not x19 and not x1 and not x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and not x62 and x16 and x15 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and not x62 and x16 and not x15 and x4 and x5 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and not x62 and x16 and not x15 and x4 and x5 and not x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x63 and not x62 and x16 and not x15 and x4 and not x5 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x63 and not x62 and x16 and not x15 and x4 and not x5 and not x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x63 and not x62 and x16 and not x15 and not x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and not x62 and not x16 and x15 and x3 and x2 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x63 and not x62 and not x16 and x15 and x3 and not x2 ) = '1' then
         current_bigm2r <= s5;

      elsif ( not x63 and not x62 and not x16 and x15 and not x3 and x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x63 and not x62 and not x16 and x15 and not x3 and x4 and not x2 ) = '1' then
         current_bigm2r <= s5;

      elsif ( not x63 and not x62 and not x16 and x15 and not x3 and not x4 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and not x62 and not x16 and x15 and not x3 and not x4 and not x2 ) = '1' then
         current_bigm2r <= s5;

      else
         y3 <= '1' ;
         current_bigm2r <= s14;

      end if;

   when s6 =>
      if ( x63 and x62 and x15 and x16 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and x62 and x15 and not x16 and x5 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and x62 and x15 and not x16 and not x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and x62 and not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and x62 and not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and x62 and not x15 and x16 and x4 and not x5 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x63 and x62 and not x15 and x16 and x4 and not x5 and not x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x63 and x62 and not x15 and x16 and not x4 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x63 and x62 and not x15 and x16 and not x4 and not x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x63 and x62 and not x15 and not x16 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x42 and x43 and x34 and x44 and x10 and x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x63 and not x62 and x42 and x43 and x34 and x44 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x42 and x43 and x34 and x44 and not x10 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x42 and x43 and x34 and not x44 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x42 and x43 and not x34 and x13 and x41 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x42 and x43 and not x34 and x13 and not x41 and x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( x63 and not x62 and x42 and x43 and not x34 and x13 and not x41 and not x1 and x38 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and x42 and x43 and not x34 and x13 and not x41 and not x1 and not x38 ) = '1' then
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and x42 and x43 and not x34 and not x13 and x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( x63 and not x62 and x42 and x43 and not x34 and not x13 and not x1 and x38 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and x42 and x43 and not x34 and not x13 and not x1 and not x38 ) = '1' then
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and x42 and not x43 and x10 and x44 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and x42 and not x43 and x10 and not x44 and x45 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x42 and not x43 and x10 and not x44 and x45 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x42 and not x43 and x10 and not x44 and not x45 and x32 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s8;

      elsif ( x63 and not x62 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and not x15 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x42 and not x43 and not x10 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x42 and not x43 and not x10 and not x34 and x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( x63 and not x62 and x42 and not x43 and not x10 and not x34 and not x1 and x38 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and x42 and not x43 and not x10 and not x34 and not x1 and not x38 ) = '1' then
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and not x42 and x12 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x42 and x12 and not x34 and x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( x63 and not x62 and not x42 and x12 and not x34 and not x1 and x38 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and not x42 and x12 and not x34 and not x1 and not x38 ) = '1' then
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and x13 and x14 and x36 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and x13 and x14 and not x36 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and x13 and not x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and not x13 and x45 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and not x13 and x45 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and not x13 and not x45 and x32 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s8;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and not x15 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x42 and not x12 and not x41 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x42 and not x12 and not x41 and not x34 and x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( x63 and not x62 and not x42 and not x12 and not x41 and not x34 and not x1 and x38 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and not x42 and not x12 and not x41 and not x34 and not x1 and not x38 ) = '1' then
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and x18 and x17 and x1 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and x18 and x17 and not x1 and x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and x18 and x17 and not x1 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and x18 and not x17 and x19 and x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and x18 and not x17 and x19 and not x5 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and not x18 and x17 and x7 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x63 and x62 and not x18 and x17 and not x7 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and not x18 and not x17 and not x19 and x5 and x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and not x18 and not x17 and not x19 and x5 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and x62 and not x18 and not x17 and not x19 and x5 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and x62 and not x18 and not x17 and not x19 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and x15 and x16 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and not x62 and x15 and not x16 and x5 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x63 and not x62 and x15 and not x16 and not x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and not x62 and not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and not x62 and not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x63 and not x62 and not x15 and x16 and x4 and not x5 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x63 and not x62 and not x15 and x16 and x4 and not x5 and not x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x63 and not x62 and not x15 and x16 and not x4 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x63 and not x62 and not x15 and x16 and not x4 and not x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      else
         y3 <= '1' ;
         current_bigm2r <= s14;

      end if;

   when s7 =>
      if ( x63 and x62 and x15 and x16 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( x63 and x62 and x15 and not x16 and x8 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( x63 and x62 and x15 and not x16 and not x8 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( x63 and x62 and x15 and not x16 and not x8 and not x9 and x10 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( x63 and x62 and x15 and not x16 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and x62 and x15 and not x16 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and x62 and x15 and not x16 and not x8 and not x9 and not x10 and not x11 ) = '1' then
         current_bigm2r <= s7;

      elsif ( x63 and x62 and not x15 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( x63 and not x62 and x42 and x43 and x10 and x34 and x44 and x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and x42 and x43 and x10 and x34 and x44 and not x4 ) = '1' then
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x42 and x43 and x10 and x34 and not x44 and x4 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s57;

      elsif ( x63 and not x62 and x42 and x43 and x10 and x34 and not x44 and not x4 ) = '1' then
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x42 and x43 and x10 and not x34 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x42 and x43 and x10 and not x34 and not x4 ) = '1' then
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x42 and x43 and not x10 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x63 and not x62 and x42 and not x43 and x13 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and x14 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and x14 and not x4 ) = '1' then
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and not x14 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and not x14 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and not x14 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and not x14 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and not x14 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and not x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and not x14 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x41 and not x14 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and not x41 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x63 and not x62 and not x42 and x10 and x12 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x42 and x10 and x12 and not x4 ) = '1' then
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and x44 and x45 and x35 and x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and x44 and x45 and x35 and not x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and x44 and x45 and not x35 ) = '1' then
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and x44 and not x45 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and x44 and not x45 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and x44 and not x45 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and x44 and not x45 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and x44 and not x45 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and x44 and not x45 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and x44 and not x45 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and x44 and not x45 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and not x44 and x14 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and not x44 and x14 and not x4 ) = '1' then
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and not x44 and not x14 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and not x44 and not x14 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and not x44 and not x14 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and not x44 and not x14 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and not x44 and not x14 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and not x44 and not x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and not x44 and not x14 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and not x42 and x10 and not x12 and not x44 and not x14 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x10 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and x17 and x18 and x1 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and x17 and x18 and not x1 and x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and x17 and x18 and not x1 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and x17 and not x18 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and not x17 and x19 and x18 and x39 and x4 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x63 and x62 and not x17 and x19 and x18 and x39 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and x62 and not x17 and x19 and x18 and not x39 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and not x17 and x19 and not x18 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and not x17 and x19 and not x18 and not x35 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and not x17 and x19 and not x18 and not x35 and x15 and x16 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and not x17 and x19 and not x18 and not x35 and x15 and x16 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and not x17 and x19 and not x18 and not x35 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x17 and x19 and not x18 and not x35 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and not x17 and x19 and not x18 and not x35 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x17 and x19 and not x18 and not x35 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and not x17 and x19 and not x18 and not x35 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x17 and not x19 and x18 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and not x17 and not x19 and not x18 and x40 and x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and not x17 and not x19 and not x18 and x40 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and x62 and not x17 and not x19 and not x18 and x40 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and x62 and not x17 and not x19 and not x18 and not x40 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and not x62 and x15 and x16 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and x15 and not x16 and x8 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x63 and not x62 and x15 and not x16 and not x8 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x63 and not x62 and x15 and not x16 and not x8 and not x9 and x10 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and x15 and not x16 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and not x62 and x15 and not x16 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and not x62 and x15 and not x16 and not x8 and not x9 and not x10 and not x11 ) = '1' then
         current_bigm2r <= s7;

      else
         y5 <= '1' ;
         current_bigm2r <= s12;

      end if;

   when s8 =>
      if ( x62 and x8 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x62 and not x8 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s60;

      elsif ( not x62 and x63 and x11 and x12 and x33 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x62 and x63 and x11 and x12 and not x33 ) = '1' then
         current_bigm2r <= s8;

      elsif ( not x62 and x63 and x11 and not x12 and x3 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and x11 and not x12 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and x63 and x11 and not x12 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and x11 and not x12 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x11 and not x12 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s8;

      elsif ( not x62 and x63 and x11 and not x12 and x3 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x11 and not x12 and x3 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and x63 and x11 and not x12 and x3 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x11 and not x12 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x62 and x63 and not x11 and x3 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and not x11 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and x63 and not x11 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and not x11 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x11 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s8;

      elsif ( not x62 and x63 and not x11 and x3 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x11 and x3 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and x63 and not x11 and x3 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x11 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x62 and not x63 and x61 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s61;

      elsif ( not x62 and not x63 and x61 and not x9 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x63 and x61 and not x9 and not x3 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and not x63 and not x61 and x29 and x50 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( not x62 and not x63 and not x61 and x29 and not x50 ) = '1' then
         current_bigm2r <= s8;

      elsif ( not x62 and not x63 and not x61 and not x29 and x60 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      else
         y4 <= '1' ;
         current_bigm2r <= s29;

      end if;

   when s9 =>
      if ( x63 and x62 and x40 and x24 and x26 and x7 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and x62 and x40 and x24 and x26 and not x7 ) = '1' then
         y28 <= '1' ;
         current_bigm2r <= s63;

      elsif ( x63 and x62 and x40 and x24 and not x26 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x63 and x62 and x40 and not x24 and x28 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and x62 and x40 and not x24 and not x28 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and not x40 and x31 and x19 and x10 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x63 and x62 and not x40 and x31 and x19 and not x10 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x63 and x62 and not x40 and x31 and not x19 ) = '1' then
         current_bigm2r <= s9;

      elsif ( x63 and x62 and not x40 and not x31 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x63 and not x62 and x42 and x43 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x42 and not x43 and x44 and x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( x63 and not x62 and x42 and not x43 and x44 and not x10 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x42 and not x43 and not x44 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and x12 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and x13 and x14 and x41 and x37 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and not x42 and not x12 and x13 and x14 and x41 and x37 and not x2 ) = '1' then
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and not x42 and not x12 and x13 and x14 and x41 and not x37 and x2 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( x63 and not x62 and not x42 and not x12 and x13 and x14 and x41 and not x37 and not x2 ) = '1' then
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and not x42 and not x12 and x13 and x14 and not x41 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and x13 and not x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and not x13 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x63 and x62 and x18 and x17 and x7 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x63 and x62 and x18 and x17 and not x7 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x63 and x62 and x18 and not x17 and x19 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x15 and x16 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x15 and x16 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x18 and x17 ) = '1' then
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and not x18 and not x17 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and not x62 and x61 and x24 and x26 and x7 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x63 and not x62 and x61 and x24 and x26 and not x7 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s68;

      elsif ( not x63 and not x62 and x61 and x24 and not x26 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and not x62 and x61 and not x24 and x28 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and not x62 and x61 and not x24 and not x28 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and not x61 and x31 and x19 and x10 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x63 and not x62 and not x61 and x31 and x19 and not x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and not x62 and not x61 and x31 and not x19 ) = '1' then
         current_bigm2r <= s9;

      else
         y7 <= '1' ;
         current_bigm2r <= s46;

      end if;

   when s10 =>
      if ( x63 and x62 and x50 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x63 and x62 and not x50 ) = '1' then
         current_bigm2r <= s10;

      elsif ( x63 and not x62 and x11 and x43 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x63 and not x62 and x11 and not x43 and x13 and x7 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and x11 and not x43 and x13 and x7 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and x11 and not x43 and x13 and x7 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and x11 and not x43 and x13 and x7 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x11 and not x43 and x13 and x7 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s10;

      elsif ( x63 and not x62 and x11 and not x43 and x13 and x7 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x11 and not x43 and x13 and x7 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and x11 and not x43 and x13 and x7 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x11 and not x43 and x13 and not x7 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x63 and not x62 and x11 and not x43 and not x13 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x63 and not x62 and not x11 and x12 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x63 and not x62 and not x11 and not x12 and x45 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x63 and not x62 and not x11 and not x12 and not x45 and x7 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x11 and not x12 and not x45 and x7 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x11 and not x12 and not x45 and x7 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x11 and not x12 and not x45 and x7 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x11 and not x12 and not x45 and x7 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s10;

      elsif ( x63 and not x62 and not x11 and not x12 and not x45 and x7 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x11 and not x12 and not x45 and x7 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and not x11 and not x12 and not x45 and x7 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x11 and not x12 and not x45 and not x7 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and x17 and x8 and x11 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and x17 and x8 and not x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and x17 and not x8 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and not x17 and x18 and x8 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x63 and x62 and not x17 and x18 and not x8 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x63 and x62 and not x17 and not x18 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and not x62 and x50 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      else
         current_bigm2r <= s10;

      end if;

   when s11 =>
      if ( x63 and x62 and x16 and x15 and x5 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x63 and x62 and x16 and x15 and not x5 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( x63 and x62 and x16 and not x15 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x63 and x62 and not x16 and x15 and x12 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( x63 and x62 and not x16 and x15 and not x12 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and x62 and not x16 and not x15 and x13 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( x63 and x62 and not x16 and not x15 and not x13 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( x63 and not x62 and x42 and x43 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x42 and x43 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and x42 and x43 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and x42 and x43 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and x42 and x43 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and x43 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x42 and x43 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and x43 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and x42 and x43 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and x43 and not x3 and not x2 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x42 and not x43 and x13 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x42 and not x43 and x13 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and x42 and not x43 and x13 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and x42 and not x43 and x13 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and x42 and not x43 and x13 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and x13 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x42 and not x43 and x13 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and x13 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and x42 and not x43 and x13 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and x13 and not x3 and not x2 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x45 and x41 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x45 and not x41 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and x45 and not x41 and not x3 and not x2 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and not x45 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and not x45 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and not x45 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and not x45 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x42 and not x43 and not x13 and not x45 and not x3 and not x2 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and x12 and x41 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x63 and not x62 and not x42 and x12 and not x41 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x42 and x12 and not x41 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x42 and x12 and not x41 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x42 and x12 and not x41 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x42 and x12 and not x41 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and x12 and not x41 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and x12 and not x41 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and x12 and not x41 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and not x42 and x12 and not x41 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and x12 and not x41 and not x3 and not x2 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and x14 and not x3 and not x2 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and x10 and x5 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and x10 and not x5 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and x10 and not x5 and not x32 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and not x10 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and x44 and not x14 and not x10 and not x3 and not x2 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x45 and x41 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x45 and not x41 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and x45 and not x41 and not x3 and not x2 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and not x45 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and not x45 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and not x45 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and not x45 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x42 and not x12 and not x44 and not x45 and not x3 and not x2 ) = '1' then
         current_bigm2r <= s11;

      elsif ( not x63 and x62 and x17 and x18 and x1 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and x17 and x18 and not x1 and x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and x17 and x18 and not x1 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and x17 and not x18 and x6 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x63 and x62 and x17 and not x18 and not x6 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x63 and x62 and not x17 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and x16 and x15 and x5 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( not x63 and not x62 and x16 and x15 and not x5 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( not x63 and not x62 and x16 and not x15 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      elsif ( not x63 and not x62 and not x16 and x15 and x12 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( not x63 and not x62 and not x16 and x15 and not x12 ) = '1' then
         current_bigm2r <= s11;

      elsif ( not x63 and not x62 and not x16 and not x15 and x13 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      else
         y15 <= '1' ;
         current_bigm2r <= s41;

      end if;

   when s12 =>
      if ( x63 and x62 and x15 and x16 and x1 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and x62 and x15 and x16 and not x1 and x5 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x63 and x62 and x15 and x16 and not x1 and not x5 and x6 and x2 and x3 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and x62 and x15 and x16 and not x1 and not x5 and x6 and x2 and not x3 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x63 and x62 and x15 and x16 and not x1 and not x5 and x6 and not x2 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x63 and x62 and x15 and x16 and not x1 and not x5 and not x6 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( x63 and x62 and x15 and not x16 and x7 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( x63 and x62 and x15 and not x16 and not x7 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( x63 and x62 and x15 and not x16 and not x7 and not x9 and x10 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( x63 and x62 and x15 and not x16 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and x62 and x15 and not x16 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and x62 and x15 and not x16 and not x7 and not x9 and not x10 and not x11 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and x16 and x4 and x5 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and x62 and not x15 and x16 and x4 and x5 and not x2 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and x62 and not x15 and x16 and x4 and x5 and not x2 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and x62 and not x15 and x16 and x4 and not x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and x62 and not x15 and x16 and not x4 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and x62 and not x15 and not x16 and x3 and x11 and x2 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s73;

      elsif ( x63 and x62 and not x15 and not x16 and x3 and x11 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and x3 and not x11 and x4 and x12 and x13 and x2 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x63 and x62 and not x15 and not x16 and x3 and not x11 and x4 and x12 and x13 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and x3 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and x3 and not x11 and x4 and not x12 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and x3 and not x11 and not x4 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and x4 and x11 and x2 ) = '1' then
         y48 <= '1' ;
         current_bigm2r <= s74;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and x4 and x11 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and x13 and x14 and x2 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and x13 and x14 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and x13 and not x14 and x2 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and x13 and not x14 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and not x13 and x2 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and not x13 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and x4 and not x11 and not x12 and x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and x4 and not x11 and not x12 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and x5 and x6 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and x5 and x6 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and x7 and x8 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and x7 and x8 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and x2 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and x2 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and x7 and x9 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and x7 and x9 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and x2 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and x2 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and x2 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and x2 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and not x62 and x11 and x43 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and x11 and not x43 and x44 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and x45 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and not x45 and x10 and x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and not x45 and x10 and not x32 and x33 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and not x45 and x10 and not x32 and not x33 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and not x45 and not x10 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and not x11 and x12 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and not x11 and not x12 and x13 and x14 and x41 and x37 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and not x11 and not x12 and x13 and x14 and x41 and x37 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and not x62 and not x11 and not x12 and x13 and x14 and x41 and not x37 and x2 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( x63 and not x62 and not x11 and not x12 and x13 and x14 and x41 and not x37 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( x63 and not x62 and not x11 and not x12 and x13 and x14 and not x41 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and not x11 and not x12 and x13 and not x14 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and not x11 and not x12 and not x13 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x63 and x62 and x18 and x17 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( not x63 and x62 and x18 and not x17 and x19 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x15 and x16 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x15 and x16 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x18 and x17 and x14 and x5 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and not x18 and x17 and x14 and not x5 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and not x18 and x17 and not x14 and x5 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and not x18 and x17 and not x14 and not x5 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x63 and x62 and not x18 and not x17 and x4 and x19 and x1 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and not x18 and not x17 and x4 and x19 and not x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and x62 and not x18 and not x17 and x4 and not x19 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and not x18 and not x17 and not x4 and x19 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and not x18 and not x17 and not x4 and not x19 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and x15 and x16 and x1 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and not x62 and x15 and x16 and not x1 and x5 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( not x63 and not x62 and x15 and x16 and not x1 and not x5 and x6 and x2 and x3 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x63 and not x62 and x15 and x16 and not x1 and not x5 and x6 and x2 and not x3 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x15 and x16 and not x1 and not x5 and x6 and not x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x15 and x16 and not x1 and not x5 and not x6 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x63 and not x62 and x15 and not x16 and x7 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x63 and not x62 and x15 and not x16 and not x7 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x63 and not x62 and x15 and not x16 and not x7 and not x9 and x10 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and x15 and not x16 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and not x62 and x15 and not x16 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and not x62 and x15 and not x16 and not x7 and not x9 and not x10 and not x11 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and x16 and x4 and x5 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x63 and not x62 and not x15 and x16 and x4 and x5 and not x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and not x62 and not x15 and x16 and x4 and not x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and not x62 and not x15 and x16 and not x4 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and not x62 and not x15 and not x16 and x3 and x11 and x2 ) = '1' then
         y19 <= '1' ;
         current_bigm2r <= s76;

      elsif ( not x63 and not x62 and not x15 and not x16 and x3 and x11 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and x3 and not x11 and x4 and x12 and x13 and x2 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      elsif ( not x63 and not x62 and not x15 and not x16 and x3 and not x11 and x4 and x12 and x13 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and x3 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and x3 and not x11 and x4 and not x12 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and x3 and not x11 and not x4 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and x4 and x11 and x2 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s73;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and x4 and x11 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and x13 and x14 and x2 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and x13 and x14 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and x13 and not x14 and x2 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and x13 and not x14 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and not x13 and x2 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and not x13 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and x4 and not x11 and not x12 and x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and x4 and not x11 and not x12 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and x5 and x6 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and x5 and x6 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and x7 and x8 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and x7 and x8 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and x7 and x9 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and x7 and x9 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and not x2 ) = '1' then
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      else
         current_bigm2r <= s12;

      end if;

   when s13 =>
      if ( x62 and x17 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x62 and x17 and not x13 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( x62 and not x17 and x7 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x62 and not x17 and not x7 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x63 and x11 and x43 and x41 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and x11 and x43 and x41 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and x63 and x11 and x43 and x41 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and x11 and x43 and x41 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x11 and x43 and x41 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and x11 and x43 and x41 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x11 and x43 and x41 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and x63 and x11 and x43 and x41 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x11 and x43 and not x41 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x62 and x63 and x11 and x43 and not x41 and x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and x11 and x43 and not x41 and not x4 and x2 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and x11 and x43 and not x41 and not x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and x11 and not x43 and x13 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x62 and x63 and x11 and not x43 and x13 and x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and x11 and not x43 and x13 and not x4 and x2 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and x11 and not x43 and x13 and not x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and x45 and x41 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and x45 and x41 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and x45 and x41 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and x45 and x41 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and x45 and x41 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and x45 and x41 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and x45 and x41 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and x45 and x41 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and x45 and not x41 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and x45 and not x41 and x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and x45 and not x41 and not x4 and x2 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and x45 and not x41 and not x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and not x45 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and not x45 and x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and not x45 and not x4 and x2 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and x11 and not x43 and not x13 and not x45 and not x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x11 and x12 and x41 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and not x11 and x12 and x41 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and x63 and not x11 and x12 and x41 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and not x11 and x12 and x41 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x11 and x12 and x41 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x11 and x12 and x41 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x11 and x12 and x41 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and x63 and not x11 and x12 and x41 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x11 and x12 and not x41 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x62 and x63 and not x11 and x12 and not x41 and x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x11 and x12 and not x41 and not x4 and x2 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and not x11 and x12 and not x41 and not x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and x10 and x14 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and x10 and x14 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and x10 and x14 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and x10 and x14 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and x10 and x14 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and x10 and x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and x10 and x14 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and x10 and x14 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and x10 and not x14 and x1 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and x10 and not x14 and not x1 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and not x10 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and not x10 and x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and not x10 and not x4 and x2 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and not x11 and not x12 and x44 and not x10 and not x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and x45 and x41 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and x45 and x41 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and x45 and x41 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and x45 and x41 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and x45 and x41 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and x45 and x41 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and x45 and x41 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and x45 and x41 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and x45 and not x41 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and x45 and not x41 and x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and x45 and not x41 and not x4 and x2 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and x45 and not x41 and not x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and not x45 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and not x45 and x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and not x45 and not x4 and x2 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and x63 and not x11 and not x12 and not x44 and not x45 and not x4 and not x2 ) = '1' then
         current_bigm2r <= s13;

      elsif ( not x62 and not x63 and x16 and x6 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( not x62 and not x63 and x16 and not x6 and x8 and x19 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( not x62 and not x63 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and not x63 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and not x63 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( not x62 and not x63 and x16 and not x6 and not x8 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x62 and not x63 and not x16 and x10 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      else
         y12 <= '1' ;
         current_bigm2r <= s62;

      end if;

   when s14 =>
      if ( x63 and x62 and x15 and x16 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and x62 and x15 and not x16 and x2 and x3 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and x62 and x15 and not x16 and x2 and not x3 and x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and x62 and x15 and not x16 and x2 and not x3 and not x4 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and x62 and x15 and not x16 and x2 and not x3 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x63 and x62 and x15 and not x16 and not x2 ) = '1' then
         current_bigm2r <= s14;

      elsif ( x63 and x62 and not x15 and x16 and x4 and x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and x62 and not x15 and x16 and x4 and not x5 and x1 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and x62 and not x15 and x16 and x4 and not x5 and not x1 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and x62 and not x15 and x16 and not x4 and x1 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and x62 and not x15 and x16 and not x4 and not x1 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x63 and x62 and not x15 and not x16 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x11 and x43 and x41 and x13 and x3 and x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x63 and not x62 and x11 and x43 and x41 and x13 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x11 and x43 and x41 and x13 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x11 and x43 and x41 and not x13 and x5 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s8;

      elsif ( x63 and not x62 and x11 and x43 and x41 and not x13 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x11 and x43 and not x41 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( x63 and not x62 and x11 and not x43 and x44 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and x10 and x45 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and x10 and x45 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and x10 and not x45 and x32 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s8;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and not x15 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and x11 and not x43 and not x44 and not x10 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( x63 and not x62 and not x11 and x41 and x12 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x11 and x41 and x12 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and x13 and x45 and x36 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and x13 and x45 and not x36 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and x13 and not x45 and x39 and x1 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and x13 and not x45 and x39 and not x1 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and x13 and not x45 and not x39 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and not x13 and x45 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and not x13 and x45 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and not x13 and not x45 and x32 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s8;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and not x15 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x63 and not x62 and not x11 and not x41 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( not x63 and x62 and x44 and x30 and x16 and x6 ) = '1' then
         y27 <= '1' ;
         current_bigm2r <= s49;

      elsif ( not x63 and x62 and x44 and x30 and x16 and not x6 and x8 and x19 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( not x63 and x62 and x44 and x30 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x63 and x62 and x44 and x30 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x63 and x62 and x44 and x30 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y26 <= '1' ;
         current_bigm2r <= s79;

      elsif ( not x63 and x62 and x44 and x30 and x16 and not x6 and not x8 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and x44 and x30 and not x16 and x10 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x63 and x62 and x44 and x30 and not x16 and not x10 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and x44 and not x30 and x5 and x9 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and x44 and not x30 and x5 and not x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s80;

      elsif ( not x63 and x62 and x44 and not x30 and not x5 and x43 and x11 ) = '1' then
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and x44 and not x30 and not x5 and x43 and not x11 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and x44 and not x30 and not x5 and not x43 and x11 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x63 and x62 and x44 and not x30 and not x5 and not x43 and not x11 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x63 and x62 and not x44 and x51 and x24 and x5 and x36 ) = '1' then
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and not x44 and x51 and x24 and x5 and not x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x63 and x62 and not x44 and x51 and x24 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and x51 and not x24 and x31 and x29 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x63 and x62 and not x44 and x51 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and x51 and not x24 and not x31 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x63 and x62 and not x44 and not x51 and x11 and x35 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x63 and x62 and not x44 and not x51 and x11 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x51 and x11 and not x35 and x45 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and not x44 and not x51 and x11 and not x35 and not x45 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x51 and not x11 and x52 and x35 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s80;

      elsif ( not x63 and x62 and not x44 and not x51 and not x11 and x52 and not x35 and x45 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and not x44 and not x51 and not x11 and x52 and not x35 and not x45 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x51 and not x11 and not x52 and x3 and x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( not x63 and x62 and not x44 and not x51 and not x11 and not x52 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x51 and not x11 and not x52 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and x16 and x15 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and not x62 and x16 and not x15 and x4 and x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and not x62 and x16 and not x15 and x4 and not x5 and x1 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and not x62 and x16 and not x15 and x4 and not x5 and not x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x63 and not x62 and x16 and not x15 and not x4 and x1 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and not x62 and x16 and not x15 and not x4 and not x1 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      elsif ( not x63 and not x62 and not x16 and x15 and x3 and x2 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x63 and not x62 and not x16 and x15 and x3 and not x2 ) = '1' then
         current_bigm2r <= s14;

      elsif ( not x63 and not x62 and not x16 and x15 and not x3 and x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x63 and not x62 and not x16 and x15 and not x3 and x4 and not x2 ) = '1' then
         current_bigm2r <= s14;

      elsif ( not x63 and not x62 and not x16 and x15 and not x3 and not x4 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and not x62 and not x16 and x15 and not x3 and not x4 and not x2 ) = '1' then
         current_bigm2r <= s14;

      else
         y4 <= '1' ;
         current_bigm2r <= s7;

      end if;

   when s15 =>
      if ( x63 and x62 and x40 and x30 and x16 and x6 ) = '1' then
         y27 <= '1' ;
         current_bigm2r <= s49;

      elsif ( x63 and x62 and x40 and x30 and x16 and not x6 and x8 and x19 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x63 and x62 and x40 and x30 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x63 and x62 and x40 and x30 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x63 and x62 and x40 and x30 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y26 <= '1' ;
         current_bigm2r <= s79;

      elsif ( x63 and x62 and x40 and x30 and x16 and not x6 and not x8 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and x40 and x30 and not x16 and x10 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and x62 and x40 and x30 and not x16 and not x10 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and x40 and not x30 and x5 and x9 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and x40 and not x30 and x5 and not x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( x63 and x62 and x40 and not x30 and not x5 and x11 and x3 ) = '1' then
         current_bigm2r <= s15;

      elsif ( x63 and x62 and x40 and not x30 and not x5 and x11 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x63 and x62 and x40 and not x30 and not x5 and not x11 and x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and x40 and not x30 and not x5 and not x11 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and x62 and not x40 and x51 and x24 and x5 and x36 ) = '1' then
         current_bigm2r <= s15;

      elsif ( x63 and x62 and not x40 and x51 and x24 and x5 and not x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and x62 and not x40 and x51 and x24 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and x51 and not x24 and x31 and x29 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and x62 and not x40 and x51 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and x51 and not x24 and not x31 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and x62 and not x40 and not x51 and x11 and x35 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and x62 and not x40 and not x51 and x11 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and not x51 and x11 and not x35 and x41 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and not x40 and not x51 and x11 and not x35 and not x41 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and not x51 and not x11 and x49 and x35 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( x63 and x62 and not x40 and not x51 and not x11 and x49 and not x35 and x41 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and not x40 and not x51 and not x11 and x49 and not x35 and not x41 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and not x51 and not x11 and not x49 and x3 and x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and x62 and not x40 and not x51 and not x11 and not x49 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and not x51 and not x11 and not x49 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and not x62 and x55 and x30 and x16 and x37 ) = '1' then
         y27 <= '1' ;
         current_bigm2r <= s49;

      elsif ( x63 and not x62 and x55 and x30 and x16 and not x37 and x39 and x19 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( x63 and not x62 and x55 and x30 and x16 and not x37 and x39 and not x19 and x26 and x5 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x63 and not x62 and x55 and x30 and x16 and not x37 and x39 and not x19 and x26 and not x5 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x63 and not x62 and x55 and x30 and x16 and not x37 and x39 and not x19 and not x26 ) = '1' then
         y26 <= '1' ;
         current_bigm2r <= s79;

      elsif ( x63 and not x62 and x55 and x30 and x16 and not x37 and not x39 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and x55 and x30 and not x16 and x41 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x62 and x55 and x30 and not x16 and not x41 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and x55 and not x30 and x36 and x9 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and x55 and not x30 and x36 and not x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( x63 and not x62 and x55 and not x30 and not x36 and x3 and x42 ) = '1' then
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and x55 and not x30 and not x36 and x3 and not x42 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and x55 and not x30 and not x36 and not x3 and x11 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x63 and not x62 and x55 and not x30 and not x36 and not x3 and not x11 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x63 and not x62 and not x55 and x51 and x24 and x5 and x36 ) = '1' then
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and not x55 and x51 and x24 and x5 and not x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x63 and not x62 and not x55 and x51 and x24 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and x51 and not x24 and x31 and x29 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x63 and not x62 and not x55 and x51 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and x51 and not x24 and not x31 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x63 and not x62 and not x55 and not x51 and x42 and x35 and x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x63 and not x62 and not x55 and not x51 and x42 and x35 and not x36 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x51 and x42 and not x35 and x58 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and not x55 and not x51 and x42 and not x35 and not x58 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x51 and not x42 and x52 and x35 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( x63 and not x62 and not x55 and not x51 and not x42 and x52 and not x35 and x58 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and not x55 and not x51 and not x42 and x52 and not x35 and not x58 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x51 and not x42 and not x52 and x34 and x37 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( x63 and not x62 and not x55 and not x51 and not x42 and not x52 and x34 and not x37 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x51 and not x42 and not x52 and not x34 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and x18 and x17 and x6 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( not x63 and x62 and x18 and x17 and not x6 and x8 and x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x63 and x62 and x18 and x17 and not x6 and x8 and not x4 and x40 and x31 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and x62 and x18 and x17 and not x6 and x8 and not x4 and x40 and not x31 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x63 and x62 and x18 and x17 and not x6 and x8 and not x4 and not x40 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and x62 and x18 and x17 and not x6 and not x8 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and x18 and x17 and not x6 and not x8 and x15 and x16 and not x5 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and x18 and x17 and not x6 and not x8 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and x17 and not x6 and not x8 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and x18 and x17 and not x6 and not x8 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and x17 and not x6 and not x8 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and x18 and x17 and not x6 and not x8 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and not x17 and x19 and x9 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and x18 and not x17 and x19 and x9 and x15 and x16 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and x18 and not x17 and x19 and x9 and x15 and x16 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and x18 and not x17 and x19 and x9 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and not x17 and x19 and x9 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and x18 and not x17 and x19 and x9 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and not x17 and x19 and x9 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and x18 and not x17 and x19 and x9 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and not x17 and x19 and not x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x4 and x5 and x3 ) = '1' then
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x4 and x5 and not x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x4 and not x5 and x3 ) = '1' then
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and x4 and not x5 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and not x4 and x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and x18 and not x17 and not x19 and not x4 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and not x18 and x17 and x12 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x63 and x62 and not x18 and x17 and not x12 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and not x35 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and not x35 and x15 and x16 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and not x35 and x15 and x16 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and not x35 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and not x35 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and not x35 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and not x35 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and not x18 and not x17 and x19 and not x35 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x18 and not x17 and not x19 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and not x62 and x61 and x30 and x16 and x6 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( not x63 and not x62 and x61 and x30 and x16 and not x6 and x8 and x19 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( not x63 and not x62 and x61 and x30 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x63 and not x62 and x61 and x30 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x63 and not x62 and x61 and x30 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( not x63 and not x62 and x61 and x30 and x16 and not x6 and not x8 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and x61 and x30 and not x16 and x10 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and not x62 and x61 and x30 and not x16 and not x10 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and x61 and not x30 and x5 and x9 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and x61 and not x30 and x5 and not x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s8;

      elsif ( not x63 and not x62 and x61 and not x30 and not x5 and x11 and x3 ) = '1' then
         current_bigm2r <= s15;

      elsif ( not x63 and not x62 and x61 and not x30 and not x5 and x11 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x63 and not x62 and x61 and not x30 and not x5 and not x11 and x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and x61 and not x30 and not x5 and not x11 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x63 and not x62 and not x61 and x51 and x24 and x5 and x36 ) = '1' then
         current_bigm2r <= s15;

      elsif ( not x63 and not x62 and not x61 and x51 and x24 and x5 and not x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x63 and not x62 and not x61 and x51 and x24 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and x51 and not x24 and x31 and x29 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x63 and not x62 and not x61 and x51 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and x51 and not x24 and not x31 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x63 and not x62 and not x61 and not x51 and x11 and x35 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x63 and not x62 and not x61 and not x51 and x11 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and not x51 and x11 and not x35 and x60 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and not x61 and not x51 and x11 and not x35 and not x60 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and not x51 and not x11 and x52 and x35 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s8;

      elsif ( not x63 and not x62 and not x61 and not x51 and not x11 and x52 and not x35 and x60 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and not x61 and not x51 and not x11 and x52 and not x35 and not x60 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and not x51 and not x11 and not x52 and x3 and x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and not x62 and not x61 and not x51 and not x11 and not x52 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      else
         y4 <= '1' ;
         current_bigm2r <= s29;

      end if;

   when s16 =>
      if ( x62 and x10 and x63 and x12 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x10 and x63 and not x12 and x1 and x2 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x10 and x63 and not x12 and x1 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x10 and x63 and not x12 and not x1 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x62 and x10 and not x63 and x12 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and x10 and not x63 and not x12 and x1 and x34 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x10 and not x63 and not x12 and x1 and not x34 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and x10 and not x63 and not x12 and not x1 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( x62 and not x10 and x11 and x63 and x1 ) = '1' then
         y51 <= '1' ;
         current_bigm2r <= s83;

      elsif ( x62 and not x10 and x11 and x63 and not x1 and x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x10 and x11 and x63 and not x1 and not x3 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and not x10 and x11 and not x63 and x37 ) = '1' then
         y52 <= '1' ;
         current_bigm2r <= s86;

      elsif ( x62 and not x10 and x11 and not x63 and not x37 and x41 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x10 and x11 and not x63 and not x37 and not x41 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and not x10 and not x11 and x12 and x63 and x3 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x10 and not x11 and x12 and x63 and not x3 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x62 and not x10 and not x11 and x12 and not x63 and x41 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x10 and not x11 and x12 and not x63 and not x41 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( x62 and not x10 and not x11 and not x12 and x6 and x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and not x10 and not x11 and not x12 and x6 and not x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x10 and not x11 and not x12 and not x6 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and x63 and x46 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and x63 and not x46 and x37 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s89;

      elsif ( not x62 and x63 and not x46 and not x37 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s90;

      elsif ( not x62 and not x63 and x15 and x16 and x5 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x63 and x15 and x16 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x62 and not x63 and x15 and x16 and not x5 and not x6 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x63 and x15 and not x16 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and not x63 and x15 and not x16 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x62 and not x63 and not x15 and x16 and x4 and x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x62 and not x63 and not x15 and x16 and x4 and not x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x62 and not x63 and not x15 and x16 and not x4 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      else
         y8 <= '1' ;
         current_bigm2r <= s55;

      end if;

   when s17 =>
      if ( x15 and x62 and x14 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s91;

      elsif ( x15 and x62 and not x14 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s22;

      elsif ( x15 and not x62 and x63 and x45 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s22;

      elsif ( x15 and not x62 and x63 and not x45 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s92;

      elsif ( x15 and not x62 and not x63 and x16 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x15 and not x62 and not x63 and not x16 and x12 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( x15 and not x62 and not x63 and not x16 and not x12 ) = '1' then
         current_bigm2r <= s17;

      elsif ( not x15 and x62 and x63 and x12 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s93;

      elsif ( not x15 and x62 and x63 and not x12 ) = '1' then
         current_bigm2r <= s17;

      elsif ( not x15 and x62 and not x63 and x12 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( not x15 and x62 and not x63 and not x12 ) = '1' then
         current_bigm2r <= s17;

      elsif ( not x15 and not x62 and x63 and x43 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      elsif ( not x15 and not x62 and x63 and not x43 ) = '1' then
         current_bigm2r <= s17;

      elsif ( not x15 and not x62 and not x63 and x16 and x4 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( not x15 and not x62 and not x63 and x16 and not x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( not x15 and not x62 and not x63 and not x16 and x14 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      else
         y14 <= '1' ;
         current_bigm2r <= s11;

      end if;

   when s18 =>
      if ( x62 and x15 and x16 and x5 and x63 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x62 and x15 and x16 and x5 and not x63 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and x15 and x16 and not x5 ) = '1' then
         y18 <= '1' ;
         current_bigm2r <= s19;

      elsif ( x62 and x15 and not x16 and x13 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x62 and x15 and not x16 and x13 and not x11 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x62 and x15 and not x16 and x13 and not x11 and x6 and not x4 and x63 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x62 and x15 and not x16 and x13 and not x11 and x6 and not x4 and x63 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x62 and x15 and not x16 and x13 and not x11 and x6 and not x4 and not x63 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and x15 and not x16 and x13 and not x11 and x6 and not x4 and not x63 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and x15 and not x16 and x13 and not x11 and not x6 and x5 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x62 and x15 and not x16 and x13 and not x11 and not x6 and not x5 and x63 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and x15 and not x16 and x13 and not x11 and not x6 and not x5 and not x63 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x62 and x15 and not x16 and not x13 and x14 and x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and x15 and not x16 and not x13 and x14 and not x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x62 and x15 and not x16 and not x13 and not x14 and x9 and x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and x15 and not x16 and not x13 and not x14 and x9 and not x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x62 and x15 and not x16 and not x13 and not x14 and not x9 and x6 and x63 and x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and x15 and not x16 and not x13 and not x14 and not x9 and x6 and x63 and not x2 ) = '1' then
         current_bigm2r <= s18;

      elsif ( x62 and x15 and not x16 and not x13 and not x14 and not x9 and x6 and not x63 and x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x62 and x15 and not x16 and not x13 and not x14 and not x9 and x6 and not x63 and not x2 ) = '1' then
         current_bigm2r <= s18;

      elsif ( x62 and x15 and not x16 and not x13 and not x14 and not x9 and not x6 and x63 and x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and x15 and not x16 and not x13 and not x14 and not x9 and not x6 and x63 and not x8 ) = '1' then
         current_bigm2r <= s18;

      elsif ( x62 and x15 and not x16 and not x13 and not x14 and not x9 and not x6 and not x63 and x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x62 and x15 and not x16 and not x13 and not x14 and not x9 and not x6 and not x63 and not x8 ) = '1' then
         current_bigm2r <= s18;

      elsif ( x62 and not x15 and x16 and x4 and x5 and x63 and x2 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x62 and not x15 and x16 and x4 and x5 and x63 and not x2 and x1 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x62 and not x15 and x16 and x4 and x5 and x63 and not x2 and not x1 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x62 and not x15 and x16 and x4 and x5 and not x63 and x34 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x62 and not x15 and x16 and x4 and x5 and not x63 and not x34 and x1 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x62 and not x15 and x16 and x4 and x5 and not x63 and not x34 and not x1 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x62 and not x15 and x16 and x4 and not x5 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x62 and not x15 and x16 and not x4 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x62 and not x15 and not x16 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and x63 and x15 and x16 and x36 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x15 and x16 and not x36 ) = '1' then
         y18 <= '1' ;
         current_bigm2r <= s19;

      elsif ( not x62 and x63 and x15 and not x16 and x13 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x62 and x63 and x15 and not x16 and x13 and not x11 and x37 and x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and x63 and x15 and not x16 and x13 and not x11 and x37 and not x4 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and x63 and x15 and not x16 and x13 and not x11 and x37 and not x4 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x15 and not x16 and x13 and not x11 and not x37 and x36 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x62 and x63 and x15 and not x16 and x13 and not x11 and not x37 and not x36 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x62 and x63 and x15 and not x16 and not x13 and x45 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and x15 and not x16 and not x13 and not x45 and x40 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and x15 and not x16 and not x13 and not x45 and not x40 and x6 and x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and x15 and not x16 and not x13 and not x45 and not x40 and x6 and not x2 ) = '1' then
         current_bigm2r <= s18;

      elsif ( not x62 and x63 and x15 and not x16 and not x13 and not x45 and not x40 and not x6 and x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and x15 and not x16 and not x13 and not x45 and not x40 and not x6 and not x8 ) = '1' then
         current_bigm2r <= s18;

      elsif ( not x62 and x63 and not x15 and x47 and x35 and x5 and x33 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and not x15 and x47 and x35 and x5 and not x33 and x1 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( not x62 and x63 and not x15 and x47 and x35 and x5 and not x33 and not x1 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x62 and x63 and not x15 and x47 and x35 and not x5 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and not x15 and x47 and not x35 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and not x15 and not x47 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and not x63 and x28 and x57 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x62 and not x63 and x28 and not x57 ) = '1' then
         current_bigm2r <= s18;

      elsif ( not x62 and not x63 and not x28 and x27 and x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x62 and not x63 and not x28 and x27 and not x8 and x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x62 and not x63 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      else
         y2 <= '1' ;
         current_bigm2r <= s52;

      end if;

   when s19 =>
      if ( x62 and x16 and x15 ) = '1' then
         y19 <= '1' ;
         current_bigm2r <= s76;

      elsif ( x62 and x16 and not x15 and x2 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x62 and x16 and not x15 and not x2 and x63 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x62 and x16 and not x15 and not x2 and x63 and not x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and x16 and not x15 and not x2 and not x63 and x37 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x62 and x16 and not x15 and not x2 and not x63 and not x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x62 and not x16 ) = '1' then
         y19 <= '1' ;
         current_bigm2r <= s76;

      elsif ( not x62 and x63 and x46 ) = '1' then
         y19 <= '1' ;
         current_bigm2r <= s76;

      elsif ( not x62 and x63 and not x46 and x16 and x2 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x62 and x63 and not x46 and x16 and not x2 and x32 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x62 and x63 and not x46 and x16 and not x2 and not x32 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and not x46 and not x16 ) = '1' then
         y19 <= '1' ;
         current_bigm2r <= s76;

      elsif ( not x62 and not x63 and x15 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x62 and not x63 and not x15 and x14 and x13 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s95;

      elsif ( not x62 and not x63 and not x15 and x14 and not x13 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      else
         y16 <= '1' ;
         current_bigm2r <= s56;

      end if;

   when s20 =>
      if ( x15 and x16 and x63 and x5 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x15 and x16 and x63 and not x5 and x62 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x15 and x16 and x63 and not x5 and not x62 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x15 and x16 and not x63 and x62 and x5 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x15 and x16 and not x63 and x62 and not x5 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x15 and x16 and not x63 and not x62 and x5 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x15 and x16 and not x63 and not x62 and not x5 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x15 and not x16 and x63 and x12 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x15 and not x16 and x63 and not x12 ) = '1' then
         current_bigm2r <= s20;

      elsif ( x15 and not x16 and not x63 and x62 and x12 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x15 and not x16 and not x63 and x62 and not x12 ) = '1' then
         current_bigm2r <= s20;

      elsif ( x15 and not x16 and not x63 and not x62 and x12 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( x15 and not x16 and not x63 and not x62 and not x12 ) = '1' then
         current_bigm2r <= s20;

      elsif ( not x15 and x62 and x16 and x4 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x15 and x62 and x16 and not x4 and x63 and x2 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x15 and x62 and x16 and not x4 and x63 and not x2 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x15 and x62 and x16 and not x4 and x63 and not x2 and not x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x15 and x62 and x16 and not x4 and not x63 and x34 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x15 and x62 and x16 and not x4 and not x63 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x15 and x62 and x16 and not x4 and not x63 and not x34 and not x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x15 and x62 and not x16 ) = '1' then
         y18 <= '1' ;
         current_bigm2r <= s19;

      elsif ( not x15 and not x62 and x63 and x47 and x35 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x15 and not x62 and x63 and x47 and not x35 and x33 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x15 and not x62 and x63 and x47 and not x35 and not x33 and x32 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x15 and not x62 and x63 and x47 and not x35 and not x33 and not x32 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x15 and not x62 and x63 and not x47 ) = '1' then
         y18 <= '1' ;
         current_bigm2r <= s19;

      elsif ( not x15 and not x62 and not x63 and x16 and x4 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x15 and not x62 and not x63 and x16 and not x4 and x2 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x15 and not x62 and not x63 and x16 and not x4 and not x2 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x15 and not x62 and not x63 and x16 and not x4 and not x2 and not x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      else
         y17 <= '1' ;
         current_bigm2r <= s35;

      end if;

   when s21 =>
      if ( x62 and x63 and x40 and x46 and x3 and x23 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x62 and x63 and x40 and x46 and x3 and not x23 ) = '1' then
         current_bigm2r <= s21;

      elsif ( x62 and x63 and x40 and x46 and not x3 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and x40 and not x46 and x2 and x23 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x62 and x63 and x40 and not x46 and x2 and not x23 ) = '1' then
         current_bigm2r <= s21;

      elsif ( x62 and x63 and x40 and not x46 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and not x40 and x10 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and not x40 and not x10 and x11 and x5 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x63 and not x40 and not x10 and x11 and not x5 and x6 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and not x40 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and not x1 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and x44 and x46 and x42 and x23 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( x62 and not x63 and x44 and x46 and x42 and not x23 ) = '1' then
         current_bigm2r <= s21;

      elsif ( x62 and not x63 and x44 and x46 and not x42 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and x44 and not x46 and x34 and x23 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( x62 and not x63 and x44 and not x46 and x34 and not x23 ) = '1' then
         current_bigm2r <= s21;

      elsif ( x62 and not x63 and x44 and not x46 and not x34 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and not x44 and x10 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and x5 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and not x5 and x6 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and not x36 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and x46 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s95;

      elsif ( not x62 and not x46 and x44 and x11 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( not x62 and not x46 and x44 and not x11 and x6 and x35 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x62 and not x46 and x44 and not x11 and x6 and not x35 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s98;

      elsif ( not x62 and not x46 and x44 and not x11 and not x6 and x36 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and not x46 and x44 and not x11 and not x6 and not x36 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s99;

      elsif ( not x62 and not x46 and not x44 and x14 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and not x46 and not x44 and not x14 and x9 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and not x46 and not x44 and not x14 and not x9 and x37 and x33 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and not x46 and not x44 and not x14 and not x9 and x37 and not x33 ) = '1' then
         current_bigm2r <= s21;

      elsif ( not x62 and not x46 and not x44 and not x14 and not x9 and not x37 and x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      else
         current_bigm2r <= s21;

      end if;

   when s22 =>
      if ( x62 and x15 and x13 and x63 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s100;

      elsif ( x62 and x15 and x13 and not x63 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( x62 and x15 and not x13 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( x62 and not x15 and x12 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( x62 and not x15 and not x12 ) = '1' then
         current_bigm2r <= s22;

      elsif ( not x62 and x46 ) = '1' then
         y48 <= '1' ;
         current_bigm2r <= s74;

      elsif ( not x62 and not x46 and x43 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      else
         current_bigm2r <= s22;

      end if;

   when s23 =>
      if ( x62 and x19 and x63 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x62 and x19 and not x63 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( x62 and not x19 and x26 and x5 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x62 and not x19 and x26 and not x5 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and not x19 and not x26 ) = '1' then
         y26 <= '1' ;
         current_bigm2r <= s79;

      elsif ( not x62 and x63 and x19 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( not x62 and x63 and not x19 and x26 and x5 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x62 and x63 and not x19 and x26 and not x5 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x62 and x63 and not x19 and not x26 ) = '1' then
         y26 <= '1' ;
         current_bigm2r <= s79;

      elsif ( not x62 and not x63 and x8 and x1 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s103;

      elsif ( not x62 and not x63 and x8 and not x1 and x4 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( not x62 and not x63 and x8 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      else
         y9 <= '1' ;
         current_bigm2r <= s10;

      end if;

   when s24 =>
      if ( x63 and x62 and x26 and x28 and x3 and x5 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s105;

      elsif ( x63 and x62 and x26 and x28 and x3 and not x5 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x63 and x62 and x26 and x28 and not x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and x62 and x26 and not x28 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x63 and x62 and not x26 and x27 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and x62 and not x26 and not x27 and x28 and x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x63 and x62 and not x26 and not x27 and x28 and not x5 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x63 and x62 and not x26 and not x27 and not x28 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( x63 and x62 and not x26 and not x27 and not x28 and x5 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( x63 and x62 and not x26 and not x27 and not x28 and x5 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x63 and x62 and not x26 and not x27 and not x28 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x63 and not x62 and x55 and x50 and x28 and x32 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( x63 and not x62 and x55 and x50 and x28 and not x32 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x62 and x55 and x50 and x28 and not x32 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x63 and not x62 and x55 and x50 and not x28 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and x55 and not x50 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x63 and not x62 and not x55 and x13 and x23 and x51 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x63 and not x62 and not x55 and x13 and x23 and not x51 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x62 and not x55 and x13 and not x23 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x63 and not x62 and not x55 and not x13 and x28 and x35 and x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x63 and not x62 and not x55 and not x13 and x28 and x35 and not x36 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x13 and x28 and not x35 and x58 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and not x55 and not x13 and x28 and not x35 and not x58 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x13 and not x28 and x6 and x35 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( x63 and not x62 and not x55 and not x13 and not x28 and x6 and not x35 and x58 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and not x55 and not x13 and not x28 and x6 and not x35 and not x58 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x63 and x62 and x44 and x19 and x28 and x1 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( not x63 and x62 and x44 and x19 and x28 and not x1 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x63 and x62 and x44 and x19 and x28 and not x1 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x63 and x62 and x44 and x19 and not x28 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and x44 and not x19 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x63 and x62 and not x44 and x13 and x23 and x51 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x63 and x62 and not x44 and x13 and x23 and not x51 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x63 and x62 and not x44 and x13 and not x23 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x63 and x62 and not x44 and not x13 and x28 and x35 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x63 and x62 and not x44 and not x13 and x28 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x13 and x28 and not x35 and x45 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and not x44 and not x13 and x28 and not x35 and not x45 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x13 and not x28 and x6 and x35 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s80;

      elsif ( not x63 and x62 and not x44 and not x13 and not x28 and x6 and not x35 and x45 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and not x44 and not x13 and not x28 and x6 and not x35 and not x45 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x63 and not x62 and x61 and x19 and x28 and x1 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s108;

      elsif ( not x63 and not x62 and x61 and x19 and x28 and not x1 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and not x62 and x61 and x19 and x28 and not x1 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x63 and not x62 and x61 and x19 and not x28 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and x61 and not x19 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x63 and not x62 and not x61 and x13 and x23 and x51 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x63 and not x62 and not x61 and x13 and x23 and not x51 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and not x62 and not x61 and x13 and not x23 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x63 and not x62 and not x61 and not x13 and x28 and x35 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x63 and not x62 and not x61 and not x13 and x28 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and not x13 and x28 and not x35 and x60 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and not x61 and not x13 and x28 and not x35 and not x60 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and not x13 and not x28 and x6 and x35 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s8;

      elsif ( not x63 and not x62 and not x61 and not x13 and not x28 and x6 and not x35 and x60 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and not x61 and not x13 and not x28 and x6 and not x35 and not x60 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      else
         y8 <= '1' ;
         current_bigm2r <= s45;

      end if;

   when s25 =>
      if ( x62 and x44 and x12 and x27 and x33 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and x44 and x12 and x27 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and x44 and x12 and x27 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( x62 and x44 and x12 and not x27 and x37 and x29 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x62 and x44 and x12 and not x27 and x37 and not x29 ) = '1' then
         current_bigm2r <= s25;

      elsif ( x62 and x44 and x12 and not x27 and not x37 ) = '1' then
         current_bigm2r <= s25;

      elsif ( x62 and x44 and not x12 and x29 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( x62 and x44 and not x12 and not x29 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( x62 and not x44 and x17 ) = '1' then
         y30 <= '1' ;
         current_bigm2r <= s110;

      elsif ( x62 and not x44 and not x17 and x49 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and not x44 and not x17 and not x49 ) = '1' then
         current_bigm2r <= s25;

      elsif ( not x62 and x63 and x55 and x43 and x27 and x33 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x62 and x63 and x55 and x43 and x27 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and x63 and x55 and x43 and x27 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x62 and x63 and x55 and x43 and not x27 and x29 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x62 and x63 and x55 and x43 and not x27 and x29 and not x1 ) = '1' then
         current_bigm2r <= s25;

      elsif ( not x62 and x63 and x55 and x43 and not x27 and not x29 ) = '1' then
         current_bigm2r <= s25;

      elsif ( not x62 and x63 and x55 and not x43 and x29 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( not x62 and x63 and x55 and not x43 and not x29 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( not x62 and x63 and not x55 and x48 ) = '1' then
         y30 <= '1' ;
         current_bigm2r <= s110;

      elsif ( not x62 and x63 and not x55 and not x48 and x57 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x62 and x63 and not x55 and not x48 and not x57 ) = '1' then
         current_bigm2r <= s25;

      elsif ( not x62 and not x63 and x15 and x14 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s112;

      elsif ( not x62 and not x63 and x15 and not x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x62 and not x63 and not x15 and x12 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s113;

      else
         current_bigm2r <= s25;

      end if;

   when s26 =>
      if ( x62 and x63 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x62 and x63 and not x2 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x62 and not x63 and x33 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and not x63 and not x33 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( not x62 and x33 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      else
         y37 <= '1' ;
         current_bigm2r <= s64;

      end if;

   when s27 =>
      if ( x62 and x44 and x24 and x26 and x7 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x62 and x44 and x24 and x26 and not x7 ) = '1' then
         y28 <= '1' ;
         current_bigm2r <= s63;

      elsif ( x62 and x44 and x24 and not x26 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x62 and x44 and not x24 and x28 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( x62 and x44 and not x24 and not x28 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x44 and x31 and x19 and x10 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x62 and not x44 and x31 and x19 and not x10 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x62 and not x44 and x31 and not x19 ) = '1' then
         current_bigm2r <= s27;

      elsif ( x62 and not x44 and not x31 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( not x62 and x26 and x28 and x63 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x62 and x26 and x28 and x63 and not x37 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x62 and x26 and x28 and x63 and not x37 and not x4 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x62 and x26 and x28 and not x63 and x6 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s116;

      elsif ( not x62 and x26 and x28 and not x63 and not x6 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s117;

      elsif ( not x62 and x26 and x28 and not x63 and not x6 and not x4 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x62 and x26 and not x28 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x62 and not x26 and x63 and x27 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x62 and not x26 and x63 and not x27 and x28 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s118;

      elsif ( not x62 and not x26 and x63 and not x27 and not x28 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x62 and not x26 and not x63 and x27 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s119;

      elsif ( not x62 and not x26 and not x63 and not x27 and x28 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s120;

      else
         y7 <= '1' ;
         current_bigm2r <= s119;

      end if;

   when s28 =>
      if ( x63 and x62 and x26 and x28 and x7 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x63 and x62 and x26 and x28 and not x7 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x63 and x62 and x26 and not x28 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x63 and x62 and not x26 and x27 and x25 and x9 ) = '1' then
         current_bigm2r <= s28;

      elsif ( x63 and x62 and not x26 and x27 and x25 and not x9 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x63 and x62 and not x26 and x27 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and x62 and not x26 and not x27 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x62 and x55 and x19 and x44 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( x63 and not x62 and x55 and x19 and not x44 and x32 and x18 and x12 ) = '1' then
         current_bigm2r <= s28;

      elsif ( x63 and not x62 and x55 and x19 and not x44 and x32 and x18 and not x12 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x63 and not x62 and x55 and x19 and not x44 and x32 and not x18 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and x55 and x19 and not x44 and not x32 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x62 and x55 and not x19 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and not x55 and x17 and x50 and x10 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x63 and not x62 and not x55 and x17 and x50 and not x10 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x63 and not x62 and not x55 and x17 and not x50 ) = '1' then
         current_bigm2r <= s28;

      elsif ( x63 and not x62 and not x55 and not x17 and x51 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( x63 and not x62 and not x55 and not x17 and not x51 and x33 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and not x55 and not x17 and not x51 and not x33 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x63 and x62 and x44 and x19 and x13 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s80;

      elsif ( not x63 and x62 and x44 and x19 and not x13 and x32 and x18 and x12 ) = '1' then
         current_bigm2r <= s28;

      elsif ( not x63 and x62 and x44 and x19 and not x13 and x32 and x18 and not x12 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( not x63 and x62 and x44 and x19 and not x13 and x32 and not x18 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and x44 and x19 and not x13 and not x32 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x63 and x62 and x44 and not x19 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and not x44 and x17 and x19 and x10 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x63 and x62 and not x44 and x17 and x19 and not x10 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( not x63 and x62 and not x44 and x17 and not x19 ) = '1' then
         current_bigm2r <= s28;

      elsif ( not x63 and x62 and not x44 and not x17 and x20 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( not x63 and x62 and not x44 and not x17 and not x20 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and not x44 and not x17 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x63 and not x62 and x61 and x19 and x13 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s8;

      elsif ( not x63 and not x62 and x61 and x19 and not x13 and x32 and x18 and x12 ) = '1' then
         current_bigm2r <= s28;

      elsif ( not x63 and not x62 and x61 and x19 and not x13 and x32 and x18 and not x12 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and not x62 and x61 and x19 and not x13 and x32 and not x18 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and x61 and x19 and not x13 and not x32 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and not x62 and x61 and not x19 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and not x61 and x17 and x19 and x10 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x63 and not x62 and not x61 and x17 and x19 and not x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and not x62 and not x61 and x17 and not x19 ) = '1' then
         current_bigm2r <= s28;

      elsif ( not x63 and not x62 and not x61 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s121;

      elsif ( not x63 and not x62 and not x61 and not x17 and not x20 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      else
         y2 <= '1' ;
         current_bigm2r <= s24;

      end if;

   when s29 =>
      if ( x63 and x62 and x26 and x28 and x9 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x63 and x62 and x26 and x28 and not x9 and x23 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x63 and x62 and x26 and x28 and not x9 and not x23 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and x62 and x26 and not x28 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and x62 and not x26 and x27 and x4 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and x62 and not x26 and x27 and not x4 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x63 and x62 and not x26 and not x27 and x28 and x2 and x24 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s105;

      elsif ( x63 and x62 and not x26 and not x27 and x28 and x2 and not x24 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x63 and x62 and not x26 and not x27 and x28 and not x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and x62 and not x26 and not x27 and not x28 and x18 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( x63 and x62 and not x26 and not x27 and not x28 and x18 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( x63 and x62 and not x26 and not x27 and not x28 and x18 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x63 and x62 and not x26 and not x27 and not x28 and not x18 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x62 and x55 and x45 and x8 and x41 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x62 and x55 and x45 and x8 and not x41 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and x55 and x45 and not x8 and x30 and x32 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( x63 and not x62 and x55 and x45 and not x8 and x30 and not x32 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x63 and not x62 and x55 and x45 and not x8 and x30 and not x32 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x63 and not x62 and x55 and x45 and not x8 and not x30 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x62 and x55 and not x45 and x34 and x32 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x63 and not x62 and x55 and not x45 and x34 and not x32 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x62 and x55 and not x45 and not x34 ) = '1' then
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and x47 and x54 and x29 and x59 and x27 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s122;

      elsif ( x63 and not x62 and not x55 and x47 and x54 and x29 and x59 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and x47 and x54 and x29 and not x59 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and not x55 and x47 and x54 and x29 and not x59 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and x47 and x54 and not x29 and x33 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and not x55 and x47 and x54 and not x29 and x33 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and x47 and x54 and not x29 and not x33 and x57 and x27 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x63 and not x62 and not x55 and x47 and x54 and not x29 and not x33 and x57 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and x47 and x54 and not x29 and not x33 and not x57 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and not x55 and x47 and x54 and not x29 and not x33 and not x57 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and x47 and not x54 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and not x55 and not x47 and x37 and x56 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and not x55 and not x47 and x37 and x56 and not x1 ) = '1' then
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x47 and x37 and not x56 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and not x55 and not x47 and not x37 and x25 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and not x55 and not x47 and not x37 and not x25 and x36 and x35 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( x63 and not x62 and not x55 and not x47 and not x37 and not x25 and x36 and not x35 ) = '1' then
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x47 and not x37 and not x25 and not x36 and x35 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and not x55 and not x47 and not x37 and not x25 and not x36 and not x35 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and x44 and x14 and x8 and x10 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x63 and x62 and x44 and x14 and x8 and not x10 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and x44 and x14 and not x8 and x30 and x37 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x63 and x62 and x44 and x14 and not x8 and x30 and not x37 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x63 and x62 and x44 and x14 and not x8 and x30 and not x37 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( not x63 and x62 and x44 and x14 and not x8 and not x30 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x63 and x62 and x44 and not x14 and x32 and x3 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x63 and x62 and x44 and not x14 and x32 and not x3 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and x44 and not x14 and not x32 and x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x63 and x62 and x44 and not x14 and not x32 and not x3 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and x16 and x54 and x29 and x48 and x27 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s57;

      elsif ( not x63 and x62 and not x44 and x16 and x54 and x29 and x48 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and x16 and x54 and x29 and not x48 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and not x44 and x16 and x54 and x29 and not x48 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and x16 and x54 and not x29 and x33 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and not x44 and x16 and x54 and not x29 and x33 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and x16 and x54 and not x29 and not x33 and x49 and x27 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x63 and x62 and not x44 and x16 and x54 and not x29 and not x33 and x49 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and x16 and x54 and not x29 and not x33 and not x49 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and not x44 and x16 and x54 and not x29 and not x33 and not x49 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and x16 and not x54 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and not x44 and not x16 and x37 and x55 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and not x44 and not x16 and x37 and x55 and not x1 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x16 and x37 and not x55 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and not x44 and not x16 and not x37 and x25 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and not x44 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( not x63 and x62 and not x44 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and not x44 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and not x44 and not x16 and not x37 and not x25 and not x5 and not x4 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and x61 and x14 and x8 and x10 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and not x62 and x61 and x14 and x8 and not x10 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and x61 and x14 and not x8 and x30 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x63 and not x62 and x61 and x14 and not x8 and x30 and not x1 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x63 and not x62 and x61 and x14 and not x8 and x30 and not x1 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and not x62 and x61 and x14 and not x8 and not x30 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and not x62 and x61 and not x14 and x32 and x3 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x63 and not x62 and x61 and not x14 and x32 and not x3 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and x61 and not x14 and not x32 and x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and not x62 and x61 and not x14 and not x32 and not x3 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and x16 and x54 and x29 and x59 and x27 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s61;

      elsif ( not x63 and not x62 and not x61 and x16 and x54 and x29 and x59 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and x16 and x54 and x29 and not x59 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and not x62 and not x61 and x16 and x54 and x29 and not x59 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and x16 and x54 and not x29 and x33 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and not x62 and not x61 and x16 and x54 and not x29 and x33 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and x16 and x54 and not x29 and not x33 and x57 and x27 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x63 and not x62 and not x61 and x16 and x54 and not x29 and not x33 and x57 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and x16 and x54 and not x29 and not x33 and not x57 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and not x62 and not x61 and x16 and x54 and not x29 and not x33 and not x57 and not x27 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and x16 and not x54 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and not x61 and not x16 and x37 and x56 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and not x62 and not x61 and not x16 and x37 and x56 and not x1 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and not x16 and x37 and not x56 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and not x61 and not x16 and not x37 and x25 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and not x61 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( not x63 and not x62 and not x61 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and not x61 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      else
         current_bigm2r <= s29;

      end if;

   when s30 =>
      if ( x62 and x63 and x40 and x11 and x25 and x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and x63 and x40 and x11 and x25 and not x3 and x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x62 and x63 and x40 and x11 and x25 and not x3 and not x5 ) = '1' then
         current_bigm2r <= s30;

      elsif ( x62 and x63 and x40 and x11 and not x25 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x62 and x63 and x40 and not x11 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and x63 and not x40 and x48 and x42 and x51 and x47 ) = '1' then
         current_bigm2r <= s30;

      elsif ( x62 and x63 and not x40 and x48 and x42 and x51 and not x47 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and x63 and not x40 and x48 and x42 and not x51 and x47 ) = '1' then
         current_bigm2r <= s30;

      elsif ( x62 and x63 and not x40 and x48 and x42 and not x51 and not x47 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x62 and x63 and not x40 and x48 and not x42 and x47 ) = '1' then
         current_bigm2r <= s30;

      elsif ( x62 and x63 and not x40 and x48 and not x42 and not x47 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x62 and x63 and not x40 and x48 and not x42 and not x47 and not x34 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and x63 and not x40 and not x48 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and not x63 and x44 and x11 and x25 and x42 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x62 and not x63 and x44 and x11 and x25 and not x42 and x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and not x63 and x44 and x11 and x25 and not x42 and not x5 ) = '1' then
         current_bigm2r <= s30;

      elsif ( x62 and not x63 and x44 and x11 and not x25 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x62 and not x63 and x44 and not x11 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x62 and not x63 and not x44 and x53 and x47 ) = '1' then
         current_bigm2r <= s30;

      elsif ( x62 and not x63 and not x44 and x53 and not x47 and x48 and x51 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x62 and not x63 and not x44 and x53 and not x47 and x48 and not x51 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and not x63 and not x44 and x53 and not x47 and not x48 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and not x63 and not x44 and x53 and not x47 and not x48 and not x34 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x62 and not x63 and not x44 and not x53 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x62 and x55 and x11 and x25 and x34 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x62 and x55 and x11 and x25 and not x34 and x36 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and x55 and x11 and x25 and not x34 and not x36 ) = '1' then
         current_bigm2r <= s30;

      elsif ( not x62 and x55 and x11 and not x25 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x62 and x55 and not x11 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x62 and not x55 and x53 and x47 ) = '1' then
         current_bigm2r <= s30;

      elsif ( not x62 and not x55 and x53 and not x47 and x59 and x51 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x62 and not x55 and x53 and not x47 and x59 and not x51 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x55 and x53 and not x47 and not x59 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x55 and x53 and not x47 and not x59 and not x34 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      else
         y2 <= '1' ;
         current_bigm2r <= s24;

      end if;

   when s31 =>
      if ( x62 and x44 and x35 and x36 and x7 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( x62 and x44 and x35 and x36 and not x7 ) = '1' then
         current_bigm2r <= s31;

      elsif ( x62 and x44 and x35 and not x36 and x7 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( x62 and x44 and x35 and not x36 and not x7 ) = '1' then
         current_bigm2r <= s31;

      elsif ( x62 and x44 and not x35 and x37 ) = '1' then
         current_bigm2r <= s31;

      elsif ( x62 and x44 and not x35 and not x37 and x7 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x62 and x44 and not x35 and not x37 and not x7 ) = '1' then
         current_bigm2r <= s31;

      elsif ( x62 and not x44 and x43 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and not x44 and not x43 and x2 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( x62 and not x44 and not x43 and not x2 and x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x62 and not x44 and not x43 and not x2 and not x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and x55 and x35 and x7 and x1 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( not x62 and x63 and x55 and x35 and x7 and not x1 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x62 and x63 and x55 and x35 and not x7 ) = '1' then
         current_bigm2r <= s31;

      elsif ( not x62 and x63 and x55 and not x35 and x38 and x32 ) = '1' then
         current_bigm2r <= s31;

      elsif ( not x62 and x63 and x55 and not x35 and x38 and not x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x62 and x63 and x55 and not x35 and not x38 ) = '1' then
         current_bigm2r <= s31;

      elsif ( not x62 and x63 and not x55 and x34 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x62 and x63 and not x55 and not x34 and x2 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( not x62 and x63 and not x55 and not x34 and not x2 and x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x62 and x63 and not x55 and not x34 and not x2 and not x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x63 and x15 and x13 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s123;

      elsif ( not x62 and not x63 and x15 and not x13 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s124;

      elsif ( not x62 and not x63 and not x15 and x12 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s124;

      else
         current_bigm2r <= s31;

      end if;

   when s32 =>
      if ( x63 and x62 and x40 and x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and x40 and not x5 and x34 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x63 and x62 and x40 and not x5 and not x34 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x63 and x62 and not x40 and x35 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and not x40 and not x35 and x13 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and x62 and not x40 and not x35 and not x13 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and x28 and x7 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( x63 and not x62 and x28 and not x7 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x63 and not x62 and not x28 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x63 and x62 and x44 and x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and x44 and not x5 and x34 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x63 and x62 and x44 and not x5 and not x34 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( not x63 and x62 and not x44 and x35 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and not x44 and not x35 and x13 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( not x63 and x62 and not x44 and not x35 and not x13 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( not x63 and not x62 and x61 and x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and x61 and not x5 and x34 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x63 and not x62 and x61 and not x5 and not x34 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x63 and not x62 and not x61 and x35 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and not x61 and not x35 and x13 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      else
         y13 <= '1' ;
         current_bigm2r <= s47;

      end if;

   when s33 =>
      if ( x62 and x63 and x40 and x10 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x62 and x63 and x40 and not x10 and x25 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x62 and x63 and x40 and not x10 and not x25 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( x62 and x63 and not x40 and x8 and x48 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and x63 and not x40 and x8 and not x48 and x37 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and x63 and not x40 and x8 and not x48 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and x63 and not x40 and not x8 and x51 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and x63 and not x40 and not x8 and not x51 and x37 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and x63 and not x40 and not x8 and not x51 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and not x63 and x44 and x10 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x62 and not x63 and x44 and not x10 and x25 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x62 and not x63 and x44 and not x10 and not x25 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( x62 and not x63 and not x44 and x8 and x53 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and not x63 and not x44 and x8 and not x53 and x36 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x63 and not x44 and x8 and not x53 and not x36 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and not x63 and not x44 and not x8 and x51 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and not x63 and not x44 and not x8 and not x51 and x36 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x63 and not x44 and not x8 and not x51 and not x36 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( not x62 and x55 and x41 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( not x62 and x55 and not x41 and x25 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x62 and x55 and not x41 and not x25 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( not x62 and not x55 and x39 and x53 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x62 and not x55 and x39 and not x53 and x37 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and not x55 and x39 and not x53 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x62 and not x55 and not x39 and x51 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x62 and not x55 and not x39 and not x51 and x37 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      else
         y40 <= '1' ;
         current_bigm2r <= s111;

      end if;

   when s34 =>
      if ( x62 and x28 and x7 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( x62 and x28 and not x7 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( x62 and not x28 and x63 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x62 and not x28 and not x63 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x62 and x63 and x55 and x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x62 and x63 and x55 and not x5 and x34 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x62 and x63 and x55 and not x5 and not x34 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x62 and x63 and not x55 and x35 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and x63 and not x55 and not x35 and x44 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( not x62 and x63 and not x55 and not x35 and not x44 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( not x62 and not x63 and x16 and x15 and x5 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x62 and not x63 and x16 and x15 and not x5 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( not x62 and not x63 and x16 and not x15 and x4 and x5 and x2 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( not x62 and not x63 and x16 and not x15 and x4 and x5 and not x2 and x1 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      elsif ( not x62 and not x63 and x16 and not x15 and x4 and x5 and not x2 and not x1 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x63 and x16 and not x15 and x4 and not x5 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( not x62 and not x63 and x16 and not x15 and not x4 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( not x62 and not x63 and not x16 and x15 and x13 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x62 and not x63 and not x16 and x15 and x13 and not x11 and x6 and x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x62 and not x63 and not x16 and x15 and x13 and not x11 and x6 and not x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x62 and not x63 and not x16 and x15 and x13 and not x11 and not x6 and x5 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x63 and not x16 and x15 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and not x63 and not x16 and x15 and not x13 and x14 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and not x63 and not x16 and x15 and not x13 and not x14 and x9 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and not x63 and not x16 and x15 and not x13 and not x14 and not x9 and x6 and x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and not x63 and not x16 and x15 and not x13 and not x14 and not x9 and x6 and not x2 ) = '1' then
         current_bigm2r <= s34;

      elsif ( not x62 and not x63 and not x16 and x15 and not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and not x63 and not x16 and x15 and not x13 and not x14 and not x9 and not x6 and not x8 ) = '1' then
         current_bigm2r <= s34;

      else
         y1 <= '1' ;
         current_bigm2r <= s37;

      end if;

   when s35 =>
      if ( x15 and x62 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x15 and not x62 and x63 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x15 and not x62 and not x63 ) = '1' then
         y18 <= '1' ;
         current_bigm2r <= s19;

      elsif ( not x15 and x62 and x16 and x63 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x15 and x62 and x16 and x63 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x15 and x62 and x16 and not x63 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x15 and x62 and x16 and not x63 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x15 and x62 and not x16 ) = '1' then
         y18 <= '1' ;
         current_bigm2r <= s19;

      elsif ( not x15 and not x62 and x63 and x47 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x15 and not x62 and x63 and x47 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x15 and not x62 and x63 and not x47 ) = '1' then
         y18 <= '1' ;
         current_bigm2r <= s19;

      elsif ( not x15 and not x62 and not x63 and x16 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x15 and not x62 and not x63 and x16 and not x2 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x15 and not x62 and not x63 and x16 and not x2 and not x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      else
         y18 <= '1' ;
         current_bigm2r <= s19;

      end if;

   when s36 =>
      if ( x62 and x15 and x16 and x5 and x1 and x63 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x62 and x15 and x16 and x5 and x1 and not x63 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x62 and x15 and x16 and x5 and not x1 and x2 and x3 and x4 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x62 and x15 and x16 and x5 and not x1 and x2 and x3 and not x4 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x62 and x15 and x16 and x5 and not x1 and x2 and not x3 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x62 and x15 and x16 and x5 and not x1 and not x2 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x62 and x15 and x16 and not x5 and x6 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x62 and x15 and x16 and not x5 and not x6 and x63 and x1 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x62 and x15 and x16 and not x5 and not x6 and x63 and not x1 and x2 and x3 and x4 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x62 and x15 and x16 and not x5 and not x6 and x63 and not x1 and x2 and x3 and not x4 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and x15 and x16 and not x5 and not x6 and x63 and not x1 and x2 and not x3 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x62 and x15 and x16 and not x5 and not x6 and x63 and not x1 and not x2 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x62 and x15 and x16 and not x5 and not x6 and not x63 and x37 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x62 and x15 and x16 and not x5 and not x6 and not x63 and not x37 and x34 and x3 and x4 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x62 and x15 and x16 and not x5 and not x6 and not x63 and not x37 and x34 and x3 and not x4 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x62 and x15 and x16 and not x5 and not x6 and not x63 and not x37 and x34 and not x3 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x62 and x15 and x16 and not x5 and not x6 and not x63 and not x37 and not x34 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x62 and x15 and not x16 and x63 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( x62 and x15 and not x16 and x63 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x62 and x15 and not x16 and not x63 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x62 and x15 and not x16 and not x63 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x62 and not x15 and x16 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x62 and not x15 and not x16 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and x46 and x16 and x36 and x1 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x62 and x46 and x16 and x36 and not x1 and x2 and x3 and x35 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( not x62 and x46 and x16 and x36 and not x1 and x2 and x3 and not x35 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and x46 and x16 and x36 and not x1 and x2 and not x3 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and x46 and x16 and x36 and not x1 and not x2 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and x46 and x16 and not x36 and x6 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and x46 and x16 and not x36 and not x6 and x32 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x62 and x46 and x16 and not x36 and not x6 and not x32 and x33 and x34 and x4 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( not x62 and x46 and x16 and not x36 and not x6 and not x32 and x33 and x34 and not x4 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x46 and x16 and not x36 and not x6 and not x32 and x33 and not x34 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and x46 and x16 and not x36 and not x6 and not x32 and not x33 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and x46 and not x16 and x37 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x62 and x46 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x62 and not x46 and x47 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      else
         y31 <= '1' ;
         current_bigm2r <= s72;

      end if;

   when s37 =>
      if ( x63 and x62 and x40 and x48 and x42 and x51 and x47 ) = '1' then
         current_bigm2r <= s37;

      elsif ( x63 and x62 and x40 and x48 and x42 and x51 and not x47 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x63 and x62 and x40 and x48 and x42 and not x51 and x47 ) = '1' then
         current_bigm2r <= s37;

      elsif ( x63 and x62 and x40 and x48 and x42 and not x51 and not x47 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x63 and x62 and x40 and x48 and not x42 and x47 ) = '1' then
         current_bigm2r <= s37;

      elsif ( x63 and x62 and x40 and x48 and not x42 and not x47 and x34 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x63 and x62 and x40 and x48 and not x42 and not x47 and not x34 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x63 and x62 and x40 and not x48 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x63 and x62 and not x40 and x11 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x63 and x62 and not x40 and not x11 and x1 and x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x63 and x62 and not x40 and not x11 and x1 and not x2 and x3 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x63 and x62 and not x40 and not x11 and x1 and not x2 and not x3 ) = '1' then
         current_bigm2r <= s37;

      elsif ( x63 and x62 and not x40 and not x11 and not x1 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x63 and not x62 and x46 and x47 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and x46 and x47 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x46 and not x47 and x34 and x2 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and not x62 and x46 and not x47 and x34 and not x2 ) = '1' then
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x46 and not x47 and not x34 and x4 and x2 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and x46 and not x47 and not x34 and x4 and not x2 ) = '1' then
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x46 and not x47 and not x34 and not x4 and x32 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and x46 and not x47 and not x34 and not x4 and x32 and not x2 ) = '1' then
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x46 and not x47 and not x34 and not x4 and not x32 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x46 and not x47 and not x34 and not x4 and not x32 and not x2 ) = '1' then
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x46 and x16 and x35 and x5 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x63 and not x62 and not x46 and x16 and x35 and x5 and not x1 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x46 and x16 and x35 and not x5 and x32 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x63 and not x62 and not x46 and x16 and x35 and not x5 and not x32 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x46 and x16 and not x35 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and not x46 and x16 and not x35 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x46 and not x16 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and x62 and x16 and x15 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and x16 and x15 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x16 and not x15 and x4 and x5 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and x62 and x16 and not x15 and x4 and x5 and not x1 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and x16 and not x15 and x4 and not x5 and x37 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x63 and x62 and x16 and not x15 and x4 and not x5 and not x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and x16 and not x15 and not x4 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and x16 and not x15 and not x4 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x16 and x15 and x31 and x2 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and x62 and not x16 and x15 and x31 and not x2 ) = '1' then
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x16 and x15 and not x31 and x4 and x2 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and not x16 and x15 and not x31 and x4 and not x2 ) = '1' then
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x16 and x15 and not x31 and not x4 and x37 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and not x16 and x15 and not x31 and not x4 and x37 and not x2 ) = '1' then
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x16 and x15 and not x31 and not x4 and not x37 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x16 and x15 and not x31 and not x4 and not x37 and not x2 ) = '1' then
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x16 and not x15 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and x10 and x61 and x39 and x46 and x51 and x36 ) = '1' then
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x10 and x61 and x39 and x46 and x51 and not x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and not x62 and x10 and x61 and x39 and x46 and not x51 and x36 ) = '1' then
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x10 and x61 and x39 and x46 and not x51 and not x36 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and not x62 and x10 and x61 and x39 and not x46 and x36 ) = '1' then
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x10 and x61 and x39 and not x46 and not x36 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x63 and not x62 and x10 and x61 and not x39 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x63 and not x62 and x10 and not x61 and x11 and x1 and x2 and x4 and x5 and x3 ) = '1' then
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x10 and not x61 and x11 and x1 and x2 and x4 and x5 and not x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and not x62 and x10 and not x61 and x11 and x1 and x2 and x4 and not x5 and x3 ) = '1' then
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x10 and not x61 and x11 and x1 and x2 and x4 and not x5 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x63 and not x62 and x10 and not x61 and x11 and x1 and x2 and not x4 and x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x10 and not x61 and x11 and x1 and x2 and not x4 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and not x62 and x10 and not x61 and x11 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x63 and not x62 and x10 and not x61 and x11 and not x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and x10 and not x61 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x63 and not x62 and x10 and not x61 and not x11 and not x12 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x63 and not x62 and not x10 and x11 and x61 and x34 and x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x63 and not x62 and not x10 and x11 and x61 and x34 and not x8 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and not x62 and not x10 and x11 and x61 and x34 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x10 and x11 and x61 and not x34 and x32 and x7 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x63 and not x62 and not x10 and x11 and x61 and not x34 and x32 and not x7 and x54 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and not x62 and not x10 and x11 and x61 and not x34 and x32 and not x7 and x54 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x10 and x11 and x61 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x63 and not x62 and not x10 and x11 and x61 and not x34 and not x32 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x63 and not x62 and not x10 and x11 and not x61 and x1 ) = '1' then
         y23 <= '1' ;
         current_bigm2r <= s126;

      elsif ( not x63 and not x62 and not x10 and x11 and not x61 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and not x62 and not x10 and x11 and not x61 and not x1 and not x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and not x10 and not x11 and x12 and x61 and x20 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x63 and not x62 and not x10 and not x11 and x12 and x61 and not x20 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and not x10 and not x11 and x12 and x61 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and not x62 and not x10 and not x11 and x12 and not x61 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and not x62 and not x10 and not x11 and x12 and not x61 and not x1 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and not x10 and not x11 and x12 and not x61 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x10 and not x11 and not x12 and x61 and x13 and x1 and x3 and x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x63 and not x62 and not x10 and not x11 and not x12 and x61 and x13 and x1 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x10 and not x11 and not x12 and x61 and x13 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x10 and not x11 and not x12 and x61 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x63 and not x62 and not x10 and not x11 and not x12 and x61 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and not x62 and not x10 and not x11 and not x12 and not x61 and x1 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s103;

      elsif ( not x63 and not x62 and not x10 and not x11 and not x12 and not x61 and not x1 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and not x10 and not x11 and not x12 and not x61 and not x1 and not x2 and x9 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      else
         y4 <= '1' ;
         current_bigm2r <= s39;

      end if;

   when s38 =>
      if ( x63 and x62 and x40 and x19 and x13 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( x63 and x62 and x40 and x19 and not x13 and x32 and x18 and x12 ) = '1' then
         current_bigm2r <= s38;

      elsif ( x63 and x62 and x40 and x19 and not x13 and x32 and x18 and not x12 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x63 and x62 and x40 and x19 and not x13 and x32 and not x18 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and x40 and x19 and not x13 and not x32 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and x62 and x40 and not x19 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and not x40 and x17 and x19 and x10 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x63 and x62 and not x40 and x17 and x19 and not x10 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x63 and x62 and not x40 and x17 and not x19 ) = '1' then
         current_bigm2r <= s38;

      elsif ( x63 and x62 and not x40 and not x17 and x20 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( x63 and x62 and not x40 and not x17 and not x20 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and not x40 and not x17 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and x15 and x16 and x32 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and not x62 and x15 and x16 and not x32 and x36 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and x15 and x16 and not x32 and not x36 and x6 and x2 and x3 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and not x62 and x15 and x16 and not x32 and not x36 and x6 and x2 and not x3 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x63 and not x62 and x15 and x16 and not x32 and not x36 and x6 and not x2 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x63 and not x62 and x15 and x16 and not x32 and not x36 and not x6 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( x63 and not x62 and x15 and not x16 and x7 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( x63 and not x62 and x15 and not x16 and not x7 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( x63 and not x62 and x15 and not x16 and not x7 and not x9 and x41 and x37 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and x15 and not x16 and not x7 and not x9 and x41 and not x37 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and not x62 and x15 and not x16 and not x7 and not x9 and not x41 and x42 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and not x62 and x15 and not x16 and not x7 and not x9 and not x41 and not x42 ) = '1' then
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and not x15 and x47 and x35 and x5 and x33 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x15 and x47 and x35 and x5 and not x33 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and not x15 and x47 and x35 and x5 and not x33 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x15 and x47 and x35 and not x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and not x62 and not x15 and x47 and not x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and not x62 and not x15 and not x47 and x34 and x42 and x2 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s73;

      elsif ( x63 and not x62 and not x15 and not x47 and x34 and x42 and not x2 ) = '1' then
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and not x15 and not x47 and x34 and not x42 and x3 and x4 and x12 and x13 and x2 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x63 and not x62 and not x15 and not x47 and x34 and not x42 and x3 and x4 and x12 and x13 and not x2 ) = '1' then
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and not x15 and not x47 and x34 and not x42 and x3 and x4 and x12 and not x13 ) = '1' then
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and not x15 and not x47 and x34 and not x42 and x3 and x4 and not x12 ) = '1' then
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and not x15 and not x47 and x34 and not x42 and x3 and not x4 ) = '1' then
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and not x15 and not x47 and x34 and not x42 and not x3 and x4 and x12 and x13 and x2 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( x63 and not x62 and not x15 and not x47 and x34 and not x42 and not x3 and x4 and x12 and x13 and not x2 ) = '1' then
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and not x15 and not x47 and x34 and not x42 and not x3 and x4 and x12 and not x13 ) = '1' then
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and not x15 and not x47 and x34 and not x42 and not x3 and x4 and not x12 ) = '1' then
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and not x15 and not x47 and x34 and not x42 and not x3 and not x4 ) = '1' then
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and x35 and x11 ) = '1' then
         y51 <= '1' ;
         current_bigm2r <= s83;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and x35 and not x11 and x43 and x44 and x14 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and x35 and not x11 and x43 and x44 and not x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and x35 and not x11 and x43 and not x44 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and x35 and not x11 and not x43 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and x36 and x37 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and x36 and not x37 and x38 and x39 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and x36 and not x37 and x38 and not x39 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and x36 and not x37 and not x38 and x8 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and x36 and not x37 and not x38 and not x8 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and x6 and x7 and x9 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and x6 and x7 and not x9 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and x6 and not x7 and x40 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and x6 and not x7 and not x40 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and not x6 and x38 and x41 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and not x6 and x38 and not x41 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and not x6 and not x38 and x10 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and not x6 and not x38 and not x10 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and not x62 and not x15 and not x47 and not x34 and not x33 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and x16 and x15 and x37 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and x62 and x16 and x15 and not x37 and x5 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and x16 and x15 and not x37 and not x5 and x6 and x2 and x31 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x63 and x62 and x16 and x15 and not x37 and not x5 and x6 and x2 and not x31 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x63 and x62 and x16 and x15 and not x37 and not x5 and x6 and not x2 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x63 and x62 and x16 and x15 and not x37 and not x5 and not x6 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x63 and x62 and x16 and not x15 and x4 and x5 and x34 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x16 and not x15 and x4 and x5 and not x34 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and x16 and not x15 and x4 and x5 and not x34 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x16 and not x15 and x4 and not x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and x62 and x16 and not x15 and not x4 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and x62 and not x16 and x15 and x7 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x63 and x62 and not x16 and x15 and not x7 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x63 and x62 and not x16 and x15 and not x7 and not x9 and x10 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and not x16 and x15 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and x62 and not x16 and x15 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and x62 and not x16 and x15 and not x7 and not x9 and not x10 and not x11 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and not x16 and not x15 and x3 and x11 and x2 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s73;

      elsif ( not x63 and x62 and not x16 and not x15 and x3 and x11 and not x2 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and not x16 and not x15 and x3 and not x11 and x4 and x12 and x13 and x31 and x2 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( not x63 and x62 and not x16 and not x15 and x3 and not x11 and x4 and x12 and x13 and x31 and not x2 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and not x16 and not x15 and x3 and not x11 and x4 and x12 and x13 and not x31 and x2 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( not x63 and x62 and not x16 and not x15 and x3 and not x11 and x4 and x12 and x13 and not x31 and not x2 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and not x16 and not x15 and x3 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and not x16 and not x15 and x3 and not x11 and x4 and not x12 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and not x16 and not x15 and x3 and not x11 and not x4 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and x4 and x34 and x11 ) = '1' then
         y49 <= '1' ;
         current_bigm2r <= s127;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and x4 and x34 and not x11 and x12 and x13 and x14 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and x4 and x34 and not x11 and x12 and x13 and not x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and x4 and x34 and not x11 and x12 and not x13 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and x4 and x34 and not x11 and not x12 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and x4 and not x34 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and x6 and x34 and x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and x6 and x34 and not x5 and x9 and x7 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and x6 and x34 and not x5 and x9 and not x7 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and x6 and x34 and not x5 and not x9 and x7 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and x6 and x34 and not x5 and not x9 and not x7 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and x6 and not x34 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and not x6 and x7 and x34 and x5 and x8 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and not x6 and x7 and x34 and x5 and not x8 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and not x6 and x7 and x34 and not x5 and x10 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and not x6 and x7 and x34 and not x5 and not x10 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and not x6 and x7 and not x34 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and not x6 and not x7 and x34 and x5 and x8 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and not x6 and not x7 and x34 and x5 and not x8 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and not x6 and not x7 and x34 and not x5 and x10 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and not x6 and not x7 and x34 and not x5 and not x10 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and x62 and not x16 and not x15 and not x3 and not x4 and not x6 and not x7 and not x34 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and not x62 and x61 and x17 and x19 and x10 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and not x62 and x61 and x17 and x19 and not x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x63 and not x62 and x61 and x17 and not x19 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and not x62 and x61 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x63 and not x62 and x61 and not x17 and not x20 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and x61 and not x17 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and not x62 and not x61 and x11 and x10 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and not x61 and x11 and not x10 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s80;

      elsif ( not x63 and not x62 and not x61 and not x11 and x10 and x12 and x4 and x1 ) = '1' then
         current_bigm2r <= s38;

      elsif ( not x63 and not x62 and not x61 and not x11 and x10 and x12 and x4 and not x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x63 and not x62 and not x61 and not x11 and x10 and x12 and not x4 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x61 and not x11 and x10 and not x12 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      else
         y6 <= '1' ;
         current_bigm2r <= s81;

      end if;

   when s39 =>
      if ( x63 and x62 and x40 and x14 and x8 and x10 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and x62 and x40 and x14 and x8 and not x10 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and x40 and x14 and not x8 and x30 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x63 and x62 and x40 and x14 and not x8 and x30 and not x1 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x63 and x62 and x40 and x14 and not x8 and x30 and not x1 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x63 and x62 and x40 and x14 and not x8 and not x30 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and x62 and x40 and not x14 and x32 and x3 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x63 and x62 and x40 and not x14 and x32 and not x3 ) = '1' then
         current_bigm2r <= s39;

      elsif ( x63 and x62 and x40 and not x14 and not x32 and x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and x62 and x40 and not x14 and not x32 and not x3 ) = '1' then
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and x16 and x45 and x29 and x42 and x27 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s57;

      elsif ( x63 and x62 and not x40 and x16 and x45 and x29 and x42 and not x27 ) = '1' then
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and x16 and x45 and x29 and not x42 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and not x40 and x16 and x45 and x29 and not x42 and not x27 ) = '1' then
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and x16 and x45 and not x29 and x33 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and not x40 and x16 and x45 and not x29 and x33 and not x27 ) = '1' then
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and x16 and x45 and not x29 and not x33 and x43 and x27 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x63 and x62 and not x40 and x16 and x45 and not x29 and not x33 and x43 and not x27 ) = '1' then
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and x16 and x45 and not x29 and not x33 and not x43 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and not x40 and x16 and x45 and not x29 and not x33 and not x43 and not x27 ) = '1' then
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and x16 and not x45 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and not x40 and not x16 and x37 and x44 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and not x40 and not x16 and x37 and x44 and not x1 ) = '1' then
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and not x16 and x37 and not x44 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and not x40 and not x16 and not x37 and x25 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and not x40 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x63 and x62 and not x40 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and not x40 and not x16 and not x37 and not x25 and not x5 and not x4 ) = '1' then
         current_bigm2r <= s39;

      elsif ( x63 and not x62 and x15 and x16 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and x15 and not x16 and x39 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( x63 and not x62 and x15 and not x16 and not x39 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( x63 and not x62 and x15 and not x16 and not x39 and not x9 and x41 and x37 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x63 and not x62 and x15 and not x16 and not x39 and not x9 and x41 and not x37 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and not x62 and x15 and not x16 and not x39 and not x9 and not x41 and x42 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x63 and not x62 and x15 and not x16 and not x39 and not x9 and not x41 and not x42 ) = '1' then
         current_bigm2r <= s39;

      elsif ( x63 and not x62 and not x15 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and x15 and x16 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and x15 and not x16 and x8 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x63 and x62 and x15 and not x16 and not x8 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x63 and x62 and x15 and not x16 and not x8 and not x9 and x10 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x63 and x62 and x15 and not x16 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and x62 and x15 and not x16 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and x62 and x15 and not x16 and not x8 and not x9 and not x10 and not x11 ) = '1' then
         current_bigm2r <= s39;

      elsif ( not x63 and x62 and not x15 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x63 and not x62 and x61 and x16 and x54 and x29 and x59 and x27 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s129;

      elsif ( not x63 and not x62 and x61 and x16 and x54 and x29 and x59 and not x27 ) = '1' then
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and x16 and x54 and x29 and not x59 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and x61 and x16 and x54 and x29 and not x59 and not x27 ) = '1' then
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and x16 and x54 and not x29 and x33 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and x61 and x16 and x54 and not x29 and x33 and not x27 ) = '1' then
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and x16 and x54 and not x29 and not x33 and x57 and x27 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x63 and not x62 and x61 and x16 and x54 and not x29 and not x33 and x57 and not x27 ) = '1' then
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and x16 and x54 and not x29 and not x33 and not x57 and x27 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and x61 and x16 and x54 and not x29 and not x33 and not x57 and not x27 ) = '1' then
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and x16 and not x54 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and x61 and not x16 and x37 and x56 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and x61 and not x16 and x37 and x56 and not x1 ) = '1' then
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and not x16 and x37 and not x56 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and x61 and not x16 and not x37 and x25 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and x61 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x63 and not x62 and x61 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and x61 and not x16 and not x37 and not x25 and not x5 and not x4 ) = '1' then
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x61 and x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and not x62 and not x61 and x10 and not x11 and x12 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and not x62 and not x61 and x10 and not x11 and x12 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and not x61 and x10 and not x11 and not x12 and x1 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x63 and not x62 and not x61 and x10 and not x11 and not x12 and x1 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and not x62 and not x61 and x10 and not x11 and not x12 and x1 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x63 and not x62 and not x61 and x10 and not x11 and not x12 and not x1 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and not x62 and not x61 and not x10 and x12 and x2 and x4 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x63 and not x62 and not x61 and not x10 and x12 and x2 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x63 and not x62 and not x61 and not x10 and x12 and not x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and not x62 and not x61 and not x10 and not x12 and x9 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( not x63 and not x62 and not x61 and not x10 and not x12 and not x9 and x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      else
         y4 <= '1' ;
         current_bigm2r <= s39;

      end if;

   when s40 =>
      if ( x62 and x15 and x16 and x63 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x62 and x15 and x16 and x63 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x62 and x15 and x16 and not x63 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and x15 and x16 and not x63 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and x15 and not x16 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x62 and not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x62 and not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x62 and not x15 and x16 and x4 and not x5 and x2 and x3 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( x62 and not x15 and x16 and x4 and not x5 and x2 and not x3 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x62 and not x15 and x16 and x4 and not x5 and not x2 and x63 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and not x15 and x16 and x4 and not x5 and not x2 and not x63 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x62 and not x15 and x16 and not x4 and x63 and x2 and x3 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x62 and not x15 and x16 and not x4 and x63 and x2 and not x3 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x62 and not x15 and x16 and not x4 and x63 and not x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and not x15 and x16 and not x4 and not x63 and x34 and x3 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x62 and not x15 and x16 and not x4 and not x63 and x34 and not x3 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x62 and not x15 and x16 and not x4 and not x63 and not x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x62 and not x15 and not x16 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and x63 and x46 and x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and x63 and x46 and x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x46 and not x16 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and x63 and not x46 and x47 and x4 and x5 and x1 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( not x62 and x63 and not x46 and x47 and x4 and x5 and not x1 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x62 and x63 and not x46 and x47 and x4 and not x5 and x2 and x3 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( not x62 and x63 and not x46 and x47 and x4 and not x5 and x2 and not x3 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x62 and x63 and not x46 and x47 and x4 and not x5 and not x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x62 and x63 and not x46 and x47 and not x4 and x33 and x34 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and x63 and not x46 and x47 and not x4 and x33 and not x34 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x62 and x63 and not x46 and x47 and not x4 and not x33 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x62 and x63 and not x46 and not x47 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and not x63 and x15 and x16 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x62 and not x63 and x15 and not x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and not x63 and not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      elsif ( not x62 and not x63 and not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x63 and not x15 and x16 and x4 and not x5 and x2 and x3 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( not x62 and not x63 and not x15 and x16 and x4 and not x5 and x2 and not x3 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x63 and not x15 and x16 and x4 and not x5 and not x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and not x63 and not x15 and x16 and not x4 and x2 and x3 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x62 and not x63 and not x15 and x16 and not x4 and x2 and not x3 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x63 and not x15 and x16 and not x4 and not x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      else
         y7 <= '1' ;
         current_bigm2r <= s16;

      end if;

   when s41 =>
      if ( x15 and x16 and x63 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x15 and x16 and not x63 and x62 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x15 and x16 and not x63 and not x62 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x15 and not x16 and x13 and x4 and x63 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x15 and not x16 and x13 and x4 and not x63 and x62 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x15 and not x16 and x13 and x4 and not x63 and not x62 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x15 and not x16 and x13 and not x4 and x62 and x63 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x15 and not x16 and x13 and not x4 and x62 and x63 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( x15 and not x16 and x13 and not x4 and x62 and not x63 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x15 and not x16 and x13 and not x4 and x62 and not x63 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x15 and not x16 and x13 and not x4 and not x62 and x63 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x15 and not x16 and x13 and not x4 and not x62 and x63 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x15 and not x16 and x13 and not x4 and not x62 and not x63 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x15 and not x16 and not x13 and x62 and x63 and x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x15 and not x16 and not x13 and x62 and x63 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x15 and not x16 and not x13 and x62 and x63 and not x14 and not x9 and x7 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x15 and not x16 and not x13 and x62 and x63 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x15 and not x16 and not x13 and x62 and x63 and not x14 and not x9 and not x7 and not x8 ) = '1' then
         current_bigm2r <= s41;

      elsif ( x15 and not x16 and not x13 and x62 and not x63 and x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x15 and not x16 and not x13 and x62 and not x63 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x15 and not x16 and not x13 and x62 and not x63 and not x14 and not x9 and x7 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x15 and not x16 and not x13 and x62 and not x63 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x15 and not x16 and not x13 and x62 and not x63 and not x14 and not x9 and not x7 and not x8 ) = '1' then
         current_bigm2r <= s41;

      elsif ( x15 and not x16 and not x13 and not x62 and x63 and x45 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x15 and not x16 and not x13 and not x62 and x63 and not x45 and x9 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x15 and not x16 and not x13 and not x62 and x63 and not x45 and not x9 and x38 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x15 and not x16 and not x13 and not x62 and x63 and not x45 and not x9 and not x38 and x39 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x15 and not x16 and not x13 and not x62 and x63 and not x45 and not x9 and not x38 and not x39 ) = '1' then
         current_bigm2r <= s41;

      elsif ( x15 and not x16 and not x13 and not x62 and not x63 and x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x15 and not x16 and not x13 and not x62 and not x63 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x15 and not x16 and not x13 and not x62 and not x63 and not x14 and not x9 and x7 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x15 and not x16 and not x13 and not x62 and not x63 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x15 and not x16 and not x13 and not x62 and not x63 and not x14 and not x9 and not x7 and not x8 ) = '1' then
         current_bigm2r <= s41;

      elsif ( not x15 and x62 and x16 and x4 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( not x15 and x62 and x16 and not x4 and x63 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x15 and x62 and x16 and not x4 and x63 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x15 and x62 and x16 and not x4 and not x63 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x15 and x62 and x16 and not x4 and not x63 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x15 and x62 and not x16 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x15 and not x62 and x63 and x47 and x4 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( not x15 and not x62 and x63 and x47 and not x4 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x15 and not x62 and x63 and x47 and not x4 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x15 and not x62 and x63 and not x47 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x15 and not x62 and not x63 and x16 and x4 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( not x15 and not x62 and not x63 and x16 and not x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      else
         y1 <= '1' ;
         current_bigm2r <= s37;

      end if;

   when s42 =>
      if ( x63 and x62 and x40 and x7 and x35 and x1 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( x63 and x62 and x40 and x7 and x35 and not x1 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and x62 and x40 and x7 and not x35 and x1 ) = '1' then
         current_bigm2r <= s42;

      elsif ( x63 and x62 and x40 and x7 and not x35 and not x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and x62 and x40 and not x7 ) = '1' then
         current_bigm2r <= s42;

      elsif ( x63 and x62 and not x40 and x3 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x63 and x62 and not x40 and not x3 and x2 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( x63 and x62 and not x40 and not x3 and not x2 and x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and x62 and not x40 and not x3 and not x2 and not x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and x46 and x16 and x36 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x63 and not x62 and x46 and x16 and not x36 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( x63 and not x62 and x46 and not x16 and x43 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( x63 and not x62 and x46 and not x16 and not x43 ) = '1' then
         current_bigm2r <= s42;

      elsif ( x63 and not x62 and not x46 and x47 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x63 and not x62 and not x46 and not x47 and x44 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( x63 and not x62 and not x46 and not x47 and not x44 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( not x63 and x62 and x16 and x15 and x5 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( not x63 and x62 and x16 and x15 and not x5 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( not x63 and x62 and x16 and not x15 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( not x63 and x62 and not x16 and x15 and x12 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( not x63 and x62 and not x16 and x15 and not x12 ) = '1' then
         current_bigm2r <= s42;

      elsif ( not x63 and x62 and not x16 and not x15 and x13 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x63 and x62 and not x16 and not x15 and not x13 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s41;

      elsif ( not x63 and not x62 and x61 and x35 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and x61 and not x35 and x13 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x63 and not x62 and x61 and not x35 and not x13 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x63 and not x62 and not x61 and x10 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x61 and not x10 and x11 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x63 and not x62 and not x61 and not x10 and not x11 and x7 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      else
         y10 <= '1' ;
         current_bigm2r <= s77;

      end if;

   when s43 =>
      if ( x63 and x62 and x40 and x2 and x8 and x1 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( x63 and x62 and x40 and x2 and x8 and not x1 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and x62 and x40 and x2 and x8 and not x1 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x63 and x62 and x40 and x2 and not x8 and x32 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x63 and x62 and x40 and x2 and not x8 and x32 and not x1 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x63 and x62 and x40 and x2 and not x8 and x32 and not x1 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x63 and x62 and x40 and x2 and not x8 and not x32 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x63 and x62 and x40 and not x2 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and x37 and x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and x62 and not x40 and x37 and not x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and not x40 and not x37 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x63 and not x62 and x11 and x43 and x13 and x10 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x63 and not x62 and x11 and x43 and x13 and not x10 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x11 and x43 and x13 and not x10 and not x34 and x37 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and x11 and x43 and x13 and not x10 and not x34 and not x37 ) = '1' then
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and x11 and x43 and not x13 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x11 and x43 and not x13 and not x34 and x37 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and x11 and x43 and not x13 and not x34 and not x37 ) = '1' then
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and x11 and not x43 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and x11 and not x43 and not x34 and x37 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and x11 and not x43 and not x34 and not x37 ) = '1' then
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and not x11 and x12 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x11 and x12 and not x34 and x37 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and not x11 and x12 and not x34 and not x37 ) = '1' then
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and x14 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and x14 and not x34 and x37 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and x14 and not x34 and not x37 ) = '1' then
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x14 and x41 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x14 and x41 and not x32 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x14 and not x41 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x14 and not x41 and not x34 and x37 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x14 and not x41 and not x34 and not x37 ) = '1' then
         current_bigm2r <= s43;

      elsif ( x63 and not x62 and not x11 and not x12 and not x44 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x63 and not x62 and not x11 and not x12 and not x44 and not x34 and x37 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and not x11 and not x12 and not x44 and not x34 and not x37 ) = '1' then
         current_bigm2r <= s43;

      elsif ( not x63 and x62 and x17 and x18 and x1 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and x17 and x18 and not x1 and x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and x17 and x18 and not x1 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and x17 and not x18 and x35 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x63 and x62 and x17 and not x18 and not x35 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x63 and x62 and not x17 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and not x62 and x61 and x46 and x3 and x23 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x63 and not x62 and x61 and x46 and x3 and not x23 ) = '1' then
         current_bigm2r <= s43;

      elsif ( not x63 and not x62 and x61 and x46 and not x3 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and x61 and not x46 and x2 and x23 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x63 and not x62 and x61 and not x46 and x2 and not x23 ) = '1' then
         current_bigm2r <= s43;

      elsif ( not x63 and not x62 and x61 and not x46 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and not x61 and x10 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and not x61 and not x10 and x11 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x63 and not x62 and not x61 and not x10 and x11 and not x5 and x6 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and not x61 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and not x62 and not x61 and not x10 and not x11 and x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      else
         y3 <= '1' ;
         current_bigm2r <= s94;

      end if;

   when s44 =>
      if ( x62 and x15 and x63 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s93;

      elsif ( x62 and x15 and not x63 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x62 and not x15 and x6 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s91;

      elsif ( x62 and not x15 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( not x62 and x63 and x46 and x16 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x62 and x63 and x46 and not x16 and x37 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( not x62 and x63 and x46 and not x16 and not x37 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and not x46 and x47 and x4 and x36 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x62 and x63 and not x46 and x47 and x4 and not x36 ) = '1' then
         y18 <= '1' ;
         current_bigm2r <= s19;

      elsif ( not x62 and x63 and not x46 and x47 and not x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( not x62 and x63 and not x46 and not x47 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x62 and not x63 and x61 and x22 and x2 and x33 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and not x63 and x61 and x22 and x2 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x63 and x61 and x22 and x2 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x62 and not x63 and x61 and x22 and not x2 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x62 and not x63 and x61 and not x22 and x31 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x62 and not x63 and x61 and not x22 and not x31 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x63 and not x61 and x46 and x3 and x23 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x62 and not x63 and not x61 and x46 and x3 and not x23 ) = '1' then
         current_bigm2r <= s44;

      elsif ( not x62 and not x63 and not x61 and x46 and not x3 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x62 and not x63 and not x61 and not x46 and x2 and x23 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x62 and not x63 and not x61 and not x46 and x2 and not x23 ) = '1' then
         current_bigm2r <= s44;

      else
         y12 <= '1' ;
         current_bigm2r <= s62;

      end if;

   when s45 =>
      if ( x62 and x15 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s95;

      elsif ( x62 and not x15 and x6 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s89;

      elsif ( x62 and not x15 and not x6 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s90;

      elsif ( not x62 and x63 and x15 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s95;

      elsif ( not x62 and x63 and not x15 and x37 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s89;

      elsif ( not x62 and x63 and not x15 and not x37 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s90;

      elsif ( not x62 and not x63 and x61 and x16 and x19 and x33 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and not x63 and x61 and x16 and x19 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x63 and x61 and x16 and x19 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x62 and not x63 and x61 and x16 and not x19 and x30 and x26 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x62 and not x63 and x61 and x16 and not x19 and x30 and x26 and not x1 and x9 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and not x63 and x61 and x16 and not x19 and x30 and x26 and not x1 and x9 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x62 and not x63 and x61 and x16 and not x19 and x30 and x26 and not x1 and not x9 ) = '1' then
         current_bigm2r <= s45;

      elsif ( not x62 and not x63 and x61 and x16 and not x19 and x30 and not x26 and x3 ) = '1' then
         current_bigm2r <= s45;

      elsif ( not x62 and not x63 and x61 and x16 and not x19 and x30 and not x26 and not x3 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x62 and not x63 and x61 and x16 and not x19 and x30 and not x26 and not x3 and not x1 and x9 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and not x63 and x61 and x16 and not x19 and x30 and not x26 and not x3 and not x1 and x9 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x62 and not x63 and x61 and x16 and not x19 and x30 and not x26 and not x3 and not x1 and not x9 ) = '1' then
         current_bigm2r <= s45;

      elsif ( not x62 and not x63 and x61 and x16 and not x19 and not x30 ) = '1' then
         current_bigm2r <= s45;

      elsif ( not x62 and not x63 and x61 and not x16 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x62 and not x63 and not x61 and x28 and x57 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and not x63 and not x61 and x28 and not x57 ) = '1' then
         current_bigm2r <= s45;

      elsif ( not x62 and not x63 and not x61 and not x28 and x27 and x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and not x63 and not x61 and not x28 and x27 and not x8 and x37 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x62 and not x63 and not x61 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and not x63 and not x61 and not x28 and not x27 and x50 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      else
         y8 <= '1' ;
         current_bigm2r <= s45;

      end if;

   when s46 =>
      if ( x62 and x17 and x18 and x1 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x62 and x17 and x18 and not x1 and x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x62 and x17 and x18 and not x1 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( x62 and x17 and not x18 and x7 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x62 and x17 and not x18 and not x7 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x62 and not x17 and x18 and x31 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x62 and not x17 and x18 and not x31 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( x62 and not x17 and not x18 and x19 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x62 and not x17 and not x18 and x19 and x15 and x16 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x62 and not x17 and not x18 and x19 and x15 and x16 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x62 and not x17 and not x18 and x19 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and not x17 and not x18 and x19 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s46;

      elsif ( x62 and not x17 and not x18 and x19 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and not x17 and not x18 and x19 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and not x17 and not x18 and x19 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and not x17 and not x18 and not x19 and x40 and x32 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and not x17 and not x18 and not x19 and x40 and not x32 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x62 and not x17 and not x18 and not x19 and x40 and not x32 and x15 and x16 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x62 and not x17 and not x18 and not x19 and x40 and not x32 and x15 and x16 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x62 and not x17 and not x18 and not x19 and x40 and not x32 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and not x17 and not x18 and not x19 and x40 and not x32 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s46;

      elsif ( x62 and not x17 and not x18 and not x19 and x40 and not x32 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and not x17 and not x18 and not x19 and x40 and not x32 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and not x17 and not x18 and not x19 and x40 and not x32 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and not x17 and not x18 and not x19 and not x40 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x62 and x63 and x11 and x43 and x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x62 and x63 and x11 and x43 and not x9 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and x11 and x43 and not x9 and not x34 and x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and x11 and x43 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x62 and x63 and x11 and x43 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and x11 and not x43 and x44 and x10 and x35 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x62 and x63 and x11 and not x43 and x44 and x10 and not x35 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x62 and x63 and x11 and not x43 and x44 and not x10 and x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x62 and x63 and x11 and not x43 and x44 and not x10 and not x9 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and x11 and not x43 and x44 and not x10 and not x9 and not x34 and x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and x11 and not x43 and x44 and not x10 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x62 and x63 and x11 and not x43 and x44 and not x10 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and x11 and not x43 and not x44 and x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x62 and x63 and x11 and not x43 and not x44 and not x9 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and x11 and not x43 and not x44 and not x9 and not x34 and x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and x11 and not x43 and not x44 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x62 and x63 and x11 and not x43 and not x44 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and not x11 and x12 and x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x62 and x63 and not x11 and x12 and not x9 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and not x11 and x12 and not x9 and not x34 and x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and not x11 and x12 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x62 and x63 and not x11 and x12 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and not x11 and not x12 and x13 and x45 and x41 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x62 and x63 and not x11 and not x12 and x13 and x45 and not x41 and x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x62 and x63 and not x11 and not x12 and x13 and x45 and not x41 and not x9 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and not x11 and not x12 and x13 and x45 and not x41 and not x9 and not x34 and x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and not x11 and not x12 and x13 and x45 and not x41 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x62 and x63 and not x11 and not x12 and x13 and x45 and not x41 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and not x11 and not x12 and x13 and not x45 and x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x62 and x63 and not x11 and not x12 and x13 and not x45 and not x9 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and not x11 and not x12 and x13 and not x45 and not x9 and not x34 and x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and not x11 and not x12 and x13 and not x45 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x62 and x63 and not x11 and not x12 and x13 and not x45 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and not x11 and not x12 and not x13 and x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x62 and x63 and not x11 and not x12 and not x13 and not x9 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x62 and x63 and not x11 and not x12 and not x13 and not x9 and not x34 and x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x62 and x63 and not x11 and not x12 and not x13 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x62 and x63 and not x11 and not x12 and not x13 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_bigm2r <= s46;

      elsif ( not x62 and not x63 and x61 and x25 and x22 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x62 and not x63 and x61 and x25 and not x22 and x6 and x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and not x63 and x61 and x25 and not x22 and x6 and not x8 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x62 and not x63 and x61 and x25 and not x22 and not x6 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and not x63 and x61 and not x25 and x29 ) = '1' then
         y26 <= '1' ;
         current_bigm2r <= s79;

      elsif ( not x62 and not x63 and x61 and not x25 and not x29 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x62 and not x63 and not x61 and x38 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and not x63 and not x61 and not x38 and x50 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      else
         y8 <= '1' ;
         current_bigm2r <= s45;

      end if;

   when s47 =>
      if ( x62 and x44 and x33 and x8 and x1 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( x62 and x44 and x33 and x8 and not x1 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( x62 and x44 and x33 and x8 and not x1 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x62 and x44 and x33 and not x8 and x32 and x37 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x62 and x44 and x33 and not x8 and x32 and not x37 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x62 and x44 and x33 and not x8 and x32 and not x37 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x62 and x44 and x33 and not x8 and not x32 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x62 and x44 and not x33 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x62 and not x44 and x1 and x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x62 and not x44 and x1 and not x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and not x44 and not x1 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x62 and x63 and x55 and x33 and x32 and x8 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( not x62 and x63 and x55 and x33 and x32 and not x8 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x62 and x63 and x55 and x33 and not x32 and x8 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x62 and x63 and x55 and x33 and not x32 and x8 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x62 and x63 and x55 and x33 and not x32 and not x8 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x62 and x63 and x55 and not x33 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x62 and x63 and not x55 and x37 and x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x62 and x63 and not x55 and x37 and not x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and x63 and not x55 and not x37 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x62 and not x63 and x61 and x2 and x8 and x1 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s108;

      elsif ( not x62 and not x63 and x61 and x2 and x8 and not x1 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x62 and not x63 and x61 and x2 and x8 and not x1 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x62 and not x63 and x61 and x2 and not x8 and x32 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x62 and not x63 and x61 and x2 and not x8 and x32 and not x1 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and not x63 and x61 and x2 and not x8 and x32 and not x1 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x62 and not x63 and x61 and x2 and not x8 and not x32 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x62 and not x63 and x61 and not x2 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x62 and not x63 and not x61 and x37 and x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x62 and not x63 and not x61 and x37 and not x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      else
         y9 <= '1' ;
         current_bigm2r <= s50;

      end if;

   when s48 =>
      if ( x62 and x1 and x37 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and x1 and not x37 and x9 ) = '1' then
         current_bigm2r <= s48;

      elsif ( x62 and x1 and not x37 and not x9 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x1 and x9 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and not x1 and not x9 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( not x62 and x63 and x37 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x62 and x63 and not x37 and x40 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x62 and x63 and not x37 and not x40 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x62 and not x63 and x37 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and not x63 and not x37 and x9 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      else
         y10 <= '1' ;
         current_bigm2r <= s44;

      end if;

   when s49 =>
      if ( x62 and x16 and x6 ) = '1' then
         y27 <= '1' ;
         current_bigm2r <= s49;

      elsif ( x62 and x16 and not x6 and x8 and x19 and x63 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x62 and x16 and not x6 and x8 and x19 and not x63 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( x62 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x62 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y26 <= '1' ;
         current_bigm2r <= s79;

      elsif ( x62 and x16 and not x6 and not x8 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x16 and x10 and x63 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x62 and not x16 and x10 and not x63 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( x62 and not x16 and not x10 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and x63 and x16 and x37 ) = '1' then
         y27 <= '1' ;
         current_bigm2r <= s49;

      elsif ( not x62 and x63 and x16 and not x37 and x39 and x19 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( not x62 and x63 and x16 and not x37 and x39 and not x19 and x26 and x5 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x62 and x63 and x16 and not x37 and x39 and not x19 and x26 and not x5 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x62 and x63 and x16 and not x37 and x39 and not x19 and not x26 ) = '1' then
         y26 <= '1' ;
         current_bigm2r <= s79;

      elsif ( not x62 and x63 and x16 and not x37 and not x39 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and x63 and not x16 and x41 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x62 and x63 and not x16 and not x41 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      else
         y6 <= '1' ;
         current_bigm2r <= s9;

      end if;

   when s50 =>
      if ( x63 and x50 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x63 and not x50 ) = '1' then
         current_bigm2r <= s50;

      elsif ( not x63 and x62 and x50 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x63 and x62 and not x50 ) = '1' then
         current_bigm2r <= s50;

      elsif ( not x63 and not x62 and x61 and x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( not x63 and not x62 and x61 and not x10 and x25 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x63 and not x62 and x61 and not x10 and not x25 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( not x63 and not x62 and not x61 and x8 and x53 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x63 and not x62 and not x61 and x8 and not x53 and x37 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      elsif ( not x63 and not x62 and not x61 and x8 and not x53 and not x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x63 and not x62 and not x61 and not x8 and x51 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x63 and not x62 and not x61 and not x8 and not x51 and x37 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s62;

      else
         y10 <= '1' ;
         current_bigm2r <= s44;

      end if;

   when s51 =>
      if ( x62 and x18 and x17 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x18 and x17 and not x5 and x6 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x62 and x18 and x17 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x62 and x18 and not x17 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x62 and x18 and not x17 and x15 and x16 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x62 and x18 and not x17 and x15 and x16 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x62 and x18 and not x17 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and x18 and not x17 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s51;

      elsif ( x62 and x18 and not x17 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and x18 and not x17 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and x18 and not x17 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and not x18 and x17 and x9 and x10 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x62 and not x18 and x17 and x9 and not x10 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x62 and not x18 and x17 and not x9 and x6 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and not x18 and x17 and not x9 and not x6 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( x62 and not x18 and not x17 and x6 and x7 and x39 and x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( x62 and not x18 and not x17 and x6 and x7 and x39 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x62 and not x18 and not x17 and x6 and x7 and x39 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( x62 and not x18 and not x17 and x6 and x7 and not x39 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x62 and not x18 and not x17 and x6 and not x7 and x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and not x18 and not x17 and x6 and not x7 and not x8 and x39 and x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( x62 and not x18 and not x17 and x6 and not x7 and not x8 and x39 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x62 and not x18 and not x17 and x6 and not x7 and not x8 and x39 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s46;

      elsif ( x62 and not x18 and not x17 and x6 and not x7 and not x8 and not x39 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( x62 and not x18 and not x17 and not x6 and x32 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and not x18 and not x17 and not x6 and not x32 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x62 and not x18 and not x17 and not x6 and not x32 and x15 and x16 and not x5 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x62 and not x18 and not x17 and not x6 and not x32 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and not x18 and not x17 and not x6 and not x32 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s51;

      elsif ( x62 and not x18 and not x17 and not x6 and not x32 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and not x18 and not x17 and not x6 and not x32 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and not x18 and not x17 and not x6 and not x32 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x42 and x43 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x62 and x63 and x42 and not x43 and x44 and x10 and x36 and x6 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x62 and x63 and x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and x15 and x47 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s51;

      elsif ( not x62 and x63 and x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and x63 and x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x42 and not x43 and x44 and x10 and x36 and not x6 and not x7 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x62 and x63 and x42 and not x43 and x44 and x10 and not x36 and x35 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x62 and x63 and x42 and not x43 and x44 and x10 and not x36 and not x35 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x62 and x63 and x42 and not x43 and x44 and not x10 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x62 and x63 and x42 and not x43 and not x44 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x62 and x63 and not x42 and x12 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x62 and x63 and not x42 and not x12 and x13 and x14 and x41 and x4 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x62 and x63 and not x42 and not x12 and x13 and x14 and x41 and not x4 ) = '1' then
         current_bigm2r <= s51;

      elsif ( not x62 and x63 and not x42 and not x12 and x13 and x14 and not x41 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x62 and x63 and not x42 and not x12 and x13 and not x14 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x62 and x63 and not x42 and not x12 and not x13 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x62 and not x63 and x38 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      else
         current_bigm2r <= s51;

      end if;

   when s52 =>
      if ( x63 and x62 and x40 and x19 and x28 and x1 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( x63 and x62 and x40 and x19 and x28 and not x1 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and x62 and x40 and x19 and x28 and not x1 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x63 and x62 and x40 and x19 and not x28 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and x40 and not x19 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x63 and x62 and not x40 and x13 and x23 and x51 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and x62 and not x40 and x13 and x23 and not x51 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and x62 and not x40 and x13 and not x23 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and x62 and not x40 and not x13 and x28 and x35 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and x62 and not x40 and not x13 and x28 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and not x13 and x28 and not x35 and x41 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and not x40 and not x13 and x28 and not x35 and not x41 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and not x13 and not x28 and x6 and x35 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( x63 and x62 and not x40 and not x13 and not x28 and x6 and not x35 and x41 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and not x40 and not x13 and not x28 and x6 and not x35 and not x41 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x40 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x63 and not x62 and x15 and x47 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x63 and not x62 and x15 and not x47 and x36 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( x63 and not x62 and x15 and not x47 and not x36 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x63 and not x62 and not x15 and x16 and x35 and x5 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x63 and not x62 and not x15 and x16 and x35 and x5 and not x1 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x15 and x16 and x35 and not x5 and x32 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x63 and not x62 and not x15 and x16 and x35 and not x5 and not x32 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x15 and x16 and not x35 and x32 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x63 and not x62 and not x15 and x16 and not x35 and not x32 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x15 and not x16 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and x62 and x15 and x16 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and x62 and x15 and not x16 and x5 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s36;

      elsif ( not x63 and x62 and x15 and not x16 and not x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and x62 and not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and x62 and not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and not x15 and x16 and x4 and not x5 and x37 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x63 and x62 and not x15 and x16 and x4 and not x5 and not x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and not x15 and x16 and not x4 and x37 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x63 and x62 and not x15 and x16 and not x4 and not x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and not x15 and not x16 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and x61 and x13 and x23 and x51 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and not x62 and x61 and x13 and x23 and not x51 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and not x62 and x61 and x13 and not x23 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and not x62 and x61 and not x13 and x28 and x35 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and not x62 and x61 and not x13 and x28 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and not x13 and x28 and not x35 and x60 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and x61 and not x13 and x28 and not x35 and not x60 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and not x13 and not x28 and x6 and x35 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s80;

      elsif ( not x63 and not x62 and x61 and not x13 and not x28 and x6 and not x35 and x60 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and x61 and not x13 and not x28 and x6 and not x35 and not x60 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and not x62 and not x61 and x11 and x10 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x63 and not x62 and not x61 and x11 and not x10 and x1 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s23;

      elsif ( not x63 and not x62 and not x61 and x11 and not x10 and not x1 and x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and not x62 and not x61 and x11 and not x10 and not x1 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x63 and not x62 and not x61 and not x11 and x10 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x61 and not x11 and not x10 and x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      else
         y7 <= '1' ;
         current_bigm2r <= s128;

      end if;

   when s53 =>
      if ( x63 and x62 and x37 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x63 and x62 and not x37 and x9 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x63 and x62 and not x37 and not x9 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x63 and not x62 and x11 and x43 and x13 and x8 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and x11 and x43 and x13 and not x8 and x1 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and x11 and x43 and x13 and not x8 and not x1 ) = '1' then
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and x11 and x43 and not x13 and x10 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x63 and not x62 and x11 and x43 and not x13 and not x10 and x8 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and x11 and x43 and not x13 and not x10 and not x8 and x1 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and x11 and x43 and not x13 and not x10 and not x8 and not x1 ) = '1' then
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and x11 and not x43 and x8 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and x11 and not x43 and not x8 and x1 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and x11 and not x43 and not x8 and not x1 ) = '1' then
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and not x11 and x12 and x8 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and not x11 and x12 and not x8 and x1 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and not x11 and x12 and not x8 and not x1 ) = '1' then
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and x45 and x8 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and x45 and not x8 and x1 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and x45 and not x8 and not x1 ) = '1' then
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and x41 and x40 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and not x7 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and not x41 and x8 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and not x41 and not x8 and x1 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and not x11 and not x12 and x44 and not x45 and not x41 and not x8 and not x1 ) = '1' then
         current_bigm2r <= s53;

      elsif ( x63 and not x62 and not x11 and not x12 and not x44 and x8 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and not x11 and not x12 and not x44 and not x8 and x1 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( x63 and not x62 and not x11 and not x12 and not x44 and not x8 and not x1 ) = '1' then
         current_bigm2r <= s53;

      elsif ( not x63 and x62 and x17 and x18 and x6 and x9 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( not x63 and x62 and x17 and x18 and x6 and not x9 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and x17 and x18 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x63 and x62 and x17 and not x18 and x10 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and x17 and not x18 and not x10 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( not x63 and x62 and not x17 and x8 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and x62 and not x17 and not x8 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x63 and not x62 and x61 and x17 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x63 and not x62 and x61 and not x17 and x57 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x63 and not x62 and x61 and not x17 and not x57 ) = '1' then
         current_bigm2r <= s53;

      elsif ( not x63 and not x62 and not x61 and x6 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      else
         y15 <= '1' ;
         current_bigm2r <= s53;

      end if;

   when s54 =>
      if ( x63 and x62 and x40 and x12 and x27 and x33 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x63 and x62 and x40 and x12 and x27 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and x40 and x12 and x27 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and x62 and x40 and x12 and not x27 and x29 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x63 and x62 and x40 and x12 and not x27 and x29 and not x1 ) = '1' then
         current_bigm2r <= s54;

      elsif ( x63 and x62 and x40 and x12 and not x27 and not x29 ) = '1' then
         current_bigm2r <= s54;

      elsif ( x63 and x62 and x40 and not x12 and x29 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( x63 and x62 and x40 and not x12 and not x29 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( x63 and x62 and not x40 and x17 ) = '1' then
         y30 <= '1' ;
         current_bigm2r <= s110;

      elsif ( x63 and x62 and not x40 and not x17 and x43 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x63 and x62 and not x40 and not x17 and not x43 ) = '1' then
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and x46 and x16 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x63 and not x62 and x46 and not x16 and x12 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x63 and not x62 and x46 and not x16 and not x12 ) = '1' then
         current_bigm2r <= s54;

      elsif ( x63 and not x62 and not x46 and x47 and x4 ) = '1' then
         y18 <= '1' ;
         current_bigm2r <= s19;

      elsif ( x63 and not x62 and not x46 and x47 and not x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x63 and not x62 and not x46 and not x47 and x14 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x63 and not x62 and not x46 and not x47 and not x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and x62 and x17 and x18 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x63 and x62 and x17 and x18 and not x5 and x6 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and x17 and x18 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and x17 and not x18 and x14 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s5;

      elsif ( not x63 and x62 and x17 and not x18 and not x14 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and x17 and not x18 and not x14 and x15 and x16 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and x17 and not x18 and not x14 and x15 and x16 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and x17 and not x18 and not x14 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x17 and not x18 and not x14 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s54;

      elsif ( not x63 and x62 and x17 and not x18 and not x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x17 and not x18 and not x14 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and x17 and not x18 and not x14 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x17 and x6 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x63 and x62 and not x17 and not x6 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x63 and not x62 and x61 and x8 and x53 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x63 and not x62 and x61 and x8 and not x53 and x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and x61 and x8 and not x53 and not x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x63 and not x62 and x61 and not x8 and x51 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x63 and not x62 and x61 and not x8 and not x51 and x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and x61 and not x8 and not x51 and not x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x63 and not x62 and not x61 and x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x63 and not x62 and not x61 and not x10 and x11 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x63 and not x62 and not x61 and not x10 and not x11 and x12 and x8 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and not x62 and not x61 and not x10 and not x11 and x12 and not x8 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      else
         y19 <= '1' ;
         current_bigm2r <= s130;

      end if;

   when s55 =>
      if ( x63 and x62 and x38 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x63 and x62 and not x38 ) = '1' then
         current_bigm2r <= s55;

      elsif ( x63 and not x62 and x38 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( x63 and not x62 and not x38 ) = '1' then
         current_bigm2r <= s55;

      elsif ( not x63 and x62 and x38 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x63 and x62 and not x38 ) = '1' then
         current_bigm2r <= s55;

      elsif ( not x63 and not x62 and x15 and x16 and x5 and x1 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x63 and not x62 and x15 and x16 and x5 and not x1 and x2 and x3 and x4 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      elsif ( not x63 and not x62 and x15 and x16 and x5 and not x1 and x2 and x3 and not x4 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x15 and x16 and x5 and not x1 and x2 and not x3 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x15 and x16 and x5 and not x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x15 and x16 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x15 and x16 and not x5 and not x6 and x1 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x63 and not x62 and x15 and x16 and not x5 and not x6 and not x1 and x2 and x3 and x4 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      elsif ( not x63 and not x62 and x15 and x16 and not x5 and not x6 and not x1 and x2 and x3 and not x4 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x63 and not x62 and x15 and x16 and not x5 and not x6 and not x1 and x2 and not x3 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x15 and x16 and not x5 and not x6 and not x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x15 and not x16 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and not x62 and x15 and not x16 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s7;

      elsif ( not x63 and not x62 and not x15 and x16 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      else
         y1 <= '1' ;
         current_bigm2r <= s37;

      end if;

   when s56 =>
      if ( x62 and x15 and x16 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( x62 and x15 and not x16 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( x62 and x15 and not x16 and not x11 and x10 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x62 and x15 and not x16 and not x11 and not x10 ) = '1' then
         current_bigm2r <= s56;

      elsif ( x62 and not x15 and x16 and x3 and x63 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x62 and not x15 and x16 and x3 and not x63 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x62 and not x15 and x16 and not x3 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x62 and not x15 and not x16 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and x63 and x46 and x16 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( not x62 and x63 and x46 and not x16 and x42 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x62 and x63 and x46 and not x16 and not x42 and x10 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( not x62 and x63 and x46 and not x16 and not x42 and not x10 ) = '1' then
         current_bigm2r <= s56;

      elsif ( not x62 and x63 and not x46 and x47 and x3 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x62 and x63 and not x46 and x47 and not x3 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( not x62 and x63 and not x46 and not x47 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and not x63 and x16 and x15 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( not x62 and not x63 and x16 and not x15 and x3 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x62 and not x63 and x16 and not x15 and not x3 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( not x62 and not x63 and not x16 and x15 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x62 and not x63 and not x16 and x15 and not x11 and x10 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      elsif ( not x62 and not x63 and not x16 and x15 and not x11 and not x10 ) = '1' then
         current_bigm2r <= s56;

      else
         y1 <= '1' ;
         current_bigm2r <= s37;

      end if;

   when s57 =>
      if ( x62 and x63 and x40 and x33 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and x63 and x40 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x62 and x63 and x40 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x62 and x63 and not x40 and x50 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( x62 and x63 and not x40 and not x50 ) = '1' then
         current_bigm2r <= s57;

      elsif ( x62 and not x63 and x44 and x33 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and not x63 and x44 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and not x63 and x44 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( x62 and not x63 and not x44 and x50 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( x62 and not x63 and not x44 and not x50 ) = '1' then
         current_bigm2r <= s57;

      elsif ( not x62 and x63 and x33 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x62 and x63 and not x33 ) = '1' then
         current_bigm2r <= s57;

      else
         y18 <= '1' ;
         current_bigm2r <= s131;

      end if;

   when s58 =>
      if ( x62 and x16 and x15 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x62 and x16 and not x15 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x62 and x16 and not x15 and x4 and not x5 ) = '1' then
         y18 <= '1' ;
         current_bigm2r <= s19;

      elsif ( x62 and x16 and not x15 and not x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x62 and not x16 and x15 and x6 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s20;

      elsif ( x62 and not x16 and x15 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( x62 and not x16 and not x15 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x62 and x63 and x42 and x43 and x35 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and x42 and x43 and not x35 ) = '1' then
         current_bigm2r <= s58;

      elsif ( not x62 and x63 and x42 and not x43 and x13 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and x42 and not x43 and x13 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and x63 and x42 and not x43 and x13 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and x42 and not x43 and x13 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x42 and not x43 and x13 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s58;

      elsif ( not x62 and x63 and x42 and not x43 and x13 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x42 and not x43 and x13 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and x63 and x42 and not x43 and x13 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and x42 and not x43 and not x13 and x35 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and x42 and not x43 and not x13 and not x35 ) = '1' then
         current_bigm2r <= s58;

      elsif ( not x62 and x63 and not x42 and x12 and x35 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x42 and x12 and not x35 ) = '1' then
         current_bigm2r <= s58;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and x14 and x35 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and x14 and not x35 ) = '1' then
         current_bigm2r <= s58;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and not x14 and x15 and x47 and x36 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and not x14 and x15 and x47 and not x36 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and not x14 and x15 and x47 and not x36 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and not x14 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and not x14 and x15 and not x47 and not x1 ) = '1' then
         current_bigm2r <= s58;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and not x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and not x14 and not x15 and not x16 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and x63 and not x42 and not x12 and x44 and not x14 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and x63 and not x42 and not x12 and not x44 and x35 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( not x62 and x63 and not x42 and not x12 and not x44 and not x35 ) = '1' then
         current_bigm2r <= s58;

      elsif ( not x62 and not x63 and x10 and x61 and x12 and x23 ) = '1' then
         y23 <= '1' ;
         current_bigm2r <= s132;

      elsif ( not x62 and not x63 and x10 and x61 and x12 and not x23 and x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x62 and not x63 and x10 and x61 and x12 and not x23 and not x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x63 and x10 and x61 and not x12 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x62 and not x63 and x10 and not x61 and x39 and x46 and x51 and x36 ) = '1' then
         current_bigm2r <= s58;

      elsif ( not x62 and not x63 and x10 and not x61 and x39 and x46 and x51 and not x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x62 and not x63 and x10 and not x61 and x39 and x46 and not x51 and x36 ) = '1' then
         current_bigm2r <= s58;

      elsif ( not x62 and not x63 and x10 and not x61 and x39 and x46 and not x51 and not x36 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x62 and not x63 and x10 and not x61 and x39 and not x46 and x36 ) = '1' then
         current_bigm2r <= s58;

      elsif ( not x62 and not x63 and x10 and not x61 and x39 and not x46 and not x36 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s121;

      elsif ( not x62 and not x63 and x10 and not x61 and not x39 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x62 and not x63 and not x10 and x61 and x1 and x22 ) = '1' then
         y26 <= '1' ;
         current_bigm2r <= s79;

      elsif ( not x62 and not x63 and not x10 and x61 and x1 and not x22 and x2 and x11 and x5 and x3 ) = '1' then
         current_bigm2r <= s58;

      elsif ( not x62 and not x63 and not x10 and x61 and x1 and not x22 and x2 and x11 and x5 and not x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x62 and not x63 and not x10 and x61 and x1 and not x22 and x2 and x11 and not x5 and x3 ) = '1' then
         current_bigm2r <= s58;

      elsif ( not x62 and not x63 and not x10 and x61 and x1 and not x22 and x2 and x11 and not x5 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x62 and not x63 and not x10 and x61 and x1 and not x22 and x2 and not x11 and x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x62 and not x63 and not x10 and x61 and x1 and not x22 and x2 and not x11 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x62 and not x63 and not x10 and x61 and x1 and not x22 and not x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s121;

      elsif ( not x62 and not x63 and not x10 and x61 and not x1 and x11 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x63 and not x10 and x61 and not x1 and x11 and not x4 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x62 and not x63 and not x10 and x61 and not x1 and not x11 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x63 and not x10 and not x61 and x11 and x34 and x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and not x63 and not x10 and not x61 and x11 and x34 and not x8 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x62 and not x63 and not x10 and not x61 and x11 and x34 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x62 and not x63 and not x10 and not x61 and x11 and not x34 and x32 and x7 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and not x63 and not x10 and not x61 and x11 and not x34 and x32 and not x7 and x54 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x62 and not x63 and not x10 and not x61 and x11 and not x34 and x32 and not x7 and x54 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x62 and not x63 and not x10 and not x61 and x11 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s121;

      elsif ( not x62 and not x63 and not x10 and not x61 and x11 and not x34 and not x32 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x62 and not x63 and not x10 and not x61 and not x11 and x12 and x20 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s121;

      elsif ( not x62 and not x63 and not x10 and not x61 and not x11 and x12 and not x20 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x63 and not x10 and not x61 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x62 and not x63 and not x10 and not x61 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x62 and not x63 and not x10 and not x61 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x62 and not x63 and not x10 and not x61 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x62 and not x63 and not x10 and not x61 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s121;

      else
         y6 <= '1' ;
         current_bigm2r <= s9;

      end if;

   when s59 =>
      if ( x62 and x26 and x28 and x9 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( x62 and x26 and x28 and not x9 and x23 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( x62 and x26 and x28 and not x9 and not x23 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x62 and x26 and not x28 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x62 and not x26 and x27 and x4 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x62 and not x26 and x27 and not x4 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x62 and not x26 and not x27 and x28 and x32 and x24 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s105;

      elsif ( x62 and not x26 and not x27 and x28 and x32 and not x24 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x62 and not x26 and not x27 and x28 and not x32 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x62 and not x26 and not x27 and not x28 and x18 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( x62 and not x26 and not x27 and not x28 and x18 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( x62 and not x26 and not x27 and not x28 and x18 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x62 and not x26 and not x27 and not x28 and not x18 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x62 and x63 and x26 and x28 and x9 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x62 and x63 and x26 and x28 and not x9 and x23 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x62 and x63 and x26 and x28 and not x9 and not x23 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x62 and x63 and x26 and not x28 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x62 and x63 and not x26 and x27 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x62 and x63 and not x26 and x27 and not x35 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x62 and x63 and not x26 and not x27 and x28 and x2 and x24 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s105;

      elsif ( not x62 and x63 and not x26 and not x27 and x28 and x2 and not x24 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x62 and x63 and not x26 and not x27 and x28 and not x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x62 and x63 and not x26 and not x27 and not x28 and x49 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x62 and x63 and not x26 and not x27 and not x28 and x49 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( not x62 and x63 and not x26 and not x27 and not x28 and x49 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x62 and x63 and not x26 and not x27 and not x28 and not x49 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x62 and not x63 and x15 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and not x15 and x8 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s123;

      elsif ( not x62 and not x63 and not x15 and not x8 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s123;

      elsif ( not x62 and not x63 and not x15 and not x8 and not x9 and x10 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and not x15 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x62 and not x63 and not x15 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s134;

      else
         current_bigm2r <= s59;

      end if;

   when s60 =>
      if ( x63 and x62 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x63 and x62 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      else
         y4 <= '1' ;
         current_bigm2r <= s135;

      end if;

   when s61 =>
      if ( x61 and x33 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x61 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x61 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x61 and x50 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      else
         current_bigm2r <= s61;

      end if;

   when s62 =>
      if ( x15 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( x15 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s136;

      else
         y1 <= '1' ;
         current_bigm2r <= s136;

      end if;

   when s63 =>
      if ( x62 and x16 and x9 ) = '1' then
         y27 <= '1' ;
         current_bigm2r <= s49;

      elsif ( x62 and x16 and not x9 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( x62 and not x16 and x63 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x62 and not x16 and not x63 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( not x62 and x47 and x9 ) = '1' then
         y27 <= '1' ;
         current_bigm2r <= s49;

      elsif ( not x62 and x47 and not x9 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      else
         y12 <= '1' ;
         current_bigm2r <= s25;

      end if;

   when s64 =>
      if ( x62 and x63 and x40 and x25 and x22 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and x63 and x40 and x25 and not x22 and x6 and x8 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and x63 and x40 and x25 and not x22 and x6 and not x8 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and x63 and x40 and x25 and not x22 and not x6 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and x63 and x40 and not x25 and x29 ) = '1' then
         y29 <= '1' ;
         current_bigm2r <= s26;

      elsif ( x62 and x63 and x40 and not x25 and not x29 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x62 and x63 and not x40 and x38 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and x63 and not x40 and not x38 and x50 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and x63 and not x40 and not x38 and not x50 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x62 and not x63 and x44 and x25 and x22 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x63 and x44 and x25 and not x22 and x6 and x8 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and not x63 and x44 and x25 and not x22 and x6 and not x8 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x63 and x44 and x25 and not x22 and not x6 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and not x63 and x44 and not x25 and x29 ) = '1' then
         y29 <= '1' ;
         current_bigm2r <= s26;

      elsif ( x62 and not x63 and x44 and not x25 and not x29 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x62 and not x63 and not x44 and x38 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and not x63 and not x44 and not x38 and x50 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x62 and not x63 and not x44 and not x38 and not x50 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x62 and x55 and x25 and x52 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and x55 and x25 and not x52 and x6 and x39 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x62 and x55 and x25 and not x52 and x6 and not x39 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and x55 and x25 and not x52 and not x6 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x62 and x55 and not x25 and x29 ) = '1' then
         y29 <= '1' ;
         current_bigm2r <= s26;

      elsif ( not x62 and x55 and not x25 and not x29 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x62 and not x55 and x38 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x62 and not x55 and not x38 and x50 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      else
         y38 <= '1' ;
         current_bigm2r <= s66;

      end if;

   when s65 =>
      if ( x15 and x62 and x63 and x1 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s98;

      elsif ( x15 and x62 and x63 and not x1 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s137;

      elsif ( x15 and x62 and not x63 and x37 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s98;

      elsif ( x15 and x62 and not x63 and not x37 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s137;

      elsif ( x15 and not x62 and x32 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s98;

      elsif ( x15 and not x62 and not x32 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s137;

      else
         y31 <= '1' ;
         current_bigm2r <= s137;

      end if;

   when s66 =>
      if ( x62 and x63 and x40 and x16 and x19 and x33 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and x63 and x40 and x16 and x19 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x62 and x63 and x40 and x16 and x19 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x62 and x63 and x40 and x16 and not x19 and x30 and x26 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x62 and x63 and x40 and x16 and not x19 and x30 and x26 and not x1 ) = '1' then
         current_bigm2r <= s66;

      elsif ( x62 and x63 and x40 and x16 and not x19 and x30 and not x26 and x3 ) = '1' then
         current_bigm2r <= s66;

      elsif ( x62 and x63 and x40 and x16 and not x19 and x30 and not x26 and not x3 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x62 and x63 and x40 and x16 and not x19 and x30 and not x26 and not x3 and not x1 ) = '1' then
         current_bigm2r <= s66;

      elsif ( x62 and x63 and x40 and x16 and not x19 and not x30 ) = '1' then
         current_bigm2r <= s66;

      elsif ( x62 and x63 and x40 and not x16 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and x63 and not x40 and x28 and x43 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and x63 and not x40 and x28 and not x43 ) = '1' then
         current_bigm2r <= s66;

      elsif ( x62 and x63 and not x40 and not x28 and x27 and x8 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and x63 and not x40 and not x28 and x27 and not x8 and x37 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and x63 and not x40 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and x63 and not x40 and not x28 and not x27 and x50 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x62 and x63 and not x40 and not x28 and not x27 and not x50 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x62 and not x63 and x44 and x16 and x19 and x33 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and not x63 and x44 and x16 and x19 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and not x63 and x44 and x16 and x19 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( x62 and not x63 and x44 and x16 and not x19 and x30 and x26 and x1 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x62 and not x63 and x44 and x16 and not x19 and x30 and x26 and not x1 and x37 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x62 and not x63 and x44 and x16 and not x19 and x30 and x26 and not x1 and x37 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x62 and not x63 and x44 and x16 and not x19 and x30 and x26 and not x1 and not x37 ) = '1' then
         current_bigm2r <= s66;

      elsif ( x62 and not x63 and x44 and x16 and not x19 and x30 and not x26 and x1 and x3 ) = '1' then
         current_bigm2r <= s66;

      elsif ( x62 and not x63 and x44 and x16 and not x19 and x30 and not x26 and x1 and not x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x62 and not x63 and x44 and x16 and not x19 and x30 and not x26 and not x1 and x37 and x43 ) = '1' then
         current_bigm2r <= s66;

      elsif ( x62 and not x63 and x44 and x16 and not x19 and x30 and not x26 and not x1 and x37 and not x43 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x62 and not x63 and x44 and x16 and not x19 and x30 and not x26 and not x1 and x37 and not x43 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( x62 and not x63 and x44 and x16 and not x19 and x30 and not x26 and not x1 and not x37 ) = '1' then
         current_bigm2r <= s66;

      elsif ( x62 and not x63 and x44 and x16 and not x19 and not x30 ) = '1' then
         current_bigm2r <= s66;

      elsif ( x62 and not x63 and x44 and not x16 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x63 and not x44 and x28 and x49 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and not x63 and not x44 and x28 and not x49 ) = '1' then
         current_bigm2r <= s66;

      elsif ( x62 and not x63 and not x44 and not x28 and x27 and x8 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x62 and not x63 and not x44 and not x28 and x27 and not x8 and x36 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x63 and not x44 and not x28 and x27 and not x8 and not x36 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and not x63 and not x44 and not x28 and not x27 and x50 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x62 and not x63 and not x44 and not x28 and not x27 and not x50 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x62 and x55 and x16 and x50 and x33 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x62 and x55 and x16 and x50 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and x55 and x16 and x50 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x62 and x55 and x16 and not x50 and x32 and x30 and x26 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x62 and x55 and x16 and not x50 and x32 and x30 and not x26 and x34 ) = '1' then
         current_bigm2r <= s66;

      elsif ( not x62 and x55 and x16 and not x50 and x32 and x30 and not x26 and not x34 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x62 and x55 and x16 and not x50 and x32 and not x30 ) = '1' then
         current_bigm2r <= s66;

      elsif ( not x62 and x55 and x16 and not x50 and not x32 and x30 and x26 and x4 and x1 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x62 and x55 and x16 and not x50 and not x32 and x30 and x26 and x4 and not x1 ) = '1' then
         current_bigm2r <= s66;

      elsif ( not x62 and x55 and x16 and not x50 and not x32 and x30 and x26 and not x4 and x1 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( not x62 and x55 and x16 and not x50 and not x32 and x30 and x26 and not x4 and not x1 ) = '1' then
         current_bigm2r <= s66;

      elsif ( not x62 and x55 and x16 and not x50 and not x32 and x30 and not x26 and x3 ) = '1' then
         current_bigm2r <= s66;

      elsif ( not x62 and x55 and x16 and not x50 and not x32 and x30 and not x26 and not x3 and x4 and x1 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x62 and x55 and x16 and not x50 and not x32 and x30 and not x26 and not x3 and x4 and not x1 ) = '1' then
         current_bigm2r <= s66;

      elsif ( not x62 and x55 and x16 and not x50 and not x32 and x30 and not x26 and not x3 and not x4 and x1 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( not x62 and x55 and x16 and not x50 and not x32 and x30 and not x26 and not x3 and not x4 and not x1 ) = '1' then
         current_bigm2r <= s66;

      elsif ( not x62 and x55 and x16 and not x50 and not x32 and not x30 ) = '1' then
         current_bigm2r <= s66;

      elsif ( not x62 and x55 and not x16 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and not x55 and x28 and x57 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x62 and not x55 and x28 and not x57 ) = '1' then
         current_bigm2r <= s66;

      elsif ( not x62 and not x55 and not x28 and x27 and x8 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( not x62 and not x55 and not x28 and x27 and not x8 and x37 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and not x55 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x62 and not x55 and not x28 and not x27 and x50 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      else
         y38 <= '1' ;
         current_bigm2r <= s66;

      end if;

   when s67 =>
      if ( x63 and x62 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x63 and not x62 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x63 and x62 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x63 and not x62 and x61 and x7 and x35 and x1 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s108;

      elsif ( not x63 and not x62 and x61 and x7 and x35 and not x1 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and not x62 and x61 and x7 and not x35 and x1 ) = '1' then
         current_bigm2r <= s67;

      elsif ( not x63 and not x62 and x61 and x7 and not x35 and not x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x63 and not x62 and x61 and not x7 ) = '1' then
         current_bigm2r <= s67;

      elsif ( not x63 and not x62 and not x61 and x3 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x63 and not x62 and not x61 and not x3 and x2 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( not x63 and not x62 and not x61 and not x3 and not x2 and x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      else
         y3 <= '1' ;
         current_bigm2r <= s15;

      end if;

   when s68 =>
      if ( x16 and x9 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s13;

      elsif ( x16 and not x9 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s108;

      else
         y12 <= '1' ;
         current_bigm2r <= s4;

      end if;

   when s69 =>
      if ( x62 and x63 and x40 and x13 and x23 and x51 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and x40 and x13 and x23 and not x51 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and x40 and x13 and not x23 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and x40 and not x13 and x28 and x35 and x5 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and x40 and not x13 and x28 and x35 and not x5 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x13 and x28 and not x35 and x41 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and x40 and not x13 and x28 and not x35 and not x41 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x13 and not x28 and x6 and x35 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( x62 and x63 and x40 and not x13 and not x28 and x6 and not x35 and x41 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and x40 and not x13 and not x28 and x6 and not x35 and not x41 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x63 and not x40 and x11 and x10 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and x63 and not x40 and x11 and not x10 and x1 ) = '1' then
         y51 <= '1' ;
         current_bigm2r <= s83;

      elsif ( x62 and x63 and not x40 and x11 and not x10 and not x1 and x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and x11 and not x10 and not x1 and not x3 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and x63 and not x40 and not x11 and x10 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and not x40 and not x11 and not x10 and x5 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and not x40 and not x11 and not x10 and not x5 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and not x63 and x44 and x13 and x23 and x51 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and x44 and x13 and x23 and not x51 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and x44 and x13 and not x23 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and x44 and not x13 and x28 and x35 and x5 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and x44 and not x13 and x28 and x35 and not x5 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and not x13 and x28 and not x35 and x45 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and x44 and not x13 and x28 and not x35 and not x45 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and not x13 and not x28 and x6 and x35 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s100;

      elsif ( x62 and not x63 and x44 and not x13 and not x28 and x6 and not x35 and x45 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and x44 and not x13 and not x28 and x6 and not x35 and not x45 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and not x63 and not x44 and x10 and x11 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and not x63 and not x44 and x10 and not x11 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and x37 ) = '1' then
         y52 <= '1' ;
         current_bigm2r <= s86;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and not x37 and x41 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and not x37 and not x41 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and x5 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and not x5 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x62 and x55 and x44 and x23 and x51 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( not x62 and x55 and x44 and x23 and not x51 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and x55 and x44 and not x23 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( not x62 and x55 and not x44 and x28 and x35 and x36 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( not x62 and x55 and not x44 and x28 and x35 and not x36 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x44 and x28 and not x35 and x58 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x55 and not x44 and x28 and not x35 and not x58 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x44 and not x28 and x37 and x35 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s140;

      elsif ( not x62 and x55 and not x44 and not x28 and x37 and not x35 and x58 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x55 and not x44 and not x28 and x37 and not x35 and not x58 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x44 and not x28 and not x37 and x39 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x44 and not x28 and not x37 and not x39 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x55 and x41 and x11 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( not x62 and not x55 and x41 and not x11 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and not x55 and not x41 and x42 and x32 ) = '1' then
         y54 <= '1' ;
         current_bigm2r <= s141;

      elsif ( not x62 and not x55 and not x41 and x42 and not x32 and x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and not x41 and x42 and not x32 and not x3 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( not x62 and not x55 and not x41 and not x42 and x5 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      else
         y7 <= '1' ;
         current_bigm2r <= s128;

      end if;

   when s70 =>
      if ( x15 and x16 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x15 and not x16 and x62 and x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x15 and not x16 and x62 and not x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( x15 and not x16 and not x62 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x15 and x62 and x16 and x4 and x5 and x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x15 and x62 and x16 and x4 and x5 and not x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x15 and x62 and x16 and x4 and not x5 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x15 and x62 and x16 and not x4 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x15 and x62 and not x16 and x12 and x13 and x3 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( not x15 and x62 and not x16 and x12 and x13 and not x3 and x14 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( not x15 and x62 and not x16 and x12 and x13 and not x3 and not x14 and x63 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x15 and x62 and not x16 and x12 and x13 and not x3 and not x14 and not x63 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x15 and x62 and not x16 and x12 and not x13 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x15 and x62 and not x16 and not x12 and x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x15 and x62 and not x16 and not x12 and not x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x15 and not x62 and x47 and x4 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x15 and not x62 and x47 and x4 and not x5 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x15 and not x62 and x47 and not x4 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x15 and not x62 and not x47 and x43 and x44 and x34 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( not x15 and not x62 and not x47 and x43 and x44 and not x34 and x14 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s35;

      elsif ( not x15 and not x62 and not x47 and x43 and x44 and not x34 and not x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x15 and not x62 and not x47 and x43 and not x44 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      else
         y10 <= '1' ;
         current_bigm2r <= s44;

      end if;

   when s71 =>
      if ( x62 and x12 and x15 and x13 and x3 and x63 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s92;

      elsif ( x62 and x12 and x15 and x13 and x3 and not x63 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s140;

      elsif ( x62 and x12 and x15 and x13 and not x3 and x14 and x63 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s92;

      elsif ( x62 and x12 and x15 and x13 and not x3 and x14 and not x63 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s140;

      elsif ( x62 and x12 and x15 and x13 and not x3 and not x14 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s22;

      elsif ( x62 and x12 and x15 and not x13 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( x62 and x12 and not x15 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x62 and not x12 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( not x62 and x63 and x46 and x12 and x13 and x3 ) = '1' then
         y47 <= '1' ;
         current_bigm2r <= s142;

      elsif ( not x62 and x63 and x46 and x12 and x13 and not x3 and x14 ) = '1' then
         y47 <= '1' ;
         current_bigm2r <= s142;

      elsif ( not x62 and x63 and x46 and x12 and x13 and not x3 and not x14 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s92;

      elsif ( not x62 and x63 and x46 and x12 and not x13 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( not x62 and x63 and x46 and not x12 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and x63 and not x46 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and not x63 and x16 and x15 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x62 and not x63 and x16 and not x15 and x4 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and not x63 and x16 and not x15 and x4 and not x5 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x62 and not x63 and x16 and not x15 and not x4 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s40;

      elsif ( not x62 and not x63 and not x16 and x15 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and not x63 and not x16 and not x15 and x12 and x13 and x3 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( not x62 and not x63 and not x16 and not x15 and x12 and x13 and not x3 and x14 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s75;

      elsif ( not x62 and not x63 and not x16 and not x15 and x12 and x13 and not x3 and not x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( not x62 and not x63 and not x16 and not x15 and x12 and not x13 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      else
         y10 <= '1' ;
         current_bigm2r <= s2;

      end if;

   when s72 =>
      if ( x62 and x63 and x40 and x10 and x39 and x46 and x51 and x36 ) = '1' then
         current_bigm2r <= s72;

      elsif ( x62 and x63 and x40 and x10 and x39 and x46 and x51 and not x36 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and x40 and x10 and x39 and x46 and not x51 and x36 ) = '1' then
         current_bigm2r <= s72;

      elsif ( x62 and x63 and x40 and x10 and x39 and x46 and not x51 and not x36 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and x40 and x10 and x39 and not x46 and x36 ) = '1' then
         current_bigm2r <= s72;

      elsif ( x62 and x63 and x40 and x10 and x39 and not x46 and not x36 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and x63 and x40 and x10 and not x39 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x62 and x63 and x40 and not x10 and x11 and x34 and x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x62 and x63 and x40 and not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and x40 and not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x62 and x63 and x40 and not x10 and x11 and not x34 and x32 and not x7 and x45 and x5 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and x40 and not x10 and x11 and not x34 and x32 and not x7 and x45 and not x5 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x10 and x11 and not x34 and x32 and not x7 and not x45 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and x63 and x40 and not x10 and x11 and not x34 and not x32 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and x63 and x40 and not x10 and not x11 and x12 and x20 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and x63 and x40 and not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and x40 and not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and x63 and x40 and not x10 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and x63 and x40 and not x10 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x10 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x10 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and x63 and x40 and not x10 and not x11 and not x12 and not x13 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and x10 and x11 and x1 and x2 and x4 and x5 and x3 ) = '1' then
         current_bigm2r <= s72;

      elsif ( x62 and x63 and not x40 and x10 and x11 and x1 and x2 and x4 and x5 and not x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and x10 and x11 and x1 and x2 and x4 and not x5 and x3 ) = '1' then
         current_bigm2r <= s72;

      elsif ( x62 and x63 and not x40 and x10 and x11 and x1 and x2 and x4 and not x5 and not x3 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and x63 and not x40 and x10 and x11 and x1 and x2 and not x4 and x3 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and not x40 and x10 and x11 and x1 and x2 and not x4 and not x3 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and x63 and not x40 and x10 and x11 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and x63 and not x40 and x10 and x11 and not x1 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and not x40 and x10 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and x63 and not x40 and x10 and not x11 and not x12 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and x63 and not x40 and not x10 and x11 and x1 ) = '1' then
         y50 <= '1' ;
         current_bigm2r <= s144;

      elsif ( x62 and x63 and not x40 and not x10 and x11 and not x1 and x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and x63 and not x40 and not x10 and x11 and not x1 and not x2 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and x12 and x1 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and x12 and not x1 and x4 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and x12 and not x1 and not x4 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and not x12 and x1 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and not x12 and not x1 and x2 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and not x12 and not x1 and not x2 and x9 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and not x12 and not x1 and not x2 and not x9 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x10 and x44 and x39 and x46 and x51 and x36 ) = '1' then
         current_bigm2r <= s72;

      elsif ( x62 and not x63 and x10 and x44 and x39 and x46 and x51 and not x36 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and x10 and x44 and x39 and x46 and not x51 and x36 ) = '1' then
         current_bigm2r <= s72;

      elsif ( x62 and not x63 and x10 and x44 and x39 and x46 and not x51 and not x36 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and x10 and x44 and x39 and not x46 and x36 ) = '1' then
         current_bigm2r <= s72;

      elsif ( x62 and not x63 and x10 and x44 and x39 and not x46 and not x36 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( x62 and not x63 and x10 and x44 and not x39 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( x62 and not x63 and x10 and not x44 and x11 and x36 and x34 and x4 and x5 and x3 ) = '1' then
         current_bigm2r <= s72;

      elsif ( x62 and not x63 and x10 and not x44 and x11 and x36 and x34 and x4 and x5 and not x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and x10 and not x44 and x11 and x36 and x34 and x4 and not x5 and x3 ) = '1' then
         current_bigm2r <= s72;

      elsif ( x62 and not x63 and x10 and not x44 and x11 and x36 and x34 and x4 and not x5 and not x3 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and not x63 and x10 and not x44 and x11 and x36 and x34 and not x4 and x3 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x10 and not x44 and x11 and x36 and x34 and not x4 and not x3 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x63 and x10 and not x44 and x11 and x36 and not x34 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( x62 and not x63 and x10 and not x44 and x11 and not x36 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and x10 and not x44 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( x62 and not x63 and x10 and not x44 and not x11 and not x12 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and not x63 and not x10 and x44 and x11 and x34 and x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( x62 and not x63 and not x10 and x44 and x11 and x34 and not x8 and x5 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and not x10 and x44 and x11 and x34 and not x8 and not x5 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and not x10 and x44 and x11 and not x34 and x32 and x7 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( x62 and not x63 and not x10 and x44 and x11 and not x34 and x32 and not x7 and x54 and x5 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and not x10 and x44 and x11 and not x34 and x32 and not x7 and x54 and not x5 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and not x10 and x44 and x11 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( x62 and not x63 and not x10 and x44 and x11 and not x34 and not x32 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and not x63 and not x10 and x44 and not x11 and x12 and x20 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( x62 and not x63 and not x10 and x44 and not x11 and x12 and not x20 and x2 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and not x10 and x44 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x63 and not x10 and x44 and not x11 and not x12 and x13 and x37 and x41 and x6 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and not x63 and not x10 and x44 and not x11 and not x12 and x13 and x37 and x41 and not x6 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and not x10 and x44 and not x11 and not x12 and x13 and x37 and not x41 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and not x10 and x44 and not x11 and not x12 and x13 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( x62 and not x63 and not x10 and x44 and not x11 and not x12 and not x13 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and not x10 and not x44 and x11 and x37 ) = '1' then
         y51 <= '1' ;
         current_bigm2r <= s83;

      elsif ( x62 and not x63 and not x10 and not x44 and x11 and not x37 and x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x63 and not x10 and not x44 and x11 and not x37 and not x2 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and not x10 and not x44 and not x11 and x12 and x37 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x63 and not x10 and not x44 and not x11 and x12 and not x37 and x4 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and not x10 and not x44 and not x11 and x12 and not x37 and not x4 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and not x10 and not x44 and not x11 and not x12 and x37 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( x62 and not x63 and not x10 and not x44 and not x11 and not x12 and not x37 and x34 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and not x10 and not x44 and not x11 and not x12 and not x37 and not x34 and x9 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and not x10 and not x44 and not x11 and not x12 and not x37 and not x34 and not x9 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and x10 and x39 and x46 and x51 and x36 ) = '1' then
         current_bigm2r <= s72;

      elsif ( not x62 and x55 and x10 and x39 and x46 and x51 and not x36 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( not x62 and x55 and x10 and x39 and x46 and not x51 and x36 ) = '1' then
         current_bigm2r <= s72;

      elsif ( not x62 and x55 and x10 and x39 and x46 and not x51 and not x36 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and x55 and x10 and x39 and not x46 and x36 ) = '1' then
         current_bigm2r <= s72;

      elsif ( not x62 and x55 and x10 and x39 and not x46 and not x36 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x62 and x55 and x10 and not x39 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( not x62 and x55 and not x10 and x42 and x34 and x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and x55 and not x10 and x42 and x34 and not x8 and x36 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( not x62 and x55 and not x10 and x42 and x34 and not x8 and not x36 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x10 and x42 and not x34 and x32 and x7 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and x55 and not x10 and x42 and not x34 and x32 and not x7 and x54 and x36 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( not x62 and x55 and not x10 and x42 and not x34 and x32 and not x7 and x54 and not x36 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x10 and x42 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x62 and x55 and not x10 and x42 and not x34 and not x32 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( not x62 and x55 and not x10 and not x42 and x43 and x20 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x62 and x55 and not x10 and not x42 and x43 and not x20 and x2 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and x55 and not x10 and not x42 and x43 and not x20 and not x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and x55 and not x10 and not x42 and not x43 and x13 and x32 and x3 and x6 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( not x62 and x55 and not x10 and not x42 and not x43 and x13 and x32 and x3 and not x6 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x10 and not x42 and not x43 and x13 and x32 and not x3 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x10 and not x42 and not x43 and x13 and not x32 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x62 and x55 and not x10 and not x42 and not x43 and not x13 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and x41 and x11 and x1 and x33 and x34 and x35 ) = '1' then
         current_bigm2r <= s72;

      elsif ( not x62 and not x55 and x41 and x11 and x1 and x33 and x34 and not x35 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and not x55 and x41 and x11 and x1 and x33 and not x34 and x4 and x5 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and x41 and x11 and x1 and x33 and not x34 and x4 and not x5 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( not x62 and not x55 and x41 and x11 and x1 and x33 and not x34 and not x4 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and not x55 and x41 and x11 and x1 and not x33 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x62 and not x55 and x41 and x11 and not x1 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and not x55 and x41 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x62 and not x55 and x41 and not x11 and not x12 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( not x62 and not x55 and not x41 and x32 and x42 ) = '1' then
         y53 <= '1' ;
         current_bigm2r <= s145;

      elsif ( not x62 and not x55 and not x41 and x32 and not x42 and x43 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and not x55 and not x41 and x32 and not x42 and not x43 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( not x62 and not x55 and not x41 and not x32 and x11 and x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and not x55 and not x41 and not x32 and x11 and not x2 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and not x55 and not x41 and not x32 and not x11 and x12 and x35 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and not x55 and not x41 and not x32 and not x11 and x12 and not x35 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and not x55 and not x41 and not x32 and not x11 and not x12 and x33 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and not x55 and not x41 and not x32 and not x11 and not x12 and not x33 and x40 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      else
         y34 <= '1' ;
         current_bigm2r <= s139;

      end if;

   when s73 =>
      if ( x62 and x63 ) = '1' then
         y48 <= '1' ;
         current_bigm2r <= s74;

      elsif ( x62 and not x63 ) = '1' then
         y49 <= '1' ;
         current_bigm2r <= s127;

      elsif ( not x62 and x63 ) = '1' then
         y51 <= '1' ;
         current_bigm2r <= s83;

      else
         y21 <= '1' ;
         current_bigm2r <= s95;

      end if;

   when s74 =>
      if ( x63 ) = '1' then
         y49 <= '1' ;
         current_bigm2r <= s127;

      elsif ( not x63 and x62 and x44 and x1 and x37 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x63 and x62 and x44 and x1 and not x37 and x9 ) = '1' then
         current_bigm2r <= s74;

      elsif ( not x63 and x62 and x44 and x1 and not x37 and not x9 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x63 and x62 and x44 and not x1 and x9 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x63 and x62 and x44 and not x1 and not x9 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x63 and x62 and not x44 and x10 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x63 and x62 and not x44 and not x10 and x11 and x37 ) = '1' then
         y52 <= '1' ;
         current_bigm2r <= s86;

      elsif ( not x63 and x62 and not x44 and not x10 and x11 and not x37 and x41 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x63 and x62 and not x44 and not x10 and x11 and not x37 and not x41 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( not x63 and x62 and not x44 and not x10 and not x11 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      else
         y49 <= '1' ;
         current_bigm2r <= s127;

      end if;

   when s75 =>
      if ( x63 and x62 and x40 and x9 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s57;

      elsif ( x63 and x62 and x40 and not x9 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and x40 and not x9 and not x3 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x63 and x62 and not x40 and x29 and x50 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( x63 and x62 and not x40 and x29 and not x50 ) = '1' then
         current_bigm2r <= s75;

      elsif ( x63 and x62 and not x40 and not x29 and x41 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and x62 and not x40 and not x29 and not x41 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and not x62 and x55 and x40 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s122;

      elsif ( x63 and not x62 and x55 and not x40 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and x55 and not x40 and not x3 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( x63 and not x62 and not x55 and x29 and x50 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( x63 and not x62 and not x55 and x29 and not x50 ) = '1' then
         current_bigm2r <= s75;

      elsif ( x63 and not x62 and not x55 and not x29 and x58 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x63 and not x62 and not x55 and not x29 and not x58 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and x62 and x17 and x18 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x63 and x62 and x17 and x18 and not x5 and x6 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and x17 and x18 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and x17 and not x18 and x39 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and x17 and not x18 and x39 and x15 and x16 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and x17 and not x18 and x39 and x15 and x16 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and x17 and not x18 and x39 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x17 and not x18 and x39 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s75;

      elsif ( not x63 and x62 and x17 and not x18 and x39 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x17 and not x18 and x39 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and x17 and not x18 and x39 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x17 and not x18 and not x39 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x63 and x62 and not x17 and x9 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and not x17 and not x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and not x62 and x15 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x63 and not x62 and not x15 and x16 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      else
         y17 <= '1' ;
         current_bigm2r <= s35;

      end if;

   when s76 =>
      if ( x62 and x15 and x63 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s11;

      elsif ( x62 and x15 and not x63 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x62 and not x15 and x14 and x13 and x63 ) = '1' then
         y49 <= '1' ;
         current_bigm2r <= s127;

      elsif ( x62 and not x15 and x14 and x13 and not x63 ) = '1' then
         y50 <= '1' ;
         current_bigm2r <= s146;

      elsif ( x62 and not x15 and x14 and not x13 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( x62 and not x15 and not x14 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      elsif ( not x62 and x63 and x46 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x62 and x63 and not x46 and x14 and x44 ) = '1' then
         y52 <= '1' ;
         current_bigm2r <= s147;

      elsif ( not x62 and x63 and not x46 and x14 and not x44 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x62 and x63 and not x46 and not x14 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s56;

      else
         y20 <= '1' ;
         current_bigm2r <= s73;

      end if;

   when s77 =>
      if ( x63 and x62 and x10 and x40 and x12 and x23 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s23;

      elsif ( x63 and x62 and x10 and x40 and x12 and not x23 and x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and x62 and x10 and x40 and x12 and not x23 and not x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and x10 and x40 and not x12 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and x62 and x10 and not x40 and x39 and x46 and x51 and x36 ) = '1' then
         current_bigm2r <= s77;

      elsif ( x63 and x62 and x10 and not x40 and x39 and x46 and x51 and not x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and x62 and x10 and not x40 and x39 and x46 and not x51 and x36 ) = '1' then
         current_bigm2r <= s77;

      elsif ( x63 and x62 and x10 and not x40 and x39 and x46 and not x51 and not x36 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and x62 and x10 and not x40 and x39 and not x46 and x36 ) = '1' then
         current_bigm2r <= s77;

      elsif ( x63 and x62 and x10 and not x40 and x39 and not x46 and not x36 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( x63 and x62 and x10 and not x40 and not x39 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x63 and x62 and not x10 and x40 and x1 and x22 ) = '1' then
         y29 <= '1' ;
         current_bigm2r <= s26;

      elsif ( x63 and x62 and not x10 and x40 and x1 and not x22 and x2 and x11 and x5 and x3 ) = '1' then
         current_bigm2r <= s77;

      elsif ( x63 and x62 and not x10 and x40 and x1 and not x22 and x2 and x11 and x5 and not x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and x62 and not x10 and x40 and x1 and not x22 and x2 and x11 and not x5 and x3 ) = '1' then
         current_bigm2r <= s77;

      elsif ( x63 and x62 and not x10 and x40 and x1 and not x22 and x2 and x11 and not x5 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x63 and x62 and not x10 and x40 and x1 and not x22 and x2 and not x11 and x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x10 and x40 and x1 and not x22 and x2 and not x11 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and x62 and not x10 and x40 and x1 and not x22 and not x2 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( x63 and x62 and not x10 and x40 and not x1 and x11 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and not x10 and x40 and not x1 and x11 and not x4 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x10 and x40 and not x1 and not x11 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and not x10 and not x40 and x11 and x34 and x8 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x63 and x62 and not x10 and not x40 and x11 and x34 and not x8 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and x62 and not x10 and not x40 and x11 and x34 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x10 and not x40 and x11 and not x34 and x32 and x7 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x63 and x62 and not x10 and not x40 and x11 and not x34 and x32 and not x7 and x45 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and x62 and not x10 and not x40 and x11 and not x34 and x32 and not x7 and x45 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x10 and not x40 and x11 and not x34 and x32 and not x7 and not x45 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( x63 and x62 and not x10 and not x40 and x11 and not x34 and not x32 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x63 and x62 and not x10 and not x40 and not x11 and x12 and x20 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( x63 and x62 and not x10 and not x40 and not x11 and x12 and not x20 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and x62 and not x10 and not x40 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and x62 and not x10 and not x40 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( x63 and x62 and not x10 and not x40 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x10 and not x40 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and x62 and not x10 and not x40 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( x63 and x62 and not x10 and not x40 and not x11 and not x12 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x63 and not x62 and x55 and x10 and x43 and x23 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s23;

      elsif ( x63 and not x62 and x55 and x10 and x43 and not x23 and x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x63 and not x62 and x55 and x10 and x43 and not x23 and not x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and x55 and x10 and not x43 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( x63 and not x62 and x55 and not x10 and x1 and x22 ) = '1' then
         y29 <= '1' ;
         current_bigm2r <= s26;

      elsif ( x63 and not x62 and x55 and not x10 and x1 and not x22 and x2 and x3 and x42 ) = '1' then
         current_bigm2r <= s77;

      elsif ( x63 and not x62 and x55 and not x10 and x1 and not x22 and x2 and x3 and not x42 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and x55 and not x10 and x1 and not x22 and x2 and not x3 and x11 and x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x62 and x55 and not x10 and x1 and not x22 and x2 and not x3 and x11 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x63 and not x62 and x55 and not x10 and x1 and not x22 and x2 and not x3 and not x11 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x63 and not x62 and x55 and not x10 and x1 and not x22 and not x2 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( x63 and not x62 and x55 and not x10 and not x1 and x42 and x35 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and x55 and not x10 and not x1 and x42 and not x35 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and x55 and not x10 and not x1 and not x42 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and not x55 and x41 and x39 and x46 and x51 and x36 ) = '1' then
         current_bigm2r <= s77;

      elsif ( x63 and not x62 and not x55 and x41 and x39 and x46 and x51 and not x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x63 and not x62 and not x55 and x41 and x39 and x46 and not x51 and x36 ) = '1' then
         current_bigm2r <= s77;

      elsif ( x63 and not x62 and not x55 and x41 and x39 and x46 and not x51 and not x36 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x62 and not x55 and x41 and x39 and not x46 and x36 ) = '1' then
         current_bigm2r <= s77;

      elsif ( x63 and not x62 and not x55 and x41 and x39 and not x46 and not x36 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( x63 and not x62 and not x55 and x41 and not x39 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( x63 and not x62 and not x55 and not x41 and x11 and x34 and x8 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x63 and not x62 and not x55 and not x41 and x11 and x34 and not x8 and x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x63 and not x62 and not x55 and not x41 and x11 and x34 and not x8 and not x36 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x41 and x11 and not x34 and x32 and x38 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s33;

      elsif ( x63 and not x62 and not x55 and not x41 and x11 and not x34 and x32 and not x38 and x54 and x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x63 and not x62 and not x55 and not x41 and x11 and not x34 and x32 and not x38 and x54 and not x36 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x41 and x11 and not x34 and x32 and not x38 and not x54 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( x63 and not x62 and not x55 and not x41 and x11 and not x34 and not x32 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x63 and not x62 and not x55 and not x41 and not x11 and x12 and x51 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( x63 and not x62 and not x55 and not x41 and not x11 and x12 and not x51 and x33 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x63 and not x62 and not x55 and not x41 and not x11 and x12 and not x51 and not x33 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x63 and not x62 and not x55 and not x41 and not x11 and not x12 and x44 and x32 and x34 and x37 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( x63 and not x62 and not x55 and not x41 and not x11 and not x12 and x44 and x32 and x34 and not x37 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x41 and not x11 and not x12 and x44 and x32 and not x34 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x62 and not x55 and not x41 and not x11 and not x12 and x44 and not x32 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s30;

      elsif ( x63 and not x62 and not x55 and not x41 and not x11 and not x12 and not x44 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and x62 and x18 and x17 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x63 and x62 and x18 and x17 and not x5 and x6 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and x18 and x17 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( not x63 and x62 and x18 and not x17 and x1 and x16 and x15 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and x18 and not x17 and x1 and x16 and x15 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and x18 and not x17 and x1 and x16 and x15 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and x18 and not x17 and x1 and x16 and not x15 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and not x17 and x1 and not x16 and x15 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and not x17 and x1 and not x16 and not x15 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and x18 and not x17 and x1 and not x16 and not x15 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x18 and not x17 and not x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x63 and x62 and not x18 and x17 and x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s6;

      elsif ( not x63 and x62 and not x18 and x17 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s12;

      elsif ( not x63 and x62 and not x18 and not x17 and x15 and x16 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and x62 and not x18 and not x17 and x15 and x16 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and not x18 and not x17 and x15 and x16 and not x5 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s4;

      elsif ( not x63 and x62 and not x18 and not x17 and x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x18 and not x17 and x15 and not x16 and not x1 ) = '1' then
         current_bigm2r <= s77;

      elsif ( not x63 and x62 and not x18 and not x17 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and not x18 and not x17 and not x15 and not x16 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and not x18 and not x17 and not x15 and not x16 and not x37 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and not x62 and x10 and x6 and x7 and x2 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x63 and not x62 and x10 and x6 and x7 and x2 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and not x62 and x10 and x6 and x7 and x2 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x63 and not x62 and x10 and x6 and x7 and not x2 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x10 and x6 and not x7 and x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x63 and not x62 and x10 and x6 and not x7 and not x8 and x2 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x63 and not x62 and x10 and x6 and not x7 and not x8 and x2 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and not x62 and x10 and x6 and not x7 and not x8 and x2 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x63 and not x62 and x10 and x6 and not x7 and not x8 and not x2 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x10 and not x6 and x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x63 and not x62 and x10 and not x6 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and not x10 and x11 and x5 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x63 and not x62 and not x10 and x11 and not x5 and x6 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      else
         y10 <= '1' ;
         current_bigm2r <= s58;

      end if;

   when s78 =>
      if ( x62 and x63 and x1 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( x62 and x63 and not x1 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x62 and x63 and not x1 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x62 and not x63 and x1 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( x62 and not x63 and not x1 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( x62 and not x63 and not x1 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x62 and x63 and x32 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( not x62 and x63 and not x32 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x62 and x63 and not x32 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x62 and not x63 and x1 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s108;

      elsif ( not x62 and not x63 and not x1 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      else
         y5 <= '1' ;
         current_bigm2r <= s28;

      end if;

   when s79 =>
      if ( x62 and x63 and x1 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( x62 and x63 and not x1 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x62 and x63 and not x1 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( x62 and not x63 and x1 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( x62 and not x63 and not x1 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( x62 and not x63 and not x1 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x62 and x63 and x32 ) = '1' then
         y25 <= '1' ;
         current_bigm2r <= s78;

      elsif ( not x62 and x63 and not x32 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x62 and x63 and not x32 and not x35 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x62 and not x63 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      else
         y7 <= '1' ;
         current_bigm2r <= s46;

      end if;

   when s80 =>
      if ( x63 and x8 and x62 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and x8 and not x62 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x63 and not x8 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s60;

      elsif ( not x63 and x62 and x44 and x9 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s57;

      elsif ( not x63 and x62 and x44 and not x9 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( not x63 and x62 and x44 and not x9 and not x3 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x63 and x62 and not x44 and x29 and x50 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      elsif ( not x63 and x62 and not x44 and x29 and not x50 ) = '1' then
         current_bigm2r <= s80;

      elsif ( not x63 and x62 and not x44 and not x29 and x45 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x63 and x62 and not x44 and not x29 and not x45 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x63 and not x62 and x61 and x37 and x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and not x62 and x61 and x37 and not x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and x61 and not x37 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x63 and not x62 and not x61 and x2 and x10 and x1 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x63 and not x62 and not x61 and x2 and x10 and x1 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and not x62 and not x61 and x2 and x10 and x1 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x63 and not x62 and not x61 and x2 and x10 and not x1 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s129;

      elsif ( not x63 and not x62 and not x61 and x2 and x10 and not x1 and not x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and not x62 and not x61 and x2 and not x10 ) = '1' then
         current_bigm2r <= s80;

      elsif ( not x63 and not x62 and not x61 and not x2 and x10 and x1 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x61 and not x2 and x10 and not x1 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      else
         current_bigm2r <= s80;

      end if;

   when s81 =>
      if ( x62 and x26 and x28 and x6 and x63 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x62 and x26 and x28 and x6 and not x63 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( x62 and x26 and x28 and not x6 and x4 and x63 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x62 and x26 and x28 and not x6 and x4 and not x63 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( x62 and x26 and x28 and not x6 and not x4 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x62 and x26 and not x28 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x62 and not x26 and x27 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x62 and not x26 and not x27 and x28 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s118;

      elsif ( x62 and not x26 and not x27 and not x28 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x62 and x63 and x55 and x24 and x26 and x7 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x62 and x63 and x55 and x24 and x26 and not x7 ) = '1' then
         y28 <= '1' ;
         current_bigm2r <= s63;

      elsif ( not x62 and x63 and x55 and x24 and not x26 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( not x62 and x63 and x55 and not x24 and x28 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( not x62 and x63 and x55 and not x24 and not x28 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and x63 and not x55 and x31 and x50 and x10 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s66;

      elsif ( not x62 and x63 and not x55 and x31 and x50 and not x10 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( not x62 and x63 and not x55 and x31 and not x50 ) = '1' then
         current_bigm2r <= s81;

      elsif ( not x62 and x63 and not x55 and not x31 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s64;

      elsif ( not x62 and not x63 and x61 and x50 and x19 and x10 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x62 and not x63 and x61 and x50 and x19 and not x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and not x63 and x61 and x50 and not x19 ) = '1' then
         current_bigm2r <= s81;

      elsif ( not x62 and not x63 and x61 and not x50 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x62 and not x63 and not x61 and x11 and x10 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x62 and not x63 and not x61 and x11 and not x10 and x7 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x62 and not x63 and not x61 and x11 and not x10 and not x7 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x62 and not x63 and not x61 and not x11 and x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and not x63 and not x61 and not x11 and not x10 and x12 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x62 and not x63 and not x61 and not x11 and not x10 and not x12 and x1 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s103;

      elsif ( not x62 and not x63 and not x61 and not x11 and not x10 and not x12 and not x1 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      else
         y10 <= '1' ;
         current_bigm2r <= s58;

      end if;

   when s82 =>
      if ( x62 and x10 and x6 and x7 and x2 and x63 and x3 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x62 and x10 and x6 and x7 and x2 and x63 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x10 and x6 and x7 and x2 and x63 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x10 and x6 and x7 and x2 and not x63 and x41 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( x62 and x10 and x6 and x7 and x2 and not x63 and not x41 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x10 and x6 and x7 and x2 and not x63 and not x41 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x10 and x6 and x7 and not x2 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x10 and x6 and not x7 and x8 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x10 and x6 and not x7 and not x8 and x2 and x63 and x3 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x62 and x10 and x6 and not x7 and not x8 and x2 and x63 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x10 and x6 and not x7 and not x8 and x2 and x63 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x10 and x6 and not x7 and not x8 and x2 and not x63 and x41 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( x62 and x10 and x6 and not x7 and not x8 and x2 and not x63 and not x41 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x10 and x6 and not x7 and not x8 and x2 and not x63 and not x41 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x10 and x6 and not x7 and not x8 and not x2 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x10 and not x6 and x63 and x2 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x10 and not x6 and x63 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x10 and not x6 and not x63 and x34 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x10 and not x6 and not x63 and not x34 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x10 and x11 and x5 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and not x10 and x11 and not x5 and x6 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x10 and not x11 and x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and not x10 and not x11 and not x63 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and x10 and x6 and x7 and x33 and x3 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( not x62 and x10 and x6 and x7 and x33 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and x10 and x6 and x7 and x33 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and x10 and x6 and x7 and not x33 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x10 and x6 and not x7 and x39 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x62 and x10 and x6 and not x7 and not x39 and x33 and x3 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( not x62 and x10 and x6 and not x7 and not x39 and x33 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and x10 and x6 and not x7 and not x39 and x33 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and x10 and x6 and not x7 and not x39 and not x33 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x10 and not x6 and x2 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x62 and x10 and not x6 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and not x10 and x11 and x5 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x62 and not x10 and x11 and not x5 and x37 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and not x10 and x11 and not x5 and not x37 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      else
         y10 <= '1' ;
         current_bigm2r <= s77;

      end if;

   when s83 =>
      if ( x62 and x63 and x8 and x1 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( x62 and x63 and x8 and not x1 and x4 ) = '1' then
         y22 <= '1' ;
         current_bigm2r <= s148;

      elsif ( x62 and x63 and x8 and not x1 and not x4 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and not x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x62 and not x63 and x7 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( x62 and not x63 and not x7 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      else
         y52 <= '1' ;
         current_bigm2r <= s147;

      end if;

   when s84 =>
      if ( x62 and x63 and x40 and x50 and x19 and x10 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x63 and x40 and x50 and x19 and not x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x63 and x40 and x50 and not x19 ) = '1' then
         current_bigm2r <= s84;

      elsif ( x62 and x63 and x40 and not x50 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x63 and not x40 and x11 and x10 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and not x40 and x11 and not x10 and x7 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and not x40 and x11 and not x10 and not x7 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s149;

      elsif ( x62 and x63 and not x40 and not x11 and x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x63 and not x40 and not x11 and not x10 and x12 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and x63 and not x40 and not x11 and not x10 and not x12 and x1 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( x62 and x63 and not x40 and not x11 and not x10 and not x12 and not x1 and x4 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and not x40 and not x11 and not x10 and not x12 and not x1 and not x4 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and not x63 and x44 and x50 and x19 and x10 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and not x63 and x44 and x50 and x19 and not x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and not x63 and x44 and x50 and not x19 ) = '1' then
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and x44 and not x50 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and not x63 and not x44 and x10 and x11 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and not x44 and x10 and not x11 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and x7 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and not x7 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s150;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and x12 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and not x12 and x37 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and not x12 and not x37 and x4 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and not x12 and not x37 and not x4 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and x55 and x50 and x41 and x19 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and x55 and x50 and x41 and not x19 ) = '1' then
         current_bigm2r <= s84;

      elsif ( not x62 and x55 and x50 and not x41 and x19 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and x55 and x50 and not x41 and not x19 ) = '1' then
         current_bigm2r <= s84;

      elsif ( not x62 and x55 and not x50 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x55 and x10 and x11 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and not x55 and x10 and not x11 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and not x55 and not x10 and x42 and x38 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( not x62 and not x55 and not x10 and x42 and not x38 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( not x62 and not x55 and not x10 and not x42 and x12 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( not x62 and not x55 and not x10 and not x42 and not x12 and x1 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( not x62 and not x55 and not x10 and not x42 and not x12 and not x1 and x35 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      else
         y10 <= '1' ;
         current_bigm2r <= s77;

      end if;

   when s85 =>
      if ( x62 and x63 and x40 and x17 and x19 and x10 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x63 and x40 and x17 and x19 and not x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x63 and x40 and x17 and not x19 ) = '1' then
         current_bigm2r <= s85;

      elsif ( x62 and x63 and x40 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x62 and x63 and x40 and not x17 and not x20 and x2 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and x40 and not x17 and not x20 and not x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and x63 and not x40 and x11 and x10 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and not x40 and x11 and not x10 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( x62 and x63 and not x40 and not x11 and x10 and x12 and x4 and x1 ) = '1' then
         current_bigm2r <= s85;

      elsif ( x62 and x63 and not x40 and not x11 and x10 and x12 and x4 and not x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x63 and not x40 and not x11 and x10 and x12 and not x4 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and not x40 and not x11 and x10 and not x12 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and not x11 and not x10 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and x44 and x17 and x19 and x10 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and not x63 and x44 and x17 and x19 and not x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and not x63 and x44 and x17 and not x19 ) = '1' then
         current_bigm2r <= s85;

      elsif ( x62 and not x63 and x44 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( x62 and not x63 and x44 and not x17 and not x20 and x2 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and x44 and not x17 and not x20 and not x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x63 and not x44 and x11 and x10 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and not x44 and x11 and not x10 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s100;

      elsif ( x62 and not x63 and not x44 and not x11 and x10 and x12 and x4 and x1 ) = '1' then
         current_bigm2r <= s85;

      elsif ( x62 and not x63 and not x44 and not x11 and x10 and x12 and x4 and not x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and not x63 and not x44 and not x11 and x10 and x12 and not x4 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and not x44 and not x11 and x10 and not x12 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and not x44 and not x11 and not x10 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and x55 and x17 and x41 and x19 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and x55 and x17 and x41 and not x19 ) = '1' then
         current_bigm2r <= s85;

      elsif ( not x62 and x55 and x17 and not x41 and x19 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and x55 and x17 and not x41 and not x19 ) = '1' then
         current_bigm2r <= s85;

      elsif ( not x62 and x55 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s125;

      elsif ( not x62 and x55 and not x17 and not x20 and x2 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and x55 and not x17 and not x20 and not x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and not x55 and x10 and x11 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and not x55 and x10 and not x11 and x43 and x4 and x32 ) = '1' then
         current_bigm2r <= s85;

      elsif ( not x62 and not x55 and x10 and not x11 and x43 and x4 and not x32 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and not x55 and x10 and not x11 and x43 and not x4 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and not x55 and x10 and not x11 and not x43 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and not x10 and x42 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s140;

      else
         y36 <= '1' ;
         current_bigm2r <= s84;

      end if;

   when s86 =>
      if ( x62 and x8 and x37 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( x62 and x8 and not x37 and x4 ) = '1' then
         y22 <= '1' ;
         current_bigm2r <= s148;

      elsif ( x62 and x8 and not x37 and not x4 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      else
         y21 <= '1' ;
         current_bigm2r <= s95;

      end if;

   when s87 =>
      if ( x62 and x63 and x28 and x43 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x62 and x63 and x28 and not x43 ) = '1' then
         current_bigm2r <= s87;

      elsif ( x62 and x63 and not x28 and x27 and x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x62 and x63 and not x28 and x27 and not x8 and x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x63 and not x28 and not x27 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x63 and x15 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s95;

      elsif ( x62 and not x63 and not x15 and x13 and x11 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and not x63 and not x15 and x13 and not x11 and x6 and x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( x62 and not x63 and not x15 and x13 and not x11 and x6 and not x4 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s98;

      elsif ( x62 and not x63 and not x15 and x13 and not x11 and not x6 and x5 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and not x63 and not x15 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s99;

      elsif ( x62 and not x63 and not x15 and not x13 and x14 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x62 and not x63 and not x15 and not x13 and not x14 and x9 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x62 and not x63 and not x15 and not x13 and not x14 and not x9 and x6 and x33 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x62 and not x63 and not x15 and not x13 and not x14 and not x9 and x6 and not x33 ) = '1' then
         current_bigm2r <= s87;

      elsif ( x62 and not x63 and not x15 and not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x62 and not x63 and not x15 and not x13 and not x14 and not x9 and not x6 and not x8 ) = '1' then
         current_bigm2r <= s87;

      elsif ( not x62 and x28 and x57 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and x28 and not x57 ) = '1' then
         current_bigm2r <= s87;

      elsif ( not x62 and not x28 and x27 and x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and not x28 and x27 and not x8 and x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      else
         y32 <= '1' ;
         current_bigm2r <= s69;

      end if;

   when s88 =>
      if ( x63 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s140;

      elsif ( not x63 and x28 and x49 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x63 and x28 and not x49 ) = '1' then
         current_bigm2r <= s88;

      elsif ( not x63 and not x28 and x27 and x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x63 and not x28 and x27 and not x8 and x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x63 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      else
         y32 <= '1' ;
         current_bigm2r <= s69;

      end if;

   when s89 =>
      if ( x62 and x15 and x3 and x11 and x2 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s103;

      elsif ( x62 and x15 and x3 and x11 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and x3 and not x11 and x4 and x12 and x13 and x2 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      elsif ( x62 and x15 and x3 and not x11 and x4 and x12 and x13 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and x3 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and x3 and not x11 and x4 and not x12 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and x3 and not x11 and not x4 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and x4 and x11 and x63 and x2 ) = '1' then
         y48 <= '1' ;
         current_bigm2r <= s151;

      elsif ( x62 and x15 and not x3 and x4 and x11 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and x4 and x11 and not x63 and x33 ) = '1' then
         y49 <= '1' ;
         current_bigm2r <= s152;

      elsif ( x62 and x15 and not x3 and x4 and x11 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and x12 and x13 and x14 and x63 and x2 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s92;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and x12 and x13 and x14 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and x12 and x13 and x14 and not x63 and x33 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s140;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and x12 and x13 and x14 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and x12 and x13 and not x14 and x63 and x2 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s22;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and x12 and x13 and not x14 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and x12 and x13 and not x14 and not x63 and x33 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s22;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and x12 and x13 and not x14 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and x12 and not x13 and x63 and x2 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and x12 and not x13 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and x12 and not x13 and not x63 and x33 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and x12 and not x13 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and not x12 and x63 and x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and not x12 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and not x12 and not x63 and x33 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x62 and x15 and not x3 and x4 and not x11 and not x12 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and x6 and x63 and x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and x6 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and x6 and not x63 and x33 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and x6 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and x7 and x8 and x63 and x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and x7 and x8 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and x7 and x8 and not x63 and x33 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and x7 and x8 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and x63 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and not x63 and x33 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and x63 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and not x63 and x33 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and x63 and x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and not x63 and x33 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and x7 and x9 and x63 and x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and x7 and x9 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and x7 and x9 and not x63 and x33 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and x7 and x9 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and x63 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and not x63 and x33 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and x63 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and not x63 and x33 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and x63 and x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and not x63 and x33 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and x63 and x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and not x63 and x33 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and x63 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and not x63 and x33 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and x63 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and not x63 and x33 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and x63 and x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and x63 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and not x63 and x33 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and not x63 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( x62 and not x15 and x7 and x63 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s100;

      elsif ( x62 and not x15 and x7 and not x63 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( x62 and not x15 and not x7 and x9 and x63 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s100;

      elsif ( x62 and not x15 and not x7 and x9 and not x63 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( x62 and not x15 and not x7 and not x9 and x10 and x6 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s89;

      elsif ( x62 and not x15 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s90;

      elsif ( x62 and not x15 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and not x15 and not x7 and not x9 and not x10 and not x11 ) = '1' then
         current_bigm2r <= s89;

      elsif ( not x62 and x46 and x34 and x42 and x2 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s103;

      elsif ( not x62 and x46 and x34 and x42 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( not x62 and x46 and x34 and not x42 and x3 and x35 and x43 and x44 and x2 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      elsif ( not x62 and x46 and x34 and not x42 and x3 and x35 and x43 and x44 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( not x62 and x46 and x34 and not x42 and x3 and x35 and x43 and not x44 ) = '1' then
         current_bigm2r <= s89;

      elsif ( not x62 and x46 and x34 and not x42 and x3 and x35 and not x43 ) = '1' then
         current_bigm2r <= s89;

      elsif ( not x62 and x46 and x34 and not x42 and x3 and not x35 ) = '1' then
         current_bigm2r <= s89;

      elsif ( not x62 and x46 and x34 and not x42 and not x3 and x35 and x43 and x44 and x2 ) = '1' then
         y47 <= '1' ;
         current_bigm2r <= s142;

      elsif ( not x62 and x46 and x34 and not x42 and not x3 and x35 and x43 and x44 and not x2 ) = '1' then
         current_bigm2r <= s89;

      elsif ( not x62 and x46 and x34 and not x42 and not x3 and x35 and x43 and not x44 ) = '1' then
         current_bigm2r <= s89;

      elsif ( not x62 and x46 and x34 and not x42 and not x3 and x35 and not x43 ) = '1' then
         current_bigm2r <= s89;

      elsif ( not x62 and x46 and x34 and not x42 and not x3 and not x35 ) = '1' then
         current_bigm2r <= s89;

      elsif ( not x62 and x46 and not x34 and x33 and x4 and x11 ) = '1' then
         y51 <= '1' ;
         current_bigm2r <= s153;

      elsif ( not x62 and x46 and not x34 and x33 and x4 and not x11 and x12 and x13 and x14 ) = '1' then
         y47 <= '1' ;
         current_bigm2r <= s142;

      elsif ( not x62 and x46 and not x34 and x33 and x4 and not x11 and x12 and x13 and not x14 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s92;

      elsif ( not x62 and x46 and not x34 and x33 and x4 and not x11 and x12 and not x13 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s17;

      elsif ( not x62 and x46 and not x34 and x33 and x4 and not x11 and not x12 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and x5 and x37 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and x5 and not x37 and x7 and x39 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and x5 and not x37 and x7 and not x39 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and x5 and not x37 and not x7 and x8 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and x5 and not x37 and not x7 and not x8 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and not x5 and x6 and x38 and x40 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and not x5 and x6 and x38 and not x40 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and not x5 and x6 and not x38 and x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and not x5 and x6 and not x38 and not x9 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and not x5 and not x6 and x7 and x10 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and not x5 and not x6 and x7 and not x10 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and not x5 and not x6 and not x7 and x41 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x62 and x46 and not x34 and x33 and not x4 and not x5 and not x6 and not x7 and not x41 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( not x62 and x46 and not x34 and not x33 ) = '1' then
         current_bigm2r <= s89;

      elsif ( not x62 and not x46 and x38 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s154;

      elsif ( not x62 and not x46 and not x38 and x40 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s154;

      elsif ( not x62 and not x46 and not x38 and not x40 and x10 and x37 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s89;

      elsif ( not x62 and not x46 and not x38 and not x40 and x10 and not x37 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s90;

      elsif ( not x62 and not x46 and not x38 and not x40 and not x10 and x42 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      else
         current_bigm2r <= s89;

      end if;

   when s90 =>
      if ( x15 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s89;

      elsif ( not x15 and x62 and x8 and x63 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s100;

      elsif ( not x15 and x62 and x8 and not x63 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( not x15 and x62 and not x8 and x9 and x63 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s100;

      elsif ( not x15 and x62 and not x8 and x9 and not x63 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( not x15 and x62 and not x8 and not x9 and x10 and x6 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s89;

      elsif ( not x15 and x62 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s90;

      elsif ( not x15 and x62 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( not x15 and x62 and not x8 and not x9 and not x10 and not x11 ) = '1' then
         current_bigm2r <= s90;

      elsif ( not x15 and not x62 and x39 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s154;

      elsif ( not x15 and not x62 and not x39 and x40 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s154;

      elsif ( not x15 and not x62 and not x39 and not x40 and x10 and x37 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s89;

      elsif ( not x15 and not x62 and not x39 and not x40 and x10 and not x37 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s90;

      elsif ( not x15 and not x62 and not x39 and not x40 and not x10 and x42 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      else
         current_bigm2r <= s90;

      end if;

   when s91 =>
      if ( x15 and x63 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( x15 and not x63 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s93;

      elsif ( not x15 and x63 and x12 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s93;

      elsif ( not x15 and x63 and not x12 ) = '1' then
         current_bigm2r <= s91;

      elsif ( not x15 and not x63 and x12 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      else
         current_bigm2r <= s91;

      end if;

   when s92 =>
      if ( x62 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( not x62 and x15 and x13 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s154;

      elsif ( not x62 and x15 and not x13 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s100;

      elsif ( not x62 and not x15 and x12 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s100;

      else
         current_bigm2r <= s92;

      end if;

   when s93 =>
      if ( x63 and x15 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s95;

      elsif ( x63 and not x15 and x13 and x11 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x63 and not x15 and x13 and not x11 and x6 and x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( x63 and not x15 and x13 and not x11 and x6 and not x4 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s98;

      elsif ( x63 and not x15 and x13 and not x11 and not x6 and x5 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x63 and not x15 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s99;

      elsif ( x63 and not x15 and not x13 and x14 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x15 and not x13 and not x14 and x9 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x15 and not x13 and not x14 and not x9 and x6 and x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x15 and not x13 and not x14 and not x9 and x6 and not x2 ) = '1' then
         current_bigm2r <= s93;

      elsif ( x63 and not x15 and not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s44;

      elsif ( x63 and not x15 and not x13 and not x14 and not x9 and not x6 and not x8 ) = '1' then
         current_bigm2r <= s93;

      else
         y47 <= '1' ;
         current_bigm2r <= s155;

      end if;

   when s94 =>
      if ( x63 and x62 and x26 and x28 and x23 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( x63 and x62 and x26 and x28 and not x23 and x25 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x63 and x62 and x26 and x28 and not x23 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and x62 and x26 and not x28 and x3 and x25 ) = '1' then
         current_bigm2r <= s94;

      elsif ( x63 and x62 and x26 and not x28 and x3 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and x62 and x26 and not x28 and not x3 and x4 and x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and x62 and x26 and not x28 and not x3 and x4 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x63 and x62 and x26 and not x28 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x63 and x62 and not x26 and x27 and x4 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and x62 and not x26 and x27 and not x4 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x63 and x62 and not x26 and not x27 and x28 and x11 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x63 and x62 and not x26 and not x27 and x28 and not x11 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s80;

      elsif ( x63 and x62 and not x26 and not x27 and not x28 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x62 and x46 and x47 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and not x62 and x46 and not x47 and x34 and x2 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( x63 and not x62 and x46 and not x47 and x34 and not x2 ) = '1' then
         current_bigm2r <= s94;

      elsif ( x63 and not x62 and x46 and not x47 and not x34 and x4 and x2 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and x46 and not x47 and not x34 and x4 and not x2 ) = '1' then
         current_bigm2r <= s94;

      elsif ( x63 and not x62 and x46 and not x47 and not x34 and not x4 and x32 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x63 and not x62 and x46 and not x47 and not x34 and not x4 and x32 and not x2 ) = '1' then
         current_bigm2r <= s94;

      elsif ( x63 and not x62 and x46 and not x47 and not x34 and not x4 and not x32 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( x63 and not x62 and x46 and not x47 and not x34 and not x4 and not x32 and not x2 ) = '1' then
         current_bigm2r <= s94;

      elsif ( x63 and not x62 and not x46 and x16 and x4 and x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and not x62 and not x46 and x16 and x4 and not x5 and x1 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and not x62 and not x46 and x16 and x4 and not x5 and not x1 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( x63 and not x62 and not x46 and x16 and not x4 and x32 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( x63 and not x62 and not x46 and x16 and not x4 and not x32 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( x63 and not x62 and not x46 and not x16 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and x62 and x15 and x16 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and x62 and x15 and not x16 and x31 and x2 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and x62 and x15 and not x16 and x31 and not x2 ) = '1' then
         current_bigm2r <= s94;

      elsif ( not x63 and x62 and x15 and not x16 and not x31 and x4 and x2 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and x15 and not x16 and not x31 and x4 and not x2 ) = '1' then
         current_bigm2r <= s94;

      elsif ( not x63 and x62 and x15 and not x16 and not x31 and not x4 and x37 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and x62 and x15 and not x16 and not x31 and not x4 and x37 and not x2 ) = '1' then
         current_bigm2r <= s94;

      elsif ( not x63 and x62 and x15 and not x16 and not x31 and not x4 and not x37 and x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s37;

      elsif ( not x63 and x62 and x15 and not x16 and not x31 and not x4 and not x37 and not x2 ) = '1' then
         current_bigm2r <= s94;

      elsif ( not x63 and x62 and not x15 and x16 and x4 and x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and x62 and not x15 and x16 and x4 and not x5 and x36 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and x62 and not x15 and x16 and x4 and not x5 and not x36 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s3;

      elsif ( not x63 and x62 and not x15 and x16 and not x4 and x37 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and x62 and not x15 and x16 and not x4 and not x37 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s70;

      elsif ( not x63 and x62 and not x15 and not x16 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and x51 and x24 and x5 and x36 ) = '1' then
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and x61 and x51 and x24 and x5 and not x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and not x62 and x61 and x51 and x24 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and x51 and not x24 and x31 and x29 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and not x62 and x61 and x51 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and x51 and not x24 and not x31 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and not x62 and x61 and not x51 and x11 and x35 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s42;

      elsif ( not x63 and not x62 and x61 and not x51 and x11 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and not x51 and x11 and not x35 and x60 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and x61 and not x51 and x11 and not x35 and not x60 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and not x51 and not x11 and x52 and x35 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s80;

      elsif ( not x63 and not x62 and x61 and not x51 and not x11 and x52 and not x35 and x60 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and x61 and not x51 and not x11 and x52 and not x35 and not x60 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and not x51 and not x11 and not x52 and x3 and x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x63 and not x62 and x61 and not x51 and not x11 and not x52 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and x61 and not x51 and not x11 and not x52 and not x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x61 and x11 and x10 and x4 and x5 and x3 ) = '1' then
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and not x61 and x11 and x10 and x4 and x5 and not x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and not x62 and not x61 and x11 and x10 and x4 and not x5 and x3 ) = '1' then
         current_bigm2r <= s94;

      elsif ( not x63 and not x62 and not x61 and x11 and x10 and x4 and not x5 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x63 and not x62 and not x61 and x11 and x10 and not x4 and x3 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x61 and x11 and x10 and not x4 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x63 and not x62 and not x61 and x11 and not x10 and x6 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x63 and not x62 and not x61 and x11 and not x10 and not x6 and x8 and x4 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s43;

      elsif ( not x63 and not x62 and not x61 and x11 and not x10 and not x6 and x8 and not x4 and x1 and x3 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x63 and not x62 and not x61 and x11 and not x10 and not x6 and x8 and not x4 and x1 and not x3 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x63 and not x62 and not x61 and x11 and not x10 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x63 and not x62 and not x61 and x11 and not x10 and not x6 and not x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and not x61 and not x11 and x10 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and not x62 and not x61 and not x11 and x10 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and not x61 and not x11 and not x10 and x12 and x9 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and not x61 and not x11 and not x10 and x12 and not x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s80;

      elsif ( not x63 and not x62 and not x61 and not x11 and not x10 and not x12 and x6 ) = '1' then
         y22 <= '1' ;
         current_bigm2r <= s148;

      elsif ( not x63 and not x62 and not x61 and not x11 and not x10 and not x12 and not x6 and x9 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      else
         y4 <= '1' ;
         current_bigm2r <= s39;

      end if;

   when s95 =>
      if ( x63 and x28 and x26 and x62 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x63 and x28 and x26 and x62 and not x1 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x63 and x28 and x26 and x62 and not x1 and not x2 and x25 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x63 and x28 and x26 and x62 and not x1 and not x2 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and x28 and x26 and not x62 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( x63 and x28 and x26 and not x62 and not x32 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( x63 and x28 and x26 and not x62 and not x32 and not x2 and x25 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( x63 and x28 and x26 and not x62 and not x32 and not x2 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x63 and x28 and not x26 and x27 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s156;

      elsif ( x63 and x28 and not x26 and not x27 and x62 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x63 and x28 and not x26 and not x27 and x62 and not x1 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x63 and x28 and not x26 and not x27 and x62 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and x28 and not x26 and not x27 and not x62 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( x63 and x28 and not x26 and not x27 and not x62 and not x1 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( x63 and x28 and not x26 and not x27 and not x62 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x63 and not x28 and x26 and x62 and x1 and x2 and x3 and x25 ) = '1' then
         current_bigm2r <= s95;

      elsif ( x63 and not x28 and x26 and x62 and x1 and x2 and x3 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x63 and not x28 and x26 and x62 and x1 and x2 and not x3 and x4 and x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x63 and not x28 and x26 and x62 and x1 and x2 and not x3 and x4 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x63 and not x28 and x26 and x62 and x1 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x63 and not x28 and x26 and x62 and x1 and not x2 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s156;

      elsif ( x63 and not x28 and x26 and x62 and not x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x63 and not x28 and x26 and not x62 and x32 and x33 and x34 and x25 ) = '1' then
         current_bigm2r <= s95;

      elsif ( x63 and not x28 and x26 and not x62 and x32 and x33 and x34 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x63 and not x28 and x26 and not x62 and x32 and x33 and not x34 and x35 and x36 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( x63 and not x28 and x26 and not x62 and x32 and x33 and not x34 and x35 and not x36 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( x63 and not x28 and x26 and not x62 and x32 and x33 and not x34 and not x35 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( x63 and not x28 and x26 and not x62 and x32 and not x33 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s156;

      elsif ( x63 and not x28 and x26 and not x62 and not x32 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( x63 and not x28 and not x26 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s156;

      elsif ( not x63 and x62 and x26 and x37 and x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x63 and x62 and x26 and x37 and not x28 and x32 and x3 and x25 ) = '1' then
         current_bigm2r <= s95;

      elsif ( not x63 and x62 and x26 and x37 and not x28 and x32 and x3 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x63 and x62 and x26 and x37 and not x28 and x32 and not x3 and x4 and x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x63 and x62 and x26 and x37 and not x28 and x32 and not x3 and x4 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x63 and x62 and x26 and x37 and not x28 and x32 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x63 and x62 and x26 and x37 and not x28 and not x32 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s156;

      elsif ( not x63 and x62 and x26 and not x37 and x28 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x63 and x62 and x26 and not x37 and x28 and not x2 and x25 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x63 and x62 and x26 and not x37 and x28 and not x2 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x63 and x62 and x26 and not x37 and not x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x63 and x62 and not x26 and x27 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s156;

      elsif ( not x63 and x62 and not x26 and not x27 and x28 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x63 and x62 and not x26 and not x27 and x28 and not x1 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x63 and x62 and not x26 and not x27 and x28 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x63 and x62 and not x26 and not x27 and not x28 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s156;

      else
         y1 <= '1' ;
         current_bigm2r <= s37;

      end if;

   when s96 =>
      if ( x62 and x63 and x40 and x51 and x24 and x5 and x36 ) = '1' then
         current_bigm2r <= s96;

      elsif ( x62 and x63 and x40 and x51 and x24 and x5 and not x36 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and x40 and x51 and x24 and not x5 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and x51 and not x24 and x31 and x29 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and x40 and x51 and not x24 and x31 and not x29 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and x51 and not x24 and not x31 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and x40 and not x51 and x11 and x35 and x5 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and x40 and not x51 and x11 and x35 and not x5 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x51 and x11 and not x35 and x41 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and x40 and not x51 and x11 and not x35 and not x41 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x51 and not x11 and x49 and x35 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( x62 and x63 and x40 and not x51 and not x11 and x49 and not x35 and x41 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and x40 and not x51 and not x11 and x49 and not x35 and not x41 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x51 and not x11 and not x49 and x3 and x6 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and x63 and x40 and not x51 and not x11 and not x49 and x3 and not x6 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x51 and not x11 and not x49 and not x3 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and not x40 and x11 and x10 and x4 and x5 and x3 ) = '1' then
         current_bigm2r <= s96;

      elsif ( x62 and x63 and not x40 and x11 and x10 and x4 and x5 and not x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and x11 and x10 and x4 and not x5 and x3 ) = '1' then
         current_bigm2r <= s96;

      elsif ( x62 and x63 and not x40 and x11 and x10 and x4 and not x5 and not x3 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and x63 and not x40 and x11 and x10 and not x4 and x3 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and not x40 and x11 and x10 and not x4 and not x3 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and x63 and not x40 and x11 and not x10 and x6 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x62 and x63 and not x40 and x11 and not x10 and not x6 and x8 and x4 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      elsif ( x62 and x63 and not x40 and x11 and not x10 and not x6 and x8 and not x4 and x1 and x3 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x63 and not x40 and x11 and not x10 and not x6 and x8 and not x4 and x1 and not x3 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x62 and x63 and not x40 and x11 and not x10 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x63 and not x40 and x11 and not x10 and not x6 and not x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and not x40 and not x11 and x10 and x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and not x11 and x10 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and not x40 and not x11 and not x10 and x12 and x9 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and not x40 and not x11 and not x10 and x12 and not x9 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( x62 and x63 and not x40 and not x11 and not x10 and not x12 and x6 ) = '1' then
         y23 <= '1' ;
         current_bigm2r <= s126;

      elsif ( x62 and x63 and not x40 and not x11 and not x10 and not x12 and not x6 and x9 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and not x40 and not x11 and not x10 and not x12 and not x6 and not x9 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and x51 and x24 and x5 and x36 ) = '1' then
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and x44 and x51 and x24 and x5 and not x36 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and x44 and x51 and x24 and not x5 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and x51 and not x24 and x31 and x29 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and x44 and x51 and not x24 and x31 and not x29 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and x51 and not x24 and not x31 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and x44 and not x51 and x11 and x35 and x5 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and x44 and not x51 and x11 and x35 and not x5 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and not x51 and x11 and not x35 and x45 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and x44 and not x51 and x11 and not x35 and not x45 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and not x51 and not x11 and x52 and x35 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s100;

      elsif ( x62 and not x63 and x44 and not x51 and not x11 and x52 and not x35 and x45 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and x44 and not x51 and not x11 and x52 and not x35 and not x45 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and not x51 and not x11 and not x52 and x41 and x6 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and not x63 and x44 and not x51 and not x11 and not x52 and x41 and not x6 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and not x51 and not x11 and not x52 and not x41 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and not x44 and x10 and x11 and x4 and x5 and x3 ) = '1' then
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and not x44 and x10 and x11 and x4 and x5 and not x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and not x44 and x10 and x11 and x4 and not x5 and x3 ) = '1' then
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and not x44 and x10 and x11 and x4 and not x5 and not x3 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and not x63 and not x44 and x10 and x11 and not x4 and x3 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and not x44 and x10 and x11 and not x4 and not x3 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x63 and not x44 and x10 and not x11 and x34 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and not x44 and x10 and not x11 and not x34 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and x6 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and not x6 and x8 and x4 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and not x6 and x8 and not x4 and x1 and x41 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and not x6 and x8 and not x4 and x1 and not x41 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 and not x6 and not x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and x12 and x9 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and x12 and not x9 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s100;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and not x12 and x6 ) = '1' then
         y23 <= '1' ;
         current_bigm2r <= s126;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and not x12 and not x6 and x9 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and not x12 and not x6 and not x9 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and x51 and x24 and x36 ) = '1' then
         current_bigm2r <= s96;

      elsif ( not x62 and x55 and x51 and x24 and not x36 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and x51 and not x24 and x31 and x29 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( not x62 and x55 and x51 and not x24 and x31 and not x29 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and x51 and not x24 and not x31 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( not x62 and x55 and not x51 and x42 and x35 and x36 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( not x62 and x55 and not x51 and x42 and x35 and not x36 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x51 and x42 and not x35 and x58 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x55 and not x51 and x42 and not x35 and not x58 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x51 and not x42 and x52 and x35 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s140;

      elsif ( not x62 and x55 and not x51 and not x42 and x52 and not x35 and x58 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x55 and not x51 and not x42 and x52 and not x35 and not x58 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x51 and not x42 and not x52 and x3 and x6 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( not x62 and x55 and not x51 and not x42 and not x52 and x3 and not x6 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x51 and not x42 and not x52 and not x3 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and not x55 and x10 and x11 and x34 and x35 ) = '1' then
         current_bigm2r <= s96;

      elsif ( not x62 and not x55 and x10 and x11 and x34 and not x35 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and not x55 and x10 and x11 and not x34 and x4 and x5 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and x10 and x11 and not x34 and x4 and not x5 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( not x62 and not x55 and x10 and x11 and not x34 and not x4 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and not x55 and x10 and not x11 and x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and x10 and not x11 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and not x55 and not x10 and x42 and x37 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( not x62 and not x55 and not x10 and x42 and not x37 and x8 and x4 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( not x62 and not x55 and not x10 and x42 and not x37 and x8 and not x4 and x1 and x34 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x55 and not x10 and x42 and not x37 and x8 and not x4 and x1 and not x34 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and not x55 and not x10 and x42 and not x37 and x8 and not x4 and not x1 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and not x55 and not x10 and x42 and not x37 and not x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and not x55 and not x10 and not x42 and x12 and x9 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and not x55 and not x10 and not x42 and x12 and not x9 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s140;

      elsif ( not x62 and not x55 and not x10 and not x42 and not x12 and x6 ) = '1' then
         y23 <= '1' ;
         current_bigm2r <= s126;

      elsif ( not x62 and not x55 and not x10 and not x42 and not x12 and not x6 and x40 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      else
         y34 <= '1' ;
         current_bigm2r <= s139;

      end if;

   when s97 =>
      if ( x15 and x62 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( x15 and not x62 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      else
         y21 <= '1' ;
         current_bigm2r <= s95;

      end if;

   when s98 =>
      if ( x15 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s99;

      elsif ( not x15 and x62 and x5 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x15 and x62 and not x5 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s99;

      elsif ( not x15 and not x62 and x36 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      else
         y33 <= '1' ;
         current_bigm2r <= s99;

      end if;

   when s99 =>
      if ( x62 and x15 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s90;

      elsif ( x62 and not x15 and x3 and x2 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s22;

      elsif ( x62 and not x15 and x3 and not x2 ) = '1' then
         current_bigm2r <= s99;

      elsif ( x62 and not x15 and not x3 and x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( x62 and not x15 and not x3 and x4 and not x2 ) = '1' then
         current_bigm2r <= s99;

      elsif ( x62 and not x15 and not x3 and not x4 and x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s98;

      elsif ( x62 and not x15 and not x3 and not x4 and not x2 ) = '1' then
         current_bigm2r <= s99;

      elsif ( not x62 and x46 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s90;

      elsif ( not x62 and not x46 and x34 and x2 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s92;

      elsif ( not x62 and not x46 and x34 and not x2 ) = '1' then
         current_bigm2r <= s99;

      elsif ( not x62 and not x46 and not x34 and x35 and x2 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x62 and not x46 and not x34 and x35 and not x2 ) = '1' then
         current_bigm2r <= s99;

      elsif ( not x62 and not x46 and not x34 and not x35 and x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s98;

      else
         current_bigm2r <= s99;

      end if;

   when s100 =>
      if ( x62 and x63 and x15 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s95;

      elsif ( x62 and x63 and not x15 and x11 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and x63 and not x15 and not x11 and x10 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      elsif ( x62 and x63 and not x15 and not x11 and not x10 ) = '1' then
         current_bigm2r <= s100;

      elsif ( x62 and not x63 and x44 and x1 and x28 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x63 and x44 and x1 and not x28 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and x44 and not x1 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( x62 and not x63 and not x44 and x10 and x37 and x2 and x41 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( x62 and not x63 and not x44 and x10 and x37 and x2 and not x41 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and not x63 and not x44 and x10 and x37 and x2 and not x41 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and not x63 and not x44 and x10 and x37 and not x2 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and not x44 and x10 and not x37 and x2 and x9 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s154;

      elsif ( x62 and not x63 and not x44 and x10 and not x37 and x2 and not x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and not x63 and not x44 and x10 and not x37 and not x2 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and not x44 and not x10 ) = '1' then
         current_bigm2r <= s100;

      elsif ( not x62 and x46 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s95;

      elsif ( not x62 and not x46 and x44 and x35 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x62 and not x46 and x44 and not x35 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s98;

      elsif ( not x62 and not x46 and not x44 and x14 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s92;

      elsif ( not x62 and not x46 and not x44 and not x14 and x40 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s92;

      elsif ( not x62 and not x46 and not x44 and not x14 and not x40 and x38 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s92;

      elsif ( not x62 and not x46 and not x44 and not x14 and not x40 and not x38 and x39 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s92;

      else
         current_bigm2r <= s100;

      end if;

   when s101 =>
      if ( x62 and x63 and x40 and x37 and x28 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and x63 and x40 and x37 and not x28 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and x40 and not x37 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x62 and x63 and not x40 and x2 and x10 and x1 and x3 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x62 and x63 and not x40 and x2 and x10 and x1 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x63 and not x40 and x2 and x10 and x1 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x63 and not x40 and x2 and x10 and not x1 and x9 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s150;

      elsif ( x62 and x63 and not x40 and x2 and x10 and not x1 and not x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x63 and not x40 and x2 and not x10 ) = '1' then
         current_bigm2r <= s101;

      elsif ( x62 and x63 and not x40 and not x2 and x10 and x1 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and not x40 and not x2 and x10 and not x1 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and not x40 and not x2 and not x10 ) = '1' then
         current_bigm2r <= s101;

      elsif ( x62 and not x63 and x15 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s95;

      elsif ( x62 and not x63 and not x15 and x11 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( x62 and not x63 and not x15 and not x11 and x10 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      elsif ( x62 and not x63 and not x15 and not x11 and not x10 ) = '1' then
         current_bigm2r <= s101;

      elsif ( not x62 and x55 and x48 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( not x62 and x55 and not x48 and x57 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and x55 and not x48 and not x57 ) = '1' then
         current_bigm2r <= s101;

      elsif ( not x62 and not x55 and x37 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      else
         y45 <= '1' ;
         current_bigm2r <= s101;

      end if;

   when s102 =>
      if ( x62 and x15 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s95;

      elsif ( x62 and not x15 and x13 and x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( x62 and not x15 and x13 and not x4 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s98;

      elsif ( x62 and not x15 and not x13 and x14 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s22;

      elsif ( x62 and not x15 and not x13 and not x14 and x9 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s22;

      elsif ( x62 and not x15 and not x13 and not x14 and not x9 and x7 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s22;

      elsif ( x62 and not x15 and not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s22;

      elsif ( x62 and not x15 and not x13 and not x14 and not x9 and not x7 and not x8 ) = '1' then
         current_bigm2r <= s102;

      elsif ( not x62 and x55 and x35 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x55 and not x35 and x13 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( not x62 and x55 and not x35 and not x13 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( not x62 and not x55 and x41 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and not x55 and not x41 and x42 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( not x62 and not x55 and not x41 and not x42 and x38 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      else
         y40 <= '1' ;
         current_bigm2r <= s82;

      end if;

   when s103 =>
      if ( x63 and x62 ) = '1' then
         y48 <= '1' ;
         current_bigm2r <= s151;

      elsif ( x63 and not x62 ) = '1' then
         y51 <= '1' ;
         current_bigm2r <= s153;

      elsif ( not x63 and x62 ) = '1' then
         y49 <= '1' ;
         current_bigm2r <= s152;

      elsif ( not x63 and not x62 and x61 and x29 and x50 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x63 and not x62 and x61 and x29 and not x50 ) = '1' then
         current_bigm2r <= s103;

      elsif ( not x63 and not x62 and x61 and not x29 and x60 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x63 and not x62 and x61 and not x29 and not x60 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      elsif ( not x63 and not x62 and not x61 and x11 and x6 and x9 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x63 and not x62 and not x61 and x11 and x6 and not x9 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s23;

      elsif ( not x63 and not x62 and not x61 and x11 and not x6 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s54;

      elsif ( not x63 and not x62 and not x61 and not x11 and x8 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s39;

      else
         y13 <= '1' ;
         current_bigm2r <= s43;

      end if;

   when s104 =>
      if ( x63 and x62 and x40 and x29 and x50 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s149;

      elsif ( x63 and x62 and x40 and x29 and not x50 ) = '1' then
         current_bigm2r <= s104;

      elsif ( x63 and x62 and x40 and not x29 and x41 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x63 and x62 and x40 and not x29 and not x41 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x63 and x62 and not x40 and x11 and x6 and x9 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x63 and x62 and not x40 and x11 and x6 and not x9 ) = '1' then
         y51 <= '1' ;
         current_bigm2r <= s83;

      elsif ( x63 and x62 and not x40 and x11 and not x6 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x63 and x62 and not x40 and not x11 and x8 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x63 and x62 and not x40 and not x11 and not x8 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      elsif ( x63 and not x62 and x55 and x29 and x50 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( x63 and not x62 and x55 and x29 and not x50 ) = '1' then
         current_bigm2r <= s104;

      elsif ( x63 and not x62 and x55 and not x29 and x58 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x63 and not x62 and x55 and not x29 and not x58 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x63 and not x62 and not x55 and x11 and x6 and x40 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x63 and not x62 and not x55 and x11 and x6 and not x40 ) = '1' then
         y54 <= '1' ;
         current_bigm2r <= s141;

      elsif ( x63 and not x62 and not x55 and x11 and not x6 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x63 and not x62 and not x55 and not x11 and x39 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x63 and not x62 and not x55 and not x11 and not x39 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( not x63 and x62 and x44 and x29 and x50 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s150;

      elsif ( not x63 and x62 and x44 and x29 and not x50 ) = '1' then
         current_bigm2r <= s104;

      elsif ( not x63 and x62 and x44 and not x29 and x45 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( not x63 and x62 and x44 and not x29 and not x45 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x63 and x62 and not x44 and x11 and x6 and x9 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( not x63 and x62 and not x44 and x11 and x6 and not x9 ) = '1' then
         y52 <= '1' ;
         current_bigm2r <= s86;

      elsif ( not x63 and x62 and not x44 and x11 and not x6 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( not x63 and x62 and not x44 and not x11 and x8 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x63 and x62 and not x44 and not x11 and not x8 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      elsif ( not x63 and not x62 and x61 and x50 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( not x63 and not x62 and x61 and not x50 ) = '1' then
         current_bigm2r <= s104;

      elsif ( not x63 and not x62 and not x61 and x11 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s129;

      elsif ( not x63 and not x62 and not x61 and not x11 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s129;

      else
         y8 <= '1' ;
         current_bigm2r <= s51;

      end if;

   when s105 =>
      if ( x26 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s156;

      elsif ( not x26 and x28 and x62 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x26 and x28 and x62 and not x5 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s157;

      elsif ( not x26 and x28 and not x62 and x36 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s67;

      elsif ( not x26 and x28 and not x62 and not x36 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s157;

      else
         y37 <= '1' ;
         current_bigm2r <= s106;

      end if;

   when s106 =>
      if ( x26 and x21 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x26 and not x21 and x62 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x26 and not x21 and not x62 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x26 and x27 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x26 and not x27 and x28 and x62 and x3 and x63 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x26 and not x27 and x28 and x62 and x3 and not x63 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x26 and not x27 and x28 and x62 and not x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x26 and not x27 and x28 and not x62 and x34 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x26 and not x27 and x28 and not x62 and not x34 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x26 and not x27 and not x28 and x19 and x24 and x62 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x26 and not x27 and not x28 and x19 and x24 and not x62 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( not x26 and not x27 and not x28 and x19 and not x24 ) = '1' then
         current_bigm2r <= s1;

      else
         y39 <= '1' ;
         current_bigm2r <= s105;

      end if;

   when s107 =>
      if ( x26 and x62 and x8 and x63 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x26 and x62 and x8 and x63 and not x1 and x14 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x26 and x62 and x8 and x63 and not x1 and not x14 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x26 and x62 and x8 and not x63 and x37 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( x26 and x62 and x8 and not x63 and not x37 and x14 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( x26 and x62 and x8 and not x63 and not x37 and not x14 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x26 and x62 and not x8 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s105;

      elsif ( x26 and not x62 and x39 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( x26 and not x62 and x39 and not x32 and x14 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( x26 and not x62 and x39 and not x32 and not x14 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x26 and not x62 and not x39 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s105;

      elsif ( not x26 and x28 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x26 and not x28 and x6 and x62 and x7 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x26 and not x28 and x6 and x62 and x7 and x5 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( not x26 and not x28 and x6 and x62 and x7 and x5 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x26 and not x28 and x6 and x62 and x7 and not x5 and x63 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x26 and not x28 and x6 and x62 and x7 and not x5 and not x63 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x26 and not x28 and x6 and x62 and not x7 and x8 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x26 and not x28 and x6 and x62 and not x7 and not x8 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x26 and not x28 and x6 and x62 and not x7 and not x8 and x5 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( not x26 and not x28 and x6 and x62 and not x7 and not x8 and x5 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x26 and not x28 and x6 and x62 and not x7 and not x8 and not x5 and x63 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x26 and not x28 and x6 and x62 and not x7 and not x8 and not x5 and not x63 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x26 and not x28 and x6 and not x62 and x38 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x26 and not x28 and x6 and not x62 and x38 and x5 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( not x26 and not x28 and x6 and not x62 and x38 and x5 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x26 and not x28 and x6 and not x62 and x38 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x26 and not x28 and x6 and not x62 and not x38 and x8 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( not x26 and not x28 and x6 and not x62 and not x38 and not x8 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x26 and not x28 and x6 and not x62 and not x38 and not x8 and x5 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( not x26 and not x28 and x6 and not x62 and not x38 and not x8 and x5 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x26 and not x28 and x6 and not x62 and not x38 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x26 and not x28 and not x6 and x24 and x62 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x26 and not x28 and not x6 and x24 and not x62 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      else
         current_bigm2r <= s1;

      end if;

   when s108 =>
      if ( x1 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s108;

      elsif ( not x1 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      else
         y5 <= '1' ;
         current_bigm2r <= s28;

      end if;

   when s109 =>
      if ( x62 and x63 and x40 and x22 and x2 and x33 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and x63 and x40 and x22 and x2 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x62 and x63 and x40 and x22 and x2 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x62 and x63 and x40 and x22 and not x2 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and x63 and x40 and not x22 and x31 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and x63 and x40 and not x22 and not x31 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x62 and x63 and not x40 and x46 and x3 and x23 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x62 and x63 and not x40 and x46 and x3 and not x23 ) = '1' then
         current_bigm2r <= s109;

      elsif ( x62 and x63 and not x40 and x46 and not x3 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and x63 and not x40 and not x46 and x2 and x23 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x62 and x63 and not x40 and not x46 and x2 and not x23 ) = '1' then
         current_bigm2r <= s109;

      elsif ( x62 and x63 and not x40 and not x46 and not x2 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x63 and x44 and x22 and x2 and x33 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s109;

      elsif ( x62 and not x63 and x44 and x22 and x2 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and not x63 and x44 and x22 and x2 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( x62 and not x63 and x44 and x22 and not x2 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x63 and x44 and not x22 and x31 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x63 and x44 and not x22 and not x31 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s14;

      elsif ( x62 and not x63 and not x44 and x46 and x3 and x23 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x62 and not x63 and not x44 and x46 and x3 and not x23 ) = '1' then
         current_bigm2r <= s109;

      elsif ( x62 and not x63 and not x44 and x46 and not x3 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( x62 and not x63 and not x44 and not x46 and x33 and x23 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( x62 and not x63 and not x44 and not x46 and x33 and not x23 ) = '1' then
         current_bigm2r <= s109;

      elsif ( x62 and not x63 and not x44 and not x46 and not x33 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and x25 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x62 and not x25 and x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      else
         current_bigm2r <= s1;

      end if;

   when s110 =>
      if ( x62 and x63 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s9;

      elsif ( x62 and not x63 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      else
         y6 <= '1' ;
         current_bigm2r <= s81;

      end if;

   when s111 =>
      if ( x62 and x25 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x62 and not x25 and x28 and x63 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x62 and not x25 and x28 and not x63 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( x62 and not x25 and not x28 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x62 and x55 and x22 and x2 and x33 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( not x62 and x55 and x22 and x2 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and x55 and x22 and x2 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x62 and x55 and x22 and not x2 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and x55 and not x22 and x31 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and x55 and not x22 and not x31 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x62 and not x55 and x46 and x3 and x23 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x62 and not x55 and x46 and x3 and not x23 ) = '1' then
         current_bigm2r <= s111;

      elsif ( not x62 and not x55 and x46 and not x3 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s65;

      elsif ( not x62 and not x55 and not x46 and x33 and x23 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x62 and not x55 and not x46 and x33 and not x23 ) = '1' then
         current_bigm2r <= s111;

      else
         y42 <= '1' ;
         current_bigm2r <= s65;

      end if;

   when s112 =>
      if ( x15 ) = '1' then
         y17 <= '1' ;
         current_bigm2r <= s57;

      elsif ( not x15 and x12 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s113;

      else
         current_bigm2r <= s112;

      end if;

   when s113 =>
      if ( x15 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s158;

      elsif ( not x15 and x13 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s134;

      elsif ( not x15 and x13 and not x11 and x6 and x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s159;

      elsif ( not x15 and x13 and not x11 and x6 and not x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x15 and x13 and not x11 and not x6 and x5 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s160;

      elsif ( not x15 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x15 and not x13 and x14 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s161;

      elsif ( not x15 and not x13 and not x14 and x9 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s161;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s161;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and not x2 ) = '1' then
         current_bigm2r <= s113;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s161;

      else
         current_bigm2r <= s113;

      end if;

   when s114 =>
      if ( x62 and x26 and x28 and x3 and x5 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s105;

      elsif ( x62 and x26 and x28 and x3 and not x5 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x62 and x26 and x28 and not x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x62 and x26 and not x28 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( x62 and not x26 and x27 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x62 and not x26 and not x27 and x28 and x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( x62 and not x26 and not x27 and x28 and not x5 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x62 and not x26 and not x27 and not x28 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( x62 and not x26 and not x27 and not x28 and x5 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( x62 and not x26 and not x27 and not x28 and x5 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x62 and not x26 and not x27 and not x28 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x62 and x63 and x26 and x28 and x3 and x5 ) = '1' then
         y39 <= '1' ;
         current_bigm2r <= s105;

      elsif ( not x62 and x63 and x26 and x28 and x3 and not x5 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x62 and x63 and x26 and x28 and not x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x62 and x63 and x26 and not x28 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x62 and x63 and not x26 and x27 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x62 and x63 and not x26 and not x27 and x36 and x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x62 and x63 and not x26 and not x27 and x36 and not x28 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x62 and x63 and not x26 and not x27 and x36 and not x28 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( not x62 and x63 and not x26 and not x27 and x36 and not x28 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x62 and x63 and not x26 and not x27 and not x36 and x28 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x62 and x63 and not x26 and not x27 and not x36 and not x28 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x62 and not x63 and not x15 and x5 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s160;

      else
         y3 <= '1' ;
         current_bigm2r <= s115;

      end if;

   when s115 =>
      if ( x62 and x26 and x28 and x23 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( x62 and x26 and x28 and not x23 and x25 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( x62 and x26 and x28 and not x23 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x62 and x26 and not x28 and x3 and x25 ) = '1' then
         current_bigm2r <= s115;

      elsif ( x62 and x26 and not x28 and x3 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x62 and x26 and not x28 and not x3 and x4 and x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x62 and x26 and not x28 and not x3 and x4 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( x62 and x26 and not x28 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( x62 and not x26 and x27 and x4 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( x62 and not x26 and x27 and not x4 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x62 and not x26 and not x27 and x28 and x11 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x62 and not x26 and not x27 and x28 and not x11 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s8;

      elsif ( x62 and not x26 and not x27 and not x28 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x62 and x63 and x26 and x28 and x23 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( not x62 and x63 and x26 and x28 and not x23 and x25 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x62 and x63 and x26 and x28 and not x23 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x62 and x63 and x26 and not x28 and x34 and x25 ) = '1' then
         current_bigm2r <= s115;

      elsif ( not x62 and x63 and x26 and not x28 and x34 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x62 and x63 and x26 and not x28 and not x34 and x35 and x36 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x62 and x63 and x26 and not x28 and not x34 and x35 and not x36 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x62 and x63 and x26 and not x28 and not x34 and not x35 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x62 and x63 and not x26 and x27 and x35 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x62 and x63 and not x26 and x27 and not x35 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x62 and x63 and not x26 and not x27 and x28 and x11 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x62 and x63 and not x26 and not x27 and x28 and not x11 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s80;

      elsif ( not x62 and x63 and not x26 and not x27 and not x28 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x62 and not x63 and x15 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x62 and not x63 and not x15 and x3 and x2 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x62 and not x63 and not x15 and x3 and not x2 ) = '1' then
         current_bigm2r <= s115;

      elsif ( not x62 and not x63 and not x15 and not x3 and x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s159;

      elsif ( not x62 and not x63 and not x15 and not x3 and x4 and not x2 ) = '1' then
         current_bigm2r <= s115;

      elsif ( not x62 and not x63 and not x15 and not x3 and not x4 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      else
         current_bigm2r <= s115;

      end if;

   when s116 =>
      if ( x26 and x28 and x3 and x5 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s162;

      elsif ( x26 and x28 and x3 and not x5 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s119;

      elsif ( x26 and x28 and not x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( x26 and not x28 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s163;

      elsif ( not x26 and x27 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      elsif ( not x26 and not x27 and x28 and x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s117;

      elsif ( not x26 and not x27 and x28 and not x5 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s119;

      elsif ( not x26 and not x27 and not x28 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s164;

      elsif ( not x26 and not x27 and not x28 and x5 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s165;

      elsif ( not x26 and not x27 and not x28 and x5 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s119;

      else
         y5 <= '1' ;
         current_bigm2r <= s163;

      end if;

   when s117 =>
      if ( x26 and x28 and x23 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s165;

      elsif ( x26 and x28 and not x23 and x25 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s117;

      elsif ( x26 and x28 and not x23 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      elsif ( x26 and not x28 and x3 and x25 ) = '1' then
         current_bigm2r <= s117;

      elsif ( x26 and not x28 and x3 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      elsif ( x26 and not x28 and not x3 and x4 and x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( x26 and not x28 and not x3 and x4 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s163;

      elsif ( x26 and not x28 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s116;

      elsif ( not x26 and x27 and x4 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x26 and x27 and not x4 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x26 and not x27 and x28 and x11 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x26 and not x27 and x28 and not x11 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s166;

      else
         y6 <= '1' ;
         current_bigm2r <= s27;

      end if;

   when s118 =>
      if ( x62 and x6 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s60;

      elsif ( x62 and not x6 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s157;

      elsif ( not x62 and x37 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s60;

      else
         y15 <= '1' ;
         current_bigm2r <= s157;

      end if;

   when s119 =>
      if ( x26 and x21 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x26 and not x21 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x26 and x27 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x26 and not x27 and x28 and x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s116;

      elsif ( not x26 and not x27 and x28 and not x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s164;

      elsif ( not x26 and not x27 and not x28 and x19 and x24 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s167;

      elsif ( not x26 and not x27 and not x28 and x19 and not x24 ) = '1' then
         current_bigm2r <= s1;

      else
         y9 <= '1' ;
         current_bigm2r <= s162;

      end if;

   when s120 =>
      if ( x6 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s60;

      else
         y15 <= '1' ;
         current_bigm2r <= s157;

      end if;

   when s121 =>
      if ( x61 and x11 and x25 and x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x61 and x11 and x25 and not x3 and x5 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x61 and x11 and x25 and not x3 and not x5 ) = '1' then
         current_bigm2r <= s121;

      elsif ( x61 and x11 and not x25 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x61 and not x11 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x61 and x53 and x47 ) = '1' then
         current_bigm2r <= s121;

      elsif ( not x61 and x53 and not x47 and x59 and x51 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x61 and x53 and not x47 and x59 and not x51 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x61 and x53 and not x47 and not x59 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( not x61 and x53 and not x47 and not x59 and not x34 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      else
         y2 <= '1' ;
         current_bigm2r <= s24;

      end if;

   when s122 =>
      if ( x55 and x33 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s111;

      elsif ( x55 and not x33 and x13 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s15;

      elsif ( x55 and not x33 and not x13 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x55 and x50 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s48;

      else
         current_bigm2r <= s122;

      end if;

   when s123 =>
      if ( x15 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s158;

      elsif ( not x15 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s134;

      elsif ( not x15 and not x11 and x10 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s168;

      else
         current_bigm2r <= s123;

      end if;

   when s124 =>
      if ( x15 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s158;

      elsif ( not x15 and x13 and x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s159;

      elsif ( not x15 and x13 and not x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x15 and not x13 and x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x15 and not x13 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x15 and not x13 and not x14 and not x9 and x7 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      else
         current_bigm2r <= s124;

      end if;

   when s125 =>
      if ( x62 and x44 and x53 and x47 ) = '1' then
         current_bigm2r <= s125;

      elsif ( x62 and x44 and x53 and not x47 and x48 and x51 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and x44 and x53 and not x47 and x48 and not x51 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x44 and x53 and not x47 and not x48 and x34 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x44 and x53 and not x47 and not x48 and not x34 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and x44 and not x53 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x44 and x11 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x44 and not x11 and x1 and x34 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and not x44 and not x11 and x1 and not x34 and x3 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x44 and not x11 and x1 and not x34 and not x3 ) = '1' then
         current_bigm2r <= s125;

      elsif ( x62 and not x44 and not x11 and not x1 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( not x62 and x63 and x55 and x53 and x47 ) = '1' then
         current_bigm2r <= s125;

      elsif ( not x62 and x63 and x55 and x53 and not x47 and x59 and x51 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and x63 and x55 and x53 and not x47 and x59 and not x51 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and x63 and x55 and x53 and not x47 and not x59 and x34 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and x63 and x55 and x53 and not x47 and not x59 and not x34 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and x63 and x55 and not x53 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and x63 and not x55 and x11 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and x63 and not x55 and not x11 and x1 and x33 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and x63 and not x55 and not x11 and x1 and not x33 and x34 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and x63 and not x55 and not x11 and x1 and not x33 and not x34 ) = '1' then
         current_bigm2r <= s125;

      elsif ( not x62 and x63 and not x55 and not x11 and not x1 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( not x62 and not x63 and x61 and x53 and x47 ) = '1' then
         current_bigm2r <= s125;

      elsif ( not x62 and not x63 and x61 and x53 and not x47 and x59 and x51 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and not x63 and x61 and x53 and not x47 and x59 and not x51 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x62 and not x63 and x61 and x53 and not x47 and not x59 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x62 and not x63 and x61 and x53 and not x47 and not x59 and not x34 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and not x63 and x61 and not x53 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and not x63 and not x61 and x11 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and not x63 and not x61 and not x11 and x1 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and not x63 and not x61 and not x11 and x1 and not x2 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x62 and not x63 and not x61 and not x11 and x1 and not x2 and not x3 ) = '1' then
         current_bigm2r <= s125;

      else
         y5 <= '1' ;
         current_bigm2r <= s38;

      end if;

   when s126 =>
      if ( x63 and x3 and x62 and x5 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x63 and x3 and x62 and not x5 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x63 and x3 and not x62 and x5 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( x63 and x3 and not x62 and not x5 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( x63 and not x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x63 and x62 and x42 and x5 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x63 and x62 and x42 and not x5 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x63 and x62 and not x42 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x63 and not x62 and x7 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s103;

      else
         y7 <= '1' ;
         current_bigm2r <= s128;

      end if;

   when s127 =>
      if ( x62 and x63 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( x62 and not x63 ) = '1' then
         y50 <= '1' ;
         current_bigm2r <= s146;

      elsif ( not x62 and x45 and x13 ) = '1' then
         y52 <= '1' ;
         current_bigm2r <= s86;

      elsif ( not x62 and x45 and not x13 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      else
         y46 <= '1' ;
         current_bigm2r <= s154;

      end if;

   when s128 =>
      if ( x62 and x15 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( x62 and not x15 and x6 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s89;

      elsif ( x62 and not x15 and not x6 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s90;

      elsif ( not x62 and x63 and x41 and x12 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x63 and x41 and not x12 and x32 and x2 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x62 and x63 and x41 and not x12 and x32 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x63 and x41 and not x12 and not x32 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and x63 and not x41 and x42 and x32 ) = '1' then
         y54 <= '1' ;
         current_bigm2r <= s141;

      elsif ( not x62 and x63 and not x41 and x42 and not x32 and x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and x63 and not x41 and x42 and not x32 and not x3 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( not x62 and x63 and not x41 and not x42 and x43 and x34 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and x63 and not x41 and not x42 and x43 and not x34 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( not x62 and x63 and not x41 and not x42 and not x43 and x6 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x63 and not x41 and not x42 and not x43 and not x6 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x63 and x10 and x12 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x62 and not x63 and x10 and not x12 and x1 and x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and not x63 and x10 and not x12 and x1 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      elsif ( not x62 and not x63 and x10 and not x12 and not x1 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x62 and not x63 and not x10 and x11 and x1 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s23;

      elsif ( not x62 and not x63 and not x10 and x11 and not x1 and x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x62 and not x63 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x62 and not x63 and not x10 and not x11 and x12 and x3 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( not x62 and not x63 and not x10 and not x11 and x12 and not x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x62 and not x63 and not x10 and not x11 and not x12 and x6 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s58;

      else
         y6 <= '1' ;
         current_bigm2r <= s81;

      end if;

   when s129 =>
      if ( x61 and x3 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x61 and not x3 and x2 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s53;

      elsif ( x61 and not x3 and not x2 and x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s52;

      elsif ( x61 and not x3 and not x2 and not x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x61 and x10 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s18;

      elsif ( not x61 and x10 and x5 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s51;

      elsif ( not x61 and x10 and x5 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x61 and x10 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      elsif ( not x61 and not x10 and x11 and x1 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s23;

      elsif ( not x61 and not x10 and x11 and not x1 and x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x61 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      else
         current_bigm2r <= s129;

      end if;

   when s130 =>
      if ( x61 and x9 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x61 and not x9 and x37 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x61 and not x9 and not x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x61 and x10 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x61 and not x10 and x11 and x1 ) = '1' then
         y24 <= '1' ;
         current_bigm2r <= s23;

      elsif ( not x61 and not x10 and x11 and not x1 and x3 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x61 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s38;

      else
         y5 <= '1' ;
         current_bigm2r <= s38;

      end if;

   when s131 =>
      if ( x14 and x13 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s169;

      elsif ( x14 and not x13 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s113;

      else
         y16 <= '1' ;
         current_bigm2r <= s123;

      end if;

   when s132 =>
      if ( x19 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s47;

      elsif ( not x19 and x26 and x5 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s45;

      elsif ( not x19 and x26 and not x5 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      else
         y25 <= '1' ;
         current_bigm2r <= s78;

      end if;

   when s133 =>
      if ( x62 and x26 and x28 and x7 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( x62 and x26 and x28 and not x7 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x62 and x26 and not x28 ) = '1' then
         current_bigm2r <= s1;

      elsif ( x62 and not x26 and x27 and x25 and x9 ) = '1' then
         current_bigm2r <= s133;

      elsif ( x62 and not x26 and x27 and x25 and not x9 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( x62 and not x26 and x27 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x62 and not x26 and not x27 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s81;

      elsif ( not x62 and x63 and x26 and x28 and x7 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x62 and x63 and x26 and x28 and not x7 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x62 and x63 and x26 and not x28 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x62 and x63 and not x26 and x27 and x25 and x9 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and x63 and not x26 and x27 and x25 and not x9 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x62 and x63 and not x26 and x27 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x62 and x63 and not x26 and not x27 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x62 and not x63 and x15 and x3 and x11 and x2 ) = '1' then
         y19 <= '1' ;
         current_bigm2r <= s170;

      elsif ( not x62 and not x63 and x15 and x3 and x11 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and x3 and not x11 and x4 and x12 and x13 and x2 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s168;

      elsif ( not x62 and not x63 and x15 and x3 and not x11 and x4 and x12 and x13 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and x3 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and x3 and not x11 and x4 and not x12 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and x3 and not x11 and not x4 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and x4 and x11 and x2 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s171;

      elsif ( not x62 and not x63 and x15 and not x3 and x4 and x11 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and x4 and not x11 and x12 and x13 and x14 and x2 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s172;

      elsif ( not x62 and not x63 and x15 and not x3 and x4 and not x11 and x12 and x13 and x14 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and x4 and not x11 and x12 and x13 and not x14 and x2 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x62 and not x63 and x15 and not x3 and x4 and not x11 and x12 and x13 and not x14 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and x4 and not x11 and x12 and not x13 and x2 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( not x62 and not x63 and x15 and not x3 and x4 and not x11 and x12 and not x13 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and x4 and not x11 and not x12 and x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s161;

      elsif ( not x62 and not x63 and x15 and not x3 and x4 and not x11 and not x12 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and x5 and x6 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s134;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and x5 and x6 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and x5 and not x6 and x7 and x8 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s134;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and x5 and not x6 and x7 and x8 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s160;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s160;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s134;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and x6 and x7 and x9 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s134;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and x6 and x7 and x9 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s160;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s160;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s134;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s134;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s160;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and x2 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s160;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s134;

      elsif ( not x62 and not x63 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and not x2 ) = '1' then
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and not x15 and x7 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s123;

      elsif ( not x62 and not x63 and not x15 and not x7 and x9 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s123;

      elsif ( not x62 and not x63 and not x15 and not x7 and not x9 and x10 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x62 and not x63 and not x15 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x62 and not x63 and not x15 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s134;

      else
         current_bigm2r <= s133;

      end if;

   when s134 =>
      if ( x15 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s159;

      else
         y20 <= '1' ;
         current_bigm2r <= s158;

      end if;

   when s135 =>
      if ( x26 and x28 and x9 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s163;

      elsif ( x26 and x28 and not x9 and x23 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s117;

      elsif ( x26 and x28 and not x9 and not x23 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      elsif ( x26 and not x28 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x26 and x27 and x4 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x26 and x27 and not x4 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x26 and not x27 and x28 and x2 and x24 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s162;

      elsif ( not x26 and not x27 and x28 and x2 and not x24 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s119;

      elsif ( not x26 and not x27 and x28 and not x2 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x26 and not x27 and not x28 and x18 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s164;

      elsif ( not x26 and not x27 and not x28 and x18 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s165;

      elsif ( not x26 and not x27 and not x28 and x18 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s119;

      else
         y6 <= '1' ;
         current_bigm2r <= s27;

      end if;

   when s136 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x15 and x2 and x3 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( not x15 and x2 and not x3 and x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s159;

      elsif ( not x15 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      else
         current_bigm2r <= s136;

      end if;

   when s137 =>
      if ( x62 and x15 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s99;

      elsif ( x62 and not x15 and x3 and x2 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s22;

      elsif ( x62 and not x15 and x3 and not x2 ) = '1' then
         current_bigm2r <= s137;

      elsif ( x62 and not x15 and not x3 and x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( x62 and not x15 and not x3 and x4 and not x2 ) = '1' then
         current_bigm2r <= s137;

      elsif ( x62 and not x15 and not x3 and not x4 and x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s98;

      elsif ( x62 and not x15 and not x3 and not x4 and not x2 ) = '1' then
         current_bigm2r <= s137;

      elsif ( not x62 and x46 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s99;

      elsif ( not x62 and not x46 and x34 and x2 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s92;

      elsif ( not x62 and not x46 and x34 and not x2 ) = '1' then
         current_bigm2r <= s137;

      elsif ( not x62 and not x46 and not x34 and x35 and x2 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( not x62 and not x46 and not x34 and x35 and not x2 ) = '1' then
         current_bigm2r <= s137;

      elsif ( not x62 and not x46 and not x34 and not x35 and x2 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s98;

      else
         current_bigm2r <= s137;

      end if;

   when s138 =>
      if ( x62 and x63 and x40 and x35 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and x40 and not x35 and x13 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and x63 and x40 and not x35 and not x13 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      elsif ( x62 and x63 and not x40 and x10 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and x63 and not x40 and not x10 and x11 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and x7 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and not x7 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and not x63 and x44 and x35 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and x44 and not x35 and x13 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and not x63 and x44 and not x35 and not x13 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      elsif ( x62 and not x63 and not x44 and x10 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and x7 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and not x7 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x62 and x55 and x46 and x3 and x23 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( not x62 and x55 and x46 and x3 and not x23 ) = '1' then
         current_bigm2r <= s138;

      elsif ( not x62 and x55 and x46 and not x3 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x55 and not x46 and x2 and x23 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( not x62 and x55 and not x46 and x2 and not x23 ) = '1' then
         current_bigm2r <= s138;

      elsif ( not x62 and x55 and not x46 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and not x55 and x10 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and not x55 and not x10 and x11 and x5 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x62 and not x55 and not x10 and x11 and not x5 and x37 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and not x55 and not x10 and x11 and not x5 and not x37 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and not x10 and not x11 and x1 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      else
         y33 <= '1' ;
         current_bigm2r <= s96;

      end if;

   when s139 =>
      if ( x62 and x63 and x40 and x16 and x45 and x29 and x42 and x27 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s150;

      elsif ( x62 and x63 and x40 and x16 and x45 and x29 and x42 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and x16 and x45 and x29 and not x42 and x27 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and x40 and x16 and x45 and x29 and not x42 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and x16 and x45 and not x29 and x33 and x27 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and x40 and x16 and x45 and not x29 and x33 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and x16 and x45 and not x29 and not x33 and x43 and x27 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and x63 and x40 and x16 and x45 and not x29 and not x33 and x43 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and x16 and x45 and not x29 and not x33 and not x43 and x27 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and x40 and x16 and x45 and not x29 and not x33 and not x43 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and x16 and not x45 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and x40 and not x16 and x37 and x44 and x1 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and x40 and not x16 and x37 and x44 and not x1 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x16 and x37 and not x44 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and x40 and not x16 and not x37 and x25 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and x40 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      elsif ( x62 and x63 and x40 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and x63 and x40 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and x40 and not x16 and not x37 and not x25 and not x5 and not x4 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and x63 and not x40 and x10 and x11 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and x10 and not x11 and x12 and x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and x10 and not x11 and x12 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and not x40 and x10 and not x11 and not x12 and x1 and x3 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x62 and x63 and not x40 and x10 and not x11 and not x12 and x1 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and x63 and not x40 and x10 and not x11 and not x12 and x1 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x63 and not x40 and x10 and not x11 and not x12 and not x1 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and not x10 and x12 and x2 and x4 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x62 and x63 and not x40 and not x10 and x12 and x2 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x63 and not x40 and not x10 and x12 and not x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and not x10 and not x12 and x9 ) = '1' then
         y22 <= '1' ;
         current_bigm2r <= s148;

      elsif ( x62 and x63 and not x40 and not x10 and not x12 and not x9 and x5 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and x63 and not x40 and not x10 and not x12 and not x9 and not x5 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and x16 and x54 and x29 and x48 and x27 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s154;

      elsif ( x62 and not x63 and x44 and x16 and x54 and x29 and x48 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and x16 and x54 and x29 and not x48 and x27 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and x44 and x16 and x54 and x29 and not x48 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and x16 and x54 and not x29 and x33 and x27 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and x44 and x16 and x54 and not x29 and x33 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and x16 and x54 and not x29 and not x33 and x49 and x27 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and not x63 and x44 and x16 and x54 and not x29 and not x33 and x49 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and x16 and x54 and not x29 and not x33 and not x49 and x27 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and x44 and x16 and x54 and not x29 and not x33 and not x49 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and x16 and not x54 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and x44 and not x16 and x36 and x55 and x37 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and x44 and not x16 and x36 and x55 and not x37 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and not x16 and x36 and not x55 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and x44 and not x16 and not x36 and x25 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and x44 and not x16 and not x36 and not x25 and x5 and x4 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      elsif ( x62 and not x63 and x44 and not x16 and not x36 and not x25 and x5 and not x4 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and x44 and not x16 and not x36 and not x25 and not x5 and x4 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and x44 and not x16 and not x36 and not x25 and not x5 and not x4 ) = '1' then
         current_bigm2r <= s139;

      elsif ( x62 and not x63 and not x44 and x10 and x11 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and not x44 and x10 and not x11 and x12 and x34 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and not x44 and x10 and not x11 and x12 and not x34 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and not x44 and x10 and not x11 and not x12 and x37 and x41 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( x62 and not x63 and not x44 and x10 and not x11 and not x12 and x37 and not x41 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and not x63 and not x44 and x10 and not x11 and not x12 and x37 and not x41 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and not x63 and not x44 and x10 and not x11 and not x12 and not x37 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and not x44 and not x10 and x12 and x2 and x4 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( x62 and not x63 and not x44 and not x10 and x12 and x2 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and not x63 and not x44 and not x10 and x12 and not x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x63 and not x44 and not x10 and not x12 and x9 ) = '1' then
         y22 <= '1' ;
         current_bigm2r <= s148;

      elsif ( x62 and not x63 and not x44 and not x10 and not x12 and not x9 and x5 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x63 and not x44 and not x10 and not x12 and not x9 and not x5 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and x47 and x54 and x29 and x59 and x27 ) = '1' then
         y47 <= '1' ;
         current_bigm2r <= s155;

      elsif ( not x62 and x55 and x47 and x54 and x29 and x59 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and x47 and x54 and x29 and not x59 and x27 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and x55 and x47 and x54 and x29 and not x59 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and x47 and x54 and not x29 and x33 and x27 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and x55 and x47 and x54 and not x29 and x33 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and x47 and x54 and not x29 and not x33 and x57 and x27 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( not x62 and x55 and x47 and x54 and not x29 and not x33 and x57 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and x47 and x54 and not x29 and not x33 and not x57 and x27 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and x55 and x47 and x54 and not x29 and not x33 and not x57 and not x27 ) = '1' then
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and x47 and not x54 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x55 and not x47 and x37 and x56 and x1 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and x55 and not x47 and x37 and x56 and not x1 ) = '1' then
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x47 and x37 and not x56 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x55 and not x47 and not x37 and x25 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x55 and not x47 and not x37 and not x25 and x36 and x35 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( not x62 and x55 and not x47 and not x37 and not x25 and x36 and not x35 ) = '1' then
         current_bigm2r <= s139;

      elsif ( not x62 and x55 and not x47 and not x37 and not x25 and not x36 and x35 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and x55 and not x47 and not x37 and not x25 and not x36 and not x35 ) = '1' then
         current_bigm2r <= s139;

      elsif ( not x62 and not x55 and x41 and x11 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and x41 and not x11 and x12 and x2 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and x41 and not x11 and x12 and not x2 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and not x55 and x41 and not x11 and not x12 and x32 and x3 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( not x62 and not x55 and x41 and not x11 and not x12 and x32 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x55 and x41 and not x11 and not x12 and x32 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and not x55 and x41 and not x11 and not x12 and not x32 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and not x41 and x43 and x33 and x35 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and not x55 and not x41 and x43 and x33 and not x35 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and not x55 and not x41 and x43 and not x33 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and not x41 and not x43 and x40 ) = '1' then
         y22 <= '1' ;
         current_bigm2r <= s148;

      elsif ( not x62 and not x55 and not x41 and not x43 and not x40 and x5 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      else
         y34 <= '1' ;
         current_bigm2r <= s139;

      end if;

   when s140 =>
      if ( x62 and x63 and x14 and x13 ) = '1' then
         y49 <= '1' ;
         current_bigm2r <= s152;

      elsif ( x62 and x63 and x14 and not x13 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s93;

      elsif ( x62 and x63 and not x14 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s100;

      elsif ( x62 and not x63 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s93;

      elsif ( not x62 and x55 and x37 and x28 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and x55 and x37 and not x28 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and x55 and not x37 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and not x55 and x33 and x32 and x10 and x3 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( not x62 and not x55 and x33 and x32 and x10 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x55 and x33 and x32 and x10 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and not x55 and x33 and x32 and not x10 ) = '1' then
         current_bigm2r <= s140;

      elsif ( not x62 and not x55 and x33 and not x32 and x10 and x9 ) = '1' then
         y47 <= '1' ;
         current_bigm2r <= s155;

      elsif ( not x62 and not x55 and x33 and not x32 and x10 and not x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x55 and x33 and not x32 and not x10 ) = '1' then
         current_bigm2r <= s140;

      elsif ( not x62 and not x55 and not x33 and x32 and x10 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      elsif ( not x62 and not x55 and not x33 and x32 and not x10 ) = '1' then
         current_bigm2r <= s140;

      elsif ( not x62 and not x55 and not x33 and not x32 and x10 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      else
         current_bigm2r <= s140;

      end if;

   when s141 =>
      if ( x39 and x1 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( x39 and not x1 and x4 ) = '1' then
         y22 <= '1' ;
         current_bigm2r <= s148;

      elsif ( x39 and not x1 and not x4 ) = '1' then
         y34 <= '1' ;
         current_bigm2r <= s139;

      else
         y9 <= '1' ;
         current_bigm2r <= s50;

      end if;

   when s142 =>
         y48 <= '1' ;
         current_bigm2r <= s74;

   when s143 =>
      if ( x62 and x63 and x40 and x8 and x48 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x63 and x40 and x8 and not x48 and x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and x40 and x8 and not x48 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x63 and x40 and not x8 and x51 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x63 and x40 and not x8 and not x51 and x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( x62 and x63 and x40 and not x8 and not x51 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x63 and not x40 and x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and x63 and not x40 and not x10 and x11 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and x12 and x8 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and x12 and not x8 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s149;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 and not x12 ) = '1' then
         y47 <= '1' ;
         current_bigm2r <= s155;

      elsif ( x62 and not x63 and x44 and x8 and x53 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and not x63 and x44 and x8 and not x53 and x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and x44 and x8 and not x53 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and not x63 and x44 and not x8 and x51 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and not x63 and x44 and not x8 and not x51 and x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s2;

      elsif ( x62 and not x63 and x44 and not x8 and not x51 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and not x63 and not x44 and x10 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and not x63 and not x44 and not x10 and x11 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and x12 and x8 ) = '1' then
         y43 <= '1' ;
         current_bigm2r <= s138;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and x12 and not x8 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s150;

      elsif ( x62 and not x63 and not x44 and not x10 and not x11 and not x12 ) = '1' then
         y48 <= '1' ;
         current_bigm2r <= s74;

      elsif ( not x62 and x55 and x8 and x53 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x62 and x55 and x8 and not x53 and x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x55 and x8 and not x53 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x62 and x55 and not x8 and x51 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x62 and x55 and not x8 and not x51 and x37 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s77;

      elsif ( not x62 and x55 and not x8 and not x51 and not x37 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x62 and not x55 and x41 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and not x55 and not x41 and x42 ) = '1' then
         y42 <= '1' ;
         current_bigm2r <= s143;

      elsif ( not x62 and not x55 and not x41 and not x42 and x43 and x39 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s102;

      elsif ( not x62 and not x55 and not x41 and not x42 and x43 and not x39 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      else
         y50 <= '1' ;
         current_bigm2r <= s146;

      end if;

   when s144 =>
      if ( x63 and x7 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      elsif ( x63 and not x7 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      else
         y21 <= '1' ;
         current_bigm2r <= s95;

      end if;

   when s145 =>
      if ( x7 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s104;

      else
         y7 <= '1' ;
         current_bigm2r <= s128;

      end if;

   when s146 =>
      if ( x62 ) = '1' then
         y31 <= '1' ;
         current_bigm2r <= s72;

      elsif ( not x62 and x55 and x37 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and x55 and not x37 and x40 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x62 and x55 and not x37 and not x40 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x62 and not x55 and x10 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and not x10 and x42 and x32 ) = '1' then
         y54 <= '1' ;
         current_bigm2r <= s141;

      elsif ( not x62 and not x55 and not x10 and x42 and not x32 and x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and not x10 and x42 and not x32 and not x3 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      else
         y35 <= '1' ;
         current_bigm2r <= s85;

      end if;

   when s147 =>
         y31 <= '1' ;
         current_bigm2r <= s72;

   when s148 =>
      if ( x63 and x62 and x40 and x50 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s149;

      elsif ( x63 and x62 and x40 and not x50 ) = '1' then
         current_bigm2r <= s148;

      elsif ( x63 and x62 and not x40 and x11 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s150;

      elsif ( x63 and x62 and not x40 and not x11 and x9 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s150;

      elsif ( x63 and x62 and not x40 and not x11 and not x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x63 and not x62 and x55 and x50 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( x63 and not x62 and x55 and not x50 ) = '1' then
         current_bigm2r <= s148;

      elsif ( x63 and not x62 and not x55 and x42 ) = '1' then
         y47 <= '1' ;
         current_bigm2r <= s155;

      elsif ( x63 and not x62 and not x55 and not x42 and x9 ) = '1' then
         y47 <= '1' ;
         current_bigm2r <= s155;

      elsif ( x63 and not x62 and not x55 and not x42 and not x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x63 and x62 and x44 and x50 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s150;

      elsif ( not x63 and x62 and x44 and not x50 ) = '1' then
         current_bigm2r <= s148;

      elsif ( not x63 and x62 and not x44 and x11 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s154;

      elsif ( not x63 and x62 and not x44 and not x11 and x9 ) = '1' then
         y46 <= '1' ;
         current_bigm2r <= s154;

      elsif ( not x63 and x62 and not x44 and not x11 and not x9 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x63 and not x62 and x3 and x5 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( not x63 and not x62 and x3 and not x5 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      else
         y6 <= '1' ;
         current_bigm2r <= s81;

      end if;

   when s149 =>
      if ( x40 and x17 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      elsif ( x40 and not x17 and x43 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x40 and not x17 and not x43 ) = '1' then
         current_bigm2r <= s149;

      elsif ( not x40 and x6 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      else
         y44 <= '1' ;
         current_bigm2r <= s149;

      end if;

   when s150 =>
      if ( x63 and x40 and x3 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x63 and x40 and not x3 and x2 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s149;

      elsif ( x63 and x40 and not x3 and not x2 and x28 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x63 and x40 and not x3 and not x2 and not x28 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x63 and not x40 and x10 and x5 and x3 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x63 and not x40 and x10 and x5 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x63 and not x40 and x10 and x5 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x63 and not x40 and x10 and not x5 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x63 and not x40 and not x10 and x11 and x1 ) = '1' then
         y51 <= '1' ;
         current_bigm2r <= s83;

      elsif ( x63 and not x40 and not x10 and x11 and not x1 and x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x63 and not x40 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x63 and not x40 and not x10 and not x11 ) = '1' then
         current_bigm2r <= s150;

      elsif ( not x63 and x44 and x17 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      elsif ( not x63 and x44 and not x17 and x49 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s50;

      elsif ( not x63 and x44 and not x17 and not x49 ) = '1' then
         current_bigm2r <= s150;

      elsif ( not x63 and not x44 and x6 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s21;

      else
         y44 <= '1' ;
         current_bigm2r <= s150;

      end if;

   when s151 =>
         y49 <= '1' ;
         current_bigm2r <= s152;

   when s152 =>
      if ( x63 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s95;

      else
         y50 <= '1' ;
         current_bigm2r <= s144;

      end if;

   when s153 =>
         y52 <= '1' ;
         current_bigm2r <= s86;

   when s154 =>
      if ( x62 and x44 and x3 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x44 and not x3 and x34 ) = '1' then
         y44 <= '1' ;
         current_bigm2r <= s150;

      elsif ( x62 and x44 and not x3 and not x34 and x28 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( x62 and x44 and not x3 and not x34 and not x28 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( x62 and not x44 and x10 and x5 and x41 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s88;

      elsif ( x62 and not x44 and x10 and x5 and not x41 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( x62 and not x44 and x10 and x5 and not x41 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s16;

      elsif ( x62 and not x44 and x10 and not x5 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and not x44 and not x10 and x37 and x11 ) = '1' then
         y52 <= '1' ;
         current_bigm2r <= s86;

      elsif ( x62 and not x44 and not x10 and x37 and not x11 ) = '1' then
         current_bigm2r <= s154;

      elsif ( x62 and not x44 and not x10 and not x37 and x41 and x11 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and not x44 and not x10 and not x37 and x41 and not x11 ) = '1' then
         current_bigm2r <= s154;

      elsif ( x62 and not x44 and not x10 and not x37 and not x41 and x11 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and not x44 and not x10 and not x37 and not x41 and not x11 ) = '1' then
         current_bigm2r <= s154;

      elsif ( not x62 and x15 ) = '1' then
         y21 <= '1' ;
         current_bigm2r <= s95;

      elsif ( not x62 and not x15 and x42 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s97;

      elsif ( not x62 and not x15 and not x42 and x41 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s71;

      else
         current_bigm2r <= s154;

      end if;

   when s155 =>
      if ( x62 and x63 and x40 and x37 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x62 and x63 and x40 and not x37 and x9 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s10;

      elsif ( x62 and x63 and x40 and not x37 and not x9 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( x62 and x63 and not x40 and x10 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and not x10 and x11 and x1 ) = '1' then
         y51 <= '1' ;
         current_bigm2r <= s83;

      elsif ( x62 and x63 and not x40 and not x10 and x11 and not x1 and x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( x62 and x63 and not x40 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and x63 and not x40 and not x10 and not x11 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( x62 and not x63 and x14 and x13 ) = '1' then
         y50 <= '1' ;
         current_bigm2r <= s144;

      elsif ( x62 and not x63 and x14 and not x13 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( x62 and not x63 and not x14 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( not x62 and x55 and x34 ) = '1' then
         y40 <= '1' ;
         current_bigm2r <= s82;

      elsif ( not x62 and x55 and not x34 and x2 ) = '1' then
         y45 <= '1' ;
         current_bigm2r <= s101;

      elsif ( not x62 and x55 and not x34 and not x2 and x28 ) = '1' then
         y32 <= '1' ;
         current_bigm2r <= s69;

      elsif ( not x62 and x55 and not x34 and not x2 and not x28 ) = '1' then
         y33 <= '1' ;
         current_bigm2r <= s96;

      elsif ( not x62 and not x55 and x41 and x36 and x3 ) = '1' then
         y41 <= '1' ;
         current_bigm2r <= s87;

      elsif ( not x62 and not x55 and x41 and x36 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s55;

      elsif ( not x62 and not x55 and x41 and x36 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s128;

      elsif ( not x62 and not x55 and x41 and not x36 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      elsif ( not x62 and not x55 and not x41 and x11 and x32 ) = '1' then
         y54 <= '1' ;
         current_bigm2r <= s141;

      elsif ( not x62 and not x55 and not x41 and x11 and not x32 and x3 ) = '1' then
         y36 <= '1' ;
         current_bigm2r <= s84;

      elsif ( not x62 and not x55 and not x41 and x11 and not x32 and not x3 ) = '1' then
         y35 <= '1' ;
         current_bigm2r <= s85;

      else
         current_bigm2r <= s155;

      end if;

   when s156 =>
      if ( x26 and x62 and x63 and x28 and x9 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( x26 and x62 and x63 and x28 and not x9 and x23 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x26 and x62 and x63 and x28 and not x9 and not x23 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( x26 and x62 and x63 and not x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( x26 and x62 and not x63 and x28 and x9 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( x26 and x62 and not x63 and x28 and not x9 and x23 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( x26 and x62 and not x63 and x28 and not x9 and not x23 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x26 and x62 and not x63 and not x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( x26 and not x62 and x28 and x9 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( x26 and not x62 and x28 and not x9 and x23 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( x26 and not x62 and x28 and not x9 and not x23 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( x26 and not x62 and not x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x26 and x27 and x62 and x63 and x1 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x26 and x27 and x62 and x63 and x1 and not x2 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x26 and x27 and x62 and x63 and x1 and not x2 and not x3 ) = '1' then
         current_bigm2r <= s156;

      elsif ( not x26 and x27 and x62 and x63 and not x1 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s28;

      elsif ( not x26 and x27 and x62 and not x63 and x36 and x32 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x26 and x27 and x62 and not x63 and x36 and not x32 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x26 and x27 and x62 and not x63 and x36 and not x32 and not x3 ) = '1' then
         current_bigm2r <= s156;

      elsif ( not x26 and x27 and x62 and not x63 and not x36 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x26 and x27 and not x62 and x1 and x33 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x26 and x27 and not x62 and x1 and not x33 and x34 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x26 and x27 and not x62 and x1 and not x33 and not x34 ) = '1' then
         current_bigm2r <= s156;

      elsif ( not x26 and x27 and not x62 and not x1 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      elsif ( not x26 and not x27 and x62 and x63 and x1 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x26 and not x27 and x62 and x63 and x1 and x5 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( not x26 and not x27 and x62 and x63 and x1 and x5 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x26 and not x27 and x62 and x63 and x1 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s29;

      elsif ( not x26 and not x27 and x62 and x63 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s24;

      elsif ( not x26 and not x27 and x62 and x63 and not x1 and not x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( not x26 and not x27 and x62 and not x63 and x36 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s34;

      elsif ( not x26 and not x27 and x62 and not x63 and x36 and x5 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( not x26 and not x27 and x62 and not x63 and x36 and x5 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x26 and not x27 and x62 and not x63 and x36 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x26 and not x27 and x62 and not x63 and not x36 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      elsif ( not x26 and not x27 and x62 and not x63 and not x36 and not x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x26 and not x27 and not x62 and x1 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s32;

      elsif ( not x26 and not x27 and not x62 and x1 and x5 and not x3 and x4 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( not x26 and not x27 and not x62 and x1 and x5 and not x3 and not x4 ) = '1' then
         y37 <= '1' ;
         current_bigm2r <= s106;

      elsif ( not x26 and not x27 and not x62 and x1 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s59;

      elsif ( not x26 and not x27 and not x62 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s114;

      else
         y3 <= '1' ;
         current_bigm2r <= s115;

      end if;

   when s157 =>
      if ( x62 and x9 and x63 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s94;

      elsif ( x62 and x9 and not x63 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( x62 and not x9 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( not x62 and x63 and x40 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s115;

      elsif ( not x62 and x63 and not x40 ) = '1' then
         y38 <= '1' ;
         current_bigm2r <= s107;

      elsif ( not x62 and not x63 and x9 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s117;

      else
         y8 <= '1' ;
         current_bigm2r <= s165;

      end if;

   when s158 =>
      if ( x28 and x26 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s116;

      elsif ( x28 and x26 and not x1 and x2 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s117;

      elsif ( x28 and x26 and not x1 and not x2 and x25 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s117;

      elsif ( x28 and x26 and not x1 and not x2 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      elsif ( x28 and not x26 and x27 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s173;

      elsif ( x28 and not x26 and not x27 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s116;

      elsif ( x28 and not x26 and not x27 and not x1 and x4 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s117;

      elsif ( x28 and not x26 and not x27 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      elsif ( not x28 and x26 and x1 and x2 and x3 and x25 ) = '1' then
         current_bigm2r <= s158;

      elsif ( not x28 and x26 and x1 and x2 and x3 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      elsif ( not x28 and x26 and x1 and x2 and not x3 and x4 and x5 ) = '1' then
         y6 <= '1' ;
         current_bigm2r <= s27;

      elsif ( not x28 and x26 and x1 and x2 and not x3 and x4 and not x5 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s163;

      elsif ( not x28 and x26 and x1 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s116;

      elsif ( not x28 and x26 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s173;

      elsif ( not x28 and x26 and not x1 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s117;

      else
         y1 <= '1' ;
         current_bigm2r <= s173;

      end if;

   when s159 =>
      if ( x15 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s160;

      elsif ( not x15 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      else
         y4 <= '1' ;
         current_bigm2r <= s59;

      end if;

   when s160 =>
      if ( x15 ) = '1' then
         y20 <= '1' ;
         current_bigm2r <= s158;

      elsif ( not x15 and x6 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s133;

      else
         y4 <= '1' ;
         current_bigm2r <= s59;

      end if;

   when s161 =>
      if ( x15 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s113;

      elsif ( not x15 and x6 ) = '1' then
         y13 <= '1' ;
         current_bigm2r <= s112;

      else
         y12 <= '1' ;
         current_bigm2r <= s25;

      end if;

   when s162 =>
      if ( x26 ) = '1' then
         y1 <= '1' ;
         current_bigm2r <= s173;

      elsif ( not x26 and x28 and x5 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s174;

      elsif ( not x26 and x28 and not x5 ) = '1' then
         y15 <= '1' ;
         current_bigm2r <= s157;

      else
         y7 <= '1' ;
         current_bigm2r <= s119;

      end if;

   when s163 =>
      if ( x26 and x28 and x7 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s116;

      elsif ( x26 and x28 and not x7 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s119;

      elsif ( x26 and not x28 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x26 and x27 and x25 and x9 ) = '1' then
         current_bigm2r <= s163;

      elsif ( not x26 and x27 and x25 and not x9 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s119;

      elsif ( not x26 and x27 and not x25 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      else
         y6 <= '1' ;
         current_bigm2r <= s27;

      end if;

   when s164 =>
      if ( x28 and x7 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s165;

      elsif ( x28 and not x7 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s167;

      else
         y4 <= '1' ;
         current_bigm2r <= s135;

      end if;

   when s165 =>
      if ( x26 and x8 and x1 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s116;

      elsif ( x26 and x8 and not x1 and x14 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s163;

      elsif ( x26 and x8 and not x1 and not x14 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      elsif ( x26 and not x8 ) = '1' then
         y9 <= '1' ;
         current_bigm2r <= s162;

      elsif ( not x26 and x28 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s164;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s165;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s119;

      elsif ( not x26 and not x28 and x6 and x7 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      elsif ( not x26 and not x28 and x6 and not x7 and x8 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s167;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s164;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s165;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s119;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      elsif ( not x26 and not x28 and not x6 and x24 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s167;

      else
         current_bigm2r <= s1;

      end if;

   when s166 =>
      if ( x8 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      else
         y13 <= '1' ;
         current_bigm2r <= s60;

      end if;

   when s167 =>
      if ( x25 ) = '1' then
         current_bigm2r <= s1;

      elsif ( not x25 and x28 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s117;

      else
         current_bigm2r <= s1;

      end if;

   when s168 =>
      if ( x12 and x15 and x13 and x3 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s172;

      elsif ( x12 and x15 and x13 and not x3 and x14 ) = '1' then
         y16 <= '1' ;
         current_bigm2r <= s172;

      elsif ( x12 and x15 and x13 and not x3 and not x14 ) = '1' then
         y14 <= '1' ;
         current_bigm2r <= s31;

      elsif ( x12 and x15 and not x13 ) = '1' then
         y12 <= '1' ;
         current_bigm2r <= s25;

      elsif ( x12 and not x15 ) = '1' then
         y10 <= '1' ;
         current_bigm2r <= s161;

      else
         y10 <= '1' ;
         current_bigm2r <= s161;

      end if;

   when s169 =>
         y20 <= '1' ;
         current_bigm2r <= s158;

   when s170 =>
         y20 <= '1' ;
         current_bigm2r <= s171;

   when s171 =>
         y21 <= '1' ;
         current_bigm2r <= s169;

   when s172 =>
         y17 <= '1' ;
         current_bigm2r <= s57;

   when s173 =>
      if ( x26 and x28 and x9 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s163;

      elsif ( x26 and x28 and not x9 and x23 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s117;

      elsif ( x26 and x28 and not x9 and not x23 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      elsif ( x26 and not x28 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s116;

      elsif ( not x26 and x1 and x27 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s116;

      elsif ( not x26 and x1 and x27 and not x2 and x3 ) = '1' then
         y3 <= '1' ;
         current_bigm2r <= s117;

      elsif ( not x26 and x1 and x27 and not x2 and not x3 ) = '1' then
         current_bigm2r <= s173;

      elsif ( not x26 and x1 and not x27 and x5 and x3 ) = '1' then
         y11 <= '1' ;
         current_bigm2r <= s164;

      elsif ( not x26 and x1 and not x27 and x5 and not x3 and x4 ) = '1' then
         y8 <= '1' ;
         current_bigm2r <= s165;

      elsif ( not x26 and x1 and not x27 and x5 and not x3 and not x4 ) = '1' then
         y7 <= '1' ;
         current_bigm2r <= s119;

      elsif ( not x26 and x1 and not x27 and not x5 ) = '1' then
         y4 <= '1' ;
         current_bigm2r <= s135;

      elsif ( not x26 and not x1 and x27 ) = '1' then
         y5 <= '1' ;
         current_bigm2r <= s163;

      elsif ( not x26 and not x1 and not x27 and x2 ) = '1' then
         y2 <= '1' ;
         current_bigm2r <= s116;

      else
         y3 <= '1' ;
         current_bigm2r <= s117;

      end if;

   when s174 =>
         y5 <= '1' ;
         current_bigm2r <= s163;

   end case;
   end proc_bigm2r;

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
	y37  <= '0' ;	y38  <= '0' ;	y39  <= '0' ;	y40  <= '0' ;
	y41  <= '0' ;	y42  <= '0' ;	y43  <= '0' ;	y44  <= '0' ;
	y45  <= '0' ;	y46  <= '0' ;	y47  <= '0' ;	y48  <= '0' ;
	y49  <= '0' ;	y50  <= '0' ;	y51  <= '0' ;	y52  <= '0' ;
	y53  <= '0' ;	y54  <= '0' ;
	current_bigm2r <= s1;
      elsif (clk'event and clk ='1') then
        proc_bigm2r;
      end if;
   end process;
end ARC;
