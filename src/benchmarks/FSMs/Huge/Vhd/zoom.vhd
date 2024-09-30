library ieee;
use ieee.std_logic_1164.all;

entity zoom is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
	x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,
	x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,
	x61,x62,x63,x64 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37 : out std_logic );
end zoom;

architecture ARC of zoom is

   type states_zoom is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
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
	s166,s167,s168,s169,s170,s171,s172,s173,s174,s175,s176,s177,s178,s179,s180,
	s181,s182,s183,s184,s185,s186,s187,s188,s189,s190,s191,s192,s193,s194,s195,
	s196,s197,s198,s199,s200,s201,s202,s203,s204,s205,s206,s207,s208,s209,s210,
	s211,s212,s213,s214,s215,s216,s217,s218,s219,s220,s221,s222,s223,s224,s225,
	s226,s227,s228,s229,s230,s231,s232,s233,s234,s235,s236,s237,s238,s239,s240,
	s241,s242,s243,s244,s245,s246,s247,s248,s249,s250,s251,s252,s253,s254,s255,
	s256,s257,s258,s259,s260,s261,s262,s263,s264,s265,s266,s267,s268,s269,s270,
	s271,s272,s273,s274,s275,s276,s277,s278,s279,s280,s281,s282,s283,s284,s285,
	s286,s287,s288,s289,s290,s291,s292,s293,s294,s295,s296,s297,s298,s299,s300,
	s301,s302,s303,s304,s305,s306,s307,s308,s309,s310,s311,s312,s313,s314,s315,
	s316,s317,s318,s319 );
   signal current_zoom : states_zoom;

begin
   process (clk , rst)
   procedure proc_zoom is
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

   case current_zoom is
   when s1 =>
      if ( x63 and x10 and x62 and x11 ) = '1' then
         y2 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s2;

      elsif ( x63 and x10 and x62 and not x11 ) = '1' then
         y18 <= '1' ;
         current_zoom <= s3;

      elsif ( x63 and x10 and not x62 and x64 and x11 and x43 and x13 and x32 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s4;

      elsif ( x63 and x10 and not x62 and x64 and x11 and x43 and x13 and x32 and x3 and not x6 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x10 and not x62 and x64 and x11 and x43 and x13 and x32 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x10 and not x62 and x64 and x11 and x43 and x13 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and x10 and not x62 and x64 and x11 and x43 and not x13 and x5 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s7;

      elsif ( x63 and x10 and not x62 and x64 and x11 and x43 and not x13 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x10 and not x62 and x64 and x11 and not x43 and x44 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x63 and x10 and not x62 and x64 and x11 and not x43 and not x44 and x14 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( x63 and x10 and not x62 and x64 and x11 and not x43 and not x44 and x14 and not x7 and x1 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and x10 and not x62 and x64 and x11 and not x43 and not x44 and x14 and not x7 and x1 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x10 and not x62 and x64 and x11 and not x43 and not x44 and x14 and not x7 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and x10 and not x62 and x64 and x11 and not x43 and not x44 and not x14 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x63 and x10 and not x62 and x64 and not x11 and x12 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( x63 and x10 and not x62 and x64 and not x11 and x12 and not x8 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and x10 and not x62 and x64 and not x11 and x12 and not x8 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x10 and not x62 and x64 and not x11 and not x12 and x13 and x45 and x32 and x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x63 and x10 and not x62 and x64 and not x11 and not x12 and x13 and x45 and x32 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x10 and not x62 and x64 and not x11 and not x12 and x13 and x45 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and x10 and not x62 and x64 and not x11 and not x12 and x13 and not x45 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x63 and x10 and not x62 and x64 and not x11 and not x12 and not x13 and x1 and x14 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and x10 and not x62 and x64 and not x11 and not x12 and not x13 and x1 and x14 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x10 and not x62 and x64 and not x11 and not x12 and not x13 and x1 and not x14 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x63 and x10 and not x62 and x64 and not x11 and not x12 and not x13 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and x10 and not x62 and not x64 and x15 and x12 and x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_zoom <= s14;

      elsif ( x63 and x10 and not x62 and not x64 and x15 and x12 and not x23 and x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x63 and x10 and not x62 and not x64 and x15 and x12 and not x23 and not x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and x10 and not x62 and not x64 and x15 and not x12 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( x63 and x10 and not x62 and not x64 and not x15 and x39 and x46 and x48 and x36 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and x10 and not x62 and not x64 and not x15 and x39 and x46 and x48 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( x63 and x10 and not x62 and not x64 and not x15 and x39 and x46 and not x48 and x36 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and x10 and not x62 and not x64 and not x15 and x39 and x46 and not x48 and not x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and x10 and not x62 and not x64 and not x15 and x39 and not x46 and x36 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and x10 and not x62 and not x64 and not x15 and x39 and not x46 and not x36 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x10 and not x62 and not x64 and not x15 and not x39 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x63 and not x10 and x62 and x11 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s21;

      elsif ( x63 and not x10 and x62 and not x11 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s22;

      elsif ( x63 and not x10 and x62 and not x11 and not x1 and x2 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         current_zoom <= s23;

      elsif ( x63 and not x10 and x62 and not x11 and not x1 and not x2 ) = '1' then
         y4 <= '1' ;
         current_zoom <= s24;

      elsif ( x63 and not x10 and not x62 and x64 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and not x10 and not x62 and not x64 and x15 and x1 and x22 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s25;

      elsif ( x63 and not x10 and not x62 and not x64 and x15 and x1 and not x22 and x2 and x11 and x5 and x3 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and not x10 and not x62 and not x64 and x15 and x1 and not x22 and x2 and x11 and x5 and not x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and not x10 and not x62 and not x64 and x15 and x1 and not x22 and x2 and x11 and not x5 and x3 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and not x10 and not x62 and not x64 and x15 and x1 and not x22 and x2 and x11 and not x5 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( x63 and not x10 and not x62 and not x64 and x15 and x1 and not x22 and x2 and not x11 and x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x63 and not x10 and not x62 and not x64 and x15 and x1 and not x22 and x2 and not x11 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x63 and not x10 and not x62 and not x64 and x15 and x1 and not x22 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and not x10 and not x62 and not x64 and x15 and not x1 and x11 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x10 and not x62 and not x64 and x15 and not x1 and x11 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x63 and not x10 and not x62 and not x64 and x15 and not x1 and not x11 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and x11 and x34 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and x11 and x34 and not x8 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and x11 and x34 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and x11 and not x34 and x32 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and x11 and not x34 and x32 and not x7 and x43 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and x11 and not x34 and x32 and not x7 and x43 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and x11 and not x34 and x32 and not x7 and not x43 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and x11 and not x34 and not x32 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and not x11 and x12 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and not x11 and x12 and not x20 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and not x10 and not x62 and not x64 and not x15 and not x11 and not x12 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x63 and x64 and x15 and x16 and x62 and x5 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( not x63 and x64 and x15 and x16 and x62 and not x5 and x6 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s30;

      elsif ( not x63 and x64 and x15 and x16 and x62 and not x5 and not x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s31;

      elsif ( not x63 and x64 and x15 and x16 and not x62 and x5 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x63 and x64 and x15 and x16 and not x62 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x63 and x64 and x15 and x16 and not x62 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x63 and x64 and x15 and not x16 and x62 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( not x63 and x64 and x15 and not x16 and x62 and not x1 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and x64 and x15 and not x16 and not x62 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x63 and x64 and x15 and not x16 and not x62 and not x1 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and x64 and not x15 and x16 and x62 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( not x63 and x64 and not x15 and x16 and not x62 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x63 and x64 and not x15 and not x16 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x63 and x64 and not x15 and not x16 and not x1 and x62 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( not x63 and x64 and not x15 and not x16 and not x1 and not x62 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x63 and not x64 and x62 and x14 and x10 and x39 and x44 and x41 and x36 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and not x64 and x62 and x14 and x10 and x39 and x44 and x41 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( not x63 and not x64 and x62 and x14 and x10 and x39 and x44 and not x41 and x36 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and not x64 and x62 and x14 and x10 and x39 and x44 and not x41 and not x36 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x63 and not x64 and x62 and x14 and x10 and x39 and not x44 and x36 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and not x64 and x62 and x14 and x10 and x39 and not x44 and not x36 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x63 and not x64 and x62 and x14 and x10 and not x39 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and x11 and x34 and x8 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and x11 and not x34 and x32 and not x7 and x26 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and x11 and not x34 and x32 and not x7 and x26 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and x11 and not x34 and x32 and not x7 and not x26 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and x11 and not x34 and not x32 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and not x11 and x12 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x63 and not x64 and x62 and x14 and not x10 and not x11 and not x12 and not x13 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x63 and not x64 and x62 and not x14 and x10 and x11 and x1 and x2 and x4 and x5 and x3 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and not x64 and x62 and not x14 and x10 and x11 and x1 and x2 and x4 and x5 and not x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x63 and not x64 and x62 and not x14 and x10 and x11 and x1 and x2 and x4 and not x5 and x3 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and not x64 and x62 and not x14 and x10 and x11 and x1 and x2 and x4 and not x5 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x63 and not x64 and x62 and not x14 and x10 and x11 and x1 and x2 and not x4 and x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x63 and not x64 and x62 and not x14 and x10 and x11 and x1 and x2 and not x4 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and not x64 and x62 and not x14 and x10 and x11 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x63 and not x64 and x62 and not x14 and x10 and x11 and not x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x63 and not x64 and x62 and not x14 and x10 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x63 and not x64 and x62 and not x14 and x10 and not x11 and not x12 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( not x63 and not x64 and x62 and not x14 and not x10 and x11 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_zoom <= s43;

      elsif ( not x63 and not x64 and x62 and not x14 and not x10 and x11 and not x1 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and not x64 and x62 and not x14 and not x10 and x11 and not x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x63 and not x64 and x62 and not x14 and not x10 and not x11 and x12 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and not x64 and x62 and not x14 and not x10 and not x11 and x12 and not x1 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x63 and not x64 and x62 and not x14 and not x10 and not x11 and x12 and not x1 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x63 and not x64 and x62 and not x14 and not x10 and not x11 and not x12 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s44;

      elsif ( not x63 and not x64 and x62 and not x14 and not x10 and not x11 and not x12 and not x1 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x63 and not x64 and x62 and not x14 and not x10 and not x11 and not x12 and not x1 and not x2 and x9 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x63 and not x64 and x62 and not x14 and not x10 and not x11 and not x12 and not x1 and not x2 and not x9 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x63 and not x64 and not x62 and x17 and x18 and x40 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s45;

      elsif ( not x63 and not x64 and not x62 and x17 and x18 and not x40 and x2 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x63 and not x64 and not x62 and x17 and x18 and not x40 and not x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x63 and not x64 and not x62 and x17 and not x18 and x19 and x1 and x10 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x63 and not x64 and not x62 and x17 and not x18 and x19 and x1 and not x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( not x63 and not x64 and not x62 and x17 and not x18 and x19 and not x1 and x6 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s45;

      elsif ( not x63 and not x64 and not x62 and x17 and not x18 and x19 and not x1 and not x6 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x63 and not x64 and not x62 and x17 and not x18 and not x19 and x1 and x39 and x4 and x5 and x3 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and not x64 and not x62 and x17 and not x18 and not x19 and x1 and x39 and x4 and x5 and not x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x63 and not x64 and not x62 and x17 and not x18 and not x19 and x1 and x39 and x4 and not x5 and x3 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and not x64 and not x62 and x17 and not x18 and not x19 and x1 and x39 and x4 and not x5 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x63 and not x64 and not x62 and x17 and not x18 and not x19 and x1 and x39 and not x4 and x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( not x63 and not x64 and not x62 and x17 and not x18 and not x19 and x1 and x39 and not x4 and not x3 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x63 and not x64 and not x62 and x17 and not x18 and not x19 and x1 and not x39 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s45;

      elsif ( not x63 and not x64 and not x62 and x17 and not x18 and not x19 and not x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x63 and not x64 and not x62 and not x17 and x18 and x40 and x19 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x63 and not x64 and not x62 and not x17 and x18 and x40 and not x19 and x39 and x4 and x5 and x3 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and not x64 and not x62 and not x17 and x18 and x40 and not x19 and x39 and x4 and x5 and not x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x63 and not x64 and not x62 and not x17 and x18 and x40 and not x19 and x39 and x4 and not x5 and x3 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and not x64 and not x62 and not x17 and x18 and x40 and not x19 and x39 and x4 and not x5 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x63 and not x64 and not x62 and not x17 and x18 and x40 and not x19 and x39 and not x4 and x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( not x63 and not x64 and not x62 and not x17 and x18 and x40 and not x19 and x39 and not x4 and not x3 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x63 and not x64 and not x62 and not x17 and x18 and x40 and not x19 and not x39 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s45;

      elsif ( not x63 and not x64 and not x62 and not x17 and x18 and not x40 and x19 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x63 and not x64 and not x62 and not x17 and x18 and not x40 and x19 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( not x63 and not x64 and not x62 and not x17 and x18 and not x40 and not x19 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s45;

      end if;

   when s2 =>
         y13 <= '1' ;
         current_zoom <= s49;

   when s3 =>
      if ( x1 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y15 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s50;

      else
         y20 <= '1' ;
         current_zoom <= s51;

      end if;

   when s4 =>
      if ( x42 and x43 and x13 and x10 and x4 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( x42 and x43 and x13 and x10 and not x4 ) = '1' then
         current_zoom <= s4;

      elsif ( x42 and x43 and x13 and not x10 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x42 and x43 and x13 and not x10 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x42 and x43 and x13 and not x10 and not x3 and not x33 ) = '1' then
         current_zoom <= s4;

      elsif ( x42 and x43 and not x13 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x42 and x43 and not x13 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x42 and x43 and not x13 and not x3 and not x33 ) = '1' then
         current_zoom <= s4;

      elsif ( x42 and not x43 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x42 and not x43 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x42 and not x43 and not x3 and not x33 ) = '1' then
         current_zoom <= s4;

      elsif ( not x42 and x12 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and x12 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x42 and x12 and not x3 and not x33 ) = '1' then
         current_zoom <= s4;

      elsif ( not x42 and not x12 and x44 and x45 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and not x12 and x44 and x45 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x42 and not x12 and x44 and x45 and not x3 and not x33 ) = '1' then
         current_zoom <= s4;

      elsif ( not x42 and not x12 and x44 and not x45 and x41 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( not x42 and not x12 and x44 and not x45 and not x41 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and not x12 and x44 and not x45 and not x41 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x42 and not x12 and x44 and not x45 and not x41 and not x3 and not x33 ) = '1' then
         current_zoom <= s4;

      elsif ( not x42 and not x12 and not x44 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and not x12 and not x44 and not x3 and x33 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      else
         current_zoom <= s4;

      end if;

   when s5 =>
      if ( x42 and x43 and x10 and x34 and x44 and x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( x42 and x43 and x10 and x34 and x44 and not x4 ) = '1' then
         current_zoom <= s5;

      elsif ( x42 and x43 and x10 and x34 and not x44 and x4 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s53;

      elsif ( x42 and x43 and x10 and x34 and not x44 and not x4 ) = '1' then
         current_zoom <= s5;

      elsif ( x42 and x43 and x10 and not x34 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x42 and x43 and x10 and not x34 and not x4 ) = '1' then
         current_zoom <= s5;

      elsif ( x42 and x43 and not x10 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s4;

      elsif ( x42 and not x43 and x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s4;

      elsif ( x42 and not x43 and not x13 and x41 and x14 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x42 and not x43 and not x13 and x41 and x14 and not x4 ) = '1' then
         current_zoom <= s5;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s5;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x42 and not x43 and not x13 and x41 and not x14 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x43 and not x13 and not x41 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s4;

      elsif ( not x42 and x10 and x12 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and x10 and x12 and not x4 ) = '1' then
         current_zoom <= s5;

      elsif ( not x42 and x10 and not x12 and x44 and x45 and x35 and x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x42 and x10 and not x12 and x44 and x45 and x35 and not x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and x10 and not x12 and x44 and x45 and not x35 ) = '1' then
         current_zoom <= s5;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s5;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x42 and x10 and not x12 and x44 and not x45 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and x10 and not x12 and not x44 and x14 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and x10 and not x12 and not x44 and x14 and not x4 ) = '1' then
         current_zoom <= s5;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s5;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x42 and x10 and not x12 and not x44 and not x14 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s4;

      end if;

   when s6 =>
      if ( x62 and x15 and x16 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x62 and x15 and not x16 and x3 and x2 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      elsif ( x62 and x15 and not x16 and x3 and not x2 ) = '1' then
         current_zoom <= s6;

      elsif ( x62 and x15 and not x16 and not x3 and x4 and x2 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s30;

      elsif ( x62 and x15 and not x16 and not x3 and x4 and not x2 ) = '1' then
         current_zoom <= s6;

      elsif ( x62 and x15 and not x16 and not x3 and not x4 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x62 and x15 and not x16 and not x3 and not x4 and not x2 ) = '1' then
         current_zoom <= s6;

      elsif ( x62 and not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s57;

      elsif ( x62 and not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s30;

      elsif ( x62 and not x15 and x16 and x4 and not x5 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s56;

      elsif ( x62 and not x15 and x16 and x4 and not x5 and not x1 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( x62 and not x15 and x16 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x62 and not x15 and not x16 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s57;

      elsif ( not x62 and x42 and x43 and x44 and x10 and x33 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and x42 and x43 and x44 and x10 and not x33 ) = '1' then
         current_zoom <= s6;

      elsif ( not x62 and x42 and x43 and x44 and not x10 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and x42 and x43 and not x44 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and x42 and not x43 and x13 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and x42 and not x43 and not x13 and x41 and x2 and x45 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and x42 and not x43 and not x13 and x41 and x2 and not x45 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x62 and x42 and not x43 and not x13 and x41 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and x42 and not x43 and not x13 and not x41 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and not x42 and x12 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and not x42 and not x12 and x44 and x14 and x10 and x33 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and not x42 and not x12 and x44 and x14 and x10 and not x33 ) = '1' then
         current_zoom <= s6;

      elsif ( not x62 and not x42 and not x12 and x44 and x14 and not x10 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and not x42 and not x12 and x44 and not x14 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and not x42 and not x12 and not x44 and x41 and x2 and x45 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and not x42 and not x12 and not x44 and x41 and x2 and not x45 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x62 and not x42 and not x12 and not x44 and x41 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      end if;

   when s7 =>
      if ( x11 and x12 and x33 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( x11 and x12 and not x33 ) = '1' then
         current_zoom <= s7;

      elsif ( x11 and not x12 and x3 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x11 and not x12 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x11 and not x12 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x11 and not x12 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x11 and not x12 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s7;

      elsif ( x11 and not x12 and x3 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x11 and not x12 and x3 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x11 and not x12 and x3 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x11 and not x12 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( not x11 and x3 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x11 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x11 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x11 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x11 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s7;

      elsif ( not x11 and x3 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x11 and x3 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x11 and x3 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      end if;

   when s8 =>
      if ( x63 and x42 and x43 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and x42 and not x43 and x44 and x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( x63 and x42 and not x43 and x44 and not x10 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and x42 and not x43 and not x44 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and not x42 and x12 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and not x42 and not x12 and x13 and x14 and x41 and x37 and x2 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and not x42 and not x12 and x13 and x14 and x41 and x37 and not x2 ) = '1' then
         current_zoom <= s8;

      elsif ( x63 and not x42 and not x12 and x13 and x14 and x41 and not x37 and x2 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( x63 and not x42 and not x12 and x13 and x14 and x41 and not x37 and not x2 ) = '1' then
         current_zoom <= s8;

      elsif ( x63 and not x42 and not x12 and x13 and x14 and not x41 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and not x42 and not x12 and x13 and not x14 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and not x42 and not x12 and not x13 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( not x63 and x17 and x18 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s61;

      elsif ( not x63 and x17 and x18 and not x7 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s62;

      elsif ( not x63 and x17 and not x18 ) = '1' then
         current_zoom <= s8;

      elsif ( not x63 and not x17 and x18 and x19 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s63;

      elsif ( not x63 and not x17 and x18 and not x19 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x63 and not x17 and x18 and not x19 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x63 and not x17 and x18 and not x19 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x63 and not x17 and x18 and not x19 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and not x17 and x18 and not x19 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s8;

      elsif ( not x63 and not x17 and x18 and not x19 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and not x17 and x18 and not x19 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x63 and not x17 and x18 and not x19 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      else
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s68;

      end if;

   when s9 =>
      if ( x63 and x11 and x43 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s69;

      elsif ( x63 and x11 and not x43 and x13 and x7 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x63 and x11 and not x43 and x13 and x7 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and x11 and not x43 and x13 and x7 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x63 and x11 and not x43 and x13 and x7 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x11 and not x43 and x13 and x7 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s9;

      elsif ( x63 and x11 and not x43 and x13 and x7 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x11 and not x43 and x13 and x7 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x63 and x11 and not x43 and x13 and x7 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x11 and not x43 and x13 and not x7 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s69;

      elsif ( x63 and x11 and not x43 and not x13 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s69;

      elsif ( x63 and not x11 and x12 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s69;

      elsif ( x63 and not x11 and not x12 and x45 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s69;

      elsif ( x63 and not x11 and not x12 and not x45 and x7 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x63 and not x11 and not x12 and not x45 and x7 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and not x11 and not x12 and not x45 and x7 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x63 and not x11 and not x12 and not x45 and x7 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and not x11 and not x12 and not x45 and x7 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s9;

      elsif ( x63 and not x11 and not x12 and not x45 and x7 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and not x11 and not x12 and not x45 and x7 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x63 and not x11 and not x12 and not x45 and x7 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and not x11 and not x12 and not x45 and not x7 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s69;

      elsif ( not x63 and x17 and x8 and x11 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x63 and x17 and x8 and not x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x63 and x17 and not x8 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x63 and not x17 and x18 and x8 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s61;

      elsif ( not x63 and not x17 and x18 and not x8 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s62;

      else
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s68;

      end if;

   when s10 =>
      if ( x42 and x43 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x42 and x43 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x42 and x43 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x42 and x43 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x42 and x43 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and x43 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s10;

      elsif ( x42 and x43 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and x43 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x42 and x43 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and x43 and not x3 and not x2 ) = '1' then
         current_zoom <= s10;

      elsif ( x42 and not x43 and x13 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s10;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x42 and not x43 and x13 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x43 and x13 and not x3 and not x2 ) = '1' then
         current_zoom <= s10;

      elsif ( x42 and not x43 and not x13 and x45 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s69;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s10;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x43 and not x13 and x45 and not x41 and not x3 and not x2 ) = '1' then
         current_zoom <= s10;

      elsif ( x42 and not x43 and not x13 and not x45 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s10;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x43 and not x13 and not x45 and not x3 and not x2 ) = '1' then
         current_zoom <= s10;

      elsif ( not x42 and x12 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s69;

      elsif ( not x42 and x12 and not x41 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s10;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x42 and x12 and not x41 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and x12 and not x41 and not x3 and not x2 ) = '1' then
         current_zoom <= s10;

      elsif ( not x42 and not x12 and x44 and x14 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s10;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and not x12 and x44 and x14 and not x3 and not x2 ) = '1' then
         current_zoom <= s10;

      elsif ( not x42 and not x12 and x44 and not x14 and x10 and x5 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( not x42 and not x12 and x44 and not x14 and x10 and not x5 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x42 and not x12 and x44 and not x14 and x10 and not x5 and not x32 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s10;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and not x12 and x44 and not x14 and not x10 and not x3 and not x2 ) = '1' then
         current_zoom <= s10;

      elsif ( not x42 and not x12 and not x44 and x45 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s69;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s10;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and not x12 and not x44 and x45 and not x41 and not x3 and not x2 ) = '1' then
         current_zoom <= s10;

      elsif ( not x42 and not x12 and not x44 and not x45 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s10;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x42 and not x12 and not x44 and not x45 and not x3 and x2 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      else
         current_zoom <= s10;

      end if;

   when s11 =>
      if ( x62 and x64 and x61 and x17 and x19 and x10 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x62 and x64 and x61 and x17 and x19 and not x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x62 and x64 and x61 and x17 and not x19 ) = '1' then
         current_zoom <= s11;

      elsif ( x62 and x64 and x61 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x62 and x64 and x61 and not x17 and not x20 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and x64 and x61 and not x17 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and x64 and not x61 and x11 and x10 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x62 and x64 and not x61 and x11 and not x10 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s74;

      elsif ( x62 and x64 and not x61 and not x11 and x10 and x12 and x4 and x1 ) = '1' then
         current_zoom <= s11;

      elsif ( x62 and x64 and not x61 and not x11 and x10 and x12 and x4 and not x1 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x62 and x64 and not x61 and not x11 and x10 and x12 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and x64 and not x61 and not x11 and x10 and not x12 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x62 and x64 and not x61 and not x11 and not x10 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x62 and not x64 and x14 and x17 and x19 and x10 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x62 and not x64 and x14 and x17 and x19 and not x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x62 and not x64 and x14 and x17 and not x19 ) = '1' then
         current_zoom <= s11;

      elsif ( x62 and not x64 and x14 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x62 and not x64 and x14 and not x17 and not x20 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and not x64 and x14 and not x17 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and not x64 and not x14 and x11 and x10 ) = '1' then
         current_zoom <= s1;

      elsif ( x62 and not x64 and not x14 and x11 and not x10 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s74;

      elsif ( x62 and not x64 and not x14 and not x11 and x12 and x10 and x4 and x1 ) = '1' then
         current_zoom <= s11;

      elsif ( x62 and not x64 and not x14 and not x11 and x12 and x10 and x4 and not x1 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x62 and not x64 and not x14 and not x11 and x12 and x10 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and not x64 and not x14 and not x11 and x12 and not x10 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x62 and not x64 and not x14 and not x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x62 and x11 and x43 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( not x62 and x11 and not x43 and x44 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( not x62 and x11 and not x43 and not x44 and x45 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( not x62 and x11 and not x43 and not x44 and not x45 and x10 and x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( not x62 and x11 and not x43 and not x44 and not x45 and x10 and not x32 and x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x62 and x11 and not x43 and not x44 and not x45 and x10 and not x32 and not x33 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and x11 and not x43 and not x44 and not x45 and not x10 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( not x62 and not x11 and x12 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( not x62 and not x11 and not x12 and x13 and x14 and x41 and x37 and x2 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x62 and not x11 and not x12 and x13 and x14 and x41 and x37 and not x2 ) = '1' then
         current_zoom <= s11;

      elsif ( not x62 and not x11 and not x12 and x13 and x14 and x41 and not x37 and x2 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( not x62 and not x11 and not x12 and x13 and x14 and x41 and not x37 and not x2 ) = '1' then
         current_zoom <= s11;

      elsif ( not x62 and not x11 and not x12 and x13 and x14 and not x41 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( not x62 and not x11 and not x12 and x13 and not x14 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      end if;

   when s12 =>
      if ( x63 and x64 and x11 and x43 and x41 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x63 and x64 and x11 and x43 and x41 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and x64 and x11 and x43 and x41 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x63 and x64 and x11 and x43 and x41 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and x11 and x43 and x41 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and x11 and x43 and x41 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and x11 and x43 and x41 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x63 and x64 and x11 and x43 and x41 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and x11 and x43 and not x41 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and x64 and x11 and x43 and not x41 and x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and x11 and x43 and not x41 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x63 and x64 and x11 and x43 and not x41 and not x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and x11 and not x43 and x13 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and x64 and x11 and not x43 and x13 and x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and x11 and not x43 and x13 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x63 and x64 and x11 and not x43 and x13 and not x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and x45 and x41 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and x45 and x41 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and x45 and x41 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and x45 and x41 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and x45 and x41 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and x45 and x41 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and x45 and x41 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and x45 and x41 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and x45 and not x41 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and x45 and not x41 and x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and x45 and not x41 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and x45 and not x41 and not x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and not x45 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and not x45 and x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and not x45 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x63 and x64 and x11 and not x43 and not x13 and not x45 and not x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and not x11 and x12 and x41 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x63 and x64 and not x11 and x12 and x41 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and x64 and not x11 and x12 and x41 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x63 and x64 and not x11 and x12 and x41 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and not x11 and x12 and x41 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and not x11 and x12 and x41 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and not x11 and x12 and x41 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x63 and x64 and not x11 and x12 and x41 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and not x11 and x12 and not x41 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and x64 and not x11 and x12 and not x41 and x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and not x11 and x12 and not x41 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x63 and x64 and not x11 and x12 and not x41 and not x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and x10 and x14 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and x10 and x14 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and x10 and x14 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and x10 and x14 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and x10 and x14 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and x10 and x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and x10 and x14 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and x10 and x14 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and x10 and not x14 and x1 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s4;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and x10 and not x14 and not x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and not x10 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and not x10 and x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and not x10 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x63 and x64 and not x11 and not x12 and x44 and not x10 and not x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and x45 and x41 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and x45 and x41 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and x45 and x41 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and x45 and x41 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and x45 and x41 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and x45 and x41 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and x45 and x41 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and x45 and x41 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and x45 and not x41 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and x45 and not x41 and x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and x45 and not x41 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and x45 and not x41 and not x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and not x45 and x4 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and not x45 and x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and not x45 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x63 and x64 and not x11 and not x12 and not x44 and not x45 and not x4 and not x2 ) = '1' then
         current_zoom <= s12;

      elsif ( x63 and not x64 and x15 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x63 and not x64 and x15 and not x5 and x34 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and not x64 and x15 and not x5 and not x34 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and not x64 and not x15 and x35 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and not x64 and not x15 and not x35 and x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( x63 and not x64 and not x15 and not x35 and not x13 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( not x63 and x40 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x63 and x40 and not x5 and x34 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s78;

      elsif ( not x63 and x40 and not x5 and not x34 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x63 and not x40 and x35 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x63 and not x40 and not x35 and x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      end if;

   when s13 =>
      if ( x63 and x11 and x43 and x41 and x13 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s4;

      elsif ( x63 and x11 and x43 and x41 and x13 and x3 and not x6 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x11 and x43 and x41 and x13 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x11 and x43 and x41 and not x13 and x5 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s7;

      elsif ( x63 and x11 and x43 and x41 and not x13 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x11 and x43 and not x41 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x63 and x11 and not x43 and x44 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x63 and x11 and not x43 and not x44 and x10 and x45 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and x11 and not x43 and not x44 and x10 and x45 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x11 and not x43 and not x44 and x10 and not x45 and x32 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s7;

      elsif ( x63 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x63 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x63 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s13;

      elsif ( x63 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and x3 and not x15 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x11 and not x43 and not x44 and x10 and not x45 and not x32 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x11 and not x43 and not x44 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x63 and not x11 and x41 and x12 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and not x11 and x41 and x12 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and not x11 and x41 and not x12 and x13 and x45 and x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x63 and not x11 and x41 and not x12 and x13 and x45 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and not x11 and x41 and not x12 and x13 and not x45 and x39 and x1 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and not x11 and x41 and not x12 and x13 and not x45 and x39 and not x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and not x11 and x41 and not x12 and x13 and not x45 and not x39 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and not x11 and x41 and not x12 and not x13 and x45 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( x63 and not x11 and x41 and not x12 and not x13 and x45 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and not x11 and x41 and not x12 and not x13 and not x45 and x32 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s7;

      elsif ( x63 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x63 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x63 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s13;

      elsif ( x63 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and x3 and not x15 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and not x11 and x41 and not x12 and not x13 and not x45 and not x32 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and not x11 and not x41 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( not x63 and x17 and x18 and x6 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s81;

      elsif ( not x63 and x17 and x18 and not x6 and x8 and x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( not x63 and x17 and x18 and not x6 and x8 and not x4 and x40 and x31 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x63 and x17 and x18 and not x6 and x8 and not x4 and x40 and not x31 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( not x63 and x17 and x18 and not x6 and x8 and not x4 and not x40 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s68;

      elsif ( not x63 and x17 and x18 and not x6 and not x8 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x63 and x17 and x18 and not x6 and not x8 and x15 and x16 and not x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x63 and x17 and x18 and not x6 and not x8 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and x17 and x18 and not x6 and not x8 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s13;

      elsif ( not x63 and x17 and x18 and not x6 and not x8 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and x17 and x18 and not x6 and not x8 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x63 and x17 and x18 and not x6 and not x8 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and x17 and not x18 and x12 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s45;

      elsif ( not x63 and x17 and not x18 and not x12 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x63 and not x17 and x19 and x18 and x9 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x63 and not x17 and x19 and x18 and x9 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x63 and not x17 and x19 and x18 and x9 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x63 and not x17 and x19 and x18 and x9 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and not x17 and x19 and x18 and x9 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s13;

      elsif ( not x63 and not x17 and x19 and x18 and x9 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and not x17 and x19 and x18 and x9 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x63 and not x17 and x19 and x18 and x9 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and not x17 and x19 and x18 and not x9 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s82;

      elsif ( not x63 and not x17 and x19 and not x18 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x63 and not x17 and x19 and not x18 and not x35 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x63 and not x17 and x19 and not x18 and not x35 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x63 and not x17 and x19 and not x18 and not x35 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x63 and not x17 and x19 and not x18 and not x35 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and not x17 and x19 and not x18 and not x35 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s13;

      elsif ( not x63 and not x17 and x19 and not x18 and not x35 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and not x17 and x19 and not x18 and not x35 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x63 and not x17 and x19 and not x18 and not x35 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and not x17 and not x19 and x18 and x4 and x5 and x3 ) = '1' then
         current_zoom <= s13;

      elsif ( not x63 and not x17 and not x19 and x18 and x4 and x5 and not x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x63 and not x17 and not x19 and x18 and x4 and not x5 and x3 ) = '1' then
         current_zoom <= s13;

      elsif ( not x63 and not x17 and not x19 and x18 and x4 and not x5 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x63 and not x17 and not x19 and x18 and not x4 and x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( not x63 and not x17 and not x19 and x18 and not x4 and not x3 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      end if;

   when s14 =>
      if ( x19 and x62 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s83;

      elsif ( x19 and not x62 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( not x19 and x62 and x26 and x5 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( not x19 and x62 and x26 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      elsif ( not x19 and x62 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s86;

      elsif ( not x19 and not x62 and x26 and x63 and x64 and x5 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      elsif ( not x19 and not x62 and x26 and x63 and x64 and not x5 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( not x19 and not x62 and x26 and x63 and not x64 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x19 and not x62 and x26 and x63 and not x64 and not x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( not x19 and not x62 and x26 and not x63 and x5 and x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s78;

      elsif ( not x19 and not x62 and x26 and not x63 and x5 and not x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      elsif ( not x19 and not x62 and x26 and not x63 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x19 and not x62 and not x26 and x64 and x63 ) = '1' then
         y11 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s91;

      elsif ( not x19 and not x62 and not x26 and x64 and not x63 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s86;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s86;

      end if;

   when s15 =>
      if ( x62 and x64 and x61 and x13 and x23 and x51 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x62 and x64 and x61 and x13 and x23 and not x51 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x62 and x64 and x61 and x13 and not x23 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x62 and x64 and x61 and not x13 and x28 and x35 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x62 and x64 and x61 and not x13 and x28 and x35 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and x64 and x61 and not x13 and x28 and not x35 and x60 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x62 and x64 and x61 and not x13 and x28 and not x35 and not x60 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and x64 and x61 and not x13 and not x28 and x6 and x35 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s74;

      elsif ( x62 and x64 and x61 and not x13 and not x28 and x6 and not x35 and x60 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x62 and x64 and x61 and not x13 and not x28 and x6 and not x35 and not x60 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and x64 and x61 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and x64 and x61 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x62 and x64 and not x61 and x11 and x10 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x62 and x64 and not x61 and x11 and not x10 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s92;

      elsif ( x62 and x64 and not x61 and x11 and not x10 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x62 and x64 and not x61 and x11 and not x10 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x62 and x64 and not x61 and not x11 and x10 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and x64 and not x61 and not x11 and not x10 and x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and x64 and not x61 and not x11 and not x10 and not x5 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x62 and not x64 and x14 and x13 and x23 and x41 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x62 and not x64 and x14 and x13 and x23 and not x41 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x62 and not x64 and x14 and x13 and not x23 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x62 and not x64 and x14 and not x13 and x28 and x35 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x62 and not x64 and x14 and not x13 and x28 and x35 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and not x64 and x14 and not x13 and x28 and not x35 and x15 ) = '1' then
         current_zoom <= s1;

      elsif ( x62 and not x64 and x14 and not x13 and x28 and not x35 and not x15 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and not x64 and x14 and not x13 and not x28 and x6 and x35 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s74;

      elsif ( x62 and not x64 and x14 and not x13 and not x28 and x6 and not x35 and x15 ) = '1' then
         current_zoom <= s1;

      elsif ( x62 and not x64 and x14 and not x13 and not x28 and x6 and not x35 and not x15 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and not x64 and x14 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and not x64 and x14 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x62 and not x64 and not x14 and x11 and x10 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x62 and not x64 and not x14 and x11 and not x10 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s92;

      elsif ( x62 and not x64 and not x14 and x11 and not x10 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x62 and not x64 and not x14 and x11 and not x10 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x62 and not x64 and not x14 and not x11 and x10 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and not x64 and not x14 and not x11 and not x10 and x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and not x64 and not x14 and not x11 and not x10 and not x5 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( not x62 and x63 and x64 and x42 and x43 and x34 and x44 and x10 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s4;

      elsif ( not x62 and x63 and x64 and x42 and x43 and x34 and x44 and x10 and not x6 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( not x62 and x63 and x64 and x42 and x43 and x34 and x44 and not x10 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x62 and x63 and x64 and x42 and x43 and x34 and not x44 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x62 and x63 and x64 and x42 and x43 and not x34 and x13 and x41 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( not x62 and x63 and x64 and x42 and x43 and not x34 and x13 and not x41 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( not x62 and x63 and x64 and x42 and x43 and not x34 and x13 and not x41 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( not x62 and x63 and x64 and x42 and x43 and not x34 and x13 and not x41 and not x1 and not x38 ) = '1' then
         current_zoom <= s15;

      elsif ( not x62 and x63 and x64 and x42 and x43 and not x34 and not x13 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( not x62 and x63 and x64 and x42 and x43 and not x34 and not x13 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( not x62 and x63 and x64 and x42 and x43 and not x34 and not x13 and not x1 and not x38 ) = '1' then
         current_zoom <= s15;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and x10 and x44 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and x10 and not x44 and x45 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and x10 and not x44 and x45 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and x10 and not x44 and not x45 and x32 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s7;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s15;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and x3 and not x15 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and x10 and not x44 and not x45 and not x32 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and not x10 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and not x10 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and not x10 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( not x62 and x63 and x64 and x42 and not x43 and not x10 and not x34 and not x1 and not x38 ) = '1' then
         current_zoom <= s15;

      elsif ( not x62 and x63 and x64 and not x42 and x12 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x62 and x63 and x64 and not x42 and x12 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( not x62 and x63 and x64 and not x42 and x12 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( not x62 and x63 and x64 and not x42 and x12 and not x34 and not x1 and not x38 ) = '1' then
         current_zoom <= s15;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and x13 and x14 and x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and x13 and x14 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and x13 and not x14 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and not x13 and x45 and x5 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s10;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and not x13 and x45 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and not x13 and not x45 and x32 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s7;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s15;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and x3 and not x15 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and x41 and not x13 and not x45 and not x32 and not x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and not x41 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and not x41 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and not x41 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( not x62 and x63 and x64 and not x42 and not x12 and not x41 and not x34 and not x1 and not x38 ) = '1' then
         current_zoom <= s15;

      elsif ( not x62 and x63 and not x64 and x15 and x19 and x28 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( not x62 and x63 and not x64 and x15 and x19 and x28 and not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and x63 and not x64 and x15 and x19 and x28 and not x1 and not x35 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x62 and x63 and not x64 and x15 and x19 and not x28 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x62 and x63 and not x64 and x15 and not x19 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x62 and x63 and not x64 and not x15 and x13 and x23 and x48 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x62 and x63 and not x64 and not x15 and x13 and x23 and not x48 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and x63 and not x64 and not x15 and x13 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x62 and x63 and not x64 and not x15 and not x13 and x28 and x35 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x62 and x63 and not x64 and not x15 and not x13 and x28 and x35 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x62 and x63 and not x64 and not x15 and not x13 and x28 and not x35 and x21 ) = '1' then
         current_zoom <= s1;

      elsif ( not x62 and x63 and not x64 and not x15 and not x13 and x28 and not x35 and not x21 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x62 and x63 and not x64 and not x15 and not x13 and not x28 and x6 and x35 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s93;

      elsif ( not x62 and x63 and not x64 and not x15 and not x13 and not x28 and x6 and not x35 and x21 ) = '1' then
         current_zoom <= s1;

      elsif ( not x62 and x63 and not x64 and not x15 and not x13 and not x28 and x6 and not x35 and not x21 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x62 and x63 and not x64 and not x15 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x62 and x63 and not x64 and not x15 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x62 and not x63 and x40 and x19 and x28 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( not x62 and not x63 and x40 and x19 and x28 and not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and not x63 and x40 and x19 and x28 and not x1 and not x35 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( not x62 and not x63 and x40 and x19 and not x28 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x62 and not x63 and x40 and not x19 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( not x62 and not x63 and not x40 and x13 and x23 and x51 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x62 and not x63 and not x40 and x13 and x23 and not x51 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and not x63 and not x40 and x13 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x62 and not x63 and not x40 and not x13 and x28 and x35 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x62 and not x63 and not x40 and not x13 and x28 and x35 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x62 and not x63 and not x40 and not x13 and x28 and not x35 and x41 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x62 and not x63 and not x40 and not x13 and x28 and not x35 and not x41 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x62 and not x63 and not x40 and not x13 and not x28 and x6 and x35 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s93;

      elsif ( not x62 and not x63 and not x40 and not x13 and not x28 and x6 and not x35 and x41 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x62 and not x63 and not x40 and not x13 and not x28 and x6 and not x35 and not x41 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x62 and not x63 and not x40 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s78;

      end if;

   when s16 =>
      if ( x64 and x63 and x55 and x30 and x16 and x37 ) = '1' then
         y6 <= '1' ;
         y13 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s95;

      elsif ( x64 and x63 and x55 and x30 and x16 and not x37 and x39 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( x64 and x63 and x55 and x30 and x16 and not x37 and x39 and not x19 and x26 and x5 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      elsif ( x64 and x63 and x55 and x30 and x16 and not x37 and x39 and not x19 and x26 and not x5 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( x64 and x63 and x55 and x30 and x16 and not x37 and x39 and not x19 and not x26 ) = '1' then
         y11 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s91;

      elsif ( x64 and x63 and x55 and x30 and x16 and not x37 and not x39 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( x64 and x63 and x55 and x30 and not x16 and x41 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x64 and x63 and x55 and x30 and not x16 and not x41 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( x64 and x63 and x55 and not x30 and x36 and x9 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( x64 and x63 and x55 and not x30 and x36 and not x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s93;

      elsif ( x64 and x63 and x55 and not x30 and not x36 and x3 and x42 ) = '1' then
         current_zoom <= s16;

      elsif ( x64 and x63 and x55 and not x30 and not x36 and x3 and not x42 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x64 and x63 and x55 and not x30 and not x36 and not x3 and x11 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x64 and x63 and x55 and not x30 and not x36 and not x3 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x64 and x63 and not x55 and x51 and x24 and x5 and x36 ) = '1' then
         current_zoom <= s16;

      elsif ( x64 and x63 and not x55 and x51 and x24 and x5 and not x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s99;

      elsif ( x64 and x63 and not x55 and x51 and x24 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x64 and x63 and not x55 and x51 and not x24 and x31 and x29 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s99;

      elsif ( x64 and x63 and not x55 and x51 and not x24 and x31 and not x29 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x64 and x63 and not x55 and x51 and not x24 and not x31 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s99;

      elsif ( x64 and x63 and not x55 and not x51 and x42 and x35 and x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s99;

      elsif ( x64 and x63 and not x55 and not x51 and x42 and x35 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x64 and x63 and not x55 and not x51 and x42 and not x35 and x58 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( x64 and x63 and not x55 and not x51 and x42 and not x35 and not x58 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x64 and x63 and not x55 and not x51 and not x42 and x52 and x35 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s93;

      elsif ( x64 and x63 and not x55 and not x51 and not x42 and x52 and not x35 and x58 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( x64 and x63 and not x55 and not x51 and not x42 and x52 and not x35 and not x58 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x64 and x63 and not x55 and not x51 and not x42 and not x52 and x34 and x37 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( x64 and x63 and not x55 and not x51 and not x42 and not x52 and x34 and not x37 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x64 and x63 and not x55 and not x51 and not x42 and not x52 and not x34 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x64 and not x63 and x40 and x30 and x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s100;

      elsif ( x64 and not x63 and x40 and x30 and x16 and not x6 and x8 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( x64 and not x63 and x40 and x30 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s78;

      elsif ( x64 and not x63 and x40 and x30 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( x64 and not x63 and x40 and x30 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s86;

      elsif ( x64 and not x63 and x40 and x30 and x16 and not x6 and not x8 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and not x63 and x40 and x30 and not x16 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x64 and not x63 and x40 and x30 and not x16 and not x10 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and not x63 and x40 and not x30 and x5 and x9 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and not x63 and x40 and not x30 and x5 and not x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s93;

      elsif ( x64 and not x63 and x40 and not x30 and not x5 and x11 and x3 ) = '1' then
         current_zoom <= s16;

      elsif ( x64 and not x63 and x40 and not x30 and not x5 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x64 and not x63 and x40 and not x30 and not x5 and not x11 and x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( x64 and not x63 and x40 and not x30 and not x5 and not x11 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x64 and not x63 and not x40 and x51 and x24 and x5 and x36 ) = '1' then
         current_zoom <= s16;

      elsif ( x64 and not x63 and not x40 and x51 and x24 and x5 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( x64 and not x63 and not x40 and x51 and x24 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( x64 and not x63 and not x40 and x51 and not x24 and x31 and x29 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( x64 and not x63 and not x40 and x51 and not x24 and x31 and not x29 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( x64 and not x63 and not x40 and x51 and not x24 and not x31 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( x64 and not x63 and not x40 and not x51 and x11 and x35 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( x64 and not x63 and not x40 and not x51 and x11 and x35 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( x64 and not x63 and not x40 and not x51 and x11 and not x35 and x41 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and not x63 and not x40 and not x51 and x11 and not x35 and not x41 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( x64 and not x63 and not x40 and not x51 and not x11 and x49 and x35 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s93;

      elsif ( x64 and not x63 and not x40 and not x51 and not x11 and x49 and not x35 and x41 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and not x63 and not x40 and not x51 and not x11 and x49 and not x35 and not x41 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( x64 and not x63 and not x40 and not x51 and not x11 and not x49 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( x64 and not x63 and not x40 and not x51 and not x11 and not x49 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( x64 and not x63 and not x40 and not x51 and not x11 and not x49 and not x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x64 and x63 and x15 and x30 and x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s100;

      elsif ( not x64 and x63 and x15 and x30 and x16 and not x6 and x8 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( not x64 and x63 and x15 and x30 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x64 and x63 and x15 and x30 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( not x64 and x63 and x15 and x30 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s86;

      elsif ( not x64 and x63 and x15 and x30 and x16 and not x6 and not x8 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x63 and x15 and x30 and not x16 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x64 and x63 and x15 and x30 and not x16 and not x10 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x63 and x15 and not x30 and x5 and x9 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x63 and x15 and not x30 and x5 and not x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s93;

      elsif ( not x64 and x63 and x15 and not x30 and not x5 and x11 and x3 ) = '1' then
         current_zoom <= s16;

      elsif ( not x64 and x63 and x15 and not x30 and not x5 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x64 and x63 and x15 and not x30 and not x5 and not x11 and x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x64 and x63 and x15 and not x30 and not x5 and not x11 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x64 and x63 and not x15 and x48 and x24 and x5 and x36 ) = '1' then
         current_zoom <= s16;

      elsif ( not x64 and x63 and not x15 and x48 and x24 and x5 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x64 and x63 and not x15 and x48 and x24 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x64 and x63 and not x15 and x48 and not x24 and x31 and x29 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x64 and x63 and not x15 and x48 and not x24 and x31 and not x29 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x64 and x63 and not x15 and x48 and not x24 and not x31 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x64 and x63 and not x15 and not x48 and x11 and x35 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x64 and x63 and not x15 and not x48 and x11 and x35 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x64 and x63 and not x15 and not x48 and x11 and not x35 and x21 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x63 and not x15 and not x48 and x11 and not x35 and not x21 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x64 and x63 and not x15 and not x48 and not x11 and x45 and x35 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s93;

      elsif ( not x64 and x63 and not x15 and not x48 and not x11 and x45 and not x35 and x21 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x63 and not x15 and not x48 and not x11 and x45 and not x35 and not x21 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x64 and x63 and not x15 and not x48 and not x11 and not x45 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( not x64 and x63 and not x15 and not x48 and not x11 and not x45 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x64 and x63 and not x15 and not x48 and not x11 and not x45 and not x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x64 and not x63 and x44 and x30 and x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s100;

      elsif ( not x64 and not x63 and x44 and x30 and x16 and not x6 and x8 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( not x64 and not x63 and x44 and x30 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      elsif ( not x64 and not x63 and x44 and x30 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x64 and not x63 and x44 and x30 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s86;

      elsif ( not x64 and not x63 and x44 and x30 and x16 and not x6 and not x8 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and not x63 and x44 and x30 and not x16 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x64 and not x63 and x44 and x30 and not x16 and not x10 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and not x63 and x44 and not x30 and x5 and x9 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and not x63 and x44 and not x30 and x5 and not x9 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s101;

      elsif ( not x64 and not x63 and x44 and not x30 and not x5 and x43 and x11 ) = '1' then
         current_zoom <= s16;

      elsif ( not x64 and not x63 and x44 and not x30 and not x5 and x43 and not x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x64 and not x63 and x44 and not x30 and not x5 and not x43 and x11 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s102;

      elsif ( not x64 and not x63 and x44 and not x30 and not x5 and not x43 and not x11 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      elsif ( not x64 and not x63 and not x44 and x51 and x24 and x5 and x36 ) = '1' then
         current_zoom <= s16;

      elsif ( not x64 and not x63 and not x44 and x51 and x24 and x5 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x64 and not x63 and not x44 and x51 and x24 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x64 and not x63 and not x44 and x51 and not x24 and x31 and x29 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x64 and not x63 and not x44 and x51 and not x24 and x31 and not x29 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x64 and not x63 and not x44 and x51 and not x24 and not x31 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x64 and not x63 and not x44 and not x51 and x11 and x35 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x64 and not x63 and not x44 and not x51 and x11 and x35 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x64 and not x63 and not x44 and not x51 and x11 and not x35 and x45 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and not x63 and not x44 and not x51 and x11 and not x35 and not x45 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x64 and not x63 and not x44 and not x51 and not x11 and x52 and x35 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s101;

      elsif ( not x64 and not x63 and not x44 and not x51 and not x11 and x52 and not x35 and x45 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and not x63 and not x44 and not x51 and not x11 and x52 and not x35 and not x45 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x64 and not x63 and not x44 and not x51 and not x11 and not x52 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s104;

      elsif ( not x64 and not x63 and not x44 and not x51 and not x11 and not x52 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      end if;

   when s17 =>
      if ( x63 and x64 and x55 and x43 and x27 and x33 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      elsif ( x63 and x64 and x55 and x43 and x27 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and x64 and x55 and x43 and x27 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and x64 and x55 and x43 and not x27 and x29 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s106;

      elsif ( x63 and x64 and x55 and x43 and not x27 and x29 and not x1 ) = '1' then
         current_zoom <= s17;

      elsif ( x63 and x64 and x55 and x43 and not x27 and not x29 ) = '1' then
         current_zoom <= s17;

      elsif ( x63 and x64 and x55 and not x43 and x29 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( x63 and x64 and x55 and not x43 and not x29 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( x63 and x64 and not x55 and x48 ) = '1' then
         y13 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s108;

      elsif ( x63 and x64 and not x55 and not x48 and x57 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( x63 and x64 and not x55 and not x48 and not x57 ) = '1' then
         current_zoom <= s17;

      elsif ( x63 and not x64 and x15 and x12 and x27 and x33 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and not x64 and x15 and x12 and x27 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x64 and x15 and x12 and x27 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and not x64 and x15 and x12 and not x27 and x29 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x63 and not x64 and x15 and x12 and not x27 and x29 and not x1 ) = '1' then
         current_zoom <= s17;

      elsif ( x63 and not x64 and x15 and x12 and not x27 and not x29 ) = '1' then
         current_zoom <= s17;

      elsif ( x63 and not x64 and x15 and not x12 and x29 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( x63 and not x64 and x15 and not x12 and not x29 ) = '1' then
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s109;

      elsif ( x63 and not x64 and not x15 and x17 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s110;

      elsif ( x63 and not x64 and not x15 and not x17 and x41 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( x63 and not x64 and not x15 and not x17 and not x41 ) = '1' then
         current_zoom <= s17;

      elsif ( not x63 and x40 and x12 and x27 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x63 and x40 and x12 and x27 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and x40 and x12 and x27 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x63 and x40 and x12 and not x27 and x29 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( not x63 and x40 and x12 and not x27 and x29 and not x1 ) = '1' then
         current_zoom <= s17;

      elsif ( not x63 and x40 and x12 and not x27 and not x29 ) = '1' then
         current_zoom <= s17;

      elsif ( not x63 and x40 and not x12 and x29 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( not x63 and x40 and not x12 and not x29 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( not x63 and not x40 and x17 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s110;

      elsif ( not x63 and not x40 and not x17 and x43 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      else
         current_zoom <= s17;

      end if;

   when s18 =>
      if ( x63 and x15 and x7 and x35 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( x63 and x15 and x7 and x35 and not x1 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and x15 and x7 and not x35 and x1 ) = '1' then
         current_zoom <= s18;

      elsif ( x63 and x15 and x7 and not x35 and not x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x63 and x15 and not x7 ) = '1' then
         current_zoom <= s18;

      elsif ( x63 and not x15 and x3 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and not x15 and not x3 and x2 ) = '1' then
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s109;

      elsif ( x63 and not x15 and not x3 and not x2 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x63 and not x15 and not x3 and not x2 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and x64 and x40 and x7 and x35 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( not x63 and x64 and x40 and x7 and x35 and not x1 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x63 and x64 and x40 and x7 and not x35 and x1 ) = '1' then
         current_zoom <= s18;

      elsif ( not x63 and x64 and x40 and x7 and not x35 and not x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and x64 and x40 and not x7 ) = '1' then
         current_zoom <= s18;

      elsif ( not x63 and x64 and not x40 and x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x63 and x64 and not x40 and not x3 and x2 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( not x63 and x64 and not x40 and not x3 and not x2 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and x64 and not x40 and not x3 and not x2 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and not x64 and x44 and x35 and x36 and x7 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( not x63 and not x64 and x44 and x35 and x36 and not x7 ) = '1' then
         current_zoom <= s18;

      elsif ( not x63 and not x64 and x44 and x35 and not x36 and x7 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x63 and not x64 and x44 and x35 and not x36 and not x7 ) = '1' then
         current_zoom <= s18;

      elsif ( not x63 and not x64 and x44 and not x35 and x37 ) = '1' then
         current_zoom <= s18;

      elsif ( not x63 and not x64 and x44 and not x35 and not x37 and x7 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      elsif ( not x63 and not x64 and x44 and not x35 and not x37 and not x7 ) = '1' then
         current_zoom <= s18;

      elsif ( not x63 and not x64 and not x44 and x43 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x63 and not x64 and not x44 and not x43 and x2 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( not x63 and not x64 and not x44 and not x43 and not x2 and x28 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      end if;

   when s19 =>
      if ( x64 and x63 and x55 and x24 and x26 and x7 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s99;

      elsif ( x64 and x63 and x55 and x24 and x26 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s111;

      elsif ( x64 and x63 and x55 and x24 and not x26 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s112;

      elsif ( x64 and x63 and x55 and not x24 and x28 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( x64 and x63 and x55 and not x24 and not x28 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( x64 and x63 and not x55 and x31 and x50 and x10 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      elsif ( x64 and x63 and not x55 and x31 and x50 and not x10 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s112;

      elsif ( x64 and x63 and not x55 and x31 and not x50 ) = '1' then
         current_zoom <= s19;

      elsif ( x64 and x63 and not x55 and not x31 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s112;

      elsif ( x64 and not x63 and x40 and x24 and x26 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( x64 and not x63 and x40 and x24 and x26 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s111;

      elsif ( x64 and not x63 and x40 and x24 and not x26 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( x64 and not x63 and x40 and not x24 and x28 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( x64 and not x63 and x40 and not x24 and not x28 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and not x63 and not x40 and x31 and x19 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s78;

      elsif ( x64 and not x63 and not x40 and x31 and x19 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( x64 and not x63 and not x40 and x31 and not x19 ) = '1' then
         current_zoom <= s19;

      elsif ( x64 and not x63 and not x40 and not x31 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( not x64 and x63 and x15 and x24 and x26 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x64 and x63 and x15 and x24 and x26 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s111;

      elsif ( not x64 and x63 and x15 and x24 and not x26 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( not x64 and x63 and x15 and not x24 and x28 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( not x64 and x63 and x15 and not x24 and not x28 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x63 and not x15 and x31 and x19 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x64 and x63 and not x15 and x31 and x19 and not x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( not x64 and x63 and not x15 and x31 and not x19 ) = '1' then
         current_zoom <= s19;

      elsif ( not x64 and x63 and not x15 and not x31 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( not x64 and not x63 and x44 and x24 and x26 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x64 and not x63 and x44 and x24 and x26 and not x7 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s114;

      elsif ( not x64 and not x63 and x44 and x24 and not x26 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( not x64 and not x63 and x44 and not x24 and x28 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s104;

      elsif ( not x64 and not x63 and x44 and not x24 and not x28 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and not x63 and not x44 and x31 and x19 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      elsif ( not x64 and not x63 and not x44 and x31 and x19 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( not x64 and not x63 and not x44 and x31 and not x19 ) = '1' then
         current_zoom <= s19;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      end if;

   when s20 =>
      if ( x62 and x64 and x10 and x61 and x39 and x46 and x51 and x36 ) = '1' then
         current_zoom <= s20;

      elsif ( x62 and x64 and x10 and x61 and x39 and x46 and x51 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x62 and x64 and x10 and x61 and x39 and x46 and not x51 and x36 ) = '1' then
         current_zoom <= s20;

      elsif ( x62 and x64 and x10 and x61 and x39 and x46 and not x51 and not x36 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x62 and x64 and x10 and x61 and x39 and not x46 and x36 ) = '1' then
         current_zoom <= s20;

      elsif ( x62 and x64 and x10 and x61 and x39 and not x46 and not x36 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x62 and x64 and x10 and x61 and not x39 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( x62 and x64 and x10 and not x61 and x11 and x1 and x2 and x4 and x5 and x3 ) = '1' then
         current_zoom <= s20;

      elsif ( x62 and x64 and x10 and not x61 and x11 and x1 and x2 and x4 and x5 and not x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x62 and x64 and x10 and not x61 and x11 and x1 and x2 and x4 and not x5 and x3 ) = '1' then
         current_zoom <= s20;

      elsif ( x62 and x64 and x10 and not x61 and x11 and x1 and x2 and x4 and not x5 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x62 and x64 and x10 and not x61 and x11 and x1 and x2 and not x4 and x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and x64 and x10 and not x61 and x11 and x1 and x2 and not x4 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and x64 and x10 and not x61 and x11 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x62 and x64 and x10 and not x61 and x11 and not x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and x64 and x10 and not x61 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x62 and x64 and x10 and not x61 and not x11 and not x12 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( x62 and x64 and not x10 and x11 and x61 and x34 and x8 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( x62 and x64 and not x10 and x11 and x61 and x34 and not x8 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x62 and x64 and not x10 and x11 and x61 and x34 and not x8 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and x64 and not x10 and x11 and x61 and not x34 and x32 and x7 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( x62 and x64 and not x10 and x11 and x61 and not x34 and x32 and not x7 and x54 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x62 and x64 and not x10 and x11 and x61 and not x34 and x32 and not x7 and x54 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and x64 and not x10 and x11 and x61 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x62 and x64 and not x10 and x11 and x61 and not x34 and not x32 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x62 and x64 and not x10 and x11 and not x61 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_zoom <= s43;

      elsif ( x62 and x64 and not x10 and x11 and not x61 and not x1 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and x64 and not x10 and x11 and not x61 and not x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and x64 and not x10 and not x11 and x12 and x61 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x62 and x64 and not x10 and not x11 and x12 and x61 and not x20 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and x64 and not x10 and not x11 and x12 and x61 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and x64 and not x10 and not x11 and x12 and not x61 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and x64 and not x10 and not x11 and x12 and not x61 and not x1 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and x64 and not x10 and not x11 and x12 and not x61 and not x1 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and x64 and not x10 and not x11 and not x12 and x61 and x13 and x1 and x3 and x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( x62 and x64 and not x10 and not x11 and not x12 and x61 and x13 and x1 and x3 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and x64 and not x10 and not x11 and not x12 and x61 and x13 and x1 and not x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and x64 and not x10 and not x11 and not x12 and x61 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x62 and x64 and not x10 and not x11 and not x12 and x61 and not x13 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x62 and x64 and not x10 and not x11 and not x12 and not x61 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s44;

      elsif ( x62 and x64 and not x10 and not x11 and not x12 and not x61 and not x1 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and x64 and not x10 and not x11 and not x12 and not x61 and not x1 and not x2 and x9 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and x64 and not x10 and not x11 and not x12 and not x61 and not x1 and not x2 and not x9 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x62 and not x64 and x14 and x30 and x43 ) = '1' then
         current_zoom <= s20;

      elsif ( x62 and not x64 and x14 and x30 and not x43 and x18 and x41 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and not x64 and x14 and x30 and not x43 and x18 and not x41 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and not x64 and x14 and x30 and not x43 and not x18 and x34 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and not x64 and x14 and x30 and not x43 and not x18 and not x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and not x64 and x14 and not x30 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and not x64 and not x14 and x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and not x64 and not x14 and not x11 and x1 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and not x64 and not x14 and not x11 and x1 and not x2 and x3 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and not x64 and not x14 and not x11 and x1 and not x2 and not x3 ) = '1' then
         current_zoom <= s20;

      elsif ( x62 and not x64 and not x14 and not x11 and not x1 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x62 and x63 and x64 and x46 and x47 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x62 and x63 and x64 and x46 and x47 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and x46 and not x47 and x34 and x2 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( not x62 and x63 and x64 and x46 and not x47 and x34 and not x2 ) = '1' then
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and x46 and not x47 and not x34 and x4 and x2 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x62 and x63 and x64 and x46 and not x47 and not x34 and x4 and not x2 ) = '1' then
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and x46 and not x47 and not x34 and not x4 and x32 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x62 and x63 and x64 and x46 and not x47 and not x34 and not x4 and x32 and not x2 ) = '1' then
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and x46 and not x47 and not x34 and not x4 and not x32 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and x46 and not x47 and not x34 and not x4 and not x32 and not x2 ) = '1' then
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and not x46 and x16 and x35 and x5 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( not x62 and x63 and x64 and not x46 and x16 and x35 and x5 and not x1 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x62 and x63 and x64 and not x46 and x16 and x35 and not x5 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x62 and x63 and x64 and not x46 and x16 and x35 and not x5 and not x32 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x62 and x63 and x64 and not x46 and x16 and not x35 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x62 and x63 and x64 and not x46 and x16 and not x35 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and not x46 and not x16 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( not x62 and x63 and not x64 and x15 and x11 and x25 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and x63 and not x64 and x15 and x11 and x25 and not x3 and x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x62 and x63 and not x64 and x15 and x11 and x25 and not x3 and not x5 ) = '1' then
         current_zoom <= s20;

      elsif ( not x62 and x63 and not x64 and x15 and x11 and not x25 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x62 and x63 and not x64 and x15 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and x63 and not x64 and not x15 and x44 and x40 and x48 and x47 ) = '1' then
         current_zoom <= s20;

      elsif ( not x62 and x63 and not x64 and not x15 and x44 and x40 and x48 and not x47 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and x63 and not x64 and not x15 and x44 and x40 and not x48 and x47 ) = '1' then
         current_zoom <= s20;

      elsif ( not x62 and x63 and not x64 and not x15 and x44 and x40 and not x48 and not x47 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x62 and x63 and not x64 and not x15 and x44 and not x40 and x47 ) = '1' then
         current_zoom <= s20;

      elsif ( not x62 and x63 and not x64 and not x15 and x44 and not x40 and not x47 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x62 and x63 and not x64 and not x15 and x44 and not x40 and not x47 and not x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and x63 and not x64 and not x15 and not x44 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and not x63 and x16 and x15 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x62 and not x63 and x16 and x15 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and not x63 and x16 and not x15 and x4 and x5 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( not x62 and not x63 and x16 and not x15 and x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x62 and not x63 and x16 and not x15 and x4 and not x5 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x62 and not x63 and x16 and not x15 and x4 and not x5 and not x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x62 and not x63 and x16 and not x15 and not x4 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x62 and not x63 and x16 and not x15 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and not x63 and not x16 and x15 and x2 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( not x62 and not x63 and not x16 and x15 and x2 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x62 and not x63 and not x16 and x15 and x2 and not x3 and not x4 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x62 and not x63 and not x16 and x15 and x2 and not x3 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and not x63 and not x16 and x15 and not x2 ) = '1' then
         current_zoom <= s20;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      end if;

   when s21 =>
      if ( x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s22;

      elsif ( not x1 and x2 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         current_zoom <= s23;

      else
         y4 <= '1' ;
         current_zoom <= s24;

      end if;

   when s22 =>
      if ( x2 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         current_zoom <= s23;

      else
         y4 <= '1' ;
         current_zoom <= s24;

      end if;

   when s23 =>
      if ( x10 and x8 and x1 ) = '1' then
         y21 <= '1' ;
         current_zoom <= s119;

      elsif ( x10 and x8 and not x1 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s1;

      elsif ( x10 and not x8 ) = '1' then
         y21 <= '1' ;
         current_zoom <= s119;

      elsif ( not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s120;

      elsif ( not x10 and not x1 and x3 ) = '1' then
         current_zoom <= s1;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s1;

      end if;

   when s24 =>
      if ( x10 and x11 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s121;

      elsif ( x10 and not x11 ) = '1' then
         y21 <= '1' ;
         current_zoom <= s119;

      elsif ( not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s120;

      elsif ( not x10 and not x1 and x3 ) = '1' then
         current_zoom <= s1;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s1;

      end if;

   when s25 =>
      if ( x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      else
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      end if;

   when s26 =>
      if ( x62 and x16 and x15 and x1 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x62 and x16 and x15 and not x1 and x5 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s31;

      elsif ( x62 and x16 and x15 and not x1 and not x5 and x6 and x2 and x3 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( x62 and x16 and x15 and not x1 and not x5 and x6 and x2 and not x3 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x62 and x16 and x15 and not x1 and not x5 and x6 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x62 and x16 and x15 and not x1 and not x5 and not x6 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( x62 and x16 and not x15 and x4 and x5 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x62 and x16 and not x15 and x4 and x5 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x62 and x16 and not x15 and x4 and not x5 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x62 and x16 and not x15 and not x4 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x62 and not x16 and x15 and x7 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( x62 and not x16 and x15 and not x7 and x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( x62 and not x16 and x15 and not x7 and not x9 and x10 and x6 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( x62 and not x16 and x15 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s125;

      elsif ( x62 and not x16 and x15 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x62 and not x16 and x15 and not x7 and not x9 and not x10 and not x11 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and x3 and x11 and x2 ) = '1' then
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s126;

      elsif ( x62 and not x16 and not x15 and x3 and x11 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and x3 and not x11 and x4 and x12 and x13 and x2 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s127;

      elsif ( x62 and not x16 and not x15 and x3 and not x11 and x4 and x12 and x13 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and x3 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and x3 and not x11 and x4 and not x12 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and x3 and not x11 and not x4 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and x4 and x11 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s128;

      elsif ( x62 and not x16 and not x15 and not x3 and x4 and x11 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and x4 and not x11 and x12 and x13 and x14 and x2 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s129;

      elsif ( x62 and not x16 and not x15 and not x3 and x4 and not x11 and x12 and x13 and x14 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and x4 and not x11 and x12 and x13 and not x14 and x2 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      elsif ( x62 and not x16 and not x15 and not x3 and x4 and not x11 and x12 and x13 and not x14 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and x4 and not x11 and x12 and not x13 and x2 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s31;

      elsif ( x62 and not x16 and not x15 and not x3 and x4 and not x11 and x12 and not x13 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and x4 and not x11 and not x12 and x2 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( x62 and not x16 and not x15 and not x3 and x4 and not x11 and not x12 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and x5 and x6 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and x5 and x6 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and x5 and not x6 and x7 and x8 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and x5 and not x6 and x7 and x8 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and x2 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and x2 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and x6 and x7 and x9 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and x6 and x7 and x9 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and x2 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and x2 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and x2 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and x2 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x62 and not x16 and not x15 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and x64 and x15 and x16 and x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and x63 and x64 and x15 and x16 and not x32 and x36 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x62 and x63 and x64 and x15 and x16 and not x32 and not x36 and x6 and x2 and x3 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( not x62 and x63 and x64 and x15 and x16 and not x32 and not x36 and x6 and x2 and not x3 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( not x62 and x63 and x64 and x15 and x16 and not x32 and not x36 and x6 and not x2 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( not x62 and x63 and x64 and x15 and x16 and not x32 and not x36 and not x6 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( not x62 and x63 and x64 and x15 and not x16 and x7 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( not x62 and x63 and x64 and x15 and not x16 and not x7 and x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( not x62 and x63 and x64 and x15 and not x16 and not x7 and not x9 and x41 and x37 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x62 and x63 and x64 and x15 and not x16 and not x7 and not x9 and x41 and not x37 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s134;

      elsif ( not x62 and x63 and x64 and x15 and not x16 and not x7 and not x9 and not x41 and x42 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and x63 and x64 and x15 and not x16 and not x7 and not x9 and not x41 and not x42 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and x64 and not x15 and x47 and x35 and x5 and x33 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and not x15 and x47 and x35 and x5 and not x33 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x62 and x63 and x64 and not x15 and x47 and x35 and x5 and not x33 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and x63 and x64 and not x15 and x47 and x35 and not x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and x63 and x64 and not x15 and x47 and not x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and x34 and x42 and x2 ) = '1' then
         y2 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s135;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and x34 and x42 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and x34 and not x42 and x3 and x4 and x12 and x13 and x2 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s136;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and x34 and not x42 and x3 and x4 and x12 and x13 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and x34 and not x42 and x3 and x4 and x12 and not x13 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and x34 and not x42 and x3 and x4 and not x12 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and x34 and not x42 and x3 and not x4 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and x34 and not x42 and not x3 and x4 and x12 and x13 and x2 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and x34 and not x42 and not x3 and x4 and x12 and x13 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and x34 and not x42 and not x3 and x4 and x12 and not x13 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and x34 and not x42 and not x3 and x4 and not x12 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and x34 and not x42 and not x3 and not x4 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and x35 and x11 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s137;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and x35 and not x11 and x43 and x44 and x14 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and x35 and not x11 and x43 and x44 and not x14 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and x35 and not x11 and x43 and not x44 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and x35 and not x11 and not x43 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and x36 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and x36 and not x37 and x38 and x39 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and x36 and not x37 and x38 and not x39 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and x36 and not x37 and not x38 and x8 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and x36 and not x37 and not x38 and not x8 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and x6 and x7 and x9 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and x6 and x7 and not x9 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and x6 and not x7 and x40 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and x6 and not x7 and not x40 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and not x6 and x38 and x41 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and not x6 and x38 and not x41 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and not x6 and not x38 and x10 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and x33 and not x35 and not x36 and not x6 and not x38 and not x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and x63 and x64 and not x15 and not x47 and not x34 and not x33 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and not x64 and x15 and x19 and x13 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s93;

      elsif ( not x62 and x63 and not x64 and x15 and x19 and not x13 and x32 and x18 and x12 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and not x64 and x15 and x19 and not x13 and x32 and x18 and not x12 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( not x62 and x63 and not x64 and x15 and x19 and not x13 and x32 and not x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x62 and x63 and not x64 and x15 and x19 and not x13 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and x63 and not x64 and x15 and not x19 ) = '1' then
         current_zoom <= s1;

      elsif ( not x62 and x63 and not x64 and not x15 and x17 and x19 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x62 and x63 and not x64 and not x15 and x17 and x19 and not x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( not x62 and x63 and not x64 and not x15 and x17 and not x19 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and x63 and not x64 and not x15 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and x63 and not x64 and not x15 and not x17 and not x20 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x62 and x63 and not x64 and not x15 and not x17 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x62 and not x63 and x15 and x16 and x1 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and not x63 and x15 and x16 and not x1 and x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x62 and not x63 and x15 and x16 and not x1 and not x5 and x6 and x2 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( not x62 and not x63 and x15 and x16 and not x1 and not x5 and x6 and x2 and not x3 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( not x62 and not x63 and x15 and x16 and not x1 and not x5 and x6 and not x2 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( not x62 and not x63 and x15 and x16 and not x1 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( not x62 and not x63 and x15 and not x16 and x7 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( not x62 and not x63 and x15 and not x16 and not x7 and x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( not x62 and not x63 and x15 and not x16 and not x7 and not x9 and x10 and x6 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x62 and not x63 and x15 and not x16 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      elsif ( not x62 and not x63 and x15 and not x16 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and not x63 and x15 and not x16 and not x7 and not x9 and not x10 and not x11 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and x16 and x4 and x5 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and not x63 and not x15 and x16 and x4 and x5 and not x2 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x62 and not x63 and not x15 and x16 and x4 and x5 and not x2 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and not x63 and not x15 and x16 and x4 and not x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and not x63 and not x15 and x16 and not x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and not x63 and not x15 and not x16 and x3 and x11 and x2 ) = '1' then
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s126;

      elsif ( not x62 and not x63 and not x15 and not x16 and x3 and x11 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and x3 and not x11 and x4 and x12 and x13 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( not x62 and not x63 and not x15 and not x16 and x3 and not x11 and x4 and x12 and x13 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and x3 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and x3 and not x11 and x4 and not x12 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and x3 and not x11 and not x4 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and x4 and x11 and x2 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s141;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and x4 and x11 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and x13 and x14 and x2 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and x13 and x14 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and x13 and not x14 and x2 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and x13 and not x14 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and not x13 and x2 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and x4 and not x11 and x12 and not x13 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and x4 and not x11 and not x12 and x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and x4 and not x11 and not x12 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and x5 and x6 and x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and x5 and x6 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and x7 and x8 and x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and x7 and x8 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and x7 and x9 and x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and x7 and x9 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and not x2 ) = '1' then
         current_zoom <= s26;

      elsif ( not x62 and not x63 and not x15 and not x16 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      else
         current_zoom <= s26;

      end if;

   when s27 =>
      if ( x63 and x15 and x14 and x8 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and x15 and x14 and x8 and not x10 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and x15 and x14 and not x8 and x30 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x63 and x15 and x14 and not x8 and x30 and not x1 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and x15 and x14 and not x8 and x30 and not x1 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( x63 and x15 and x14 and not x8 and not x30 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and x15 and not x14 and x32 and x3 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( x63 and x15 and not x14 and x32 and not x3 ) = '1' then
         current_zoom <= s27;

      elsif ( x63 and x15 and not x14 and not x32 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and x15 and not x14 and not x32 and not x3 ) = '1' then
         current_zoom <= s27;

      elsif ( x63 and not x15 and x16 and x43 and x29 and x40 and x27 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( x63 and not x15 and x16 and x43 and x29 and x40 and not x27 ) = '1' then
         current_zoom <= s27;

      elsif ( x63 and not x15 and x16 and x43 and x29 and not x40 and x27 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x15 and x16 and x43 and x29 and not x40 and not x27 ) = '1' then
         current_zoom <= s27;

      elsif ( x63 and not x15 and x16 and x43 and not x29 and x33 and x27 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x15 and x16 and x43 and not x29 and x33 and not x27 ) = '1' then
         current_zoom <= s27;

      elsif ( x63 and not x15 and x16 and x43 and not x29 and not x33 and x41 and x27 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( x63 and not x15 and x16 and x43 and not x29 and not x33 and x41 and not x27 ) = '1' then
         current_zoom <= s27;

      elsif ( x63 and not x15 and x16 and x43 and not x29 and not x33 and not x41 and x27 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x15 and x16 and x43 and not x29 and not x33 and not x41 and not x27 ) = '1' then
         current_zoom <= s27;

      elsif ( x63 and not x15 and x16 and not x43 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and not x15 and not x16 and x37 and x42 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x15 and not x16 and x37 and x42 and not x1 ) = '1' then
         current_zoom <= s27;

      elsif ( x63 and not x15 and not x16 and x37 and not x42 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and not x15 and not x16 and not x37 and x25 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and not x15 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( x63 and not x15 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_zoom <= s27;

      elsif ( x63 and not x15 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x15 and not x16 and not x37 and not x25 and not x5 and not x4 ) = '1' then
         current_zoom <= s27;

      elsif ( not x63 and x26 and x28 and x9 and x64 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( not x63 and x26 and x28 and x9 and not x64 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s143;

      elsif ( not x63 and x26 and x28 and not x9 and x23 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( not x63 and x26 and x28 and not x9 and not x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x63 and x26 and not x28 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( not x63 and not x26 and x27 and x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( not x63 and not x26 and x27 and not x4 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and not x26 and not x27 and x28 and x64 and x2 and x24 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s146;

      elsif ( not x63 and not x26 and not x27 and x28 and x64 and x2 and not x24 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x63 and not x26 and not x27 and x28 and x64 and not x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( not x63 and not x26 and not x27 and x28 and not x64 and x32 and x24 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s146;

      elsif ( not x63 and not x26 and not x27 and x28 and not x64 and x32 and not x24 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x63 and not x26 and not x27 and x28 and not x64 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( not x63 and not x26 and not x27 and not x28 and x18 and x3 and x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s148;

      elsif ( not x63 and not x26 and not x27 and not x28 and x18 and x3 and not x64 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s149;

      elsif ( not x63 and not x26 and not x27 and not x28 and x18 and not x3 and x4 and x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s150;

      elsif ( not x63 and not x26 and not x27 and not x28 and x18 and not x3 and x4 and not x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s151;

      elsif ( not x63 and not x26 and not x27 and not x28 and x18 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      end if;

   when s28 =>
      if ( x15 and x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( x15 and not x10 and x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( x15 and not x10 and not x25 ) = '1' then
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s109;

      elsif ( not x15 and x8 and x44 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x15 and x8 and not x44 and x37 ) = '1' then
         current_zoom <= s1;

      elsif ( not x15 and x8 and not x44 and not x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x15 and not x8 and x48 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x15 and not x8 and not x48 and x37 ) = '1' then
         current_zoom <= s1;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      end if;

   when s29 =>
      if ( x15 and x16 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s56;

      elsif ( x15 and not x16 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s152;

      elsif ( x15 and not x16 and not x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s31;

      elsif ( not x15 and x16 and x4 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s56;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s153;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s152;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s56;

      end if;

   when s30 =>
      if ( x16 and x15 and x5 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( x16 and x15 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x16 and x15 and not x5 and not x6 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( x16 and not x15 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( x16 and not x15 and x4 and not x5 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x16 and not x15 and not x4 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s154;

      elsif ( not x16 and x15 and x6 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x16 and x15 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s125;

      else
         y2 <= '1' ;
         current_zoom <= s123;

      end if;

   when s31 =>
      if ( x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s152;

      elsif ( x15 and not x16 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s56;

      elsif ( x15 and not x16 and not x12 ) = '1' then
         current_zoom <= s31;

      elsif ( not x15 and x16 and x4 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s153;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s152;

      elsif ( not x15 and not x16 and x14 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s152;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      end if;

   when s32 =>
      if ( x63 and x46 and x16 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( x63 and x46 and not x16 and x37 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( x63 and x46 and not x16 and not x37 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x63 and not x46 and x47 and x4 and x36 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( x63 and not x46 and x47 and x4 and not x36 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      elsif ( x63 and not x46 and x47 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( x63 and not x46 and not x47 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x63 and x15 and x16 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x63 and x15 and not x16 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( not x63 and x15 and not x16 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x63 and not x15 and x16 and x4 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x63 and not x15 and x16 and x4 and not x5 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      elsif ( not x63 and not x15 and x16 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      end if;

   when s33 =>
      if ( x16 and x5 and x15 and x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( x16 and x5 and x15 and not x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( x16 and x5 and not x15 and x4 and x64 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( x16 and x5 and not x15 and x4 and not x64 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s158;

      elsif ( x16 and x5 and not x15 and not x4 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s159;

      elsif ( x16 and not x5 and x15 and x64 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x16 and not x5 and x15 and x64 and not x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( x16 and not x5 and x15 and not x64 and x6 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x16 and not x5 and x15 and not x64 and not x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( x16 and not x5 and not x15 and x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( x16 and not x5 and not x15 and not x4 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s159;

      elsif ( not x16 and x15 and x6 and x64 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x16 and x15 and x6 and not x64 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s158;

      elsif ( not x16 and x15 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      elsif ( not x16 and not x15 and x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      end if;

   when s34 =>
      if ( x63 and x46 and x16 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( x63 and x46 and not x16 and x12 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( x63 and x46 and not x16 and not x12 ) = '1' then
         current_zoom <= s34;

      elsif ( x63 and not x46 and x47 and x4 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      elsif ( x63 and not x46 and x47 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( x63 and not x46 and not x47 and x14 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( x63 and not x46 and not x47 and not x14 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( not x63 and x15 and x16 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( not x63 and x15 and not x16 and x12 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x63 and x15 and not x16 and not x12 ) = '1' then
         current_zoom <= s34;

      elsif ( not x63 and not x15 and x16 and x4 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      elsif ( not x63 and not x15 and x16 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( not x63 and not x15 and not x16 and x14 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      end if;

   when s35 =>
      if ( x15 and x62 and x16 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s57;

      elsif ( x15 and x62 and not x16 and x5 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( x15 and x62 and not x16 and not x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s57;

      elsif ( x15 and not x62 and x63 and x47 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( x15 and not x62 and x63 and not x47 and x36 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( x15 and not x62 and x63 and not x47 and not x36 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( x15 and not x62 and not x63 and x16 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( x15 and not x62 and not x63 and not x16 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( x15 and not x62 and not x63 and not x16 and not x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( not x15 and x16 and x62 and x4 and x5 and x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s57;

      elsif ( not x15 and x16 and x62 and x4 and x5 and not x1 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s30;

      elsif ( not x15 and x16 and x62 and x4 and not x5 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s56;

      elsif ( not x15 and x16 and x62 and x4 and not x5 and not x1 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( not x15 and x16 and x62 and not x4 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s56;

      elsif ( not x15 and x16 and x62 and not x4 and not x1 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( not x15 and x16 and not x62 and x63 and x35 and x5 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( not x15 and x16 and not x62 and x63 and x35 and x5 and not x1 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x15 and x16 and not x62 and x63 and x35 and not x5 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x15 and x16 and not x62 and x63 and x35 and not x5 and not x32 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x15 and x16 and not x62 and x63 and not x35 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x15 and x16 and not x62 and x63 and not x35 and not x32 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x15 and x16 and not x62 and not x63 and x4 and x5 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( not x15 and x16 and not x62 and not x63 and x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x15 and x16 and not x62 and not x63 and x4 and not x5 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x15 and x16 and not x62 and not x63 and x4 and not x5 and not x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x15 and x16 and not x62 and not x63 and not x4 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x15 and x16 and not x62 and not x63 and not x4 and not x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x15 and not x16 and x62 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s57;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      end if;

   when s36 =>
      if ( x64 and x61 and x35 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and x61 and not x35 and x13 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( x64 and x61 and not x35 and not x13 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s160;

      elsif ( x64 and not x61 and x10 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x64 and not x61 and not x10 and x11 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( x64 and not x61 and not x10 and not x11 and x7 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x64 and not x61 and not x10 and not x11 and not x7 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( not x64 and x14 and x35 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x14 and not x35 and x13 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( not x64 and x14 and not x35 and not x13 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s160;

      elsif ( not x64 and not x14 and x10 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and not x14 and not x10 and x11 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( not x64 and not x14 and not x10 and not x11 and x7 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      else
         y10 <= '1' ;
         current_zoom <= s161;

      end if;

   when s37 =>
      if ( x64 and x61 and x50 and x19 and x10 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x64 and x61 and x50 and x19 and not x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x64 and x61 and x50 and not x19 ) = '1' then
         current_zoom <= s37;

      elsif ( x64 and x61 and not x50 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x64 and not x61 and x11 and x10 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and not x61 and x11 and not x10 and x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x64 and not x61 and x11 and not x10 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s162;

      elsif ( x64 and not x61 and not x11 and x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x64 and not x61 and not x11 and not x10 and x12 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( x64 and not x61 and not x11 and not x10 and not x12 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s44;

      elsif ( x64 and not x61 and not x11 and not x10 and not x12 and not x1 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x64 and not x61 and not x11 and not x10 and not x12 and not x1 and not x4 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( not x64 and x14 and x42 and x19 and x10 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( not x64 and x14 and x42 and x19 and not x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( not x64 and x14 and x42 and not x19 ) = '1' then
         current_zoom <= s37;

      elsif ( not x64 and x14 and not x42 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( not x64 and not x14 and x11 and x10 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and not x14 and x11 and not x10 and x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( not x64 and not x14 and x11 and not x10 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s162;

      elsif ( not x64 and not x14 and not x11 and x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( not x64 and not x14 and not x11 and not x10 and x12 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( not x64 and not x14 and not x11 and not x10 and not x12 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s44;

      elsif ( not x64 and not x14 and not x11 and not x10 and not x12 and not x1 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      else
         current_zoom <= s1;

      end if;

   when s38 =>
      if ( x28 and x64 and x57 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( x28 and x64 and not x57 ) = '1' then
         current_zoom <= s38;

      elsif ( x28 and not x64 and x21 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( x28 and not x64 and not x21 ) = '1' then
         current_zoom <= s38;

      elsif ( not x28 and x27 and x8 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( not x28 and x27 and not x8 and x37 and x64 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( not x28 and x27 and not x8 and x37 and not x64 ) = '1' then
         current_zoom <= s1;

      elsif ( not x28 and x27 and not x8 and not x37 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      end if;

   when s39 =>
      if ( x64 and x50 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x64 and not x50 ) = '1' then
         current_zoom <= s39;

      elsif ( not x64 and x42 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      else
         current_zoom <= s39;

      end if;

   when s40 =>
      if ( x64 and x61 and x16 and x54 and x29 and x59 and x27 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s163;

      elsif ( x64 and x61 and x16 and x54 and x29 and x59 and not x27 ) = '1' then
         current_zoom <= s40;

      elsif ( x64 and x61 and x16 and x54 and x29 and not x59 and x27 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x64 and x61 and x16 and x54 and x29 and not x59 and not x27 ) = '1' then
         current_zoom <= s40;

      elsif ( x64 and x61 and x16 and x54 and not x29 and x33 and x27 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x64 and x61 and x16 and x54 and not x29 and x33 and not x27 ) = '1' then
         current_zoom <= s40;

      elsif ( x64 and x61 and x16 and x54 and not x29 and not x33 and x57 and x27 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x64 and x61 and x16 and x54 and not x29 and not x33 and x57 and not x27 ) = '1' then
         current_zoom <= s40;

      elsif ( x64 and x61 and x16 and x54 and not x29 and not x33 and not x57 and x27 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x64 and x61 and x16 and x54 and not x29 and not x33 and not x57 and not x27 ) = '1' then
         current_zoom <= s40;

      elsif ( x64 and x61 and x16 and not x54 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and x61 and not x16 and x37 and x56 and x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x64 and x61 and not x16 and x37 and x56 and not x1 ) = '1' then
         current_zoom <= s40;

      elsif ( x64 and x61 and not x16 and x37 and not x56 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and x61 and not x16 and not x37 and x25 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and x61 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s160;

      elsif ( x64 and x61 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_zoom <= s40;

      elsif ( x64 and x61 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x64 and x61 and not x16 and not x37 and not x25 and not x5 and not x4 ) = '1' then
         current_zoom <= s40;

      elsif ( x64 and not x61 and x10 and x11 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x64 and not x61 and x10 and not x11 and x12 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x64 and not x61 and x10 and not x11 and x12 and not x2 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and not x61 and x10 and not x11 and not x12 and x1 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( x64 and not x61 and x10 and not x11 and not x12 and x1 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x64 and not x61 and x10 and not x11 and not x12 and x1 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x64 and not x61 and x10 and not x11 and not x12 and not x1 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x64 and not x61 and not x10 and x12 and x2 and x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( x64 and not x61 and not x10 and x12 and x2 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x64 and not x61 and not x10 and x12 and not x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x64 and not x61 and not x10 and not x12 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s164;

      elsif ( x64 and not x61 and not x10 and not x12 and not x9 and x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x64 and not x61 and not x10 and not x12 and not x9 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and x14 and x16 and x26 and x29 and x27 and x18 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s163;

      elsif ( not x64 and x14 and x16 and x26 and x29 and x27 and not x18 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x64 and x14 and x16 and x26 and x29 and not x27 ) = '1' then
         current_zoom <= s40;

      elsif ( not x64 and x14 and x16 and x26 and not x29 and x27 and x33 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x64 and x14 and x16 and x26 and not x29 and x27 and not x33 and x21 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x64 and x14 and x16 and x26 and not x29 and x27 and not x33 and not x21 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x64 and x14 and x16 and x26 and not x29 and not x27 ) = '1' then
         current_zoom <= s40;

      elsif ( not x64 and x14 and x16 and not x26 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x14 and not x16 and x37 and x22 and x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x64 and x14 and not x16 and x37 and x22 and not x1 ) = '1' then
         current_zoom <= s40;

      elsif ( not x64 and x14 and not x16 and x37 and not x22 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x14 and not x16 and not x37 and x25 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x14 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s160;

      elsif ( not x64 and x14 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_zoom <= s40;

      elsif ( not x64 and x14 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x64 and x14 and not x16 and not x37 and not x25 and not x5 and not x4 ) = '1' then
         current_zoom <= s40;

      elsif ( not x64 and not x14 and x10 and x11 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x64 and not x14 and x10 and not x11 and x12 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x64 and not x14 and x10 and not x11 and x12 and not x2 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and not x14 and x10 and not x11 and not x12 and x1 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( not x64 and not x14 and x10 and not x11 and not x12 and x1 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( not x64 and not x14 and x10 and not x11 and not x12 and x1 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( not x64 and not x14 and x10 and not x11 and not x12 and not x1 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x64 and not x14 and not x10 and x12 and x2 and x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( not x64 and not x14 and not x10 and x12 and x2 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( not x64 and not x14 and not x10 and x12 and not x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x64 and not x14 and not x10 and not x12 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s164;

      elsif ( not x64 and not x14 and not x10 and not x12 and not x9 and x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      end if;

   when s41 =>
      if ( x64 and x61 and x51 and x24 and x5 and x36 ) = '1' then
         current_zoom <= s41;

      elsif ( x64 and x61 and x51 and x24 and x5 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x64 and x61 and x51 and x24 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x64 and x61 and x51 and not x24 and x31 and x29 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x64 and x61 and x51 and not x24 and x31 and not x29 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x64 and x61 and x51 and not x24 and not x31 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x64 and x61 and not x51 and x11 and x35 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x64 and x61 and not x51 and x11 and x35 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x64 and x61 and not x51 and x11 and not x35 and x60 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and x61 and not x51 and x11 and not x35 and not x60 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x64 and x61 and not x51 and not x11 and x52 and x35 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s74;

      elsif ( x64 and x61 and not x51 and not x11 and x52 and not x35 and x60 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and x61 and not x51 and not x11 and x52 and not x35 and not x60 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x64 and x61 and not x51 and not x11 and not x52 and x3 and x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( x64 and x61 and not x51 and not x11 and not x52 and x3 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x64 and x61 and not x51 and not x11 and not x52 and not x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x64 and not x61 and x11 and x10 and x4 and x5 and x3 ) = '1' then
         current_zoom <= s41;

      elsif ( x64 and not x61 and x11 and x10 and x4 and x5 and not x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x64 and not x61 and x11 and x10 and x4 and not x5 and x3 ) = '1' then
         current_zoom <= s41;

      elsif ( x64 and not x61 and x11 and x10 and x4 and not x5 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x64 and not x61 and x11 and x10 and not x4 and x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x64 and not x61 and x11 and x10 and not x4 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x64 and not x61 and x11 and not x10 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( x64 and not x61 and x11 and not x10 and not x6 and x8 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s160;

      elsif ( x64 and not x61 and x11 and not x10 and not x6 and x8 and not x4 and x1 and x3 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x64 and not x61 and x11 and not x10 and not x6 and x8 and not x4 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( x64 and not x61 and x11 and not x10 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x64 and not x61 and x11 and not x10 and not x6 and not x8 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and not x61 and not x11 and x10 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x64 and not x61 and not x11 and x10 and not x2 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and not x61 and not x11 and not x10 and x12 and x9 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and not x61 and not x11 and not x10 and x12 and not x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s74;

      elsif ( x64 and not x61 and not x11 and not x10 and not x12 and x6 ) = '1' then
         y6 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s165;

      elsif ( x64 and not x61 and not x11 and not x10 and not x12 and not x6 and x9 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x64 and not x61 and not x11 and not x10 and not x12 and not x6 and not x9 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and x14 and x41 and x24 and x5 and x36 ) = '1' then
         current_zoom <= s41;

      elsif ( not x64 and x14 and x41 and x24 and x5 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( not x64 and x14 and x41 and x24 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and x14 and x41 and not x24 and x31 and x29 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( not x64 and x14 and x41 and not x24 and x31 and not x29 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and x14 and x41 and not x24 and not x31 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( not x64 and x14 and not x41 and x11 and x35 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( not x64 and x14 and not x41 and x11 and x35 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and x14 and not x41 and x11 and not x35 and x15 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x14 and not x41 and x11 and not x35 and not x15 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and x14 and not x41 and not x11 and x40 and x35 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s74;

      elsif ( not x64 and x14 and not x41 and not x11 and x40 and not x35 and x15 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x14 and not x41 and not x11 and x40 and not x35 and not x15 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and x14 and not x41 and not x11 and not x40 and x3 and x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( not x64 and x14 and not x41 and not x11 and not x40 and x3 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and x14 and not x41 and not x11 and not x40 and not x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and not x14 and x11 and x10 and x4 and x5 and x3 ) = '1' then
         current_zoom <= s41;

      elsif ( not x64 and not x14 and x11 and x10 and x4 and x5 and not x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x64 and not x14 and x11 and x10 and x4 and not x5 and x3 ) = '1' then
         current_zoom <= s41;

      elsif ( not x64 and not x14 and x11 and x10 and x4 and not x5 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x64 and not x14 and x11 and x10 and not x4 and x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and not x14 and x11 and x10 and not x4 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x64 and not x14 and x11 and not x10 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( not x64 and not x14 and x11 and not x10 and not x6 and x8 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s160;

      elsif ( not x64 and not x14 and x11 and not x10 and not x6 and x8 and not x4 and x1 and x3 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( not x64 and not x14 and x11 and not x10 and not x6 and x8 and not x4 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( not x64 and not x14 and x11 and not x10 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( not x64 and not x14 and x11 and not x10 and not x6 and not x8 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and not x14 and not x11 and x10 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x64 and not x14 and not x11 and x10 and not x2 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and not x14 and not x11 and not x10 and x12 and x9 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and not x14 and not x11 and not x10 and x12 and not x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s74;

      elsif ( not x64 and not x14 and not x11 and not x10 and not x12 and x6 ) = '1' then
         y6 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s165;

      elsif ( not x64 and not x14 and not x11 and not x10 and not x12 and not x6 and x9 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      end if;

   when s42 =>
      if ( x64 and x61 and x8 and x53 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( x64 and x61 and x8 and not x53 and x37 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and x61 and x8 and not x53 and not x37 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( x64 and x61 and not x8 and x51 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( x64 and x61 and not x8 and not x51 and x37 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and x61 and not x8 and not x51 and not x37 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( x64 and not x61 and x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x64 and not x61 and not x10 and x11 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( x64 and not x61 and not x10 and not x11 and x12 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x64 and not x61 and not x10 and not x11 and x12 and not x8 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s162;

      elsif ( x64 and not x61 and not x10 and not x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s166;

      elsif ( not x64 and x14 and x8 and x30 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( not x64 and x14 and x8 and not x30 and x37 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x14 and x8 and not x30 and not x37 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( not x64 and x14 and not x8 and x41 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( not x64 and x14 and not x8 and not x41 and x37 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x14 and not x8 and not x41 and not x37 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( not x64 and not x14 and x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( not x64 and not x14 and not x10 and x11 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( not x64 and not x14 and not x10 and not x11 and x12 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( not x64 and not x14 and not x10 and not x11 and x12 and not x8 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s162;

      else
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s166;

      end if;

   when s43 =>
      if ( x7 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s44;

      else
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      end if;

   when s44 =>
      if ( x64 and x61 and x29 and x50 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s162;

      elsif ( x64 and x61 and x29 and not x50 ) = '1' then
         current_zoom <= s44;

      elsif ( x64 and x61 and not x29 and x60 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and x61 and not x29 and not x60 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x64 and not x61 and x11 and x6 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( x64 and not x61 and x11 and x6 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s92;

      elsif ( x64 and not x61 and x11 and not x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( x64 and not x61 and not x11 and x8 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x64 and not x61 and not x11 and not x8 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s160;

      elsif ( not x64 and x14 and x29 and x42 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s162;

      elsif ( not x64 and x14 and x29 and not x42 ) = '1' then
         current_zoom <= s44;

      elsif ( not x64 and x14 and not x29 and x15 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x14 and not x29 and not x15 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and not x14 and x11 and x6 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( not x64 and not x14 and x11 and x6 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s92;

      elsif ( not x64 and not x14 and x11 and not x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s42;

      elsif ( not x64 and not x14 and not x11 and x8 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s160;

      end if;

   when s45 =>
      if ( x17 and x18 and x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( x17 and x18 and not x4 and x40 and x31 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x17 and x18 and not x4 and x40 and not x31 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( x17 and x18 and not x4 and not x40 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s68;

      elsif ( x17 and not x18 and x11 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s45;

      elsif ( x17 and not x18 and not x11 and x16 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( x17 and not x18 and not x11 and not x16 and x15 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x17 and not x18 and not x11 and not x16 and x15 and not x1 ) = '1' then
         current_zoom <= s45;

      elsif ( x17 and not x18 and not x11 and not x16 and not x15 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( x17 and not x18 and not x11 and not x16 and not x15 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x17 and x18 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x17 and not x18 and x19 and x1 and x39 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x17 and not x18 and x19 and x1 and not x39 and x31 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x17 and not x18 and x19 and x1 and not x39 and not x31 ) = '1' then
         current_zoom <= s45;

      elsif ( not x17 and not x18 and x19 and not x1 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x17 and not x18 and not x19 and x1 and x39 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x17 and not x18 and not x19 and x1 and x39 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x17 and not x18 and not x19 and x1 and x39 and not x3 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s68;

      elsif ( not x17 and not x18 and not x19 and x1 and not x39 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( not x17 and not x18 and not x19 and not x1 and x2 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      end if;

   when s46 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( x17 and not x18 and x7 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s63;

      elsif ( x17 and not x18 and not x7 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s62;

      elsif ( not x17 and x18 and x19 and x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x17 and x18 and x19 and not x5 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s68;

      elsif ( not x17 and x18 and not x19 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x17 and not x18 and x19 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( not x17 and not x18 and not x19 and x5 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x17 and not x18 and not x19 and x5 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x17 and not x18 and not x19 and x5 and not x3 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s68;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      end if;

   when s47 =>
      if ( x18 and x17 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( x18 and x17 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x18 and x17 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( x18 and not x17 and x19 and x39 and x4 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( x18 and not x17 and x19 and x39 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s68;

      elsif ( x18 and not x17 and x19 and not x39 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x18 and not x17 and not x19 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x18 and x17 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x18 and not x17 and x19 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x18 and not x17 and x19 and not x35 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x18 and not x17 and x19 and not x35 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x18 and not x17 and x19 and not x35 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x18 and not x17 and x19 and not x35 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x18 and not x17 and x19 and not x35 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s47;

      elsif ( not x18 and not x17 and x19 and not x35 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x18 and not x17 and x19 and not x35 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x18 and not x17 and x19 and not x35 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x18 and not x17 and not x19 and x40 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x18 and not x17 and not x19 and x40 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x18 and not x17 and not x19 and x40 and not x3 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s68;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      end if;

   when s48 =>
      if ( x17 and x18 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s82;

      elsif ( x17 and not x18 and x14 and x5 ) = '1' then
         current_zoom <= s48;

      elsif ( x17 and not x18 and x14 and not x5 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( x17 and not x18 and not x14 and x5 ) = '1' then
         current_zoom <= s48;

      elsif ( x17 and not x18 and not x14 and not x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( not x17 and x18 and x19 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x17 and x18 and not x19 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x17 and x18 and not x19 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x17 and x18 and not x19 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x17 and x18 and not x19 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x17 and x18 and not x19 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s48;

      elsif ( not x17 and x18 and not x19 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x17 and x18 and not x19 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x17 and x18 and not x19 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x17 and not x18 and x4 and x19 and x1 ) = '1' then
         current_zoom <= s48;

      elsif ( not x17 and not x18 and x4 and x19 and not x1 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s68;

      elsif ( not x17 and not x18 and x4 and not x19 ) = '1' then
         current_zoom <= s48;

      elsif ( not x17 and not x18 and not x4 and x19 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      else
         current_zoom <= s48;

      end if;

   when s49 =>
      if ( x63 and x4 ) = '1' then
         y4 <= '1' ;
         current_zoom <= s24;

      elsif ( x63 and not x4 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s121;

      elsif ( not x63 and x8 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s168;

      end if;

   when s50 =>
         y20 <= '1' ;
         current_zoom <= s51;

   when s51 =>
      if ( x1 ) = '1' then
         y4 <= '1' ;
         current_zoom <= s24;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         current_zoom <= s23;

      end if;

   when s52 =>
      if ( x63 and x11 and x43 and x13 and x10 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( x63 and x11 and x43 and x13 and not x10 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x63 and x11 and x43 and x13 and not x10 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x63 and x11 and x43 and x13 and not x10 and not x34 and not x37 ) = '1' then
         current_zoom <= s52;

      elsif ( x63 and x11 and x43 and not x13 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x63 and x11 and x43 and not x13 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x63 and x11 and x43 and not x13 and not x34 and not x37 ) = '1' then
         current_zoom <= s52;

      elsif ( x63 and x11 and not x43 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x63 and x11 and not x43 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x63 and x11 and not x43 and not x34 and not x37 ) = '1' then
         current_zoom <= s52;

      elsif ( x63 and not x11 and x12 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x63 and not x11 and x12 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x63 and not x11 and x12 and not x34 and not x37 ) = '1' then
         current_zoom <= s52;

      elsif ( x63 and not x11 and not x12 and x44 and x14 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x63 and not x11 and not x12 and x44 and x14 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x63 and not x11 and not x12 and x44 and x14 and not x34 and not x37 ) = '1' then
         current_zoom <= s52;

      elsif ( x63 and not x11 and not x12 and x44 and not x14 and x41 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x63 and not x11 and not x12 and x44 and not x14 and x41 and not x32 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x63 and not x11 and not x12 and x44 and not x14 and not x41 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x63 and not x11 and not x12 and x44 and not x14 and not x41 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x63 and not x11 and not x12 and x44 and not x14 and not x41 and not x34 and not x37 ) = '1' then
         current_zoom <= s52;

      elsif ( x63 and not x11 and not x12 and not x44 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x63 and not x11 and not x12 and not x44 and not x34 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x63 and not x11 and not x12 and not x44 and not x34 and not x37 ) = '1' then
         current_zoom <= s52;

      elsif ( not x63 and x64 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x63 and not x64 and x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( not x63 and not x64 and x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x63 and not x64 and x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x63 and not x64 and x17 and not x18 and x35 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( not x63 and not x64 and x17 and not x18 and not x35 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s61;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      end if;

   when s53 =>
      if ( x62 and x61 and x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s169;

      elsif ( x62 and x61 and not x9 and x3 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( x62 and x61 and not x9 and not x3 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( x62 and not x61 and x29 and x50 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s171;

      elsif ( x62 and not x61 and x29 and not x50 ) = '1' then
         current_zoom <= s53;

      elsif ( x62 and not x61 and not x29 and x60 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x62 and not x61 and not x29 and not x60 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( not x62 and x33 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      else
         current_zoom <= s53;

      end if;

   when s54 =>
      if ( x15 and x16 and x5 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( x15 and x16 and not x5 and x37 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x15 and x16 and not x5 and not x37 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( x15 and not x16 and x37 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( x15 and not x16 and not x37 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s134;

      elsif ( not x15 and x47 and x35 and x36 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x15 and x47 and x35 and not x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x15 and x47 and not x35 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s159;

      else
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      end if;

   when s55 =>
      if ( x15 and x16 and x5 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s152;

      elsif ( x15 and x16 and not x5 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s154;

      elsif ( x15 and not x16 and x12 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s154;

      elsif ( x15 and not x16 and not x12 ) = '1' then
         current_zoom <= s55;

      elsif ( not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s127;

      elsif ( not x15 and not x16 and x13 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s154;

      end if;

   when s56 =>
      if ( x15 and x16 and x5 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x15 and x16 and not x5 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s153;

      elsif ( x15 and not x16 and x13 and x11 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x15 and not x16 and x13 and not x11 and x6 and x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s30;

      elsif ( x15 and not x16 and x13 and not x11 and x6 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x15 and not x16 and x13 and not x11 and not x6 and x5 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( x15 and not x16 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s57;

      elsif ( x15 and not x16 and not x13 and x14 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( x15 and not x16 and not x13 and not x14 and x9 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and x6 and x2 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and x6 and not x2 ) = '1' then
         current_zoom <= s56;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and not x6 and not x8 ) = '1' then
         current_zoom <= s56;

      elsif ( not x15 and x16 and x4 and x5 and x2 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s31;

      elsif ( not x15 and x16 and x4 and x5 and not x2 and x1 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s127;

      elsif ( not x15 and x16 and x4 and x5 and not x2 and not x1 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s31;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s31;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      end if;

   when s57 =>
      if ( x15 and x16 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s125;

      elsif ( x15 and not x16 and x3 and x2 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      elsif ( x15 and not x16 and x3 and not x2 ) = '1' then
         current_zoom <= s57;

      elsif ( x15 and not x16 and not x3 and x4 and x2 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s30;

      elsif ( x15 and not x16 and not x3 and x4 and not x2 ) = '1' then
         current_zoom <= s57;

      elsif ( x15 and not x16 and not x3 and not x4 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x15 and not x16 and not x3 and not x4 and not x2 ) = '1' then
         current_zoom <= s57;

      elsif ( not x15 and x16 and x4 and x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s125;

      elsif ( not x15 and x16 and x4 and not x5 and x1 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s125;

      elsif ( not x15 and x16 and x4 and not x5 and not x1 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s30;

      elsif ( not x15 and x16 and not x4 and x1 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s125;

      elsif ( not x15 and x16 and not x4 and not x1 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s127;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s125;

      end if;

   when s58 =>
      if ( x63 and x11 and x43 and x13 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and x11 and x43 and x13 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and x11 and x43 and x13 and not x8 and not x1 ) = '1' then
         current_zoom <= s58;

      elsif ( x63 and x11 and x43 and not x13 and x10 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( x63 and x11 and x43 and not x13 and not x10 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and x11 and x43 and not x13 and not x10 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and x11 and x43 and not x13 and not x10 and not x8 and not x1 ) = '1' then
         current_zoom <= s58;

      elsif ( x63 and x11 and not x43 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and x11 and not x43 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and x11 and not x43 and not x8 and not x1 ) = '1' then
         current_zoom <= s58;

      elsif ( x63 and not x11 and x12 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and not x11 and x12 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and not x11 and x12 and not x8 and not x1 ) = '1' then
         current_zoom <= s58;

      elsif ( x63 and not x11 and not x12 and x44 and x45 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and not x11 and not x12 and x44 and x45 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and not x11 and not x12 and x44 and x45 and not x8 and not x1 ) = '1' then
         current_zoom <= s58;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and x41 and x40 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s58;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and x7 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and x41 and not x40 and not x7 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s69;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and not x41 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and not x41 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and not x11 and not x12 and x44 and not x45 and not x41 and not x8 and not x1 ) = '1' then
         current_zoom <= s58;

      elsif ( x63 and not x11 and not x12 and not x44 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and not x11 and not x12 and not x44 and not x8 and x1 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and not x11 and not x12 and not x44 and not x8 and not x1 ) = '1' then
         current_zoom <= s58;

      elsif ( not x63 and x9 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s151;

      end if;

   when s59 =>
      if ( x64 and x11 and x43 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x64 and x11 and x43 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x64 and x11 and x43 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( x64 and x11 and x43 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( x64 and x11 and x43 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_zoom <= s59;

      elsif ( x64 and x11 and not x43 and x44 and x10 and x35 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x64 and x11 and not x43 and x44 and x10 and not x35 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x64 and x11 and not x43 and x44 and not x10 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x64 and x11 and not x43 and x44 and not x10 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x64 and x11 and not x43 and x44 and not x10 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( x64 and x11 and not x43 and x44 and not x10 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( x64 and x11 and not x43 and x44 and not x10 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_zoom <= s59;

      elsif ( x64 and x11 and not x43 and not x44 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x64 and x11 and not x43 and not x44 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x64 and x11 and not x43 and not x44 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( x64 and x11 and not x43 and not x44 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( x64 and x11 and not x43 and not x44 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_zoom <= s59;

      elsif ( x64 and not x11 and x12 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x64 and not x11 and x12 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x64 and not x11 and x12 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( x64 and not x11 and x12 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( x64 and not x11 and x12 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_zoom <= s59;

      elsif ( x64 and not x11 and not x12 and x13 and x45 and x41 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( x64 and not x11 and not x12 and x13 and x45 and not x41 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x64 and not x11 and not x12 and x13 and x45 and not x41 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x64 and not x11 and not x12 and x13 and x45 and not x41 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( x64 and not x11 and not x12 and x13 and x45 and not x41 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( x64 and not x11 and not x12 and x13 and x45 and not x41 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_zoom <= s59;

      elsif ( x64 and not x11 and not x12 and x13 and not x45 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x64 and not x11 and not x12 and x13 and not x45 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x64 and not x11 and not x12 and x13 and not x45 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( x64 and not x11 and not x12 and x13 and not x45 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( x64 and not x11 and not x12 and x13 and not x45 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_zoom <= s59;

      elsif ( x64 and not x11 and not x12 and not x13 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x64 and not x11 and not x12 and not x13 and not x9 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x64 and not x11 and not x12 and not x13 and not x9 and not x34 and x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( x64 and not x11 and not x12 and not x13 and not x9 and not x34 and not x1 and x38 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      elsif ( x64 and not x11 and not x12 and not x13 and not x9 and not x34 and not x1 and not x38 ) = '1' then
         current_zoom <= s59;

      elsif ( not x64 and x15 and x25 and x22 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x15 and x25 and not x22 and x6 and x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x64 and x15 and x25 and not x22 and x6 and not x8 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x15 and x25 and not x22 and not x6 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( not x64 and x15 and not x25 and x29 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s25;

      elsif ( not x64 and x15 and not x25 and not x29 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( not x64 and not x15 and x38 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( not x64 and not x15 and not x38 and x49 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      end if;

   when s60 =>
      if ( x63 and x64 and x42 and x43 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x64 and x42 and not x43 and x44 and x10 and x36 and x6 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( x63 and x64 and x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and x15 and x47 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x63 and x64 and x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s60;

      elsif ( x63 and x64 and x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x63 and x64 and x42 and not x43 and x44 and x10 and x36 and not x6 and x7 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x64 and x42 and not x43 and x44 and x10 and x36 and not x6 and not x7 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s69;

      elsif ( x63 and x64 and x42 and not x43 and x44 and x10 and not x36 and x35 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x63 and x64 and x42 and not x43 and x44 and x10 and not x36 and not x35 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and x64 and x42 and not x43 and x44 and not x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x64 and x42 and not x43 and not x44 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x64 and not x42 and x12 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x64 and not x42 and not x12 and x13 and x14 and x41 and x4 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( x63 and x64 and not x42 and not x12 and x13 and x14 and x41 and not x4 ) = '1' then
         current_zoom <= s60;

      elsif ( x63 and x64 and not x42 and not x12 and x13 and x14 and not x41 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x64 and not x42 and not x12 and x13 and not x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and x64 and not x42 and not x12 and not x13 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s5;

      elsif ( x63 and not x64 and x15 and x16 and x19 and x33 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and not x64 and x15 and x16 and x19 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x64 and x15 and x16 and x19 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and not x64 and x15 and x16 and not x19 and x30 and x26 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x63 and not x64 and x15 and x16 and not x19 and x30 and x26 and not x1 ) = '1' then
         current_zoom <= s60;

      elsif ( x63 and not x64 and x15 and x16 and not x19 and x30 and not x26 and x3 ) = '1' then
         current_zoom <= s60;

      elsif ( x63 and not x64 and x15 and x16 and not x19 and x30 and not x26 and not x3 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x63 and not x64 and x15 and x16 and not x19 and x30 and not x26 and not x3 and not x1 ) = '1' then
         current_zoom <= s60;

      elsif ( x63 and not x64 and x15 and x16 and not x19 and not x30 ) = '1' then
         current_zoom <= s60;

      elsif ( x63 and not x64 and x15 and not x16 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and not x64 and not x15 and x28 and x41 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( x63 and not x64 and not x15 and x28 and not x41 ) = '1' then
         current_zoom <= s60;

      elsif ( x63 and not x64 and not x15 and not x28 and x27 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( x63 and not x64 and not x15 and not x28 and x27 and not x8 and x37 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and not x64 and not x15 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and not x64 and not x15 and not x28 and not x27 and x49 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x63 and not x64 and not x15 and not x28 and not x27 and not x49 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x63 and x18 and x17 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s174;

      elsif ( not x63 and x18 and x17 and not x5 and x6 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x63 and x18 and x17 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x63 and x18 and not x17 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x63 and x18 and not x17 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x63 and x18 and not x17 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x63 and x18 and not x17 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and x18 and not x17 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s60;

      elsif ( not x63 and x18 and not x17 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and x18 and not x17 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x63 and x18 and not x17 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and not x18 and x17 and x9 and x10 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x63 and not x18 and x17 and x9 and not x10 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x63 and not x18 and x17 and not x9 and x6 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s174;

      elsif ( not x63 and not x18 and x17 and not x9 and not x6 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x63 and not x18 and not x17 and x6 and x7 and x39 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x63 and not x18 and not x17 and x6 and x7 and x39 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x63 and not x18 and not x17 and x6 and x7 and x39 and not x3 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s68;

      elsif ( not x63 and not x18 and not x17 and x6 and x7 and not x39 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( not x63 and not x18 and not x17 and x6 and not x7 and x8 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s174;

      elsif ( not x63 and not x18 and not x17 and x6 and not x7 and not x8 and x39 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x63 and not x18 and not x17 and x6 and not x7 and not x8 and x39 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x63 and not x18 and not x17 and x6 and not x7 and not x8 and x39 and not x3 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s68;

      elsif ( not x63 and not x18 and not x17 and x6 and not x7 and not x8 and not x39 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( not x63 and not x18 and not x17 and not x6 and x32 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s174;

      elsif ( not x63 and not x18 and not x17 and not x6 and not x32 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x63 and not x18 and not x17 and not x6 and not x32 and x15 and x16 and not x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x63 and not x18 and not x17 and not x6 and not x32 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and not x18 and not x17 and not x6 and not x32 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s60;

      elsif ( not x63 and not x18 and not x17 and not x6 and not x32 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and not x18 and not x17 and not x6 and not x32 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      end if;

   when s61 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( x17 and not x18 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( x17 and not x18 and not x6 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s62;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      end if;

   when s62 =>
      if ( x63 and x40 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x63 and not x40 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s175;

      elsif ( not x63 and x64 and x9 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( not x63 and x64 and not x9 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s150;

      elsif ( not x63 and not x64 and x17 and x18 and x6 and x9 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s81;

      elsif ( not x63 and not x64 and x17 and x18 and x6 and not x9 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( not x63 and not x64 and x17 and x18 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s63;

      elsif ( not x63 and not x64 and x17 and not x18 and x10 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x63 and not x64 and x17 and not x18 and not x10 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s82;

      elsif ( not x63 and not x64 and not x17 and x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      end if;

   when s63 =>
      if ( x17 and x18 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s174;

      elsif ( x17 and x18 and not x5 and x6 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x17 and x18 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x17 and not x18 and x14 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s45;

      elsif ( x17 and not x18 and not x14 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( x17 and not x18 and not x14 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( x17 and not x18 and not x14 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( x17 and not x18 and not x14 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x17 and not x18 and not x14 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s63;

      elsif ( x17 and not x18 and not x14 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x17 and not x18 and not x14 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( x17 and not x18 and not x14 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x17 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s62;

      end if;

   when s64 =>
      if ( x15 and x16 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s176;

      elsif ( x15 and not x16 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( x15 and not x16 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x15 and x16 and x4 and x5 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s176;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      else
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s176;

      end if;

   when s65 =>
      if ( x15 and x16 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( x15 and not x16 and x12 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s176;

      elsif ( x15 and not x16 and not x12 ) = '1' then
         current_zoom <= s65;

      elsif ( not x15 and x16 and x4 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( not x15 and not x16 and x14 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      end if;

   when s66 =>
      if ( x15 and x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( x15 and x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x15 and not x16 and x31 and x2 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( x15 and not x16 and x31 and not x2 ) = '1' then
         current_zoom <= s66;

      elsif ( x15 and not x16 and not x31 and x4 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( x15 and not x16 and not x31 and x4 and not x2 ) = '1' then
         current_zoom <= s66;

      elsif ( x15 and not x16 and not x31 and not x4 and x37 and x2 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( x15 and not x16 and not x31 and not x4 and x37 and not x2 ) = '1' then
         current_zoom <= s66;

      elsif ( x15 and not x16 and not x31 and not x4 and not x37 and x2 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x15 and not x16 and not x31 and not x4 and not x37 and not x2 ) = '1' then
         current_zoom <= s66;

      elsif ( not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x15 and x16 and x4 and not x5 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s176;

      elsif ( not x15 and x16 and x4 and not x5 and not x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x15 and x16 and not x4 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x15 and x16 and not x4 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      end if;

   when s67 =>
      if ( x16 and x15 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( x16 and not x15 and x4 and x5 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( x16 and not x15 and x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( x16 and not x15 and x4 and not x5 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s176;

      elsif ( x16 and not x15 and x4 and not x5 and not x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( x16 and not x15 and not x4 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s176;

      elsif ( x16 and not x15 and not x4 and not x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x16 and x15 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( not x16 and x15 and not x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      end if;

   when s68 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s47;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( x17 and not x18 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      elsif ( x17 and not x18 and not x7 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( not x17 and x18 and x31 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x17 and x18 and not x31 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s81;

      elsif ( not x17 and not x18 and x19 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x17 and not x18 and x19 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x17 and not x18 and x19 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x17 and not x18 and x19 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x17 and not x18 and x19 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s68;

      elsif ( not x17 and not x18 and x19 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x17 and not x18 and x19 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x17 and not x18 and x19 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x17 and not x18 and not x19 and x40 and x32 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s174;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s68;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x17 and not x18 and not x19 and x40 and not x32 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      else
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s9;

      end if;

   when s69 =>
      if ( x42 and x13 and x43 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x42 and x13 and x43 and not x35 ) = '1' then
         current_zoom <= s69;

      elsif ( x42 and x13 and not x43 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x42 and x13 and not x43 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x42 and x13 and not x43 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( x42 and x13 and not x43 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and x13 and not x43 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s69;

      elsif ( x42 and x13 and not x43 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and x13 and not x43 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x42 and x13 and not x43 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x42 and not x13 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x42 and not x13 and not x35 ) = '1' then
         current_zoom <= s69;

      elsif ( not x42 and x44 and x12 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( not x42 and x44 and x12 and not x35 ) = '1' then
         current_zoom <= s69;

      elsif ( not x42 and x44 and not x12 and x14 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( not x42 and x44 and not x12 and x14 and not x35 ) = '1' then
         current_zoom <= s69;

      elsif ( not x42 and x44 and not x12 and not x14 and x15 and x47 and x36 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x42 and x44 and not x12 and not x14 and x15 and x47 and not x36 and x6 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x42 and x44 and not x12 and not x14 and x15 and x47 and not x36 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x42 and x44 and not x12 and not x14 and x15 and not x47 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and x44 and not x12 and not x14 and x15 and not x47 and not x1 ) = '1' then
         current_zoom <= s69;

      elsif ( not x42 and x44 and not x12 and not x14 and not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and x44 and not x12 and not x14 and not x15 and not x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x42 and x44 and not x12 and not x14 and not x15 and not x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x42 and not x44 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      else
         current_zoom <= s69;

      end if;

   when s70 =>
      if ( x38 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      else
         current_zoom <= s70;

      end if;

   when s71 =>
      if ( x10 and x12 and x64 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x10 and x12 and not x64 ) = '1' then
         current_zoom <= s1;

      elsif ( x10 and not x12 and x1 and x2 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( x10 and not x12 and x1 and not x2 and x64 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x10 and not x12 and x1 and not x2 and not x64 ) = '1' then
         current_zoom <= s1;

      elsif ( x10 and not x12 and not x1 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( not x10 and x11 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s92;

      elsif ( not x10 and x11 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x10 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x10 and not x11 and x12 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x10 and not x11 and x12 and not x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( not x10 and not x11 and not x12 and x6 and x64 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( not x10 and not x11 and not x12 and x6 and not x64 ) = '1' then
         current_zoom <= s1;

      else
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      end if;

   when s72 =>
      if ( x62 and x61 and x53 and x47 ) = '1' then
         current_zoom <= s72;

      elsif ( x62 and x61 and x53 and not x47 and x59 and x51 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and x61 and x53 and not x47 and x59 and not x51 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and x61 and x53 and not x47 and not x59 and x34 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and x61 and x53 and not x47 and not x59 and not x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and x61 and not x53 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and not x61 and x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and not x61 and not x11 and x1 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x62 and not x61 and not x11 and x1 and not x2 and x3 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x62 and not x61 and not x11 and x1 and not x2 and not x3 ) = '1' then
         current_zoom <= s72;

      elsif ( x62 and not x61 and not x11 and not x1 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x62 and x63 and x55 and x53 and x47 ) = '1' then
         current_zoom <= s72;

      elsif ( not x62 and x63 and x55 and x53 and not x47 and x59 and x51 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( not x62 and x63 and x55 and x53 and not x47 and x59 and not x51 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( not x62 and x63 and x55 and x53 and not x47 and not x59 and x34 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( not x62 and x63 and x55 and x53 and not x47 and not x59 and not x34 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( not x62 and x63 and x55 and not x53 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( not x62 and x63 and not x55 and x11 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( not x62 and x63 and not x55 and not x11 and x1 and x33 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( not x62 and x63 and not x55 and not x11 and x1 and not x33 and x34 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( not x62 and x63 and not x55 and not x11 and x1 and not x33 and not x34 ) = '1' then
         current_zoom <= s72;

      elsif ( not x62 and x63 and not x55 and not x11 and not x1 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x62 and not x63 and x40 and x48 and x42 and x51 and x47 ) = '1' then
         current_zoom <= s72;

      elsif ( not x62 and not x63 and x40 and x48 and x42 and x51 and not x47 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x62 and not x63 and x40 and x48 and x42 and not x51 and x47 ) = '1' then
         current_zoom <= s72;

      elsif ( not x62 and not x63 and x40 and x48 and x42 and not x51 and not x47 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x62 and not x63 and x40 and x48 and not x42 and x47 ) = '1' then
         current_zoom <= s72;

      elsif ( not x62 and not x63 and x40 and x48 and not x42 and not x47 and x34 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x62 and not x63 and x40 and x48 and not x42 and not x47 and not x34 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x62 and not x63 and x40 and not x48 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x62 and not x63 and not x40 and x11 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x62 and not x63 and not x40 and not x11 and x1 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x62 and not x63 and not x40 and not x11 and x1 and not x2 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x62 and not x63 and not x40 and not x11 and x1 and not x2 and not x3 ) = '1' then
         current_zoom <= s72;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      end if;

   when s73 =>
      if ( x61 and x10 and x12 and x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_zoom <= s14;

      elsif ( x61 and x10 and x12 and not x23 and x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x61 and x10 and x12 and not x23 and not x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( x61 and x10 and not x12 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s182;

      elsif ( x61 and not x10 and x1 and x22 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s183;

      elsif ( x61 and not x10 and x1 and not x22 and x2 and x11 and x5 and x3 ) = '1' then
         current_zoom <= s73;

      elsif ( x61 and not x10 and x1 and not x22 and x2 and x11 and x5 and not x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x61 and not x10 and x1 and not x22 and x2 and x11 and not x5 and x3 ) = '1' then
         current_zoom <= s73;

      elsif ( x61 and not x10 and x1 and not x22 and x2 and x11 and not x5 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x61 and not x10 and x1 and not x22 and x2 and not x11 and x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( x61 and not x10 and x1 and not x22 and x2 and not x11 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x61 and not x10 and x1 and not x22 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s185;

      elsif ( x61 and not x10 and not x1 and x11 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( x61 and not x10 and not x1 and x11 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( x61 and not x10 and not x1 and not x11 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( not x61 and x10 and x39 and x46 and x51 and x36 ) = '1' then
         current_zoom <= s73;

      elsif ( not x61 and x10 and x39 and x46 and x51 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s186;

      elsif ( not x61 and x10 and x39 and x46 and not x51 and x36 ) = '1' then
         current_zoom <= s73;

      elsif ( not x61 and x10 and x39 and x46 and not x51 and not x36 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( not x61 and x10 and x39 and not x46 and x36 ) = '1' then
         current_zoom <= s73;

      elsif ( not x61 and x10 and x39 and not x46 and not x36 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s185;

      elsif ( not x61 and x10 and not x39 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s187;

      elsif ( not x61 and not x10 and x11 and x34 and x8 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      elsif ( not x61 and not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s186;

      elsif ( not x61 and not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( not x61 and not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      elsif ( not x61 and not x10 and x11 and not x34 and x32 and not x7 and x54 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s186;

      elsif ( not x61 and not x10 and x11 and not x34 and x32 and not x7 and x54 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( not x61 and not x10 and x11 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s185;

      elsif ( not x61 and not x10 and x11 and not x34 and not x32 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( not x61 and not x10 and not x11 and x12 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s185;

      elsif ( not x61 and not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( not x61 and not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( not x61 and not x10 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s182;

      elsif ( not x61 and not x10 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( not x61 and not x10 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( not x61 and not x10 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s185;

      else
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      end if;

   when s74 =>
      if ( x64 and x61 and x37 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x64 and x61 and x37 and not x28 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x64 and x61 and not x37 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( x64 and not x61 and x2 and x10 and x1 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( x64 and not x61 and x2 and x10 and x1 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x64 and not x61 and x2 and x10 and x1 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x64 and not x61 and x2 and x10 and not x1 and x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s163;

      elsif ( x64 and not x61 and x2 and x10 and not x1 and not x9 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x64 and not x61 and x2 and not x10 ) = '1' then
         current_zoom <= s74;

      elsif ( x64 and not x61 and not x2 and x10 and x1 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x64 and not x61 and not x2 and x10 and not x1 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      elsif ( x64 and not x61 and not x2 and not x10 ) = '1' then
         current_zoom <= s74;

      elsif ( not x64 and x14 and x37 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x64 and x14 and x37 and not x28 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x64 and x14 and not x37 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( not x64 and not x14 and x2 and x10 and x1 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( not x64 and not x14 and x2 and x10 and x1 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( not x64 and not x14 and x2 and x10 and x1 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( not x64 and not x14 and x2 and x10 and not x1 and x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s163;

      elsif ( not x64 and not x14 and x2 and x10 and not x1 and not x9 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( not x64 and not x14 and x2 and not x10 ) = '1' then
         current_zoom <= s74;

      elsif ( not x64 and not x14 and not x2 and x10 and x1 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( not x64 and not x14 and not x2 and x10 and not x1 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s36;

      else
         current_zoom <= s74;

      end if;

   when s75 =>
      if ( x63 and x64 and x55 and x10 and x43 and x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_zoom <= s14;

      elsif ( x63 and x64 and x55 and x10 and x43 and not x23 and x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x63 and x64 and x55 and x10 and x43 and not x23 and not x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and x64 and x55 and x10 and not x43 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( x63 and x64 and x55 and not x10 and x1 and x22 ) = '1' then
         y10 <= '1' ;
         y26 <= '1' ;
         y37 <= '1' ;
         current_zoom <= s188;

      elsif ( x63 and x64 and x55 and not x10 and x1 and not x22 and x2 and x3 and x42 ) = '1' then
         current_zoom <= s75;

      elsif ( x63 and x64 and x55 and not x10 and x1 and not x22 and x2 and x3 and not x42 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x63 and x64 and x55 and not x10 and x1 and not x22 and x2 and not x3 and x11 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and x64 and x55 and not x10 and x1 and not x22 and x2 and not x3 and x11 and not x5 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x63 and x64 and x55 and not x10 and x1 and not x22 and x2 and not x3 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x63 and x64 and x55 and not x10 and x1 and not x22 and not x2 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( x63 and x64 and x55 and not x10 and not x1 and x42 and x35 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and x64 and x55 and not x10 and not x1 and x42 and not x35 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x63 and x64 and x55 and not x10 and not x1 and not x42 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and x64 and not x55 and x41 and x39 and x46 and x51 and x36 ) = '1' then
         current_zoom <= s75;

      elsif ( x63 and x64 and not x55 and x41 and x39 and x46 and x51 and not x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s99;

      elsif ( x63 and x64 and not x55 and x41 and x39 and x46 and not x51 and x36 ) = '1' then
         current_zoom <= s75;

      elsif ( x63 and x64 and not x55 and x41 and x39 and x46 and not x51 and not x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and x64 and not x55 and x41 and x39 and not x46 and x36 ) = '1' then
         current_zoom <= s75;

      elsif ( x63 and x64 and not x55 and x41 and x39 and not x46 and not x36 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( x63 and x64 and not x55 and x41 and not x39 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s106;

      elsif ( x63 and x64 and not x55 and not x41 and x11 and x34 and x8 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( x63 and x64 and not x55 and not x41 and x11 and x34 and not x8 and x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s99;

      elsif ( x63 and x64 and not x55 and not x41 and x11 and x34 and not x8 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x63 and x64 and not x55 and not x41 and x11 and not x34 and x32 and x38 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( x63 and x64 and not x55 and not x41 and x11 and not x34 and x32 and not x38 and x54 and x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s99;

      elsif ( x63 and x64 and not x55 and not x41 and x11 and not x34 and x32 and not x38 and x54 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x63 and x64 and not x55 and not x41 and x11 and not x34 and x32 and not x38 and not x54 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( x63 and x64 and not x55 and not x41 and x11 and not x34 and not x32 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x63 and x64 and not x55 and not x41 and not x11 and x12 and x51 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( x63 and x64 and not x55 and not x41 and not x11 and x12 and not x51 and x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and x64 and not x55 and not x41 and not x11 and x12 and not x51 and not x33 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x63 and x64 and not x55 and not x41 and not x11 and not x12 and x44 and x32 and x34 and x37 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( x63 and x64 and not x55 and not x41 and not x11 and not x12 and x44 and x32 and x34 and not x37 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x63 and x64 and not x55 and not x41 and not x11 and not x12 and x44 and x32 and not x34 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x63 and x64 and not x55 and not x41 and not x11 and not x12 and x44 and not x32 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( x63 and x64 and not x55 and not x41 and not x11 and not x12 and not x44 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and not x64 and x15 and x22 and x2 and x33 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and not x64 and x15 and x22 and x2 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x64 and x15 and x22 and x2 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x63 and not x64 and x15 and x22 and not x2 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and not x64 and x15 and not x22 and x31 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and not x64 and x15 and not x22 and not x31 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x64 and not x15 and x46 and x3 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x63 and not x64 and not x15 and x46 and x3 and not x23 ) = '1' then
         current_zoom <= s75;

      elsif ( x63 and not x64 and not x15 and x46 and not x3 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and not x64 and not x15 and not x46 and x2 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x63 and not x64 and not x15 and not x46 and x2 and not x23 ) = '1' then
         current_zoom <= s75;

      elsif ( x63 and not x64 and not x15 and not x46 and not x2 ) = '1' then
         current_zoom <= s1;

      elsif ( not x63 and x40 and x10 and x12 and x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_zoom <= s14;

      elsif ( not x63 and x40 and x10 and x12 and not x23 and x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and x40 and x10 and x12 and not x23 and not x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and x40 and x10 and not x12 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( not x63 and x40 and not x10 and x1 and x22 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s183;

      elsif ( not x63 and x40 and not x10 and x1 and not x22 and x2 and x11 and x5 and x3 ) = '1' then
         current_zoom <= s75;

      elsif ( not x63 and x40 and not x10 and x1 and not x22 and x2 and x11 and x5 and not x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x63 and x40 and not x10 and x1 and not x22 and x2 and x11 and not x5 and x3 ) = '1' then
         current_zoom <= s75;

      elsif ( not x63 and x40 and not x10 and x1 and not x22 and x2 and x11 and not x5 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( not x63 and x40 and not x10 and x1 and not x22 and x2 and not x11 and x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x63 and x40 and not x10 and x1 and not x22 and x2 and not x11 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and x40 and not x10 and x1 and not x22 and not x2 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( not x63 and x40 and not x10 and not x1 and x11 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and x40 and not x10 and not x1 and x11 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x63 and x40 and not x10 and not x1 and not x11 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and not x40 and x10 and x39 and x46 and x51 and x36 ) = '1' then
         current_zoom <= s75;

      elsif ( not x63 and not x40 and x10 and x39 and x46 and x51 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x63 and not x40 and x10 and x39 and x46 and not x51 and x36 ) = '1' then
         current_zoom <= s75;

      elsif ( not x63 and not x40 and x10 and x39 and x46 and not x51 and not x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x63 and not x40 and x10 and x39 and not x46 and x36 ) = '1' then
         current_zoom <= s75;

      elsif ( not x63 and not x40 and x10 and x39 and not x46 and not x36 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( not x63 and not x40 and x10 and not x39 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( not x63 and not x40 and not x10 and x11 and x34 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x63 and not x40 and not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x63 and not x40 and not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x63 and not x40 and not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x63 and not x40 and not x10 and x11 and not x34 and x32 and not x7 and x45 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x63 and not x40 and not x10 and x11 and not x34 and x32 and not x7 and x45 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x63 and not x40 and not x10 and x11 and not x34 and x32 and not x7 and not x45 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( not x63 and not x40 and not x10 and x11 and not x34 and not x32 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( not x63 and not x40 and not x10 and not x11 and x12 and x20 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( not x63 and not x40 and not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and not x40 and not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and not x40 and not x10 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( not x63 and not x40 and not x10 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x63 and not x40 and not x10 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x63 and not x40 and not x10 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      end if;

   when s76 =>
      if ( x64 and x63 and x55 and x33 and x32 and x8 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s91;

      elsif ( x64 and x63 and x55 and x33 and x32 and not x8 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s106;

      elsif ( x64 and x63 and x55 and x33 and not x32 and x8 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x64 and x63 and x55 and x33 and not x32 and x8 and not x35 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x64 and x63 and x55 and x33 and not x32 and not x8 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x64 and x63 and x55 and not x33 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x64 and x63 and not x55 and x37 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x64 and x63 and not x55 and x37 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x64 and x63 and not x55 and not x37 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( x64 and not x63 and x40 and x2 and x8 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( x64 and not x63 and x40 and x2 and x8 and not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x64 and not x63 and x40 and x2 and x8 and not x1 and not x35 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x64 and not x63 and x40 and x2 and not x8 and x32 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x64 and not x63 and x40 and x2 and not x8 and x32 and not x1 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s78;

      elsif ( x64 and not x63 and x40 and x2 and not x8 and x32 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( x64 and not x63 and x40 and x2 and not x8 and not x32 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x64 and not x63 and x40 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( x64 and not x63 and not x40 and x37 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x64 and not x63 and not x40 and x37 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x64 and not x63 and not x40 and not x37 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x64 and x63 and x15 and x2 and x8 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( not x64 and x63 and x15 and x2 and x8 and not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x64 and x63 and x15 and x2 and x8 and not x1 and not x35 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x64 and x63 and x15 and x2 and not x8 and x32 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( not x64 and x63 and x15 and x2 and not x8 and x32 and not x1 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( not x64 and x63 and x15 and x2 and not x8 and x32 and not x1 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s59;

      elsif ( not x64 and x63 and x15 and x2 and not x8 and not x32 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x64 and x63 and x15 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x64 and x63 and not x15 and x37 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x64 and x63 and not x15 and x37 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x64 and x63 and not x15 and not x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( not x64 and not x63 and x44 and x33 and x8 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( not x64 and not x63 and x44 and x33 and x8 and not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x64 and not x63 and x44 and x33 and x8 and not x1 and not x35 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s102;

      elsif ( not x64 and not x63 and x44 and x33 and not x8 and x32 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s190;

      elsif ( not x64 and not x63 and x44 and x33 and not x8 and x32 and not x37 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      elsif ( not x64 and not x63 and x44 and x33 and not x8 and x32 and not x37 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( not x64 and not x63 and x44 and x33 and not x8 and not x32 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s102;

      elsif ( not x64 and not x63 and x44 and not x33 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x64 and not x63 and not x44 and x1 and x28 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      elsif ( not x64 and not x63 and not x44 and x1 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      end if;

   when s77 =>
      if ( x64 and x40 and x14 and x8 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x64 and x40 and x14 and x8 and not x10 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and x40 and x14 and not x8 and x30 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x64 and x40 and x14 and not x8 and x30 and not x1 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s78;

      elsif ( x64 and x40 and x14 and not x8 and x30 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( x64 and x40 and x14 and not x8 and not x30 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x64 and x40 and not x14 and x32 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( x64 and x40 and not x14 and x32 and not x3 ) = '1' then
         current_zoom <= s77;

      elsif ( x64 and x40 and not x14 and not x32 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x64 and x40 and not x14 and not x32 and not x3 ) = '1' then
         current_zoom <= s77;

      elsif ( x64 and not x40 and x16 and x45 and x29 and x42 and x27 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s129;

      elsif ( x64 and not x40 and x16 and x45 and x29 and x42 and not x27 ) = '1' then
         current_zoom <= s77;

      elsif ( x64 and not x40 and x16 and x45 and x29 and not x42 and x27 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x64 and not x40 and x16 and x45 and x29 and not x42 and not x27 ) = '1' then
         current_zoom <= s77;

      elsif ( x64 and not x40 and x16 and x45 and not x29 and x33 and x27 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x64 and not x40 and x16 and x45 and not x29 and x33 and not x27 ) = '1' then
         current_zoom <= s77;

      elsif ( x64 and not x40 and x16 and x45 and not x29 and not x33 and x43 and x27 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x64 and not x40 and x16 and x45 and not x29 and not x33 and x43 and not x27 ) = '1' then
         current_zoom <= s77;

      elsif ( x64 and not x40 and x16 and x45 and not x29 and not x33 and not x43 and x27 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x64 and not x40 and x16 and x45 and not x29 and not x33 and not x43 and not x27 ) = '1' then
         current_zoom <= s77;

      elsif ( x64 and not x40 and x16 and not x45 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and not x40 and not x16 and x37 and x44 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x64 and not x40 and not x16 and x37 and x44 and not x1 ) = '1' then
         current_zoom <= s77;

      elsif ( x64 and not x40 and not x16 and x37 and not x44 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and not x40 and not x16 and not x37 and x25 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and not x40 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( x64 and not x40 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_zoom <= s77;

      elsif ( x64 and not x40 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x64 and not x40 and not x16 and not x37 and not x25 and not x5 and not x4 ) = '1' then
         current_zoom <= s77;

      elsif ( not x64 and x44 and x14 and x8 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x64 and x44 and x14 and x8 and not x10 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and x44 and x14 and not x8 and x30 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s190;

      elsif ( not x64 and x44 and x14 and not x8 and x30 and not x37 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      elsif ( not x64 and x44 and x14 and not x8 and x30 and not x37 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( not x64 and x44 and x14 and not x8 and not x30 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x64 and x44 and not x14 and x32 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x64 and x44 and not x14 and x32 and not x3 ) = '1' then
         current_zoom <= s77;

      elsif ( not x64 and x44 and not x14 and not x32 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x64 and x44 and not x14 and not x32 and not x3 ) = '1' then
         current_zoom <= s77;

      elsif ( not x64 and not x44 and x16 and x54 and x29 and x48 and x27 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s129;

      elsif ( not x64 and not x44 and x16 and x54 and x29 and x48 and not x27 ) = '1' then
         current_zoom <= s77;

      elsif ( not x64 and not x44 and x16 and x54 and x29 and not x48 and x27 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x64 and not x44 and x16 and x54 and x29 and not x48 and not x27 ) = '1' then
         current_zoom <= s77;

      elsif ( not x64 and not x44 and x16 and x54 and not x29 and x33 and x27 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x64 and not x44 and x16 and x54 and not x29 and x33 and not x27 ) = '1' then
         current_zoom <= s77;

      elsif ( not x64 and not x44 and x16 and x54 and not x29 and not x33 and x49 and x27 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s102;

      elsif ( not x64 and not x44 and x16 and x54 and not x29 and not x33 and x49 and not x27 ) = '1' then
         current_zoom <= s77;

      elsif ( not x64 and not x44 and x16 and x54 and not x29 and not x33 and not x49 and x27 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x64 and not x44 and x16 and x54 and not x29 and not x33 and not x49 and not x27 ) = '1' then
         current_zoom <= s77;

      elsif ( not x64 and not x44 and x16 and not x54 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and not x44 and not x16 and x37 and x55 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x64 and not x44 and not x16 and x37 and x55 and not x1 ) = '1' then
         current_zoom <= s77;

      elsif ( not x64 and not x44 and not x16 and x37 and not x55 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and not x44 and not x16 and not x37 and x25 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and not x44 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( not x64 and not x44 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_zoom <= s77;

      elsif ( not x64 and not x44 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      else
         current_zoom <= s77;

      end if;

   when s78 =>
      if ( x40 and x16 and x19 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( x40 and x16 and x19 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x40 and x16 and x19 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x40 and x16 and not x19 and x30 and x26 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x40 and x16 and not x19 and x30 and x26 and not x1 ) = '1' then
         current_zoom <= s78;

      elsif ( x40 and x16 and not x19 and x30 and not x26 and x3 ) = '1' then
         current_zoom <= s78;

      elsif ( x40 and x16 and not x19 and x30 and not x26 and not x3 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x40 and x16 and not x19 and x30 and not x26 and not x3 and not x1 ) = '1' then
         current_zoom <= s78;

      elsif ( x40 and x16 and not x19 and not x30 ) = '1' then
         current_zoom <= s78;

      elsif ( x40 and not x16 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x40 and x28 and x43 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x40 and x28 and not x43 ) = '1' then
         current_zoom <= s78;

      elsif ( not x40 and not x28 and x27 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x40 and not x28 and x27 and not x8 and x37 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x40 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x40 and not x28 and not x27 and x50 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s78;

      end if;

   when s79 =>
      if ( x64 and x40 and x22 and x2 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( x64 and x40 and x22 and x2 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x64 and x40 and x22 and x2 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x64 and x40 and x22 and not x2 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and x40 and not x22 and x31 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and x40 and not x22 and not x31 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x64 and not x40 and x46 and x3 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x64 and not x40 and x46 and x3 and not x23 ) = '1' then
         current_zoom <= s79;

      elsif ( x64 and not x40 and x46 and not x3 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and not x40 and not x46 and x2 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x64 and not x40 and not x46 and x2 and not x23 ) = '1' then
         current_zoom <= s79;

      elsif ( x64 and not x40 and not x46 and not x2 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and x44 and x22 and x2 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x64 and x44 and x22 and x2 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x64 and x44 and x22 and x2 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x64 and x44 and x22 and not x2 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and x44 and not x22 and x31 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and x44 and not x22 and not x31 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x64 and not x44 and x46 and x3 and x23 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s190;

      elsif ( not x64 and not x44 and x46 and x3 and not x23 ) = '1' then
         current_zoom <= s79;

      elsif ( not x64 and not x44 and x46 and not x3 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and not x44 and not x46 and x33 and x23 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s190;

      elsif ( not x64 and not x44 and not x46 and x33 and not x23 ) = '1' then
         current_zoom <= s79;

      else
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      end if;

   when s80 =>
      if ( x15 and x64 and x1 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s191;

      elsif ( x15 and x64 and not x1 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s192;

      elsif ( x15 and not x64 and x37 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s191;

      elsif ( x15 and not x64 and not x37 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s192;

      else
         y11 <= '1' ;
         current_zoom <= s192;

      end if;

   when s81 =>
      if ( x17 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x17 and not x13 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x17 and x7 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      else
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s174;

      end if;

   when s82 =>
      if ( x17 and x18 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s174;

      elsif ( x17 and x18 and not x5 and x6 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x17 and x18 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x17 and not x18 and x39 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( x17 and not x18 and x39 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( x17 and not x18 and x39 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( x17 and not x18 and x39 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x17 and not x18 and x39 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s82;

      elsif ( x17 and not x18 and x39 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x17 and not x18 and x39 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( x17 and not x18 and x39 and not x15 and not x16 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x17 and not x18 and not x39 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s63;

      elsif ( not x17 and x9 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      end if;

   when s83 =>
      if ( x61 and x2 and x8 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( x61 and x2 and x8 and not x1 and x35 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x61 and x2 and x8 and not x1 and not x35 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x61 and x2 and not x8 and x32 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s187;

      elsif ( x61 and x2 and not x8 and x32 and not x1 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( x61 and x2 and not x8 and x32 and not x1 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s193;

      elsif ( x61 and x2 and not x8 and not x32 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x61 and not x2 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( not x61 and x37 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( not x61 and x37 and not x28 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      end if;

   when s84 =>
      if ( x61 and x16 and x19 and x33 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s194;

      elsif ( x61 and x16 and x19 and not x33 and x13 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( x61 and x16 and x19 and not x33 and not x13 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x61 and x16 and not x19 and x30 and x26 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s187;

      elsif ( x61 and x16 and not x19 and x30 and x26 and not x1 and x9 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( x61 and x16 and not x19 and x30 and x26 and not x1 and x9 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s193;

      elsif ( x61 and x16 and not x19 and x30 and x26 and not x1 and not x9 ) = '1' then
         current_zoom <= s84;

      elsif ( x61 and x16 and not x19 and x30 and not x26 and x3 ) = '1' then
         current_zoom <= s84;

      elsif ( x61 and x16 and not x19 and x30 and not x26 and not x3 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s187;

      elsif ( x61 and x16 and not x19 and x30 and not x26 and not x3 and not x1 and x9 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( x61 and x16 and not x19 and x30 and not x26 and not x3 and not x1 and x9 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s193;

      elsif ( x61 and x16 and not x19 and x30 and not x26 and not x3 and not x1 and not x9 ) = '1' then
         current_zoom <= s84;

      elsif ( x61 and x16 and not x19 and not x30 ) = '1' then
         current_zoom <= s84;

      elsif ( x61 and not x16 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( not x61 and x28 and x57 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      elsif ( not x61 and x28 and not x57 ) = '1' then
         current_zoom <= s84;

      elsif ( not x61 and not x28 and x27 and x8 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      elsif ( not x61 and not x28 and x27 and not x8 and x37 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( not x61 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s194;

      elsif ( not x61 and not x28 and not x27 and x50 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      else
         y2 <= '1' ;
         current_zoom <= s84;

      end if;

   when s85 =>
      if ( x61 and x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s193;

      elsif ( x61 and not x10 and x25 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s186;

      elsif ( x61 and not x10 and not x25 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s171;

      elsif ( not x61 and x8 and x53 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s194;

      elsif ( not x61 and x8 and not x53 and x37 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( not x61 and x8 and not x53 and not x37 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s194;

      elsif ( not x61 and not x8 and x51 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s194;

      elsif ( not x61 and not x8 and not x51 and x37 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      else
         y10 <= '1' ;
         current_zoom <= s194;

      end if;

   when s86 =>
      if ( x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( not x1 and x62 and x35 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( not x1 and x62 and not x35 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( not x1 and not x62 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x1 and not x62 and not x35 and x63 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x1 and not x62 and not x35 and not x63 and x64 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s102;

      end if;

   when s87 =>
      if ( x55 and x16 and x50 and x33 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      elsif ( x55 and x16 and x50 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x55 and x16 and x50 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x55 and x16 and not x50 and x32 and x30 and x26 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s106;

      elsif ( x55 and x16 and not x50 and x32 and x30 and not x26 and x34 ) = '1' then
         current_zoom <= s87;

      elsif ( x55 and x16 and not x50 and x32 and x30 and not x26 and not x34 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s106;

      elsif ( x55 and x16 and not x50 and x32 and not x30 ) = '1' then
         current_zoom <= s87;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and x26 and x4 and x1 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and x26 and x4 and not x1 ) = '1' then
         current_zoom <= s87;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and x26 and not x4 and x1 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s112;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and x26 and not x4 and not x1 ) = '1' then
         current_zoom <= s87;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and not x26 and x3 ) = '1' then
         current_zoom <= s87;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and not x26 and not x3 and x4 and x1 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and not x26 and not x3 and x4 and not x1 ) = '1' then
         current_zoom <= s87;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and not x26 and not x3 and not x4 and x1 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s112;

      elsif ( x55 and x16 and not x50 and not x32 and x30 and not x26 and not x3 and not x4 and not x1 ) = '1' then
         current_zoom <= s87;

      elsif ( x55 and x16 and not x50 and not x32 and not x30 ) = '1' then
         current_zoom <= s87;

      elsif ( x55 and not x16 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( not x55 and x28 and x57 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( not x55 and x28 and not x57 ) = '1' then
         current_zoom <= s87;

      elsif ( not x55 and not x28 and x27 and x8 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( not x55 and not x28 and x27 and not x8 and x37 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( not x55 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      elsif ( not x55 and not x28 and not x27 and x50 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      else
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      end if;

   when s88 =>
      if ( x55 and x41 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s112;

      elsif ( x55 and not x41 and x25 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s99;

      elsif ( x55 and not x41 and not x25 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( not x55 and x39 and x53 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      elsif ( not x55 and x39 and not x53 and x37 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( not x55 and x39 and not x53 and not x37 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      elsif ( not x55 and not x39 and x51 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      elsif ( not x55 and not x39 and not x51 and x37 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      else
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      end if;

   when s89 =>
      if ( x44 and x16 and x19 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( x44 and x16 and x19 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x44 and x16 and x19 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x44 and x16 and not x19 and x30 and x26 and x1 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s190;

      elsif ( x44 and x16 and not x19 and x30 and x26 and not x1 and x37 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      elsif ( x44 and x16 and not x19 and x30 and x26 and not x1 and x37 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( x44 and x16 and not x19 and x30 and x26 and not x1 and not x37 ) = '1' then
         current_zoom <= s89;

      elsif ( x44 and x16 and not x19 and x30 and not x26 and x1 and x3 ) = '1' then
         current_zoom <= s89;

      elsif ( x44 and x16 and not x19 and x30 and not x26 and x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s190;

      elsif ( x44 and x16 and not x19 and x30 and not x26 and not x1 and x37 and x43 ) = '1' then
         current_zoom <= s89;

      elsif ( x44 and x16 and not x19 and x30 and not x26 and not x1 and x37 and not x43 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      elsif ( x44 and x16 and not x19 and x30 and not x26 and not x1 and x37 and not x43 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( x44 and x16 and not x19 and x30 and not x26 and not x1 and not x37 ) = '1' then
         current_zoom <= s89;

      elsif ( x44 and x16 and not x19 and not x30 ) = '1' then
         current_zoom <= s89;

      elsif ( x44 and not x16 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x44 and x28 and x49 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x44 and x28 and not x49 ) = '1' then
         current_zoom <= s89;

      elsif ( not x44 and not x28 and x27 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x44 and not x28 and x27 and not x8 and x36 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x44 and not x28 and x27 and not x8 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x44 and not x28 and not x27 and x50 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      end if;

   when s90 =>
      if ( x64 and x40 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( x64 and x40 and not x10 and x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( x64 and x40 and not x10 and not x25 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( x64 and not x40 and x8 and x48 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( x64 and not x40 and x8 and not x48 and x37 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and not x40 and x8 and not x48 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( x64 and not x40 and not x8 and x51 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( x64 and not x40 and not x8 and not x51 and x37 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and not x40 and not x8 and not x51 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x64 and x44 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( not x64 and x44 and not x10 and x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x64 and x44 and not x10 and not x25 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( not x64 and not x44 and x8 and x53 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x64 and not x44 and x8 and not x53 and x36 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and not x44 and x8 and not x53 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x64 and not x44 and not x8 and x51 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x64 and not x44 and not x8 and not x51 and x36 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      end if;

   when s91 =>
      if ( x32 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s91;

      elsif ( not x32 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      else
         y1 <= '1' ;
         current_zoom <= s94;

      end if;

   when s92 =>
      if ( x8 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s44;

      elsif ( x8 and not x1 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s164;

      elsif ( x8 and not x1 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      end if;

   when s93 =>
      if ( x63 and x64 and x55 and x40 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s129;

      elsif ( x63 and x64 and x55 and not x40 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and x64 and x55 and not x40 and not x3 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      elsif ( x63 and x64 and not x55 and x29 and x50 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( x63 and x64 and not x55 and x29 and not x50 ) = '1' then
         current_zoom <= s93;

      elsif ( x63 and x64 and not x55 and not x29 and x58 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( x63 and x64 and not x55 and not x29 and not x58 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x63 and not x64 and x15 and x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( x63 and not x64 and x15 and not x9 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x64 and x15 and not x9 and not x3 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x63 and not x64 and not x15 and x29 and x49 ) = '1' then
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s109;

      elsif ( x63 and not x64 and not x15 and x29 and not x49 ) = '1' then
         current_zoom <= s93;

      elsif ( x63 and not x64 and not x15 and not x29 and x21 ) = '1' then
         current_zoom <= s1;

      elsif ( x63 and not x64 and not x15 and not x29 and not x21 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x63 and x40 and x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s129;

      elsif ( not x63 and x40 and not x9 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and x40 and not x9 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s78;

      elsif ( not x63 and not x40 and x29 and x50 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( not x63 and not x40 and x29 and not x50 ) = '1' then
         current_zoom <= s93;

      elsif ( not x63 and not x40 and not x29 and x41 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      end if;

   when s94 =>
      if ( x62 and x61 and x19 and x13 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s53;

      elsif ( x62 and x61 and x19 and not x13 and x32 and x18 and x12 ) = '1' then
         current_zoom <= s94;

      elsif ( x62 and x61 and x19 and not x13 and x32 and x18 and not x12 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s193;

      elsif ( x62 and x61 and x19 and not x13 and x32 and not x18 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( x62 and x61 and x19 and not x13 and not x32 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x62 and x61 and not x19 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x62 and not x61 and x17 and x19 and x10 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( x62 and not x61 and x17 and x19 and not x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s193;

      elsif ( x62 and not x61 and x17 and not x19 ) = '1' then
         current_zoom <= s94;

      elsif ( x62 and not x61 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s185;

      elsif ( x62 and not x61 and not x17 and not x20 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( x62 and not x61 and not x17 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( not x62 and x63 and x55 and x19 and x44 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s93;

      elsif ( not x62 and x63 and x55 and x19 and not x44 and x32 and x18 and x12 ) = '1' then
         current_zoom <= s94;

      elsif ( not x62 and x63 and x55 and x19 and not x44 and x32 and x18 and not x12 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s112;

      elsif ( not x62 and x63 and x55 and x19 and not x44 and x32 and not x18 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( not x62 and x63 and x55 and x19 and not x44 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and x63 and x55 and not x19 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( not x62 and x63 and not x55 and x17 and x50 and x10 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      elsif ( not x62 and x63 and not x55 and x17 and x50 and not x10 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s112;

      elsif ( not x62 and x63 and not x55 and x17 and not x50 ) = '1' then
         current_zoom <= s94;

      elsif ( not x62 and x63 and not x55 and not x17 and x51 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( not x62 and x63 and not x55 and not x17 and not x51 and x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x62 and x63 and not x55 and not x17 and not x51 and not x33 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( not x62 and not x63 and x40 and x19 and x13 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s93;

      elsif ( not x62 and not x63 and x40 and x19 and not x13 and x32 and x18 and x12 ) = '1' then
         current_zoom <= s94;

      elsif ( not x62 and not x63 and x40 and x19 and not x13 and x32 and x18 and not x12 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( not x62 and not x63 and x40 and x19 and not x13 and x32 and not x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x62 and not x63 and x40 and x19 and not x13 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and not x63 and x40 and not x19 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x62 and not x63 and not x40 and x17 and x19 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s78;

      elsif ( not x62 and not x63 and not x40 and x17 and x19 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( not x62 and not x63 and not x40 and x17 and not x19 ) = '1' then
         current_zoom <= s94;

      elsif ( not x62 and not x63 and not x40 and not x17 and x20 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( not x62 and not x63 and not x40 and not x17 and not x20 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      end if;

   when s95 =>
      if ( x16 and x37 ) = '1' then
         y6 <= '1' ;
         y13 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s95;

      elsif ( x16 and not x37 and x39 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( x16 and not x37 and x39 and not x19 and x26 and x5 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      elsif ( x16 and not x37 and x39 and not x19 and x26 and not x5 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( x16 and not x37 and x39 and not x19 and not x26 ) = '1' then
         y11 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s91;

      elsif ( x16 and not x37 and not x39 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( not x16 and x41 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      else
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      end if;

   when s96 =>
      if ( x15 and x32 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s195;

      elsif ( x15 and not x32 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s192;

      else
         y11 <= '1' ;
         current_zoom <= s192;

      end if;

   when s97 =>
      if ( x55 and x45 and x8 and x41 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x55 and x45 and x8 and not x41 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( x55 and x45 and not x8 and x30 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s106;

      elsif ( x55 and x45 and not x8 and x30 and not x32 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      elsif ( x55 and x45 and not x8 and x30 and not x32 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s112;

      elsif ( x55 and x45 and not x8 and not x30 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x55 and not x45 and x34 and x32 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( x55 and not x45 and x34 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x55 and not x45 and not x34 ) = '1' then
         current_zoom <= s97;

      elsif ( not x55 and x47 and x54 and x29 and x59 and x27 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s129;

      elsif ( not x55 and x47 and x54 and x29 and x59 and not x27 ) = '1' then
         current_zoom <= s97;

      elsif ( not x55 and x47 and x54 and x29 and not x59 and x27 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x55 and x47 and x54 and x29 and not x59 and not x27 ) = '1' then
         current_zoom <= s97;

      elsif ( not x55 and x47 and x54 and not x29 and x33 and x27 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x55 and x47 and x54 and not x29 and x33 and not x27 ) = '1' then
         current_zoom <= s97;

      elsif ( not x55 and x47 and x54 and not x29 and not x33 and x57 and x27 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( not x55 and x47 and x54 and not x29 and not x33 and x57 and not x27 ) = '1' then
         current_zoom <= s97;

      elsif ( not x55 and x47 and x54 and not x29 and not x33 and not x57 and x27 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x55 and x47 and x54 and not x29 and not x33 and not x57 and not x27 ) = '1' then
         current_zoom <= s97;

      elsif ( not x55 and x47 and not x54 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( not x55 and not x47 and x37 and x56 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x55 and not x47 and x37 and x56 and not x1 ) = '1' then
         current_zoom <= s97;

      elsif ( not x55 and not x47 and x37 and not x56 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( not x55 and not x47 and not x37 and x25 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( not x55 and not x47 and not x37 and not x25 and x36 and x35 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( not x55 and not x47 and not x37 and not x25 and x36 and not x35 ) = '1' then
         current_zoom <= s97;

      elsif ( not x55 and not x47 and not x37 and not x25 and not x36 and x35 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      else
         current_zoom <= s97;

      end if;

   when s98 =>
      if ( x62 and x61 and x19 and x28 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( x62 and x61 and x19 and x28 and not x1 and x35 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x62 and x61 and x19 and x28 and not x1 and not x35 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x62 and x61 and x19 and not x28 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( x62 and x61 and not x19 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x62 and not x61 and x13 and x23 and x51 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s186;

      elsif ( x62 and not x61 and x13 and x23 and not x51 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x62 and not x61 and x13 and not x23 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s186;

      elsif ( x62 and not x61 and not x13 and x28 and x35 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s186;

      elsif ( x62 and not x61 and not x13 and x28 and x35 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( x62 and not x61 and not x13 and x28 and not x35 and x60 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x62 and not x61 and not x13 and x28 and not x35 and not x60 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( x62 and not x61 and not x13 and not x28 and x6 and x35 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s53;

      elsif ( x62 and not x61 and not x13 and not x28 and x6 and not x35 and x60 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x62 and not x61 and not x13 and not x28 and x6 and not x35 and not x60 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( x62 and not x61 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( x62 and not x61 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( not x62 and x55 and x50 and x28 and x32 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s91;

      elsif ( not x62 and x55 and x50 and x28 and not x32 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and x55 and x50 and x28 and not x32 and not x35 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( not x62 and x55 and x50 and not x28 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( not x62 and x55 and not x50 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( not x62 and not x55 and x13 and x23 and x51 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s99;

      elsif ( not x62 and not x55 and x13 and x23 and not x51 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and not x55 and x13 and not x23 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s99;

      elsif ( not x62 and not x55 and not x13 and x28 and x35 and x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s99;

      elsif ( not x62 and not x55 and not x13 and x28 and x35 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( not x62 and not x55 and not x13 and x28 and not x35 and x58 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( not x62 and not x55 and not x13 and x28 and not x35 and not x58 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( not x62 and not x55 and not x13 and not x28 and x6 and x35 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s93;

      elsif ( not x62 and not x55 and not x13 and not x28 and x6 and not x35 and x58 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( not x62 and not x55 and not x13 and not x28 and x6 and not x35 and not x58 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( not x62 and not x55 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      else
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      end if;

   when s99 =>
      if ( x55 and x35 and x7 and x1 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s91;

      elsif ( x55 and x35 and x7 and not x1 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x55 and x35 and not x7 ) = '1' then
         current_zoom <= s99;

      elsif ( x55 and not x35 and x38 and x32 ) = '1' then
         current_zoom <= s99;

      elsif ( x55 and not x35 and x38 and not x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x55 and not x35 and not x38 ) = '1' then
         current_zoom <= s99;

      elsif ( not x55 and x34 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      elsif ( not x55 and not x34 and x2 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( not x55 and not x34 and not x2 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      end if;

   when s100 =>
      if ( x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s100;

      elsif ( x16 and not x6 and x8 and x19 and x62 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s83;

      elsif ( x16 and not x6 and x8 and x19 and not x62 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and x62 and x5 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and x62 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and not x62 and x63 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s60;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and not x62 and x63 and not x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and not x62 and not x63 and x5 and x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s78;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and not x62 and not x63 and x5 and not x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and not x62 and not x63 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s86;

      elsif ( x16 and not x6 and not x8 and x62 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x16 and not x6 and not x8 and not x62 and x63 ) = '1' then
         current_zoom <= s1;

      elsif ( x16 and not x6 and not x8 and not x62 and not x63 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x16 and x10 and x62 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( not x16 and x10 and not x62 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x16 and not x10 and x62 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( not x16 and not x10 and not x62 and x63 ) = '1' then
         current_zoom <= s1;

      else
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      end if;

   when s101 =>
      if ( x44 and x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s129;

      elsif ( x44 and not x9 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x44 and not x9 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      elsif ( not x44 and x29 and x50 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( not x44 and x29 and not x50 ) = '1' then
         current_zoom <= s101;

      elsif ( not x44 and not x29 and x45 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      end if;

   when s102 =>
      if ( x44 and x19 and x13 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s101;

      elsif ( x44 and x19 and not x13 and x32 and x18 and x12 ) = '1' then
         current_zoom <= s102;

      elsif ( x44 and x19 and not x13 and x32 and x18 and not x12 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( x44 and x19 and not x13 and x32 and not x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( x44 and x19 and not x13 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x44 and not x19 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x44 and x17 and x19 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      elsif ( not x44 and x17 and x19 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( not x44 and x17 and not x19 ) = '1' then
         current_zoom <= s102;

      elsif ( not x44 and not x17 and x20 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( not x44 and not x17 and not x20 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      else
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      end if;

   when s103 =>
      if ( x44 and x19 and x28 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( x44 and x19 and x28 and not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x44 and x19 and x28 and not x1 and not x35 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s102;

      elsif ( x44 and x19 and not x28 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( x44 and not x19 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s102;

      elsif ( not x44 and x13 and x23 and x51 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x44 and x13 and x23 and not x51 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x44 and x13 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x44 and not x13 and x28 and x35 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x44 and not x13 and x28 and x35 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x44 and not x13 and x28 and not x35 and x45 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x44 and not x13 and x28 and not x35 and not x45 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x44 and not x13 and not x28 and x6 and x35 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s101;

      elsif ( not x44 and not x13 and not x28 and x6 and not x35 and x45 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x44 and not x13 and not x28 and x6 and not x35 and not x45 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x44 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      end if;

   when s104 =>
      if ( x44 and x12 and x27 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( x44 and x12 and x27 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x44 and x12 and x27 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x44 and x12 and not x27 and x37 and x29 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s190;

      elsif ( x44 and x12 and not x27 and x37 and not x29 ) = '1' then
         current_zoom <= s104;

      elsif ( x44 and x12 and not x27 and not x37 ) = '1' then
         current_zoom <= s104;

      elsif ( x44 and not x12 and x29 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      elsif ( x44 and not x12 and not x29 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( not x44 and x17 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s110;

      elsif ( not x44 and not x17 and x49 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      else
         current_zoom <= s104;

      end if;

   when s105 =>
      if ( x55 and x22 and x2 and x33 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      elsif ( x55 and x22 and x2 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x55 and x22 and x2 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x55 and x22 and not x2 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( x55 and not x22 and x31 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( x55 and not x22 and not x31 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x55 and x46 and x3 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s106;

      elsif ( not x55 and x46 and x3 and not x23 ) = '1' then
         current_zoom <= s105;

      elsif ( not x55 and x46 and not x3 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( not x55 and not x46 and x33 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s106;

      elsif ( not x55 and not x46 and x33 and not x23 ) = '1' then
         current_zoom <= s105;

      else
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      end if;

   when s106 =>
      if ( x55 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s97;

      elsif ( x55 and not x5 and x34 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      elsif ( x55 and not x5 and not x34 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      elsif ( not x55 and x35 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( not x55 and not x35 and x44 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      end if;

   when s107 =>
      if ( x63 and x40 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( x63 and not x40 and x37 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( x63 and not x40 and not x37 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      elsif ( not x63 and x64 and x37 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x63 and x64 and not x37 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x63 and x64 and not x37 and not x9 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x63 and not x64 and x1 and x37 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x63 and not x64 and x1 and not x37 and x9 ) = '1' then
         current_zoom <= s107;

      elsif ( not x63 and not x64 and x1 and not x37 and not x9 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x63 and not x64 and not x1 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      end if;

   when s108 =>
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

   when s109 =>
      if ( x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      elsif ( not x37 and x9 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s28;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      end if;

   when s110 =>
      if ( x62 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      end if;

   when s111 =>
      if ( x62 and x16 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s100;

      elsif ( x62 and x16 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( x62 and not x16 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s182;

      elsif ( not x62 and x64 and x63 and x47 and x9 ) = '1' then
         y6 <= '1' ;
         y13 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s95;

      elsif ( not x62 and x64 and x63 and x47 and not x9 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s91;

      elsif ( not x62 and x64 and x63 and not x47 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( not x62 and x64 and not x63 and x16 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s100;

      elsif ( not x62 and x64 and not x63 and x16 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( not x62 and x64 and not x63 and not x16 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      elsif ( not x62 and not x64 and x16 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s100;

      elsif ( not x62 and not x64 and x16 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s17;

      end if;

   when s112 =>
      if ( x55 and x25 and x52 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( x55 and x25 and not x52 and x6 and x39 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      elsif ( x55 and x25 and not x52 and x6 and not x39 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s96;

      elsif ( x55 and x25 and not x52 and not x6 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( x55 and not x25 and x29 ) = '1' then
         y10 <= '1' ;
         y26 <= '1' ;
         y37 <= '1' ;
         current_zoom <= s188;

      elsif ( x55 and not x25 and not x29 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s106;

      elsif ( not x55 and x38 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s88;

      elsif ( not x55 and not x38 and x50 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      else
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s87;

      end if;

   when s113 =>
      if ( x64 and x40 and x25 and x22 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and x40 and x25 and not x22 and x6 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( x64 and x40 and x25 and not x22 and x6 and not x8 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( x64 and x40 and x25 and not x22 and not x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( x64 and x40 and not x25 and x29 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s183;

      elsif ( x64 and x40 and not x25 and not x29 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s12;

      elsif ( x64 and not x40 and x38 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( x64 and not x40 and not x38 and x50 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x64 and not x40 and not x38 and not x50 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s78;

      elsif ( not x64 and x44 and x25 and x22 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and x44 and x25 and not x22 and x6 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x64 and x44 and x25 and not x22 and x6 and not x8 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x64 and x44 and x25 and not x22 and not x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x64 and x44 and not x25 and x29 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s183;

      elsif ( not x64 and x44 and not x25 and not x29 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s190;

      elsif ( not x64 and not x44 and x38 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x64 and not x44 and not x38 and x50 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      end if;

   when s114 =>
      if ( x16 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s100;

      elsif ( x16 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s104;

      end if;

   when s115 =>
      if ( x46 and x16 and x36 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( x46 and x16 and not x36 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s159;

      elsif ( x46 and not x16 and x43 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s159;

      elsif ( x46 and not x16 and not x43 ) = '1' then
         current_zoom <= s115;

      elsif ( not x46 and x47 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s136;

      elsif ( not x46 and not x47 and x44 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s159;

      end if;

   when s116 =>
      if ( x15 and x16 and x63 and x36 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x15 and x16 and x63 and not x36 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      elsif ( x15 and x16 and not x63 and x5 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x15 and x16 and not x63 and not x5 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      elsif ( x15 and not x16 and x13 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( x15 and not x16 and x13 and not x11 and x63 and x37 and x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x15 and not x16 and x13 and not x11 and x63 and x37 and not x4 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x15 and not x16 and x13 and not x11 and x63 and x37 and not x4 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x15 and not x16 and x13 and not x11 and x63 and not x37 and x36 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( x15 and not x16 and x13 and not x11 and x63 and not x37 and not x36 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( x15 and not x16 and x13 and not x11 and not x63 and x6 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( x15 and not x16 and x13 and not x11 and not x63 and x6 and not x4 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x15 and not x16 and x13 and not x11 and not x63 and x6 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x15 and not x16 and x13 and not x11 and not x63 and not x6 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( x15 and not x16 and x13 and not x11 and not x63 and not x6 and not x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( x15 and not x16 and not x13 and x63 and x45 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x15 and not x16 and not x13 and x63 and not x45 and x40 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x15 and not x16 and not x13 and x63 and not x45 and not x40 and x6 and x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x15 and not x16 and not x13 and x63 and not x45 and not x40 and x6 and not x2 ) = '1' then
         current_zoom <= s116;

      elsif ( x15 and not x16 and not x13 and x63 and not x45 and not x40 and not x6 and x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x15 and not x16 and not x13 and x63 and not x45 and not x40 and not x6 and not x8 ) = '1' then
         current_zoom <= s116;

      elsif ( x15 and not x16 and not x13 and not x63 and x14 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x15 and not x16 and not x13 and not x63 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x15 and not x16 and not x13 and not x63 and not x14 and not x9 and x6 and x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x15 and not x16 and not x13 and not x63 and not x14 and not x9 and x6 and not x2 ) = '1' then
         current_zoom <= s116;

      elsif ( x15 and not x16 and not x13 and not x63 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x15 and not x16 and not x13 and not x63 and not x14 and not x9 and not x6 and not x8 ) = '1' then
         current_zoom <= s116;

      elsif ( not x15 and x63 and x47 and x35 and x5 and x33 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x15 and x63 and x47 and x35 and x5 and not x33 and x1 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s136;

      elsif ( not x15 and x63 and x47 and x35 and x5 and not x33 and not x1 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( not x15 and x63 and x47 and x35 and not x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x15 and x63 and x47 and not x35 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x15 and x63 and not x47 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( not x15 and not x63 and x16 and x4 and x5 and x2 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x15 and not x63 and x16 and x4 and x5 and not x2 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( not x15 and not x63 and x16 and x4 and x5 and not x2 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( not x15 and not x63 and x16 and x4 and not x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x15 and not x63 and x16 and not x4 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      else
         y11 <= '1' ;
         current_zoom <= s132;

      end if;

   when s117 =>
      if ( x63 and x46 and x47 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s134;

      elsif ( x63 and x46 and not x47 and x34 and x2 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( x63 and x46 and not x47 and x34 and not x2 ) = '1' then
         current_zoom <= s117;

      elsif ( x63 and x46 and not x47 and not x34 and x4 and x2 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and x46 and not x47 and not x34 and x4 and not x2 ) = '1' then
         current_zoom <= s117;

      elsif ( x63 and x46 and not x47 and not x34 and not x4 and x32 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x63 and x46 and not x47 and not x34 and not x4 and x32 and not x2 ) = '1' then
         current_zoom <= s117;

      elsif ( x63 and x46 and not x47 and not x34 and not x4 and not x32 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x46 and not x47 and not x34 and not x4 and not x32 and not x2 ) = '1' then
         current_zoom <= s117;

      elsif ( x63 and not x46 and x16 and x4 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s134;

      elsif ( x63 and not x46 and x16 and x4 and not x5 and x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s134;

      elsif ( x63 and not x46 and x16 and x4 and not x5 and not x1 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and not x46 and x16 and not x4 and x32 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s134;

      elsif ( x63 and not x46 and x16 and not x4 and not x32 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s136;

      elsif ( x63 and not x46 and not x16 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s134;

      elsif ( not x63 and x15 and x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      elsif ( not x63 and x15 and not x16 and x2 and x64 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( not x63 and x15 and not x16 and x2 and x64 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x63 and x15 and not x16 and x2 and x64 and not x3 and not x4 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x63 and x15 and not x16 and x2 and x64 and not x3 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x63 and x15 and not x16 and x2 and not x64 and x31 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( not x63 and x15 and not x16 and x2 and not x64 and not x31 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x63 and x15 and not x16 and x2 and not x64 and not x31 and not x4 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x63 and x15 and not x16 and x2 and not x64 and not x31 and not x4 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and x15 and not x16 and not x2 ) = '1' then
         current_zoom <= s117;

      elsif ( not x63 and not x15 and x16 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      elsif ( not x63 and not x15 and x16 and x4 and not x5 and x64 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      elsif ( not x63 and not x15 and x16 and x4 and not x5 and x64 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x63 and not x15 and x16 and x4 and not x5 and not x64 and x36 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      elsif ( not x63 and not x15 and x16 and x4 and not x5 and not x64 and not x36 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x63 and not x15 and x16 and not x4 and x64 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      elsif ( not x63 and not x15 and x16 and not x4 and x64 and not x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( not x63 and not x15 and x16 and not x4 and not x64 and x37 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      elsif ( not x63 and not x15 and x16 and not x4 and not x64 and not x37 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      end if;

   when s118 =>
      if ( x16 and x15 and x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( x16 and x15 and not x5 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s159;

      elsif ( x16 and not x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( not x16 and x15 and x12 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s159;

      elsif ( not x16 and x15 and not x12 ) = '1' then
         current_zoom <= s118;

      elsif ( not x16 and not x15 and x13 and x64 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( not x16 and not x15 and x13 and not x64 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s196;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s159;

      end if;

   when s119 =>
      if ( x5 ) = '1' then
         y22 <= '1' ;
         current_zoom <= s197;

      elsif ( not x5 and x1 ) = '1' then
         y4 <= '1' ;
         current_zoom <= s24;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         current_zoom <= s23;

      end if;

   when s120 =>
      if ( x3 ) = '1' then
         current_zoom <= s1;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s1;

      end if;

   when s121 =>
      if ( x5 and x6 ) = '1' then
         y16 <= '1' ;
         current_zoom <= s198;

      elsif ( x5 and not x6 and x7 ) = '1' then
         current_zoom <= s1;

      elsif ( x5 and not x6 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s1;

      elsif ( not x5 and x4 ) = '1' then
         y4 <= '1' ;
         current_zoom <= s24;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s121;

      end if;

   when s122 =>
      if ( x15 and x16 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x15 and not x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s127;

      elsif ( not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( not x15 and x16 and x4 and not x5 and x2 and x3 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s154;

      elsif ( not x15 and x16 and x4 and not x5 and x2 and not x3 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( not x15 and x16 and x4 and not x5 and not x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s57;

      elsif ( not x15 and x16 and not x4 and x2 and x3 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s30;

      elsif ( not x15 and x16 and not x4 and x2 and not x3 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( not x15 and x16 and not x4 and not x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s57;

      else
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s30;

      end if;

   when s123 =>
      if ( x16 and x15 and x5 and x1 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      elsif ( x16 and x15 and x5 and not x1 and x2 and x3 and x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s127;

      elsif ( x16 and x15 and x5 and not x1 and x2 and x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x16 and x15 and x5 and not x1 and x2 and not x3 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x16 and x15 and x5 and not x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x16 and x15 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x16 and x15 and not x5 and not x6 and x1 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x16 and x15 and not x5 and not x6 and not x1 and x2 and x3 and x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s127;

      elsif ( x16 and x15 and not x5 and not x6 and not x1 and x2 and x3 and not x4 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( x16 and x15 and not x5 and not x6 and not x1 and x2 and not x3 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x16 and x15 and not x5 and not x6 and not x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x16 and not x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s56;

      elsif ( not x16 and x15 and x6 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x16 and x15 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s125;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      end if;

   when s124 =>
      if ( x62 and x15 and x16 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s129;

      elsif ( x62 and x15 and not x16 and x11 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( x62 and x15 and not x16 and not x11 and x10 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s127;

      elsif ( x62 and x15 and not x16 and not x11 and not x10 ) = '1' then
         current_zoom <= s124;

      elsif ( x62 and not x15 and x16 and x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      elsif ( x62 and not x15 and x16 and not x3 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s152;

      elsif ( x62 and not x15 and not x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and x15 and x63 and x64 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x62 and x15 and x63 and not x64 and x33 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x62 and x15 and x63 and not x64 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x62 and x15 and x63 and not x64 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and x15 and not x63 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x62 and not x15 and x63 and x64 and x47 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x62 and not x15 and x63 and x64 and x47 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and not x15 and x63 and x64 and not x47 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      elsif ( not x62 and not x15 and x63 and not x64 and x49 ) = '1' then
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s109;

      elsif ( not x62 and not x15 and x63 and not x64 and not x49 ) = '1' then
         current_zoom <= s124;

      elsif ( not x62 and not x15 and not x63 and x16 and x64 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x62 and not x15 and not x63 and x16 and x64 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and not x15 and not x63 and x16 and not x64 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x62 and not x15 and not x63 and x16 and not x64 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      else
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      end if;

   when s125 =>
      if ( x16 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x16 and x15 and x8 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x16 and x15 and not x8 and x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x16 and x15 and not x8 and not x9 and x10 and x6 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x16 and x15 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s125;

      elsif ( not x16 and x15 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( not x16 and x15 and not x8 and not x9 and not x10 and not x11 ) = '1' then
         current_zoom <= s125;

      else
         y1 <= '1' ;
         current_zoom <= s26;

      end if;

   when s126 =>
      if ( x62 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s128;

      elsif ( not x62 and x64 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s141;

      else
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s199;

      end if;

   when s127 =>
      if ( x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x15 and not x16 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( not x15 and x16 and x4 and x5 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s122;

      elsif ( not x15 and not x16 and x12 and x13 and x3 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s129;

      elsif ( not x15 and not x16 and x12 and x13 and not x3 and x14 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s129;

      elsif ( not x15 and not x16 and x12 and x13 and not x3 and not x14 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      elsif ( not x15 and not x16 and x12 and not x13 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s31;

      else
         y10 <= '1' ;
         current_zoom <= s29;

      end if;

   when s128 =>
      if ( x62 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s200;

      elsif ( not x62 and x64 and x40 and x29 and x50 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s201;

      elsif ( not x62 and x64 and x40 and x29 and not x50 ) = '1' then
         current_zoom <= s128;

      elsif ( not x62 and x64 and x40 and not x29 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x62 and x64 and x40 and not x29 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x62 and x64 and not x40 and x11 and x6 and x9 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( not x62 and x64 and not x40 and x11 and x6 and not x9 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s204;

      elsif ( not x62 and x64 and not x40 and x11 and not x6 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( not x62 and x64 and not x40 and not x11 and x8 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x62 and x64 and not x40 and not x11 and not x8 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s206;

      elsif ( not x62 and not x64 and x44 and x29 and x50 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s207;

      elsif ( not x62 and not x64 and x44 and x29 and not x50 ) = '1' then
         current_zoom <= s128;

      elsif ( not x62 and not x64 and x44 and not x29 and x45 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x62 and not x64 and x44 and not x29 and not x45 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x62 and not x64 and not x44 and x11 and x6 and x9 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( not x62 and not x64 and not x44 and x11 and x6 and not x9 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y22 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s209;

      elsif ( not x62 and not x64 and not x44 and x11 and not x6 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( not x62 and not x64 and not x44 and not x11 and x8 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      else
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s206;

      end if;

   when s129 =>
      if ( x62 and x15 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s30;

      elsif ( x62 and not x15 and x16 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x62 and not x15 and not x16 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s153;

      elsif ( not x62 and x63 and x55 and x33 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s105;

      elsif ( not x62 and x63 and x55 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x62 and x63 and x55 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and x63 and not x55 and x50 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( not x62 and x63 and not x55 and not x50 ) = '1' then
         current_zoom <= s129;

      elsif ( not x62 and not x63 and x64 and x40 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x62 and not x63 and x64 and x40 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x62 and not x63 and x64 and x40 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and not x63 and x64 and not x40 and x50 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      elsif ( not x62 and not x63 and x64 and not x40 and not x50 ) = '1' then
         current_zoom <= s129;

      elsif ( not x62 and not x63 and not x64 and x44 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x62 and not x63 and not x64 and x44 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x62 and not x63 and not x64 and x44 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x62 and not x63 and not x64 and not x44 and x50 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s107;

      else
         current_zoom <= s129;

      end if;

   when s130 =>
      if ( x63 and x46 and x16 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x63 and x46 and x16 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x46 and not x16 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x63 and not x46 and x47 and x4 and x5 and x1 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s136;

      elsif ( x63 and not x46 and x47 and x4 and x5 and not x1 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( x63 and not x46 and x47 and x4 and not x5 and x2 and x3 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s159;

      elsif ( x63 and not x46 and x47 and x4 and not x5 and x2 and not x3 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( x63 and not x46 and x47 and x4 and not x5 and not x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( x63 and not x46 and x47 and not x4 and x33 and x34 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and not x46 and x47 and not x4 and x33 and not x34 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( x63 and not x46 and x47 and not x4 and not x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( x63 and not x46 and not x47 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( not x63 and x15 and x16 and x64 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x63 and x15 and x16 and x64 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x63 and x15 and x16 and not x64 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x63 and x15 and x16 and not x64 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and x15 and not x16 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( not x63 and not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( not x63 and not x15 and x16 and x4 and x5 and not x1 and x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( not x63 and not x15 and x16 and x4 and x5 and not x1 and not x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( not x63 and not x15 and x16 and x4 and not x5 and x2 and x3 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s159;

      elsif ( not x63 and not x15 and x16 and x4 and not x5 and x2 and not x3 and x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( not x63 and not x15 and x16 and x4 and not x5 and x2 and not x3 and not x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( not x63 and not x15 and x16 and x4 and not x5 and not x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( not x63 and not x15 and x16 and not x4 and x64 and x2 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x63 and not x15 and x16 and not x4 and x64 and x2 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( not x63 and not x15 and x16 and not x4 and x64 and not x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( not x63 and not x15 and x16 and not x4 and not x64 and x34 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x63 and not x15 and x16 and not x4 and not x64 and x34 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( not x63 and not x15 and x16 and not x4 and not x64 and not x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      end if;

   when s131 =>
      if ( x46 and x16 and x36 and x1 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( x46 and x16 and x36 and not x1 and x2 and x3 and x35 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s136;

      elsif ( x46 and x16 and x36 and not x1 and x2 and x3 and not x35 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x46 and x16 and x36 and not x1 and x2 and not x3 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x46 and x16 and x36 and not x1 and not x2 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x46 and x16 and not x36 and x6 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x46 and x16 and not x36 and not x6 and x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( x46 and x16 and not x36 and not x6 and not x32 and x33 and x34 and x4 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s136;

      elsif ( x46 and x16 and not x36 and not x6 and not x32 and x33 and x34 and not x4 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x46 and x16 and not x36 and not x6 and not x32 and x33 and not x34 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x46 and x16 and not x36 and not x6 and not x32 and not x33 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x46 and not x16 and x37 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( x46 and not x16 and not x37 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s134;

      elsif ( not x46 and x47 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      else
         y11 <= '1' ;
         current_zoom <= s132;

      end if;

   when s132 =>
      if ( x63 and x55 and x10 and x39 and x46 and x51 and x36 ) = '1' then
         current_zoom <= s132;

      elsif ( x63 and x55 and x10 and x39 and x46 and x51 and not x36 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      elsif ( x63 and x55 and x10 and x39 and x46 and not x51 and x36 ) = '1' then
         current_zoom <= s132;

      elsif ( x63 and x55 and x10 and x39 and x46 and not x51 and not x36 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x63 and x55 and x10 and x39 and not x46 and x36 ) = '1' then
         current_zoom <= s132;

      elsif ( x63 and x55 and x10 and x39 and not x46 and not x36 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x63 and x55 and x10 and not x39 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s212;

      elsif ( x63 and x55 and not x10 and x42 and x34 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x63 and x55 and not x10 and x42 and x34 and not x8 and x36 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      elsif ( x63 and x55 and not x10 and x42 and x34 and not x8 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x63 and x55 and not x10 and x42 and not x34 and x32 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x63 and x55 and not x10 and x42 and not x34 and x32 and not x7 and x54 and x36 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      elsif ( x63 and x55 and not x10 and x42 and not x34 and x32 and not x7 and x54 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x63 and x55 and not x10 and x42 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x63 and x55 and not x10 and x42 and not x34 and not x32 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( x63 and x55 and not x10 and not x42 and x43 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x63 and x55 and not x10 and not x42 and x43 and not x20 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x63 and x55 and not x10 and not x42 and x43 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( x63 and x55 and not x10 and not x42 and not x43 and x13 and x32 and x3 and x6 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s215;

      elsif ( x63 and x55 and not x10 and not x42 and not x43 and x13 and x32 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x63 and x55 and not x10 and not x42 and not x43 and x13 and x32 and not x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x63 and x55 and not x10 and not x42 and not x43 and x13 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x63 and x55 and not x10 and not x42 and not x43 and not x13 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x63 and not x55 and x41 and x11 and x1 and x33 and x34 and x35 ) = '1' then
         current_zoom <= s132;

      elsif ( x63 and not x55 and x41 and x11 and x1 and x33 and x34 and not x35 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x63 and not x55 and x41 and x11 and x1 and x33 and not x34 and x4 and x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x63 and not x55 and x41 and x11 and x1 and x33 and not x34 and x4 and not x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( x63 and not x55 and x41 and x11 and x1 and x33 and not x34 and not x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( x63 and not x55 and x41 and x11 and x1 and not x33 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x63 and not x55 and x41 and x11 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x63 and not x55 and x41 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x63 and not x55 and x41 and not x11 and not x12 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s215;

      elsif ( x63 and not x55 and not x41 and x32 and x42 ) = '1' then
         y23 <= '1' ;
         y25 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s216;

      elsif ( x63 and not x55 and not x41 and x32 and not x42 and x43 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( x63 and not x55 and not x41 and x32 and not x42 and not x43 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s217;

      elsif ( x63 and not x55 and not x41 and not x32 and x11 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( x63 and not x55 and not x41 and not x32 and x11 and not x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x63 and not x55 and not x41 and not x32 and not x11 and x12 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x63 and not x55 and not x41 and not x32 and not x11 and x12 and not x35 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x63 and not x55 and not x41 and not x32 and not x11 and not x12 and x33 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x63 and not x55 and not x41 and not x32 and not x11 and not x12 and not x33 and x40 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x63 and not x55 and not x41 and not x32 and not x11 and not x12 and not x33 and not x40 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( not x63 and x64 and x40 and x10 and x39 and x46 and x51 and x36 ) = '1' then
         current_zoom <= s132;

      elsif ( not x63 and x64 and x40 and x10 and x39 and x46 and x51 and not x36 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( not x63 and x64 and x40 and x10 and x39 and x46 and not x51 and x36 ) = '1' then
         current_zoom <= s132;

      elsif ( not x63 and x64 and x40 and x10 and x39 and x46 and not x51 and not x36 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x63 and x64 and x40 and x10 and x39 and not x46 and x36 ) = '1' then
         current_zoom <= s132;

      elsif ( not x63 and x64 and x40 and x10 and x39 and not x46 and not x36 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( not x63 and x64 and x40 and x10 and not x39 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( not x63 and x64 and x40 and not x10 and x11 and x34 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x63 and x64 and x40 and not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( not x63 and x64 and x40 and not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and x64 and x40 and not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x63 and x64 and x40 and not x10 and x11 and not x34 and x32 and not x7 and x45 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( not x63 and x64 and x40 and not x10 and x11 and not x34 and x32 and not x7 and x45 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and x64 and x40 and not x10 and x11 and not x34 and x32 and not x7 and not x45 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( not x63 and x64 and x40 and not x10 and x11 and not x34 and not x32 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x63 and x64 and x40 and not x10 and not x11 and x12 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( not x63 and x64 and x40 and not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and x64 and x40 and not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x63 and x64 and x40 and not x10 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( not x63 and x64 and x40 and not x10 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and x64 and x40 and not x10 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and x64 and x40 and not x10 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( not x63 and x64 and x40 and not x10 and not x11 and not x12 and not x13 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x63 and x64 and not x40 and x10 and x11 and x1 and x2 and x4 and x5 and x3 ) = '1' then
         current_zoom <= s132;

      elsif ( not x63 and x64 and not x40 and x10 and x11 and x1 and x2 and x4 and x5 and not x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x63 and x64 and not x40 and x10 and x11 and x1 and x2 and x4 and not x5 and x3 ) = '1' then
         current_zoom <= s132;

      elsif ( not x63 and x64 and not x40 and x10 and x11 and x1 and x2 and x4 and not x5 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x63 and x64 and not x40 and x10 and x11 and x1 and x2 and not x4 and x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and x64 and not x40 and x10 and x11 and x1 and x2 and not x4 and not x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x63 and x64 and not x40 and x10 and x11 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( not x63 and x64 and not x40 and x10 and x11 and not x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and x64 and not x40 and x10 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( not x63 and x64 and not x40 and x10 and not x11 and not x12 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( not x63 and x64 and not x40 and not x10 and x11 and x1 ) = '1' then
         y16 <= '1' ;
         y25 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s219;

      elsif ( not x63 and x64 and not x40 and not x10 and x11 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x63 and x64 and not x40 and not x10 and x11 and not x1 and not x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and x64 and not x40 and not x10 and not x11 and x12 and x1 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x63 and x64 and not x40 and not x10 and not x11 and x12 and not x1 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and x64 and not x40 and not x10 and not x11 and x12 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and x64 and not x40 and not x10 and not x11 and not x12 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s128;

      elsif ( not x63 and x64 and not x40 and not x10 and not x11 and not x12 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and x64 and not x40 and not x10 and not x11 and not x12 and not x1 and not x2 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and x64 and not x40 and not x10 and not x11 and not x12 and not x1 and not x2 and not x9 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and not x64 and x10 and x44 and x39 and x46 and x51 and x36 ) = '1' then
         current_zoom <= s132;

      elsif ( not x63 and not x64 and x10 and x44 and x39 and x46 and x51 and not x36 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      elsif ( not x63 and not x64 and x10 and x44 and x39 and x46 and not x51 and x36 ) = '1' then
         current_zoom <= s132;

      elsif ( not x63 and not x64 and x10 and x44 and x39 and x46 and not x51 and not x36 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x63 and not x64 and x10 and x44 and x39 and not x46 and x36 ) = '1' then
         current_zoom <= s132;

      elsif ( not x63 and not x64 and x10 and x44 and x39 and not x46 and not x36 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s222;

      elsif ( not x63 and not x64 and x10 and x44 and not x39 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( not x63 and not x64 and x10 and not x44 and x11 and x36 and x34 and x4 and x5 and x3 ) = '1' then
         current_zoom <= s132;

      elsif ( not x63 and not x64 and x10 and not x44 and x11 and x36 and x34 and x4 and x5 and not x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x63 and not x64 and x10 and not x44 and x11 and x36 and x34 and x4 and not x5 and x3 ) = '1' then
         current_zoom <= s132;

      elsif ( not x63 and not x64 and x10 and not x44 and x11 and x36 and x34 and x4 and not x5 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x63 and not x64 and x10 and not x44 and x11 and x36 and x34 and not x4 and x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and not x64 and x10 and not x44 and x11 and x36 and x34 and not x4 and not x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x63 and not x64 and x10 and not x44 and x11 and x36 and not x34 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s222;

      elsif ( not x63 and not x64 and x10 and not x44 and x11 and not x36 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and not x64 and x10 and not x44 and not x11 and x12 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s222;

      elsif ( not x63 and not x64 and x10 and not x44 and not x11 and not x12 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( not x63 and not x64 and not x10 and x44 and x11 and x34 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x63 and not x64 and not x10 and x44 and x11 and x34 and not x8 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      elsif ( not x63 and not x64 and not x10 and x44 and x11 and x34 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and not x64 and not x10 and x44 and x11 and not x34 and x32 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x63 and not x64 and not x10 and x44 and x11 and not x34 and x32 and not x7 and x54 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      elsif ( not x63 and not x64 and not x10 and x44 and x11 and not x34 and x32 and not x7 and x54 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and not x64 and not x10 and x44 and x11 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s222;

      elsif ( not x63 and not x64 and not x10 and x44 and x11 and not x34 and not x32 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x63 and not x64 and not x10 and x44 and not x11 and x12 and x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s222;

      elsif ( not x63 and not x64 and not x10 and x44 and not x11 and x12 and not x20 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and not x64 and not x10 and x44 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x63 and not x64 and not x10 and x44 and not x11 and not x12 and x13 and x37 and x41 and x6 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( not x63 and not x64 and not x10 and x44 and not x11 and not x12 and x13 and x37 and x41 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and not x64 and not x10 and x44 and not x11 and not x12 and x13 and x37 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and not x64 and not x10 and x44 and not x11 and not x12 and x13 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s222;

      elsif ( not x63 and not x64 and not x10 and x44 and not x11 and not x12 and not x13 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x63 and not x64 and not x10 and not x44 and x11 and x37 ) = '1' then
         y16 <= '1' ;
         y25 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s219;

      elsif ( not x63 and not x64 and not x10 and not x44 and x11 and not x37 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x63 and not x64 and not x10 and not x44 and x11 and not x37 and not x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and not x64 and not x10 and not x44 and not x11 and x12 and x37 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x63 and not x64 and not x10 and not x44 and not x11 and x12 and not x37 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and not x64 and not x10 and not x44 and not x11 and x12 and not x37 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and not x64 and not x10 and not x44 and not x11 and not x12 and x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s128;

      elsif ( not x63 and not x64 and not x10 and not x44 and not x11 and not x12 and not x37 and x34 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and not x64 and not x10 and not x44 and not x11 and not x12 and not x37 and not x34 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      end if;

   when s133 =>
      if ( x63 and x46 and x16 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( x63 and x46 and not x16 and x42 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( x63 and x46 and not x16 and not x42 and x10 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s136;

      elsif ( x63 and x46 and not x16 and not x42 and not x10 ) = '1' then
         current_zoom <= s133;

      elsif ( x63 and not x46 and x47 and x3 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( x63 and not x46 and x47 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( x63 and not x46 and not x47 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( not x63 and x16 and x15 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x63 and x16 and not x15 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( not x63 and x16 and not x15 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( not x63 and not x16 and x15 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x63 and not x16 and x15 and not x11 and x10 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( not x63 and not x16 and x15 and not x11 and not x10 ) = '1' then
         current_zoom <= s133;

      else
         y11 <= '1' ;
         current_zoom <= s132;

      end if;

   when s134 =>
      if ( x16 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x16 and x15 and x39 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( not x16 and x15 and not x39 and x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( not x16 and x15 and not x39 and not x9 and x41 and x37 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x16 and x15 and not x39 and not x9 and x41 and not x37 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s134;

      elsif ( not x16 and x15 and not x39 and not x9 and not x41 and x42 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x16 and x15 and not x39 and not x9 and not x41 and not x42 ) = '1' then
         current_zoom <= s134;

      else
         y1 <= '1' ;
         current_zoom <= s26;

      end if;

   when s135 =>
         y27 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s137;

   when s136 =>
      if ( x15 and x16 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x15 and not x16 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x15 and x47 and x4 and x5 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x15 and x47 and x4 and not x5 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( not x15 and x47 and not x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x15 and not x47 and x43 and x44 and x34 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x15 and not x47 and x43 and x44 and not x34 and x14 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x15 and not x47 and x43 and x44 and not x34 and not x14 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( not x15 and not x47 and x43 and not x44 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      end if;

   when s137 =>
         y3 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s223;

   when s138 =>
      if ( x16 and x15 and x5 and x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( x16 and x15 and x5 and not x1 and x2 and x3 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( x16 and x15 and x5 and not x1 and x2 and x3 and not x4 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x16 and x15 and x5 and not x1 and x2 and not x3 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x16 and x15 and x5 and not x1 and not x2 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x16 and x15 and not x5 and x6 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x16 and x15 and not x5 and not x6 and x1 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( x16 and x15 and not x5 and not x6 and not x1 and x2 and x3 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( x16 and x15 and not x5 and not x6 and not x1 and x2 and x3 and not x4 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x16 and x15 and not x5 and not x6 and not x1 and x2 and not x3 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x16 and x15 and not x5 and not x6 and not x1 and not x2 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x16 and not x15 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x16 and x15 and x6 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( not x16 and x15 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      else
         y11 <= '1' ;
         current_zoom <= s132;

      end if;

   when s139 =>
      if ( x15 and x16 and x64 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( x15 and x16 and not x64 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s158;

      elsif ( x15 and not x16 and x8 and x64 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( x15 and not x16 and x8 and not x64 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s196;

      elsif ( x15 and not x16 and not x8 and x9 and x64 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( x15 and not x16 and not x8 and x9 and not x64 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s196;

      elsif ( x15 and not x16 and not x8 and not x9 and x10 and x6 and x64 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      elsif ( x15 and not x16 and not x8 and not x9 and x10 and x6 and not x64 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s158;

      elsif ( x15 and not x16 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      elsif ( x15 and not x16 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( x15 and not x16 and not x8 and not x9 and not x10 and not x11 ) = '1' then
         current_zoom <= s139;

      elsif ( not x15 and x64 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s26;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s158;

      end if;

   when s140 =>
      if ( x16 and x15 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x16 and not x15 and x4 and x64 and x5 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x16 and not x15 and x4 and x64 and not x5 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      elsif ( x16 and not x15 and x4 and not x64 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( x16 and not x15 and x4 and not x64 and not x5 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s196;

      elsif ( x16 and not x15 and not x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x16 and x12 and x15 and x64 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x16 and x12 and x15 and not x64 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x16 and x12 and not x15 and x13 and x3 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x16 and x12 and not x15 and x13 and not x3 and x14 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x16 and x12 and not x15 and x13 and not x3 and not x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( not x16 and x12 and not x15 and not x13 and x64 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s34;

      elsif ( not x16 and x12 and not x15 and not x13 and not x64 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x16 and not x12 and x64 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      else
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      end if;

   when s141 =>
      if ( x63 and x55 and x46 and x3 and x23 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s212;

      elsif ( x63 and x55 and x46 and x3 and not x23 ) = '1' then
         current_zoom <= s141;

      elsif ( x63 and x55 and x46 and not x3 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and x55 and not x46 and x2 and x23 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s212;

      elsif ( x63 and x55 and not x46 and x2 and not x23 ) = '1' then
         current_zoom <= s141;

      elsif ( x63 and x55 and not x46 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and not x55 and x10 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and not x55 and not x10 and x11 and x5 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      elsif ( x63 and not x55 and not x10 and x11 and not x5 and x37 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x63 and not x55 and not x10 and x11 and not x5 and not x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x63 and not x55 and not x10 and not x11 and x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and not x55 and not x10 and not x11 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( not x63 and x64 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      else
         y19 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s223;

      end if;

   when s142 =>
      if ( x26 and x28 and x7 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x26 and x28 and not x7 and x62 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      elsif ( x26 and x28 and not x7 and not x62 and x63 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      elsif ( x26 and x28 and not x7 and not x62 and not x63 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( x26 and not x28 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and x27 and x25 and x62 and x9 ) = '1' then
         current_zoom <= s142;

      elsif ( not x26 and x27 and x25 and x62 and not x9 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      elsif ( not x26 and x27 and x25 and not x62 and x63 and x9 ) = '1' then
         current_zoom <= s142;

      elsif ( not x26 and x27 and x25 and not x62 and x63 and not x9 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      elsif ( not x26 and x27 and x25 and not x62 and not x63 and x9 ) = '1' then
         current_zoom <= s142;

      elsif ( not x26 and x27 and x25 and not x62 and not x63 and not x9 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x26 and x27 and not x25 and x62 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( not x26 and x27 and not x25 and not x62 and x63 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( not x26 and x27 and not x25 and not x62 and not x63 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x26 and not x27 and x62 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s229;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      end if;

   when s143 =>
      if ( x26 and x28 and x7 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s230;

      elsif ( x26 and x28 and not x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( x26 and not x28 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and x27 and x25 and x9 ) = '1' then
         current_zoom <= s143;

      elsif ( not x26 and x27 and x25 and not x9 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x26 and x27 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      end if;

   when s144 =>
      if ( x26 and x28 and x23 and x63 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s175;

      elsif ( x26 and x28 and x23 and not x63 and x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s150;

      elsif ( x26 and x28 and x23 and not x63 and not x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s151;

      elsif ( x26 and x28 and not x23 and x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x26 and x28 and not x23 and not x25 and x63 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( x26 and x28 and not x23 and not x25 and not x63 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x26 and not x28 and x63 and x34 and x25 ) = '1' then
         current_zoom <= s144;

      elsif ( x26 and not x28 and x63 and x34 and not x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( x26 and not x28 and x63 and not x34 and x35 and x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( x26 and not x28 and x63 and not x34 and x35 and not x36 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x26 and not x28 and x63 and not x34 and not x35 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x26 and not x28 and not x63 and x3 and x25 ) = '1' then
         current_zoom <= s144;

      elsif ( x26 and not x28 and not x63 and x3 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x26 and not x28 and not x63 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( x26 and not x28 and not x63 and not x3 and x4 and not x5 and x64 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x26 and not x28 and not x63 and not x3 and x4 and not x5 and not x64 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s143;

      elsif ( x26 and not x28 and not x63 and not x3 and not x4 and x64 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x26 and not x28 and not x63 and not x3 and not x4 and not x64 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s230;

      elsif ( not x26 and x27 and x63 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( not x26 and x27 and x63 and not x35 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and x27 and not x63 and x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( not x26 and x27 and not x63 and not x4 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x27 and x28 and x11 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x27 and x28 and not x11 and x63 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s231;

      elsif ( not x26 and not x27 and x28 and not x11 and not x63 and x64 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s231;

      elsif ( not x26 and not x27 and x28 and not x11 and not x63 and not x64 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s232;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      end if;

   when s145 =>
      if ( x26 and x28 and x63 and x37 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x26 and x28 and x63 and not x37 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x26 and x28 and x63 and not x37 and not x4 ) = '1' then
         current_zoom <= s1;

      elsif ( x26 and x28 and not x63 and x6 and x64 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x26 and x28 and not x63 and x6 and not x64 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s230;

      elsif ( x26 and x28 and not x63 and not x6 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x26 and x28 and not x63 and not x6 and not x4 ) = '1' then
         current_zoom <= s1;

      elsif ( x26 and not x28 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and x27 and x63 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      elsif ( not x26 and x27 and not x63 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x26 and not x27 and x63 and x28 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s233;

      elsif ( not x26 and not x27 and x63 and not x28 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      elsif ( not x26 and not x27 and not x63 and x28 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s234;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      end if;

   when s146 =>
      if ( x26 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s235;

      elsif ( not x26 and x28 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s236;

      elsif ( not x26 and x28 and not x5 and x64 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s62;

      elsif ( not x26 and x28 and not x5 and not x64 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      end if;

   when s147 =>
      if ( x26 and x21 ) = '1' then
         current_zoom <= s1;

      elsif ( x26 and not x21 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( not x26 and x27 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x27 and x28 and x64 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( not x26 and not x27 and x28 and x64 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s148;

      elsif ( not x26 and not x27 and x28 and not x64 and x3 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s230;

      elsif ( not x26 and not x27 and x28 and not x64 and not x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s149;

      elsif ( not x26 and not x27 and not x28 and x19 and x24 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s237;

      elsif ( not x26 and not x27 and not x28 and x19 and not x24 ) = '1' then
         current_zoom <= s1;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s146;

      end if;

   when s148 =>
      if ( x28 and x7 and x63 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s175;

      elsif ( x28 and x7 and not x63 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s150;

      elsif ( x28 and not x7 and x63 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s237;

      elsif ( x28 and not x7 and not x63 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s237;

      elsif ( not x28 and x63 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      end if;

   when s149 =>
      if ( x28 and x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s151;

      elsif ( x28 and not x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s237;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      end if;

   when s150 =>
      if ( x26 and x8 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x26 and x8 and not x1 and x14 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x26 and x8 and not x1 and not x14 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x26 and not x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s146;

      elsif ( not x26 and x28 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s148;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s150;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x26 and not x28 and x6 and x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x26 and not x28 and x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s237;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s148;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s150;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x26 and not x28 and not x6 and x24 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s237;

      else
         current_zoom <= s1;

      end if;

   when s151 =>
      if ( x26 and x8 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s230;

      elsif ( x26 and x8 and not x37 and x14 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s143;

      elsif ( x26 and x8 and not x37 and not x14 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x26 and not x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s146;

      elsif ( not x26 and x28 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s149;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s151;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x26 and not x28 and x6 and x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x26 and not x28 and x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s237;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s149;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s151;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x26 and not x28 and not x6 and x24 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s237;

      else
         current_zoom <= s1;

      end if;

   when s152 =>
      if ( x15 and x16 and x5 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s30;

      elsif ( x15 and x16 and not x5 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s6;

      elsif ( x15 and not x16 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s56;

      elsif ( x15 and not x16 and not x12 ) = '1' then
         current_zoom <= s152;

      elsif ( not x15 and x16 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x15 and x16 and not x4 and x2 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      elsif ( not x15 and x16 and not x4 and not x2 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s56;

      elsif ( not x15 and x16 and not x4 and not x2 and not x1 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      else
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s153;

      end if;

   when s153 =>
      if ( x62 and x16 and x15 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s238;

      elsif ( x62 and x16 and not x15 and x2 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s123;

      elsif ( x62 and x16 and not x15 and not x2 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s56;

      elsif ( x62 and x16 and not x15 and not x2 and not x1 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s29;

      elsif ( x62 and not x16 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s238;

      elsif ( not x62 and x64 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s238;

      else
         y14 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s239;

      end if;

   when s154 =>
      if ( x16 and x15 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x16 and not x15 and x4 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s129;

      elsif ( x16 and not x15 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x16 and x15 and x13 and x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s30;

      elsif ( not x16 and x15 and x13 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x16 and x15 and not x13 and x14 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      elsif ( not x16 and x15 and not x13 and not x14 and x9 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      elsif ( not x16 and x15 and not x13 and not x14 and not x9 and x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      elsif ( not x16 and x15 and not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      elsif ( not x16 and x15 and not x13 and not x14 and not x9 and not x7 and not x8 ) = '1' then
         current_zoom <= s154;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      end if;

   when s155 =>
      if ( x63 and x15 and x16 and x5 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x63 and x15 and x16 and not x5 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x63 and x15 and not x16 and x12 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( x63 and x15 and not x16 and not x12 ) = '1' then
         current_zoom <= s155;

      elsif ( x63 and not x15 and x47 and x35 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x63 and not x15 and x47 and not x35 and x33 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( x63 and not x15 and x47 and not x35 and not x33 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( x63 and not x15 and x47 and not x35 and not x33 and not x32 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x63 and not x15 and not x47 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      elsif ( not x63 and x15 and x16 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x63 and x15 and x16 and not x5 and x64 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x63 and x15 and x16 and not x5 and not x64 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x63 and x15 and not x16 and x64 and x12 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x63 and x15 and not x16 and x64 and not x12 ) = '1' then
         current_zoom <= s155;

      elsif ( not x63 and x15 and not x16 and not x64 and x12 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s176;

      elsif ( not x63 and x15 and not x16 and not x64 and not x12 ) = '1' then
         current_zoom <= s155;

      elsif ( not x63 and not x15 and x16 and x4 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( not x63 and not x15 and x16 and not x4 and x64 and x2 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( not x63 and not x15 and x16 and not x4 and x64 and not x2 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x63 and not x15 and x16 and not x4 and x64 and not x2 and not x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( not x63 and not x15 and x16 and not x4 and not x64 and x34 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( not x63 and not x15 and x16 and not x4 and not x64 and not x34 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s176;

      elsif ( not x63 and not x15 and x16 and not x4 and not x64 and not x34 and not x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      else
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      end if;

   when s156 =>
      if ( x16 and x63 and x46 ) = '1' then
         y15 <= '1' ;
         y23 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s240;

      elsif ( x16 and x63 and not x46 and x2 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s131;

      elsif ( x16 and x63 and not x46 and not x2 and x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( x16 and x63 and not x46 and not x2 and not x32 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x16 and not x63 and x15 ) = '1' then
         y2 <= '1' ;
         y15 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s241;

      elsif ( x16 and not x63 and not x15 and x2 and x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s138;

      elsif ( x16 and not x63 and not x15 and x2 and not x64 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( x16 and not x63 and not x15 and not x2 and x64 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( x16 and not x63 and not x15 and not x2 and x64 and not x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s32;

      elsif ( x16 and not x63 and not x15 and not x2 and not x64 and x37 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s176;

      elsif ( x16 and not x63 and not x15 and not x2 and not x64 and not x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x16 and x63 ) = '1' then
         y15 <= '1' ;
         y23 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s240;

      else
         y2 <= '1' ;
         y15 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s241;

      end if;

   when s157 =>
      if ( x15 and x16 and x5 and x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( x15 and x16 and x5 and not x1 and x2 and x3 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( x15 and x16 and x5 and not x1 and x2 and x3 and not x4 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x15 and x16 and x5 and not x1 and x2 and not x3 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x15 and x16 and x5 and not x1 and not x2 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x15 and x16 and not x5 and x6 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x15 and x16 and not x5 and not x6 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( x15 and x16 and not x5 and not x6 and not x37 and x34 and x3 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( x15 and x16 and not x5 and not x6 and not x37 and x34 and x3 and not x4 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( x15 and x16 and not x5 and not x6 and not x37 and x34 and not x3 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x15 and x16 and not x5 and not x6 and not x37 and not x34 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x15 and not x16 and x6 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s158;

      elsif ( x15 and not x16 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      elsif ( not x15 and x16 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s176;

      else
         y11 <= '1' ;
         current_zoom <= s132;

      end if;

   when s158 =>
      if ( x15 and x16 and x37 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( x15 and x16 and not x37 and x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( x15 and x16 and not x37 and not x5 and x6 and x2 and x31 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( x15 and x16 and not x37 and not x5 and x6 and x2 and not x31 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x15 and x16 and not x37 and not x5 and x6 and not x2 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x15 and x16 and not x37 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s196;

      elsif ( x15 and not x16 and x7 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s196;

      elsif ( x15 and not x16 and not x7 and x9 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s196;

      elsif ( x15 and not x16 and not x7 and not x9 and x10 and x6 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s158;

      elsif ( x15 and not x16 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s139;

      elsif ( x15 and not x16 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( x15 and not x16 and not x7 and not x9 and not x10 and not x11 ) = '1' then
         current_zoom <= s158;

      elsif ( not x15 and x16 and x4 and x5 and x34 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x15 and x16 and x4 and x5 and not x34 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x15 and x16 and x4 and x5 and not x34 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x15 and not x16 and x3 and x11 and x2 ) = '1' then
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s242;

      elsif ( not x15 and not x16 and x3 and x11 and not x2 ) = '1' then
         current_zoom <= s158;

      elsif ( not x15 and not x16 and x3 and not x11 and x4 and x12 and x13 and x31 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( not x15 and not x16 and x3 and not x11 and x4 and x12 and x13 and x31 and not x2 ) = '1' then
         current_zoom <= s158;

      elsif ( not x15 and not x16 and x3 and not x11 and x4 and x12 and x13 and not x31 and x2 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x15 and not x16 and x3 and not x11 and x4 and x12 and x13 and not x31 and not x2 ) = '1' then
         current_zoom <= s158;

      elsif ( not x15 and not x16 and x3 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_zoom <= s158;

      elsif ( not x15 and not x16 and x3 and not x11 and x4 and not x12 ) = '1' then
         current_zoom <= s158;

      elsif ( not x15 and not x16 and x3 and not x11 and not x4 ) = '1' then
         current_zoom <= s158;

      elsif ( not x15 and not x16 and not x3 and x4 and x34 and x11 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s141;

      elsif ( not x15 and not x16 and not x3 and x4 and x34 and not x11 and x12 and x13 and x14 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x15 and not x16 and not x3 and x4 and x34 and not x11 and x12 and x13 and not x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( not x15 and not x16 and not x3 and x4 and x34 and not x11 and x12 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x15 and not x16 and not x3 and x4 and x34 and not x11 and not x12 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x15 and not x16 and not x3 and x4 and not x34 ) = '1' then
         current_zoom <= s158;

      elsif ( not x15 and not x16 and not x3 and not x4 and x6 and x34 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x15 and not x16 and not x3 and not x4 and x6 and x34 and not x5 and x9 and x7 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x15 and not x16 and not x3 and not x4 and x6 and x34 and not x5 and x9 and not x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( not x15 and not x16 and not x3 and not x4 and x6 and x34 and not x5 and not x9 and x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( not x15 and not x16 and not x3 and not x4 and x6 and x34 and not x5 and not x9 and not x7 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x15 and not x16 and not x3 and not x4 and x6 and not x34 ) = '1' then
         current_zoom <= s158;

      elsif ( not x15 and not x16 and not x3 and not x4 and not x6 and x7 and x34 and x5 and x8 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x15 and not x16 and not x3 and not x4 and not x6 and x7 and x34 and x5 and not x8 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( not x15 and not x16 and not x3 and not x4 and not x6 and x7 and x34 and not x5 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x15 and not x16 and not x3 and not x4 and not x6 and x7 and x34 and not x5 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( not x15 and not x16 and not x3 and not x4 and not x6 and x7 and not x34 ) = '1' then
         current_zoom <= s158;

      elsif ( not x15 and not x16 and not x3 and not x4 and not x6 and not x7 and x34 and x5 and x8 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( not x15 and not x16 and not x3 and not x4 and not x6 and not x7 and x34 and x5 and not x8 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x15 and not x16 and not x3 and not x4 and not x6 and not x7 and x34 and not x5 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( not x15 and not x16 and not x3 and not x4 and not x6 and not x7 and x34 and not x5 and not x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      else
         current_zoom <= s158;

      end if;

   when s159 =>
      if ( x15 and x16 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( x15 and not x16 and x63 and x13 and x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s54;

      elsif ( x15 and not x16 and x63 and x13 and not x4 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x15 and not x16 and x63 and x13 and not x4 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x15 and not x16 and x63 and not x13 and x45 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( x15 and not x16 and x63 and not x13 and not x45 and x9 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( x15 and not x16 and x63 and not x13 and not x45 and not x9 and x38 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( x15 and not x16 and x63 and not x13 and not x45 and not x9 and not x38 and x39 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( x15 and not x16 and x63 and not x13 and not x45 and not x9 and not x38 and not x39 ) = '1' then
         current_zoom <= s159;

      elsif ( x15 and not x16 and not x63 and x13 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( x15 and not x16 and not x63 and x13 and not x4 and x64 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( x15 and not x16 and not x63 and x13 and not x4 and x64 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( x15 and not x16 and not x63 and x13 and not x4 and not x64 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( x15 and not x16 and not x63 and x13 and not x4 and not x64 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x15 and not x16 and not x63 and not x13 and x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( x15 and not x16 and not x63 and not x13 and not x14 and x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( x15 and not x16 and not x63 and not x13 and not x14 and not x9 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( x15 and not x16 and not x63 and not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( x15 and not x16 and not x63 and not x13 and not x14 and not x9 and not x7 and not x8 ) = '1' then
         current_zoom <= s159;

      elsif ( not x15 and x63 and x47 and x4 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x15 and x63 and x47 and not x4 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x15 and x63 and x47 and not x4 and not x32 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x15 and x63 and not x47 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s132;

      elsif ( not x15 and not x63 and x16 and x4 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x15 and not x63 and x16 and not x4 and x64 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s35;

      elsif ( not x15 and not x63 and x16 and not x4 and x64 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x15 and not x63 and x16 and not x4 and not x64 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( not x15 and not x63 and x16 and not x4 and not x64 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      else
         y11 <= '1' ;
         current_zoom <= s132;

      end if;

   when s160 =>
      if ( x64 and x61 and x46 and x3 and x23 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( x64 and x61 and x46 and x3 and not x23 ) = '1' then
         current_zoom <= s160;

      elsif ( x64 and x61 and x46 and not x3 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and x61 and not x46 and x2 and x23 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( x64 and x61 and not x46 and x2 and not x23 ) = '1' then
         current_zoom <= s160;

      elsif ( x64 and x61 and not x46 and not x2 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and not x61 and x10 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and not x61 and not x10 and x11 and x5 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( x64 and not x61 and not x10 and x11 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x64 and not x61 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x64 and not x61 and not x10 and not x11 and x1 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x64 and not x61 and not x10 and not x11 and not x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x64 and x14 and x44 and x3 and x23 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( not x64 and x14 and x44 and x3 and not x23 ) = '1' then
         current_zoom <= s160;

      elsif ( not x64 and x14 and x44 and not x3 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and x14 and not x44 and x2 and x23 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( not x64 and x14 and not x44 and x2 and not x23 ) = '1' then
         current_zoom <= s160;

      elsif ( not x64 and x14 and not x44 and not x2 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and not x14 and x10 ) = '1' then
         current_zoom <= s1;

      elsif ( not x64 and not x14 and not x10 and x11 and x5 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( not x64 and not x14 and not x10 and x11 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x64 and not x14 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x64 and not x14 and not x10 and not x11 and x1 ) = '1' then
         current_zoom <= s1;

      else
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      end if;

   when s161 =>
      if ( x10 and x6 and x7 and x2 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( x10 and x6 and x7 and x2 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x10 and x6 and x7 and x2 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x10 and x6 and x7 and not x2 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x10 and x6 and not x7 and x8 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x10 and x6 and not x7 and not x8 and not x2 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s40;

      elsif ( x10 and not x6 and x2 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( x10 and not x6 and not x2 and x64 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      elsif ( x10 and not x6 and not x2 and not x64 ) = '1' then
         current_zoom <= s1;

      elsif ( not x10 and x11 and x5 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( not x10 and x11 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x10 and x11 and not x5 and not x6 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x10 and not x11 and x64 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s73;

      else
         current_zoom <= s1;

      end if;

   when s162 =>
      if ( x64 and x61 and x17 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s160;

      elsif ( x64 and x61 and not x17 and x57 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( x64 and x61 and not x17 and not x57 ) = '1' then
         current_zoom <= s162;

      elsif ( x64 and not x61 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s160;

      elsif ( x64 and not x61 and not x6 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s162;

      elsif ( not x64 and x14 and x17 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s160;

      elsif ( not x64 and x14 and not x17 and x21 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( not x64 and x14 and not x17 and not x21 ) = '1' then
         current_zoom <= s162;

      elsif ( not x64 and not x14 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s160;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s162;

      end if;

   when s163 =>
      if ( x64 and x61 and x3 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( x64 and x61 and not x3 and x2 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s162;

      elsif ( x64 and x61 and not x3 and not x2 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( x64 and x61 and not x3 and not x2 and not x28 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( x64 and not x61 and x10 and x5 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( x64 and not x61 and x10 and x5 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( x64 and not x61 and x10 and x5 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x64 and not x61 and x10 and not x5 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x64 and not x61 and not x10 and x11 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s92;

      elsif ( x64 and not x61 and not x10 and x11 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x64 and not x61 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x64 and not x61 and not x10 and not x11 ) = '1' then
         current_zoom <= s163;

      elsif ( not x64 and x14 and x3 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( not x64 and x14 and not x3 and x2 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s162;

      elsif ( not x64 and x14 and not x3 and not x2 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x64 and x14 and not x3 and not x2 and not x28 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s41;

      elsif ( not x64 and not x14 and x10 and x5 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s38;

      elsif ( not x64 and not x14 and x10 and x5 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( not x64 and not x14 and x10 and x5 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( not x64 and not x14 and x10 and not x5 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x64 and not x14 and not x10 and x11 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s92;

      elsif ( not x64 and not x14 and not x10 and x11 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x64 and not x14 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      else
         current_zoom <= s163;

      end if;

   when s164 =>
      if ( x64 and x61 and x50 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s162;

      elsif ( x64 and x61 and not x50 ) = '1' then
         current_zoom <= s164;

      elsif ( x64 and not x61 and x11 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s163;

      elsif ( x64 and not x61 and not x11 and x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s163;

      elsif ( x64 and not x61 and not x11 and not x9 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s70;

      elsif ( not x64 and x14 and x42 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s162;

      elsif ( not x64 and x14 and not x42 ) = '1' then
         current_zoom <= s164;

      elsif ( not x64 and not x14 and x11 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s163;

      elsif ( not x64 and not x14 and not x11 and x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s163;

      else
         y2 <= '1' ;
         current_zoom <= s70;

      end if;

   when s165 =>
      if ( x62 and x3 and x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( x62 and x3 and not x5 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s71;

      elsif ( x62 and not x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x62 and x64 and x3 and x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x62 and x64 and x3 and not x5 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( not x62 and x64 and not x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x62 and not x64 and x63 and x3 and x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x62 and not x64 and x63 and x3 and not x5 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( not x62 and not x64 and x63 and not x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x62 and not x64 and not x63 and x42 and x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x62 and not x64 and not x63 and x42 and not x5 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      end if;

   when s166 =>
      if ( x64 and x61 and x37 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( x64 and x61 and not x37 and x9 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( x64 and x61 and not x37 and not x9 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( x64 and not x61 and x10 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x64 and not x61 and not x10 and x11 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s92;

      elsif ( x64 and not x61 and not x10 and x11 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( x64 and not x61 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( x64 and not x61 and not x10 and not x11 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      elsif ( not x64 and x14 and x9 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( not x64 and x14 and not x9 and x37 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s39;

      elsif ( not x64 and x14 and not x9 and not x37 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s161;

      elsif ( not x64 and not x14 and x10 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x64 and not x14 and not x10 and x11 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s92;

      elsif ( not x64 and not x14 and not x10 and x11 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s37;

      elsif ( not x64 and not x14 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s11;

      else
         y1 <= '1' ;
         current_zoom <= s11;

      end if;

   when s167 =>
      if ( x26 and x28 and x9 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x26 and x28 and not x9 and x23 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      elsif ( x26 and x28 and not x9 and not x23 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( x26 and not x28 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s229;

      elsif ( not x26 and x27 and x4 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s229;

      elsif ( not x26 and x27 and not x4 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x27 and x28 and x2 and x24 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s246;

      elsif ( not x26 and not x27 and x28 and x2 and not x24 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      elsif ( not x26 and not x27 and x28 and not x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s229;

      elsif ( not x26 and not x27 and not x28 and x18 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s247;

      elsif ( not x26 and not x27 and not x28 and x18 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s248;

      elsif ( not x26 and not x27 and not x28 and x18 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      else
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s229;

      end if;

   when s168 =>
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

   when s169 =>
      if ( x61 and x33 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s194;

      elsif ( x61 and not x33 and x13 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( x61 and not x33 and not x13 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( not x61 and x50 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s171;

      else
         current_zoom <= s169;

      end if;

   when s170 =>
      if ( x61 and x30 and x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s100;

      elsif ( x61 and x30 and x16 and not x6 and x8 and x19 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s83;

      elsif ( x61 and x30 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( x61 and x30 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      elsif ( x61 and x30 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s86;

      elsif ( x61 and x30 and x16 and not x6 and not x8 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x61 and x30 and not x16 and x10 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x61 and x30 and not x16 and not x10 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x61 and not x30 and x5 and x9 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x61 and not x30 and x5 and not x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s53;

      elsif ( x61 and not x30 and not x5 and x11 and x3 ) = '1' then
         current_zoom <= s170;

      elsif ( x61 and not x30 and not x5 and x11 and not x3 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x61 and not x30 and not x5 and not x11 and x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( x61 and not x30 and not x5 and not x11 and not x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( not x61 and x51 and x24 and x5 and x36 ) = '1' then
         current_zoom <= s170;

      elsif ( not x61 and x51 and x24 and x5 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s186;

      elsif ( not x61 and x51 and x24 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( not x61 and x51 and not x24 and x31 and x29 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s186;

      elsif ( not x61 and x51 and not x24 and x31 and not x29 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( not x61 and x51 and not x24 and not x31 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s186;

      elsif ( not x61 and not x51 and x11 and x35 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s186;

      elsif ( not x61 and not x51 and x11 and x35 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( not x61 and not x51 and x11 and not x35 and x60 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( not x61 and not x51 and x11 and not x35 and not x60 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( not x61 and not x51 and not x11 and x52 and x35 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s53;

      elsif ( not x61 and not x51 and not x11 and x52 and not x35 and x60 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( not x61 and not x51 and not x11 and x52 and not x35 and not x60 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( not x61 and not x51 and not x11 and not x52 and x3 and x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s182;

      elsif ( not x61 and not x51 and not x11 and not x52 and x3 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      end if;

   when s171 =>
      if ( x9 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      elsif ( not x9 and x37 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      else
         y10 <= '1' ;
         current_zoom <= s194;

      end if;

   when s172 =>
      if ( x15 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s249;

      elsif ( x15 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s250;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s250;

      end if;

   when s173 =>
      if ( x61 and x14 and x8 and x10 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x61 and x14 and x8 and not x10 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x61 and x14 and not x8 and x30 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s187;

      elsif ( x61 and x14 and not x8 and x30 and not x1 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( x61 and x14 and not x8 and x30 and not x1 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s193;

      elsif ( x61 and x14 and not x8 and not x30 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x61 and not x14 and x32 and x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      elsif ( x61 and not x14 and x32 and not x3 ) = '1' then
         current_zoom <= s173;

      elsif ( x61 and not x14 and not x32 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x61 and not x14 and not x32 and not x3 ) = '1' then
         current_zoom <= s173;

      elsif ( not x61 and x16 and x54 and x29 and x59 and x27 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s169;

      elsif ( not x61 and x16 and x54 and x29 and x59 and not x27 ) = '1' then
         current_zoom <= s173;

      elsif ( not x61 and x16 and x54 and x29 and not x59 and x27 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( not x61 and x16 and x54 and x29 and not x59 and not x27 ) = '1' then
         current_zoom <= s173;

      elsif ( not x61 and x16 and x54 and not x29 and x33 and x27 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( not x61 and x16 and x54 and not x29 and x33 and not x27 ) = '1' then
         current_zoom <= s173;

      elsif ( not x61 and x16 and x54 and not x29 and not x33 and x57 and x27 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( not x61 and x16 and x54 and not x29 and not x33 and x57 and not x27 ) = '1' then
         current_zoom <= s173;

      elsif ( not x61 and x16 and x54 and not x29 and not x33 and not x57 and x27 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( not x61 and x16 and x54 and not x29 and not x33 and not x57 and not x27 ) = '1' then
         current_zoom <= s173;

      elsif ( not x61 and x16 and not x54 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( not x61 and not x16 and x37 and x56 and x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( not x61 and not x16 and x37 and x56 and not x1 ) = '1' then
         current_zoom <= s173;

      elsif ( not x61 and not x16 and x37 and not x56 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( not x61 and not x16 and not x37 and x25 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( not x61 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s83;

      elsif ( not x61 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_zoom <= s173;

      elsif ( not x61 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      else
         current_zoom <= s173;

      end if;

   when s174 =>
      if ( x18 and x17 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s174;

      elsif ( x18 and x17 and not x5 and x6 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( x18 and x17 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s8;

      elsif ( x18 and not x17 and x1 and x16 and x15 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( x18 and not x17 and x1 and x16 and x15 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( x18 and not x17 and x1 and x16 and x15 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( x18 and not x17 and x1 and x16 and not x15 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x18 and not x17 and x1 and not x16 and x15 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x18 and not x17 and x1 and not x16 and not x15 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( x18 and not x17 and x1 and not x16 and not x15 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x18 and not x17 and not x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s13;

      elsif ( not x18 and x17 and x3 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s46;

      elsif ( not x18 and x17 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s48;

      elsif ( not x18 and not x17 and x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( not x18 and not x17 and x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( not x18 and not x17 and x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x18 and not x17 and x15 and not x16 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x18 and not x17 and x15 and not x16 and not x1 ) = '1' then
         current_zoom <= s174;

      elsif ( not x18 and not x17 and not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( not x18 and not x17 and not x15 and not x16 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      end if;

   when s175 =>
      if ( x26 and x39 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x26 and x39 and not x32 and x14 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x26 and x39 and not x32 and not x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( x26 and not x39 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s251;

      elsif ( not x26 and x28 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x28 and x6 and x38 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s148;

      elsif ( not x26 and not x28 and x6 and x38 and x5 and not x3 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s175;

      elsif ( not x26 and not x28 and x6 and x38 and x5 and not x3 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      elsif ( not x26 and not x28 and x6 and x38 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( not x26 and not x28 and x6 and not x38 and x8 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s237;

      elsif ( not x26 and not x28 and x6 and not x38 and not x8 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s148;

      elsif ( not x26 and not x28 and x6 and not x38 and not x8 and x5 and not x3 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s175;

      elsif ( not x26 and not x28 and x6 and not x38 and not x8 and x5 and not x3 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      elsif ( not x26 and not x28 and x6 and not x38 and not x8 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( not x26 and not x28 and not x6 and x24 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s237;

      else
         current_zoom <= s1;

      end if;

   when s176 =>
      if ( x15 and x16 and x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x15 and x16 and not x5 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s156;

      elsif ( x15 and not x16 and x13 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( x15 and not x16 and x13 and not x11 and x6 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s33;

      elsif ( x15 and not x16 and x13 and not x11 and x6 and not x4 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s67;

      elsif ( x15 and not x16 and x13 and not x11 and x6 and not x4 and not x37 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s66;

      elsif ( x15 and not x16 and x13 and not x11 and not x6 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( x15 and not x16 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s117;

      elsif ( x15 and not x16 and not x13 and x14 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( x15 and not x16 and not x13 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and x6 and x2 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and x6 and not x2 ) = '1' then
         current_zoom <= s176;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s64;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and not x6 and not x8 ) = '1' then
         current_zoom <= s176;

      elsif ( not x15 and x16 and x4 and x5 and x34 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x15 and x16 and x4 and x5 and not x34 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( not x15 and x16 and x4 and x5 and not x34 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s157;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s65;

      else
         y11 <= '1' ;
         current_zoom <= s132;

      end if;

   when s177 =>
      if ( x55 and x51 and x24 and x36 ) = '1' then
         current_zoom <= s177;

      elsif ( x55 and x51 and x24 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x55 and x51 and not x24 and x31 and x29 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      elsif ( x55 and x51 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x55 and x51 and not x24 and not x31 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      elsif ( x55 and not x51 and x42 and x35 and x36 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      elsif ( x55 and not x51 and x42 and x35 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x55 and not x51 and x42 and not x35 and x58 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x55 and not x51 and x42 and not x35 and not x58 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x55 and not x51 and not x42 and x52 and x35 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s252;

      elsif ( x55 and not x51 and not x42 and x52 and not x35 and x58 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x55 and not x51 and not x42 and x52 and not x35 and not x58 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x55 and not x51 and not x42 and not x52 and x3 and x6 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s215;

      elsif ( x55 and not x51 and not x42 and not x52 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x55 and not x51 and not x42 and not x52 and not x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( not x55 and x10 and x11 and x34 and x35 ) = '1' then
         current_zoom <= s177;

      elsif ( not x55 and x10 and x11 and x34 and not x35 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( not x55 and x10 and x11 and not x34 and x4 and x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x55 and x10 and x11 and not x34 and x4 and not x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x55 and x10 and x11 and not x34 and not x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( not x55 and x10 and not x11 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x55 and x10 and not x11 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x55 and not x10 and x42 and x37 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s212;

      elsif ( not x55 and not x10 and x42 and not x37 and x8 and x4 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s141;

      elsif ( not x55 and not x10 and x42 and not x37 and x8 and not x4 and x1 and x34 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x55 and not x10 and x42 and not x37 and x8 and not x4 and x1 and not x34 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x55 and not x10 and x42 and not x37 and x8 and not x4 and not x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( not x55 and not x10 and x42 and not x37 and not x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x55 and not x10 and not x42 and x12 and x9 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x55 and not x10 and not x42 and x12 and not x9 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s252;

      elsif ( not x55 and not x10 and not x42 and not x12 and x6 ) = '1' then
         y6 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s165;

      elsif ( not x55 and not x10 and not x42 and not x12 and not x6 and x40 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      end if;

   when s178 =>
      if ( x55 and x44 and x23 and x51 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      elsif ( x55 and x44 and x23 and not x51 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x55 and x44 and not x23 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      elsif ( x55 and not x44 and x28 and x35 and x36 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      elsif ( x55 and not x44 and x28 and x35 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x55 and not x44 and x28 and not x35 and x58 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x55 and not x44 and x28 and not x35 and not x58 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x55 and not x44 and not x28 and x37 and x35 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s252;

      elsif ( x55 and not x44 and not x28 and x37 and not x35 and x58 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x55 and not x44 and not x28 and x37 and not x35 and not x58 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x55 and not x44 and not x28 and not x37 and x39 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x55 and not x44 and not x28 and not x37 and not x39 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x55 and x41 and x11 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x55 and x41 and not x11 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( not x55 and not x41 and x42 and x32 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s254;

      elsif ( not x55 and not x41 and x42 and not x32 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x55 and not x41 and x42 and not x32 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x55 and not x41 and not x42 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      else
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      end if;

   when s179 =>
      if ( x63 and x55 and x17 and x41 and x19 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x63 and x55 and x17 and x41 and not x19 ) = '1' then
         current_zoom <= s179;

      elsif ( x63 and x55 and x17 and not x41 and x19 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x63 and x55 and x17 and not x41 and not x19 ) = '1' then
         current_zoom <= s179;

      elsif ( x63 and x55 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( x63 and x55 and not x17 and not x20 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x63 and x55 and not x17 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( x63 and not x55 and x10 and x11 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and not x55 and x10 and not x11 and x43 and x4 and x32 ) = '1' then
         current_zoom <= s179;

      elsif ( x63 and not x55 and x10 and not x11 and x43 and x4 and not x32 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x63 and not x55 and x10 and not x11 and x43 and not x4 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x63 and not x55 and x10 and not x11 and not x43 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x63 and not x55 and not x10 and x42 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s252;

      elsif ( x63 and not x55 and not x10 and not x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x63 and x64 and x40 and x17 and x19 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x63 and x64 and x40 and x17 and x19 and not x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( not x63 and x64 and x40 and x17 and not x19 ) = '1' then
         current_zoom <= s179;

      elsif ( not x63 and x64 and x40 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s72;

      elsif ( not x63 and x64 and x40 and not x17 and not x20 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and x64 and x40 and not x17 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x63 and x64 and not x40 and x11 and x10 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x63 and x64 and not x40 and x11 and not x10 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s255;

      elsif ( not x63 and x64 and not x40 and not x11 and x10 and x12 and x4 and x1 ) = '1' then
         current_zoom <= s179;

      elsif ( not x63 and x64 and not x40 and not x11 and x10 and x12 and x4 and not x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( not x63 and x64 and not x40 and not x11 and x10 and x12 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and x64 and not x40 and not x11 and x10 and not x12 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x63 and x64 and not x40 and not x11 and not x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x63 and not x64 and x44 and x17 and x19 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x63 and not x64 and x44 and x17 and x19 and not x10 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      elsif ( not x63 and not x64 and x44 and x17 and not x19 ) = '1' then
         current_zoom <= s179;

      elsif ( not x63 and not x64 and x44 and not x17 and x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s222;

      elsif ( not x63 and not x64 and x44 and not x17 and not x20 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x63 and not x64 and x44 and not x17 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x63 and not x64 and not x44 and x11 and x10 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x63 and not x64 and not x44 and x11 and not x10 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s255;

      elsif ( not x63 and not x64 and not x44 and not x11 and x10 and x12 and x4 and x1 ) = '1' then
         current_zoom <= s179;

      elsif ( not x63 and not x64 and not x44 and not x11 and x10 and x12 and x4 and not x1 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      elsif ( not x63 and not x64 and not x44 and not x11 and x10 and x12 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x63 and not x64 and not x44 and not x11 and x10 and not x12 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      end if;

   when s180 =>
      if ( x64 and x40 and x51 and x24 and x5 and x36 ) = '1' then
         current_zoom <= s180;

      elsif ( x64 and x40 and x51 and x24 and x5 and not x36 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( x64 and x40 and x51 and x24 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and x40 and x51 and not x24 and x31 and x29 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( x64 and x40 and x51 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and x40 and x51 and not x24 and not x31 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( x64 and x40 and not x51 and x11 and x35 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( x64 and x40 and not x51 and x11 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and x40 and not x51 and x11 and not x35 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and x40 and not x51 and x11 and not x35 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and x40 and not x51 and not x11 and x49 and x35 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s255;

      elsif ( x64 and x40 and not x51 and not x11 and x49 and not x35 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and x40 and not x51 and not x11 and x49 and not x35 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and x40 and not x51 and not x11 and not x49 and x3 and x6 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( x64 and x40 and not x51 and not x11 and not x49 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and x40 and not x51 and not x11 and not x49 and not x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and not x40 and x11 and x10 and x4 and x5 and x3 ) = '1' then
         current_zoom <= s180;

      elsif ( x64 and not x40 and x11 and x10 and x4 and x5 and not x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x64 and not x40 and x11 and x10 and x4 and not x5 and x3 ) = '1' then
         current_zoom <= s180;

      elsif ( x64 and not x40 and x11 and x10 and x4 and not x5 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( x64 and not x40 and x11 and x10 and not x4 and x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and not x40 and x11 and x10 and not x4 and not x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( x64 and not x40 and x11 and not x10 and x6 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( x64 and not x40 and x11 and not x10 and not x6 and x8 and x4 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s206;

      elsif ( x64 and not x40 and x11 and not x10 and not x6 and x8 and not x4 and x1 and x3 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x64 and not x40 and x11 and not x10 and not x6 and x8 and not x4 and x1 and not x3 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x64 and not x40 and x11 and not x10 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x64 and not x40 and x11 and not x10 and not x6 and not x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and not x40 and not x11 and x10 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x64 and not x40 and not x11 and x10 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and not x40 and not x11 and not x10 and x12 and x9 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and not x40 and not x11 and not x10 and x12 and not x9 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s255;

      elsif ( x64 and not x40 and not x11 and not x10 and not x12 and x6 ) = '1' then
         y6 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s165;

      elsif ( x64 and not x40 and not x11 and not x10 and not x12 and not x6 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x64 and not x40 and not x11 and not x10 and not x12 and not x6 and not x9 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and x44 and x51 and x24 and x5 and x36 ) = '1' then
         current_zoom <= s180;

      elsif ( not x64 and x44 and x51 and x24 and x5 and not x36 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      elsif ( not x64 and x44 and x51 and x24 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and x44 and x51 and not x24 and x31 and x29 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      elsif ( not x64 and x44 and x51 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and x44 and x51 and not x24 and not x31 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      elsif ( not x64 and x44 and not x51 and x11 and x35 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      elsif ( not x64 and x44 and not x51 and x11 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and x44 and not x51 and x11 and not x35 and x45 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and x44 and not x51 and x11 and not x35 and not x45 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and x44 and not x51 and not x11 and x52 and x35 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s255;

      elsif ( not x64 and x44 and not x51 and not x11 and x52 and not x35 and x45 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and x44 and not x51 and not x11 and x52 and not x35 and not x45 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and x44 and not x51 and not x11 and not x52 and x41 and x6 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( not x64 and x44 and not x51 and not x11 and not x52 and x41 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and x44 and not x51 and not x11 and not x52 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and not x44 and x10 and x11 and x4 and x5 and x3 ) = '1' then
         current_zoom <= s180;

      elsif ( not x64 and not x44 and x10 and x11 and x4 and x5 and not x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x64 and not x44 and x10 and x11 and x4 and not x5 and x3 ) = '1' then
         current_zoom <= s180;

      elsif ( not x64 and not x44 and x10 and x11 and x4 and not x5 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x64 and not x44 and x10 and x11 and not x4 and x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and not x44 and x10 and x11 and not x4 and not x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x64 and not x44 and x10 and not x11 and x34 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x64 and not x44 and x10 and not x11 and not x34 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and not x44 and not x10 and x11 and x6 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( not x64 and not x44 and not x10 and x11 and not x6 and x8 and x4 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s206;

      elsif ( not x64 and not x44 and not x10 and x11 and not x6 and x8 and not x4 and x1 and x41 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x64 and not x44 and not x10 and x11 and not x6 and x8 and not x4 and x1 and not x41 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x64 and not x44 and not x10 and x11 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      elsif ( not x64 and not x44 and not x10 and x11 and not x6 and not x8 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and not x44 and not x10 and not x11 and x12 and x9 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and not x44 and not x10 and not x11 and x12 and not x9 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s255;

      elsif ( not x64 and not x44 and not x10 and not x11 and not x12 and x6 ) = '1' then
         y6 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s165;

      elsif ( not x64 and not x44 and not x10 and not x11 and not x12 and not x6 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      end if;

   when s181 =>
      if ( x64 and x40 and x13 and x23 and x51 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( x64 and x40 and x13 and x23 and not x51 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x64 and x40 and x13 and not x23 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( x64 and x40 and not x13 and x28 and x35 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( x64 and x40 and not x13 and x28 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and x40 and not x13 and x28 and not x35 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and x40 and not x13 and x28 and not x35 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and x40 and not x13 and not x28 and x6 and x35 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s255;

      elsif ( x64 and x40 and not x13 and not x28 and x6 and not x35 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and x40 and not x13 and not x28 and x6 and not x35 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and x40 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and x40 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x64 and not x40 and x11 and x10 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( x64 and not x40 and x11 and not x10 and x1 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s204;

      elsif ( x64 and not x40 and x11 and not x10 and not x1 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x64 and not x40 and x11 and not x10 and not x1 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( x64 and not x40 and not x11 and x10 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and not x40 and not x11 and not x10 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x64 and not x40 and not x11 and not x10 and not x5 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( not x64 and x44 and x13 and x23 and x51 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      elsif ( not x64 and x44 and x13 and x23 and not x51 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x64 and x44 and x13 and not x23 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      elsif ( not x64 and x44 and not x13 and x28 and x35 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      elsif ( not x64 and x44 and not x13 and x28 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and x44 and not x13 and x28 and not x35 and x45 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and x44 and not x13 and x28 and not x35 and not x45 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and x44 and not x13 and not x28 and x6 and x35 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s255;

      elsif ( not x64 and x44 and not x13 and not x28 and x6 and not x35 and x45 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and x44 and not x13 and not x28 and x6 and not x35 and not x45 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and x44 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and x44 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x64 and not x44 and x10 and x11 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x64 and not x44 and x10 and not x11 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and not x44 and not x10 and x11 and x37 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y22 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s209;

      elsif ( not x64 and not x44 and not x10 and x11 and not x37 and x41 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x64 and not x44 and not x10 and x11 and not x37 and not x41 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x64 and not x44 and not x10 and not x11 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      else
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      end if;

   when s182 =>
      if ( x61 and x12 and x27 and x33 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s194;

      elsif ( x61 and x12 and x27 and not x33 and x13 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( x61 and x12 and x27 and not x33 and not x13 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x61 and x12 and not x27 and x29 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s187;

      elsif ( x61 and x12 and not x27 and x29 and not x1 and x9 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( x61 and x12 and not x27 and x29 and not x1 and x9 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s193;

      elsif ( x61 and x12 and not x27 and x29 and not x1 and not x9 ) = '1' then
         current_zoom <= s182;

      elsif ( x61 and x12 and not x27 and not x29 ) = '1' then
         current_zoom <= s182;

      elsif ( x61 and not x12 and x29 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s83;

      elsif ( x61 and not x12 and not x29 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s171;

      elsif ( not x61 and x17 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s110;

      elsif ( not x61 and not x17 and x57 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      else
         current_zoom <= s182;

      end if;

   when s183 =>
      if ( x62 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( x62 and not x2 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s193;

      elsif ( not x62 and x64 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x62 and x64 and not x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      elsif ( not x62 and not x64 and x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s113;

      end if;

   when s184 =>
      if ( x61 and x24 and x26 and x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s186;

      elsif ( x61 and x24 and x26 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s111;

      elsif ( x61 and x24 and not x26 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s193;

      elsif ( x61 and not x24 and x28 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s182;

      elsif ( x61 and not x24 and not x28 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( not x61 and x31 and x19 and x10 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( not x61 and x31 and x19 and not x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s193;

      elsif ( not x61 and x31 and not x19 ) = '1' then
         current_zoom <= s184;

      else
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s193;

      end if;

   when s185 =>
      if ( x61 and x11 and x25 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x61 and x11 and x25 and not x3 and x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( x61 and x11 and x25 and not x3 and not x5 ) = '1' then
         current_zoom <= s185;

      elsif ( x61 and x11 and not x25 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x61 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( not x61 and x53 and x47 ) = '1' then
         current_zoom <= s185;

      elsif ( not x61 and x53 and not x47 and x59 and x51 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( not x61 and x53 and not x47 and x59 and not x51 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( not x61 and x53 and not x47 and not x59 and x34 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( not x61 and x53 and not x47 and not x59 and not x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      end if;

   when s186 =>
      if ( x61 and x7 and x35 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s86;

      elsif ( x61 and x7 and x35 and not x1 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x61 and x7 and not x35 and x1 ) = '1' then
         current_zoom <= s186;

      elsif ( x61 and x7 and not x35 and not x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x61 and not x7 ) = '1' then
         current_zoom <= s186;

      elsif ( not x61 and x3 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s194;

      elsif ( not x61 and not x3 and x2 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s171;

      elsif ( not x61 and not x3 and not x2 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      else
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      end if;

   when s187 =>
      if ( x61 and x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s173;

      elsif ( x61 and not x5 and x34 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s84;

      elsif ( x61 and not x5 and not x34 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s194;

      elsif ( not x61 and x35 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( not x61 and not x35 and x13 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s182;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s83;

      end if;

   when s188 =>
      if ( x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      else
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s112;

      end if;

   when s189 =>
      if ( x63 and x55 and x11 and x25 and x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x63 and x55 and x11 and x25 and not x34 and x36 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and x55 and x11 and x25 and not x34 and not x36 ) = '1' then
         current_zoom <= s189;

      elsif ( x63 and x55 and x11 and not x25 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( x63 and x55 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x63 and not x55 and x53 and x47 ) = '1' then
         current_zoom <= s189;

      elsif ( x63 and not x55 and x53 and not x47 and x59 and x51 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x63 and not x55 and x53 and not x47 and x59 and not x51 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x55 and x53 and not x47 and not x59 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x63 and not x55 and x53 and not x47 and not x59 and not x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( x63 and not x55 and not x53 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      elsif ( not x63 and x64 and x40 and x11 and x25 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and x64 and x40 and x11 and x25 and not x3 and x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and x64 and x40 and x11 and x25 and not x3 and not x5 ) = '1' then
         current_zoom <= s189;

      elsif ( not x63 and x64 and x40 and x11 and not x25 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s94;

      elsif ( not x63 and x64 and x40 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and x64 and not x40 and x48 and x42 and x51 and x47 ) = '1' then
         current_zoom <= s189;

      elsif ( not x63 and x64 and not x40 and x48 and x42 and x51 and not x47 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and x64 and not x40 and x48 and x42 and not x51 and x47 ) = '1' then
         current_zoom <= s189;

      elsif ( not x63 and x64 and not x40 and x48 and x42 and not x51 and not x47 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and x64 and not x40 and x48 and not x42 and x47 ) = '1' then
         current_zoom <= s189;

      elsif ( not x63 and x64 and not x40 and x48 and not x42 and not x47 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and x64 and not x40 and x48 and not x42 and not x47 and not x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and x64 and not x40 and not x48 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s15;

      elsif ( not x63 and not x64 and x44 and x11 and x25 and x42 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      elsif ( not x63 and not x64 and x44 and x11 and x25 and not x42 and x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and not x64 and x44 and x11 and x25 and not x42 and not x5 ) = '1' then
         current_zoom <= s189;

      elsif ( not x63 and not x64 and x44 and x11 and not x25 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s102;

      elsif ( not x63 and not x64 and x44 and not x11 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      elsif ( not x63 and not x64 and not x44 and x53 and x47 ) = '1' then
         current_zoom <= s189;

      elsif ( not x63 and not x64 and not x44 and x53 and not x47 and x48 and x51 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      elsif ( not x63 and not x64 and not x44 and x53 and not x47 and x48 and not x51 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and not x64 and not x44 and x53 and not x47 and not x48 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x63 and not x64 and not x44 and x53 and not x47 and not x48 and not x34 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      else
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      end if;

   when s190 =>
      if ( x44 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( x44 and not x5 and x34 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s89;

      elsif ( x44 and not x5 and not x34 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s79;

      elsif ( not x44 and x35 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s80;

      elsif ( not x44 and not x35 and x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s104;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s76;

      end if;

   when s191 =>
      if ( x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s256;

      elsif ( not x15 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s256;

      end if;

   when s192 =>
      if ( x2 and x63 and x46 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s258;

      elsif ( x2 and x63 and not x46 and x34 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s259;

      elsif ( x2 and x63 and not x46 and not x34 and x35 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s260;

      elsif ( x2 and x63 and not x46 and not x34 and not x35 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s195;

      elsif ( x2 and not x63 and x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s256;

      elsif ( x2 and not x63 and not x15 and x3 and x64 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s261;

      elsif ( x2 and not x63 and not x15 and x3 and not x64 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s262;

      elsif ( x2 and not x63 and not x15 and not x3 and x4 and x64 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s260;

      elsif ( x2 and not x63 and not x15 and not x3 and x4 and not x64 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s263;

      elsif ( x2 and not x63 and not x15 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s191;

      elsif ( not x2 and x63 and x46 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s258;

      elsif ( not x2 and x63 and not x46 ) = '1' then
         current_zoom <= s192;

      elsif ( not x2 and not x63 and x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s256;

      else
         current_zoom <= s192;

      end if;

   when s193 =>
      if ( x61 and x25 and x22 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x61 and x25 and not x22 and x6 and x8 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s194;

      elsif ( x61 and x25 and not x22 and x6 and not x8 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x61 and x25 and not x22 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      elsif ( x61 and not x25 and x29 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s183;

      elsif ( x61 and not x25 and not x29 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s187;

      elsif ( not x61 and x38 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s85;

      elsif ( not x61 and not x38 and x50 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s98;

      else
         y2 <= '1' ;
         current_zoom <= s84;

      end if;

   when s194 =>
      if ( x61 and x22 and x2 and x33 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s194;

      elsif ( x61 and x22 and x2 and not x33 and x13 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( x61 and x22 and x2 and not x33 and not x13 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s184;

      elsif ( x61 and x22 and not x2 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x61 and not x22 and x31 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( x61 and not x22 and not x31 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s170;

      elsif ( not x61 and x46 and x3 and x23 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s187;

      elsif ( not x61 and x46 and x3 and not x23 ) = '1' then
         current_zoom <= s194;

      elsif ( not x61 and x46 and not x3 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      elsif ( not x61 and not x46 and x2 and x23 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s187;

      elsif ( not x61 and not x46 and x2 and not x23 ) = '1' then
         current_zoom <= s194;

      else
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s172;

      end if;

   when s195 =>
      if ( x15 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s258;

      elsif ( not x15 and x36 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s258;

      end if;

   when s196 =>
      if ( x16 and x15 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( x16 and not x15 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( x16 and not x15 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s155;

      elsif ( not x16 and x15 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s130;

      elsif ( not x16 and x15 and not x11 and x10 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s140;

      elsif ( not x16 and x15 and not x11 and not x10 ) = '1' then
         current_zoom <= s196;

      else
         y11 <= '1' ;
         current_zoom <= s132;

      end if;

   when s197 =>
      if ( x9 ) = '1' then
         y16 <= '1' ;
         current_zoom <= s198;

      elsif ( not x9 and x7 ) = '1' then
         current_zoom <= s1;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s1;

      end if;

   when s198 =>
      if ( x7 ) = '1' then
         current_zoom <= s1;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s1;

      end if;

   when s199 =>
      if ( x63 and x46 ) = '1' then
         y19 <= '1' ;
         current_zoom <= s264;

      elsif ( x63 and not x46 and x43 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s238;

      elsif ( x63 and not x46 and not x43 ) = '1' then
         current_zoom <= s199;

      elsif ( not x63 and x64 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s259;

      else
         y19 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s265;

      end if;

   when s200 =>
      if ( x62 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s20;

      elsif ( not x62 and x64 and x40 and x50 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s201;

      elsif ( not x62 and x64 and x40 and not x50 ) = '1' then
         current_zoom <= s200;

      elsif ( not x62 and x64 and not x40 and x11 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s266;

      elsif ( not x62 and x64 and not x40 and not x11 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s266;

      elsif ( not x62 and x64 and not x40 and not x11 and not x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x62 and not x64 and x44 and x50 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s207;

      elsif ( not x62 and not x64 and x44 and not x50 ) = '1' then
         current_zoom <= s200;

      elsif ( not x62 and not x64 and not x44 and x11 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s266;

      elsif ( not x62 and not x64 and not x44 and not x11 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s266;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      end if;

   when s201 =>
      if ( x40 and x17 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s206;

      elsif ( x40 and not x17 and x43 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x40 and not x17 and not x43 ) = '1' then
         current_zoom <= s201;

      elsif ( not x40 and x6 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s206;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s201;

      end if;

   when s202 =>
      if ( x64 and x40 and x16 and x45 and x29 and x42 and x27 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s266;

      elsif ( x64 and x40 and x16 and x45 and x29 and x42 and not x27 ) = '1' then
         current_zoom <= s202;

      elsif ( x64 and x40 and x16 and x45 and x29 and not x42 and x27 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x64 and x40 and x16 and x45 and x29 and not x42 and not x27 ) = '1' then
         current_zoom <= s202;

      elsif ( x64 and x40 and x16 and x45 and not x29 and x33 and x27 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x64 and x40 and x16 and x45 and not x29 and x33 and not x27 ) = '1' then
         current_zoom <= s202;

      elsif ( x64 and x40 and x16 and x45 and not x29 and not x33 and x43 and x27 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( x64 and x40 and x16 and x45 and not x29 and not x33 and x43 and not x27 ) = '1' then
         current_zoom <= s202;

      elsif ( x64 and x40 and x16 and x45 and not x29 and not x33 and not x43 and x27 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x64 and x40 and x16 and x45 and not x29 and not x33 and not x43 and not x27 ) = '1' then
         current_zoom <= s202;

      elsif ( x64 and x40 and x16 and not x45 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and x40 and not x16 and x37 and x44 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x64 and x40 and not x16 and x37 and x44 and not x1 ) = '1' then
         current_zoom <= s202;

      elsif ( x64 and x40 and not x16 and x37 and not x44 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and x40 and not x16 and not x37 and x25 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and x40 and not x16 and not x37 and not x25 and x5 and x4 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s206;

      elsif ( x64 and x40 and not x16 and not x37 and not x25 and x5 and not x4 ) = '1' then
         current_zoom <= s202;

      elsif ( x64 and x40 and not x16 and not x37 and not x25 and not x5 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x64 and x40 and not x16 and not x37 and not x25 and not x5 and not x4 ) = '1' then
         current_zoom <= s202;

      elsif ( x64 and not x40 and x10 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x64 and not x40 and x10 and not x11 and x12 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x64 and not x40 and x10 and not x11 and x12 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and not x40 and x10 and not x11 and not x12 and x1 and x3 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( x64 and not x40 and x10 and not x11 and not x12 and x1 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x64 and not x40 and x10 and not x11 and not x12 and x1 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x64 and not x40 and x10 and not x11 and not x12 and not x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x64 and not x40 and not x10 and x12 and x2 and x4 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x64 and not x40 and not x10 and x12 and x2 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x64 and not x40 and not x10 and x12 and not x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x64 and not x40 and not x10 and not x12 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s200;

      elsif ( x64 and not x40 and not x10 and not x12 and not x9 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x64 and not x40 and not x10 and not x12 and not x9 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and x44 and x16 and x54 and x29 and x48 and x27 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s266;

      elsif ( not x64 and x44 and x16 and x54 and x29 and x48 and not x27 ) = '1' then
         current_zoom <= s202;

      elsif ( not x64 and x44 and x16 and x54 and x29 and not x48 and x27 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x64 and x44 and x16 and x54 and x29 and not x48 and not x27 ) = '1' then
         current_zoom <= s202;

      elsif ( not x64 and x44 and x16 and x54 and not x29 and x33 and x27 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x64 and x44 and x16 and x54 and not x29 and x33 and not x27 ) = '1' then
         current_zoom <= s202;

      elsif ( not x64 and x44 and x16 and x54 and not x29 and not x33 and x49 and x27 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x64 and x44 and x16 and x54 and not x29 and not x33 and x49 and not x27 ) = '1' then
         current_zoom <= s202;

      elsif ( not x64 and x44 and x16 and x54 and not x29 and not x33 and not x49 and x27 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x64 and x44 and x16 and x54 and not x29 and not x33 and not x49 and not x27 ) = '1' then
         current_zoom <= s202;

      elsif ( not x64 and x44 and x16 and not x54 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and x44 and not x16 and x36 and x55 and x37 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x64 and x44 and not x16 and x36 and x55 and not x37 ) = '1' then
         current_zoom <= s202;

      elsif ( not x64 and x44 and not x16 and x36 and not x55 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and x44 and not x16 and not x36 and x25 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and x44 and not x16 and not x36 and not x25 and x5 and x4 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s206;

      elsif ( not x64 and x44 and not x16 and not x36 and not x25 and x5 and not x4 ) = '1' then
         current_zoom <= s202;

      elsif ( not x64 and x44 and not x16 and not x36 and not x25 and not x5 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x64 and x44 and not x16 and not x36 and not x25 and not x5 and not x4 ) = '1' then
         current_zoom <= s202;

      elsif ( not x64 and not x44 and x10 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x64 and not x44 and x10 and not x11 and x12 and x34 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x64 and not x44 and x10 and not x11 and x12 and not x34 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and not x44 and x10 and not x11 and not x12 and x37 and x41 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( not x64 and not x44 and x10 and not x11 and not x12 and x37 and not x41 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x64 and not x44 and x10 and not x11 and not x12 and x37 and not x41 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      elsif ( not x64 and not x44 and x10 and not x11 and not x12 and not x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x64 and not x44 and not x10 and x12 and x2 and x4 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x64 and not x44 and not x10 and x12 and x2 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      elsif ( not x64 and not x44 and not x10 and x12 and not x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x64 and not x44 and not x10 and not x12 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s200;

      elsif ( not x64 and not x44 and not x10 and not x12 and not x9 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      end if;

   when s203 =>
      if ( x28 and x64 and x43 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x28 and x64 and not x43 ) = '1' then
         current_zoom <= s203;

      elsif ( x28 and not x64 and x49 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x28 and not x64 and not x49 ) = '1' then
         current_zoom <= s203;

      elsif ( not x28 and x27 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x28 and x27 and not x8 and x37 and x64 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x28 and x27 and not x8 and x37 and not x64 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x28 and x27 and not x8 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      else
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      end if;

   when s204 =>
      if ( x8 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s128;

      elsif ( x8 and not x1 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s200;

      elsif ( x8 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      else
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      end if;

   when s205 =>
      if ( x64 and x40 and x8 and x48 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( x64 and x40 and x8 and not x48 and x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and x40 and x8 and not x48 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( x64 and x40 and not x8 and x51 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( x64 and x40 and not x8 and not x51 and x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and x40 and not x8 and not x51 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( x64 and not x40 and x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x64 and not x40 and not x10 and x11 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( x64 and not x40 and not x10 and not x11 and x12 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( x64 and not x40 and not x10 and not x11 and x12 and not x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s201;

      elsif ( x64 and not x40 and not x10 and not x11 and not x12 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s215;

      elsif ( not x64 and x44 and x8 and x53 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( not x64 and x44 and x8 and not x53 and x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and x44 and x8 and not x53 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( not x64 and x44 and not x8 and x51 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( not x64 and x44 and not x8 and not x51 and x37 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and x44 and not x8 and not x51 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( not x64 and not x44 and x10 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      elsif ( not x64 and not x44 and not x10 and x11 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( not x64 and not x44 and not x10 and not x11 and x12 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      elsif ( not x64 and not x44 and not x10 and not x11 and x12 and not x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s207;

      else
         y17 <= '1' ;
         y21 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s268;

      end if;

   when s206 =>
      if ( x64 and x40 and x46 and x3 and x23 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( x64 and x40 and x46 and x3 and not x23 ) = '1' then
         current_zoom <= s206;

      elsif ( x64 and x40 and x46 and not x3 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and x40 and not x46 and x2 and x23 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( x64 and x40 and not x46 and x2 and not x23 ) = '1' then
         current_zoom <= s206;

      elsif ( x64 and x40 and not x46 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and not x40 and x10 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and not x40 and not x10 and x11 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( x64 and not x40 and not x10 and x11 and not x5 and x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x64 and not x40 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x64 and not x40 and not x10 and not x11 and x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x64 and not x40 and not x10 and not x11 and not x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x64 and x44 and x46 and x42 and x23 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( not x64 and x44 and x46 and x42 and not x23 ) = '1' then
         current_zoom <= s206;

      elsif ( not x64 and x44 and x46 and not x42 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and x44 and not x46 and x34 and x23 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( not x64 and x44 and not x46 and x34 and not x23 ) = '1' then
         current_zoom <= s206;

      elsif ( not x64 and x44 and not x46 and not x34 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and not x44 and x10 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x64 and not x44 and not x10 and x11 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( not x64 and not x44 and not x10 and x11 and not x5 and x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x64 and not x44 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x64 and not x44 and not x10 and not x11 and x36 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      end if;

   when s207 =>
      if ( x44 and x17 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s206;

      elsif ( x44 and not x17 and x49 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x44 and not x17 and not x49 ) = '1' then
         current_zoom <= s207;

      elsif ( not x44 and x6 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s206;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s207;

      end if;

   when s208 =>
      if ( x10 and x44 and x12 and x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_zoom <= s14;

      elsif ( x10 and x44 and x12 and not x23 and x4 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      elsif ( x10 and x44 and x12 and not x23 and not x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( x10 and x44 and not x12 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s104;

      elsif ( x10 and not x44 and x39 and x46 and x51 and x36 ) = '1' then
         current_zoom <= s208;

      elsif ( x10 and not x44 and x39 and x46 and x51 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( x10 and not x44 and x39 and x46 and not x51 and x36 ) = '1' then
         current_zoom <= s208;

      elsif ( x10 and not x44 and x39 and x46 and not x51 and not x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( x10 and not x44 and x39 and not x46 and x36 ) = '1' then
         current_zoom <= s208;

      elsif ( x10 and not x44 and x39 and not x46 and not x36 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( x10 and not x44 and not x39 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s190;

      elsif ( not x10 and x44 and x37 and x22 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s183;

      elsif ( not x10 and x44 and x37 and not x22 and x2 and x11 and x42 ) = '1' then
         current_zoom <= s208;

      elsif ( not x10 and x44 and x37 and not x22 and x2 and x11 and not x42 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      elsif ( not x10 and x44 and x37 and not x22 and x2 and x11 and not x42 and not x5 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s102;

      elsif ( not x10 and x44 and x37 and not x22 and x2 and not x11 and x42 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x10 and x44 and x37 and not x22 and x2 and not x11 and not x42 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      elsif ( not x10 and x44 and x37 and not x22 and not x2 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( not x10 and x44 and not x37 and x11 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x10 and x44 and not x37 and x11 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x10 and x44 and not x37 and not x11 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x10 and not x44 and x11 and x34 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x10 and not x44 and x11 and x34 and not x8 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x10 and not x44 and x11 and x34 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x10 and not x44 and x11 and not x34 and x32 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s90;

      elsif ( not x10 and not x44 and x11 and not x34 and x32 and not x7 and x54 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s18;

      elsif ( not x10 and not x44 and x11 and not x34 and x32 and not x7 and x54 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x10 and not x44 and x11 and not x34 and x32 and not x7 and not x54 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( not x10 and not x44 and x11 and not x34 and not x32 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s102;

      elsif ( not x10 and not x44 and not x11 and x12 and x20 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      elsif ( not x10 and not x44 and not x11 and x12 and not x20 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s16;

      elsif ( not x10 and not x44 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s103;

      elsif ( not x10 and not x44 and not x11 and not x12 and x13 and x36 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s104;

      elsif ( not x10 and not x44 and not x11 and not x12 and x13 and x36 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x10 and not x44 and not x11 and not x12 and x13 and x36 and not x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s77;

      elsif ( not x10 and not x44 and not x11 and not x12 and x13 and not x36 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s189;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s19;

      end if;

   when s209 =>
      if ( x8 and x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s128;

      elsif ( x8 and not x37 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s200;

      elsif ( x8 and not x37 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      else
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      end if;

   when s210 =>
      if ( x63 and x55 and x35 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and x55 and not x35 and x13 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s215;

      elsif ( x63 and x55 and not x35 and not x13 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s141;

      elsif ( x63 and not x55 and x41 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x63 and not x55 and not x41 and x42 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s215;

      elsif ( x63 and not x55 and not x41 and not x42 and x38 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x63 and not x55 and not x41 and not x42 and not x38 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      else
         y11 <= '1' ;
         current_zoom <= s132;

      end if;

   when s211 =>
      if ( x63 and x55 and x50 and x41 and x19 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x63 and x55 and x50 and x41 and not x19 ) = '1' then
         current_zoom <= s211;

      elsif ( x63 and x55 and x50 and not x41 and x19 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x63 and x55 and x50 and not x41 and not x19 ) = '1' then
         current_zoom <= s211;

      elsif ( x63 and x55 and not x50 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x63 and not x55 and x10 and x11 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and not x55 and x10 and not x11 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x63 and not x55 and not x10 and x42 and x38 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      elsif ( x63 and not x55 and not x10 and x42 and not x38 ) = '1' then
         y8 <= '1' ;
         current_zoom <= s269;

      elsif ( x63 and not x55 and not x10 and not x42 and x12 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s215;

      elsif ( x63 and not x55 and not x10 and not x42 and not x12 and x1 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s217;

      elsif ( x63 and not x55 and not x10 and not x42 and not x12 and not x1 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x63 and not x55 and not x10 and not x42 and not x12 and not x1 and not x35 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x63 and x40 and x50 and x19 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x63 and x40 and x50 and x19 and not x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( not x63 and x40 and x50 and not x19 ) = '1' then
         current_zoom <= s211;

      elsif ( not x63 and x40 and not x50 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x63 and not x40 and x11 and x10 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x63 and not x40 and x11 and not x10 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( not x63 and not x40 and x11 and not x10 and not x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s201;

      elsif ( not x63 and not x40 and not x11 and x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( not x63 and not x40 and not x11 and not x10 and x12 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( not x63 and not x40 and not x11 and not x10 and not x12 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s128;

      elsif ( not x63 and not x40 and not x11 and not x10 and not x12 and not x1 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      end if;

   when s212 =>
      if ( x62 and x14 and x13 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s265;

      elsif ( x62 and x14 and not x13 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s270;

      elsif ( x62 and not x14 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s271;

      elsif ( not x62 and x28 and x57 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x62 and x28 and not x57 ) = '1' then
         current_zoom <= s212;

      elsif ( not x62 and not x28 and x27 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x62 and not x28 and x27 and not x8 and x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x62 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      end if;

   when s213 =>
      if ( x50 and x63 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( x50 and not x63 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      else
         current_zoom <= s213;

      end if;

   when s214 =>
      if ( x55 and x47 and x54 and x29 and x59 and x27 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s272;

      elsif ( x55 and x47 and x54 and x29 and x59 and not x27 ) = '1' then
         current_zoom <= s214;

      elsif ( x55 and x47 and x54 and x29 and not x59 and x27 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x55 and x47 and x54 and x29 and not x59 and not x27 ) = '1' then
         current_zoom <= s214;

      elsif ( x55 and x47 and x54 and not x29 and x33 and x27 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x55 and x47 and x54 and not x29 and x33 and not x27 ) = '1' then
         current_zoom <= s214;

      elsif ( x55 and x47 and x54 and not x29 and not x33 and x57 and x27 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( x55 and x47 and x54 and not x29 and not x33 and x57 and not x27 ) = '1' then
         current_zoom <= s214;

      elsif ( x55 and x47 and x54 and not x29 and not x33 and not x57 and x27 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x55 and x47 and x54 and not x29 and not x33 and not x57 and not x27 ) = '1' then
         current_zoom <= s214;

      elsif ( x55 and x47 and not x54 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x55 and not x47 and x37 and x56 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x55 and not x47 and x37 and x56 and not x1 ) = '1' then
         current_zoom <= s214;

      elsif ( x55 and not x47 and x37 and not x56 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x55 and not x47 and not x37 and x25 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x55 and not x47 and not x37 and not x25 and x36 and x35 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s141;

      elsif ( x55 and not x47 and not x37 and not x25 and x36 and not x35 ) = '1' then
         current_zoom <= s214;

      elsif ( x55 and not x47 and not x37 and not x25 and not x36 and x35 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x55 and not x47 and not x37 and not x25 and not x36 and not x35 ) = '1' then
         current_zoom <= s214;

      elsif ( not x55 and x41 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x55 and x41 and not x11 and x12 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x55 and x41 and not x11 and x12 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x55 and x41 and not x11 and not x12 and x32 and x3 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s212;

      elsif ( not x55 and x41 and not x11 and not x12 and x32 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x55 and x41 and not x11 and not x12 and x32 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( not x55 and x41 and not x11 and not x12 and not x32 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x55 and not x41 and x43 and x33 and x35 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x55 and not x41 and x43 and x33 and not x35 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( not x55 and not x41 and x43 and not x33 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x55 and not x41 and not x43 and x40 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s273;

      elsif ( not x55 and not x41 and not x43 and not x40 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      end if;

   when s215 =>
      if ( x63 and x55 and x8 and x53 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      elsif ( x63 and x55 and x8 and not x53 and x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and x55 and x8 and not x53 and not x37 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      elsif ( x63 and x55 and not x8 and x51 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      elsif ( x63 and x55 and not x8 and not x51 and x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and x55 and not x8 and not x51 and not x37 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      elsif ( x63 and not x55 and x41 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x63 and not x55 and not x41 and x42 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s215;

      elsif ( x63 and not x55 and not x41 and not x42 and x43 and x39 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      elsif ( x63 and not x55 and not x41 and not x42 and x43 and not x39 ) = '1' then
         y8 <= '1' ;
         current_zoom <= s269;

      elsif ( x63 and not x55 and not x41 and not x42 and not x43 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s274;

      elsif ( not x63 and x40 and x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x63 and x40 and not x37 and x9 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x63 and x40 and not x37 and not x9 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( not x63 and not x40 and x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x63 and not x40 and not x10 and x11 and x1 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s204;

      elsif ( not x63 and not x40 and not x10 and x11 and not x1 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x63 and not x40 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      end if;

   when s216 =>
      if ( x7 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s217;

      else
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      end if;

   when s217 =>
      if ( x55 and x29 and x50 ) = '1' then
         y8 <= '1' ;
         current_zoom <= s269;

      elsif ( x55 and x29 and not x50 ) = '1' then
         current_zoom <= s217;

      elsif ( x55 and not x29 and x58 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x55 and not x29 and not x58 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( not x55 and x11 and x6 and x40 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s212;

      elsif ( not x55 and x11 and x6 and not x40 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s254;

      elsif ( not x55 and x11 and not x6 ) = '1' then
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s215;

      elsif ( not x55 and not x11 and x39 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      else
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s141;

      end if;

   when s218 =>
      if ( x40 and x35 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x40 and not x35 and x13 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( x40 and not x35 and not x13 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s206;

      elsif ( not x40 and x10 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x40 and not x10 and x11 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( not x40 and not x10 and not x11 and x7 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      end if;

   when s219 =>
      if ( x7 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s128;

      elsif ( not x7 and x64 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      else
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      end if;

   when s220 =>
      if ( x44 and x35 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( x44 and not x35 and x13 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( x44 and not x35 and not x13 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s206;

      elsif ( not x44 and x10 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x44 and not x10 and x11 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( not x44 and not x10 and not x11 and x7 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      end if;

   when s221 =>
      if ( x44 and x50 and x19 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x44 and x50 and x19 and not x10 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      elsif ( x44 and x50 and not x19 ) = '1' then
         current_zoom <= s221;

      elsif ( x44 and not x50 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x44 and x11 and x10 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x44 and x11 and not x10 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      elsif ( not x44 and x11 and not x10 and not x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s207;

      elsif ( not x44 and not x11 and x10 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      elsif ( not x44 and not x11 and not x10 and x12 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s205;

      elsif ( not x44 and not x11 and not x10 and not x12 and x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s128;

      elsif ( not x44 and not x11 and not x10 and not x12 and not x37 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      else
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      end if;

   when s222 =>
      if ( x44 and x53 and x47 ) = '1' then
         current_zoom <= s222;

      elsif ( x44 and x53 and not x47 and x48 and x51 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( x44 and x53 and not x47 and x48 and not x51 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x44 and x53 and not x47 and not x48 and x34 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x44 and x53 and not x47 and not x48 and not x34 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( x44 and not x53 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x44 and x11 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x44 and not x11 and x1 and x34 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x44 and not x11 and x1 and not x34 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x44 and not x11 and x1 and not x34 and not x3 ) = '1' then
         current_zoom <= s222;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      end if;

   when s223 =>
         y11 <= '1' ;
         current_zoom <= s132;

   when s224 =>
      if ( x10 and x6 and x7 and x33 and x3 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s212;

      elsif ( x10 and x6 and x7 and x33 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x10 and x6 and x7 and x33 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x10 and x6 and x7 and not x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x10 and x6 and not x7 and x39 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      elsif ( x10 and x6 and not x7 and not x39 and x33 and x3 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s212;

      elsif ( x10 and x6 and not x7 and not x39 and x33 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x10 and x6 and not x7 and not x39 and x33 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x10 and x6 and not x7 and not x39 and not x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( x10 and not x6 and x2 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      elsif ( x10 and not x6 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x10 and x11 and x5 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      elsif ( not x10 and x11 and not x5 and x37 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( not x10 and x11 and not x5 and not x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      end if;

   when s225 =>
      if ( x26 and x28 and x62 and x3 and x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s246;

      elsif ( x26 and x28 and x62 and x3 and not x5 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      elsif ( x26 and x28 and x62 and not x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s229;

      elsif ( x26 and x28 and not x62 and x3 and x63 and x5 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s251;

      elsif ( x26 and x28 and not x62 and x3 and x63 and not x5 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      elsif ( x26 and x28 and not x62 and x3 and not x63 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s146;

      elsif ( x26 and x28 and not x62 and x3 and not x63 and not x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( x26 and x28 and not x62 and not x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( x26 and not x28 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( not x26 and x27 and x62 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( not x26 and x27 and not x62 and x63 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( not x26 and x27 and not x62 and not x63 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x26 and not x27 and x28 and x62 and x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      elsif ( not x26 and not x27 and x28 and x62 and not x5 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      elsif ( not x26 and not x27 and x28 and not x62 and x63 and x36 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( not x26 and not x27 and x28 and not x62 and x63 and not x36 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      elsif ( not x26 and not x27 and x28 and not x62 and not x63 and x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( not x26 and not x27 and x28 and not x62 and not x63 and not x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x26 and not x27 and not x28 and x62 and x5 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s247;

      elsif ( not x26 and not x27 and not x28 and x62 and x5 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s248;

      elsif ( not x26 and not x27 and not x28 and x62 and x5 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      elsif ( not x26 and not x27 and not x28 and x62 and not x5 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( not x26 and not x27 and not x28 and not x62 and x63 and x36 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s148;

      elsif ( not x26 and not x27 and not x28 and not x62 and x63 and x36 and not x3 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s175;

      elsif ( not x26 and not x27 and not x28 and not x62 and x63 and x36 and not x3 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      elsif ( not x26 and not x27 and not x28 and not x62 and x63 and not x36 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( not x26 and not x27 and not x28 and not x62 and not x63 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s148;

      elsif ( not x26 and not x27 and not x28 and not x62 and not x63 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s150;

      elsif ( not x26 and not x27 and not x28 and not x62 and not x63 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      else
         y1 <= '1' ;
         current_zoom <= s142;

      end if;

   when s226 =>
      if ( x26 and x21 ) = '1' then
         current_zoom <= s1;

      elsif ( x26 and not x21 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s229;

      elsif ( not x26 and x27 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x27 and x28 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( not x26 and not x27 and x28 and not x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s247;

      elsif ( not x26 and not x27 and not x28 and x19 and x24 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s275;

      elsif ( not x26 and not x27 and not x28 and x19 and not x24 ) = '1' then
         current_zoom <= s1;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s246;

      end if;

   when s227 =>
      if ( x26 and x21 ) = '1' then
         current_zoom <= s1;

      elsif ( x26 and not x21 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( not x26 and x27 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x27 and x28 and x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( not x26 and not x27 and x28 and not x34 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s148;

      elsif ( not x26 and not x27 and not x28 and x19 and x24 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s237;

      elsif ( not x26 and not x27 and not x28 and x19 and not x24 ) = '1' then
         current_zoom <= s1;

      else
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s251;

      end if;

   when s228 =>
      if ( x26 and x28 and x9 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x26 and x28 and not x9 and x23 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x26 and x28 and not x9 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( x26 and not x28 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( not x26 and x27 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( not x26 and x27 and not x35 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x27 and x28 and x2 and x24 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s251;

      elsif ( not x26 and not x27 and x28 and x2 and not x24 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      elsif ( not x26 and not x27 and x28 and not x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( not x26 and not x27 and not x28 and x49 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s148;

      elsif ( not x26 and not x27 and not x28 and x49 and not x3 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s175;

      elsif ( not x26 and not x27 and not x28 and x49 and not x3 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      end if;

   when s229 =>
      if ( x28 and x26 and x6 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x28 and x26 and not x6 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      elsif ( x28 and x26 and not x6 and not x4 ) = '1' then
         current_zoom <= s1;

      elsif ( x28 and not x26 and x27 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      elsif ( x28 and not x26 and not x27 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s276;

      elsif ( not x28 and x26 ) = '1' then
         current_zoom <= s1;

      else
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      end if;

   when s230 =>
      if ( x26 and x28 and x3 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_zoom <= s146;

      elsif ( x26 and x28 and x3 and not x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( x26 and x28 and not x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( x26 and not x28 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s143;

      elsif ( not x26 and x27 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x26 and not x27 and x28 and x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( not x26 and not x27 and x28 and not x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x26 and not x27 and not x28 and x5 and x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s149;

      elsif ( not x26 and not x27 and not x28 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s151;

      elsif ( not x26 and not x27 and not x28 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s143;

      end if;

   when s231 =>
      if ( x8 and x63 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( x8 and not x63 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x8 and x63 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s277;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      end if;

   when s232 =>
      if ( x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s277;

      end if;

   when s233 =>
      if ( x37 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s277;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s62;

      end if;

   when s234 =>
      if ( x64 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s52;

      elsif ( x64 and not x6 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s62;

      elsif ( not x64 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s277;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s58;

      end if;

   when s235 =>
      if ( x63 and x26 and x28 and x9 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x63 and x26 and x28 and not x9 and x23 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x63 and x26 and x28 and not x9 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( x63 and x26 and not x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x63 and not x26 and x27 and x1 and x33 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x63 and not x26 and x27 and x1 and not x33 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x63 and not x26 and x27 and x1 and not x33 and not x34 ) = '1' then
         current_zoom <= s235;

      elsif ( x63 and not x26 and x27 and not x1 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x63 and not x26 and not x27 and x1 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s148;

      elsif ( x63 and not x26 and not x27 and x1 and x5 and not x3 and x4 ) = '1' then
         y19 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s175;

      elsif ( x63 and not x26 and not x27 and x1 and x5 and not x3 and not x4 ) = '1' then
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      elsif ( x63 and not x26 and not x27 and x1 and not x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( x63 and not x26 and not x27 and not x1 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x63 and not x26 and not x27 and not x1 and not x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( not x63 and x26 and x28 and x9 and x64 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( not x63 and x26 and x28 and x9 and not x64 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s143;

      elsif ( not x63 and x26 and x28 and not x9 and x23 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( not x63 and x26 and x28 and not x9 and not x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x63 and x26 and not x28 and x64 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( not x63 and x26 and not x28 and not x64 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s230;

      elsif ( not x63 and not x26 and x27 and x64 and x1 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( not x63 and not x26 and x27 and x64 and x1 and not x2 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( not x63 and not x26 and x27 and x64 and x1 and not x2 and not x3 ) = '1' then
         current_zoom <= s235;

      elsif ( not x63 and not x26 and x27 and x64 and not x1 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( not x63 and not x26 and x27 and not x64 and x36 and x32 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s230;

      elsif ( not x63 and not x26 and x27 and not x64 and x36 and not x32 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( not x63 and not x26 and x27 and not x64 and x36 and not x32 and not x3 ) = '1' then
         current_zoom <= s235;

      elsif ( not x63 and not x26 and x27 and not x64 and not x36 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s143;

      elsif ( not x63 and not x26 and not x27 and x64 and x1 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s148;

      elsif ( not x63 and not x26 and not x27 and x64 and x1 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s150;

      elsif ( not x63 and not x26 and not x27 and x64 and x1 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x63 and not x26 and not x27 and x64 and x1 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x63 and not x26 and not x27 and x64 and not x1 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( not x63 and not x26 and not x27 and x64 and not x1 and not x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( not x63 and not x26 and not x27 and not x64 and x36 and x5 and x3 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s149;

      elsif ( not x63 and not x26 and not x27 and not x64 and x36 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s151;

      elsif ( not x63 and not x26 and not x27 and not x64 and x36 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s147;

      elsif ( not x63 and not x26 and not x27 and not x64 and x36 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( not x63 and not x26 and not x27 and not x64 and not x36 and x2 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s230;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      end if;

   when s236 =>
      if ( x64 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s143;

      end if;

   when s237 =>
      if ( x25 ) = '1' then
         current_zoom <= s1;

      elsif ( not x25 and x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      else
         current_zoom <= s1;

      end if;

   when s238 =>
      if ( x62 and x15 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s55;

      elsif ( x62 and not x15 and x14 and x13 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s200;

      elsif ( x62 and not x15 and x14 and not x13 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s56;

      elsif ( x62 and not x15 and not x14 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s124;

      elsif ( not x62 and x63 and x46 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s278;

      elsif ( not x62 and x63 and not x46 and x44 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x62 and x63 and not x46 and x44 and not x11 and x6 and x35 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s260;

      elsif ( not x62 and x63 and not x46 and x44 and not x11 and x6 and not x35 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s195;

      elsif ( not x62 and x63 and not x46 and x44 and not x11 and not x6 and x36 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x62 and x63 and not x46 and x44 and not x11 and not x6 and not x36 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s258;

      elsif ( not x62 and x63 and not x46 and not x44 and x14 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( not x62 and x63 and not x46 and not x44 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( not x62 and x63 and not x46 and not x44 and not x14 and not x9 and x37 and x33 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( not x62 and x63 and not x46 and not x44 and not x14 and not x9 and x37 and not x33 ) = '1' then
         current_zoom <= s238;

      elsif ( not x62 and x63 and not x46 and not x44 and not x14 and not x9 and not x37 and x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( not x62 and x63 and not x46 and not x44 and not x14 and not x9 and not x37 and not x8 ) = '1' then
         current_zoom <= s238;

      elsif ( not x62 and not x63 and x14 and x13 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s259;

      elsif ( not x62 and not x63 and x14 and not x13 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s281;

      else
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s282;

      end if;

   when s239 =>
      if ( x14 and x13 ) = '1' then
         y19 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s265;

      elsif ( x14 and not x13 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s281;

      else
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s282;

      end if;

   when s240 =>
      if ( x46 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s115;

      elsif ( not x46 and x14 and x44 ) = '1' then
         y3 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s223;

      elsif ( not x46 and x14 and not x44 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      else
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      end if;

   when s241 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s118;

      elsif ( not x15 and x14 and x64 and x13 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      elsif ( not x15 and x14 and x64 and not x13 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s116;

      elsif ( not x15 and x14 and not x64 and x13 ) = '1' then
         y19 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s223;

      elsif ( not x15 and x14 and not x64 and not x13 ) = '1' then
         y7 <= '1' ;
         y28 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s176;

      elsif ( not x15 and not x14 and x64 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s133;

      else
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s196;

      end if;

   when s242 =>
      if ( x62 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s283;

      elsif ( not x62 and x64 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s199;

      else
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s141;

      end if;

   when s243 =>
      if ( x63 and x41 and x12 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and x41 and not x12 and x32 and x2 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      elsif ( x63 and x41 and not x12 and x32 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and x41 and not x12 and not x32 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x63 and not x41 and x42 and x32 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s254;

      elsif ( x63 and not x41 and x42 and not x32 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x63 and not x41 and x42 and not x32 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( x63 and not x41 and not x42 and x43 and x34 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( x63 and not x41 and not x42 and x43 and not x34 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s212;

      elsif ( x63 and not x41 and not x42 and not x43 and x6 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x63 and not x41 and not x42 and not x43 and not x6 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x63 and x10 and x12 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x63 and x10 and not x12 and x1 and x2 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( not x63 and x10 and not x12 and x1 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( not x63 and x10 and not x12 and not x1 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x63 and not x10 and x11 and x1 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s204;

      elsif ( not x63 and not x10 and x11 and not x1 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x63 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x63 and not x10 and not x11 and x12 and x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x63 and not x10 and not x11 and x12 and not x3 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( not x63 and not x10 and not x11 and not x12 and x6 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      end if;

   when s244 =>
      if ( x10 and x12 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( x10 and not x12 and x1 and x34 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( x10 and not x12 and x1 and not x34 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( x10 and not x12 and not x1 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x10 and x11 and x37 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y22 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s209;

      elsif ( not x10 and x11 and not x37 and x41 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x10 and x11 and not x37 and not x41 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x10 and not x11 and x12 and x41 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x10 and not x11 and x12 and not x41 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( not x10 and not x11 and not x12 and x6 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      end if;

   when s245 =>
      if ( x26 and x28 and x23 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s248;

      elsif ( x26 and x28 and not x23 and x25 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      elsif ( x26 and x28 and not x23 and not x25 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( x26 and not x28 and x3 and x25 ) = '1' then
         current_zoom <= s245;

      elsif ( x26 and not x28 and x3 and not x25 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( x26 and not x28 and not x3 and x4 and x5 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s229;

      elsif ( x26 and not x28 and not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x26 and not x28 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( not x26 and x27 and x4 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s229;

      elsif ( not x26 and x27 and not x4 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x27 and x28 and x11 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x27 and x28 and not x11 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s49;

      else
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s229;

      end if;

   when s246 =>
      if ( x26 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s284;

      elsif ( not x26 and x28 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s285;

      elsif ( not x26 and x28 and not x5 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s286;

      else
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      end if;

   when s247 =>
      if ( x28 and x7 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s248;

      elsif ( x28 and not x7 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s275;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      end if;

   when s248 =>
      if ( x26 and x8 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x26 and x8 and not x1 and x14 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x26 and x8 and not x1 and not x14 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( x26 and not x8 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s246;

      elsif ( not x26 and x28 ) = '1' then
         current_zoom <= s1;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s247;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s248;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      elsif ( not x26 and not x28 and x6 and x7 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( not x26 and not x28 and x6 and not x7 and x8 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s275;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s247;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s248;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( not x26 and not x28 and not x6 and x24 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s275;

      else
         current_zoom <= s1;

      end if;

   when s249 =>
      if ( x15 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s287;

      elsif ( not x15 and x5 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s288;

      else
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s287;

      end if;

   when s250 =>
      if ( x15 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s287;

      elsif ( not x15 and x2 and x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s289;

      elsif ( not x15 and x2 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s290;

      elsif ( not x15 and x2 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s249;

      else
         current_zoom <= s250;

      end if;

   when s251 =>
      if ( x26 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s235;

      elsif ( not x26 and x28 and x36 ) = '1' then
         y9 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_zoom <= s285;

      elsif ( not x26 and x28 and not x36 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s62;

      else
         y20 <= '1' ;
         y23 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s227;

      end if;

   when s252 =>
      if ( x55 and x37 and x28 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( x55 and x37 and not x28 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( x55 and not x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x55 and x32 and x33 and x10 and x3 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s212;

      elsif ( not x55 and x32 and x33 and x10 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x55 and x32 and x33 and x10 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( not x55 and x32 and x33 and not x10 ) = '1' then
         current_zoom <= s252;

      elsif ( not x55 and x32 and not x33 and x10 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      elsif ( not x55 and x32 and not x33 and not x10 ) = '1' then
         current_zoom <= s252;

      elsif ( not x55 and not x32 and x10 and x33 and x9 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s272;

      elsif ( not x55 and not x32 and x10 and x33 and not x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x55 and not x32 and x10 and not x33 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s210;

      else
         current_zoom <= s252;

      end if;

   when s253 =>
      if ( x38 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      else
         current_zoom <= s253;

      end if;

   when s254 =>
      if ( x39 and x1 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s217;

      elsif ( x39 and not x1 and x4 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s273;

      elsif ( x39 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s214;

      else
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      end if;

   when s255 =>
      if ( x64 and x40 and x37 and x28 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( x64 and x40 and x37 and not x28 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x64 and x40 and not x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x64 and not x40 and x2 and x10 and x1 and x3 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( x64 and not x40 and x2 and x10 and x1 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x64 and not x40 and x2 and x10 and x1 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x64 and not x40 and x2 and x10 and not x1 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s266;

      elsif ( x64 and not x40 and x2 and x10 and not x1 and not x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x64 and not x40 and x2 and not x10 ) = '1' then
         current_zoom <= s255;

      elsif ( x64 and not x40 and not x2 and x10 and x1 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x64 and not x40 and not x2 and x10 and not x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s218;

      elsif ( x64 and not x40 and not x2 and not x10 ) = '1' then
         current_zoom <= s255;

      elsif ( not x64 and x44 and x1 and x28 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x64 and x44 and x1 and not x28 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x64 and x44 and not x1 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( not x64 and not x44 and x10 and x37 and x2 and x41 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( not x64 and not x44 and x10 and x37 and x2 and not x41 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x64 and not x44 and x10 and x37 and x2 and not x41 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      elsif ( not x64 and not x44 and x10 and x37 and not x2 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( not x64 and not x44 and x10 and not x37 and x2 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s266;

      elsif ( not x64 and not x44 and x10 and not x37 and x2 and not x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x64 and not x44 and x10 and not x37 and not x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s220;

      else
         current_zoom <= s255;

      end if;

   when s256 =>
      if ( x15 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s291;

      elsif ( not x15 and x2 and x3 and x64 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s261;

      elsif ( not x15 and x2 and x3 and not x64 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s262;

      elsif ( not x15 and x2 and not x3 and x4 and x64 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s260;

      elsif ( not x15 and x2 and not x3 and x4 and not x64 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s263;

      elsif ( not x15 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s191;

      else
         current_zoom <= s256;

      end if;

   when s257 =>
      if ( x15 and x63 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s278;

      elsif ( x15 and not x63 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      elsif ( not x15 and x63 and x37 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s293;

      elsif ( not x15 and x63 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s294;

      elsif ( not x15 and not x63 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s293;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s291;

      end if;

   when s258 =>
      if ( x46 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s294;

      elsif ( not x46 and x2 and x34 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s259;

      elsif ( not x46 and x2 and not x34 and x35 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s260;

      elsif ( not x46 and x2 and not x34 and not x35 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s195;

      else
         current_zoom <= s258;

      end if;

   when s259 =>
      if ( x63 and x15 and x13 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s295;

      elsif ( x63 and x15 and not x13 ) = '1' then
         y8 <= '1' ;
         current_zoom <= s296;

      elsif ( x63 and not x15 and x12 ) = '1' then
         y8 <= '1' ;
         current_zoom <= s296;

      elsif ( x63 and not x15 and not x12 ) = '1' then
         current_zoom <= s259;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      end if;

   when s260 =>
      if ( x63 and x46 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( x63 and not x46 and x37 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s293;

      elsif ( x63 and not x46 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s294;

      elsif ( not x63 and x15 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and not x15 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s293;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s291;

      end if;

   when s261 =>
      if ( x15 and x13 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s282;

      elsif ( x15 and not x13 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s297;

      elsif ( not x15 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s297;

      else
         current_zoom <= s261;

      end if;

   when s262 =>
      if ( x15 and x13 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s282;

      elsif ( x15 and not x13 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s298;

      elsif ( not x15 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s298;

      else
         current_zoom <= s262;

      end if;

   when s263 =>
      if ( x15 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x15 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s293;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s291;

      end if;

   when s264 =>
         y13 <= '1' ;
         y14 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s299;

   when s265 =>
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

   when s266 =>
      if ( x64 and x40 and x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( x64 and x40 and not x3 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s201;

      elsif ( x64 and x40 and not x3 and not x2 and x28 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( x64 and x40 and not x3 and not x2 and not x28 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( x64 and not x40 and x10 and x5 and x3 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( x64 and not x40 and x10 and x5 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x64 and not x40 and x10 and x5 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x64 and not x40 and x10 and not x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( x64 and not x40 and not x10 and x11 and x1 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s204;

      elsif ( x64 and not x40 and not x10 and x11 and not x1 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( x64 and not x40 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( x64 and not x40 and not x10 and not x11 ) = '1' then
         current_zoom <= s266;

      elsif ( not x64 and x44 and x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( not x64 and x44 and not x3 and x34 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s207;

      elsif ( not x64 and x44 and not x3 and not x34 and x28 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s181;

      elsif ( not x64 and x44 and not x3 and not x34 and not x28 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x64 and not x44 and x10 and x5 and x41 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( not x64 and not x44 and x10 and x5 and not x41 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x64 and not x44 and x10 and x5 and not x41 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      elsif ( not x64 and not x44 and x10 and not x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x64 and not x44 and not x10 and x37 and x11 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y22 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s209;

      elsif ( not x64 and not x44 and not x10 and x37 and not x11 ) = '1' then
         current_zoom <= s266;

      elsif ( not x64 and not x44 and not x10 and not x37 and x41 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x64 and not x44 and not x10 and not x37 and x41 and not x11 ) = '1' then
         current_zoom <= s266;

      elsif ( not x64 and not x44 and not x10 and not x37 and not x41 and x11 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      else
         current_zoom <= s266;

      end if;

   when s267 =>
      if ( x10 and x6 and x7 and x2 and x64 and x3 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( x10 and x6 and x7 and x2 and x64 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x10 and x6 and x7 and x2 and x64 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x10 and x6 and x7 and x2 and not x64 and x41 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( x10 and x6 and x7 and x2 and not x64 and not x41 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x10 and x6 and x7 and x2 and not x64 and not x41 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      elsif ( x10 and x6 and x7 and not x2 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x10 and x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and x64 and x3 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and x64 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and x64 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and not x64 and x41 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s203;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and not x64 and not x41 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and not x64 and not x41 and not x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s244;

      elsif ( x10 and x6 and not x7 and not x8 and not x2 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s202;

      elsif ( x10 and not x6 and x64 and x2 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( x10 and not x6 and x64 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      elsif ( x10 and not x6 and not x64 and x34 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( x10 and not x6 and not x64 and not x34 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( not x10 and x11 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( not x10 and x11 and not x5 and x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s180;

      elsif ( not x10 and x11 and not x5 and not x6 and x64 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x10 and x11 and not x5 and not x6 and not x64 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x10 and not x11 and x64 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s75;

      else
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      end if;

   when s268 =>
      if ( x44 and x1 and x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x44 and x1 and not x37 and x9 ) = '1' then
         current_zoom <= s268;

      elsif ( x44 and x1 and not x37 and not x9 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s208;

      elsif ( x44 and not x1 and x9 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x44 and not x1 and not x9 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_zoom <= s267;

      elsif ( not x44 and x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x44 and not x10 and x11 and x37 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y22 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s209;

      elsif ( not x44 and not x10 and x11 and not x37 and x41 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s221;

      elsif ( not x44 and not x10 and x11 and not x37 and not x41 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      end if;

   when s269 =>
      if ( x55 and x48 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s141;

      elsif ( x55 and not x48 and x57 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x55 and not x48 and not x57 ) = '1' then
         current_zoom <= s269;

      elsif ( not x55 and x37 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s141;

      else
         y8 <= '1' ;
         current_zoom <= s269;

      end if;

   when s270 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      elsif ( not x15 and x13 and x11 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s300;

      elsif ( not x15 and x13 and not x11 and x6 and x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s290;

      elsif ( not x15 and x13 and not x11 and x6 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s249;

      elsif ( not x15 and x13 and not x11 and not x6 and x5 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s288;

      elsif ( not x15 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s287;

      elsif ( not x15 and not x13 and x14 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s301;

      elsif ( not x15 and not x13 and not x14 and x9 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s301;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and x2 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s301;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and not x2 ) = '1' then
         current_zoom <= s270;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s301;

      else
         current_zoom <= s270;

      end if;

   when s271 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      elsif ( not x15 and x11 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s300;

      elsif ( not x15 and not x11 and x10 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s302;

      else
         current_zoom <= s271;

      end if;

   when s272 =>
      if ( x55 and x34 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      elsif ( x55 and not x34 and x2 ) = '1' then
         y8 <= '1' ;
         current_zoom <= s269;

      elsif ( x55 and not x34 and not x2 and x28 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s178;

      elsif ( x55 and not x34 and not x2 and not x28 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s177;

      elsif ( not x55 and x41 and x36 and x3 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s212;

      elsif ( not x55 and x41 and x36 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      elsif ( not x55 and x41 and x36 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s243;

      elsif ( not x55 and x41 and not x36 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      elsif ( not x55 and not x41 and x11 and x32 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s254;

      elsif ( not x55 and not x41 and x11 and not x32 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x55 and not x41 and x11 and not x32 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      else
         current_zoom <= s272;

      end if;

   when s273 =>
      if ( x55 and x50 ) = '1' then
         y8 <= '1' ;
         current_zoom <= s269;

      elsif ( x55 and not x50 ) = '1' then
         current_zoom <= s273;

      elsif ( not x55 and x42 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s272;

      elsif ( not x55 and not x42 and x9 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s272;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s253;

      end if;

   when s274 =>
      if ( x55 and x40 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x55 and not x40 and x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s213;

      elsif ( x55 and not x40 and not x37 ) = '1' then
         y11 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s224;

      elsif ( not x55 and x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x55 and not x10 and x42 and x32 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_zoom <= s254;

      elsif ( not x55 and not x10 and x42 and not x32 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s211;

      elsif ( not x55 and not x10 and x42 and not x32 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s179;

      end if;

   when s275 =>
      if ( x25 ) = '1' then
         current_zoom <= s1;

      elsif ( not x25 and x28 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      else
         current_zoom <= s1;

      end if;

   when s276 =>
      if ( x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s168;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s286;

      end if;

   when s277 =>
      if ( x63 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      end if;

   when s278 =>
      if ( x28 and x26 and x32 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x28 and x26 and not x32 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x28 and x26 and not x32 and not x2 and x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x28 and x26 and not x32 and not x2 and not x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( x28 and not x26 and x27 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s235;

      elsif ( x28 and not x26 and not x27 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x28 and not x26 and not x27 and not x1 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x28 and not x26 and not x27 and not x1 and not x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( not x28 and x26 and x32 and x33 and x34 and x25 ) = '1' then
         current_zoom <= s278;

      elsif ( not x28 and x26 and x32 and x33 and x34 and not x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s228;

      elsif ( not x28 and x26 and x32 and x33 and not x34 and x35 and x36 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( not x28 and x26 and x32 and x33 and not x34 and x35 and not x36 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( not x28 and x26 and x32 and x33 and not x34 and not x35 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( not x28 and x26 and x32 and not x33 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s235;

      elsif ( not x28 and x26 and not x32 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      else
         y11 <= '1' ;
         current_zoom <= s235;

      end if;

   when s279 =>
      if ( x15 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s260;

      elsif ( not x15 and x63 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s278;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      end if;

   when s280 =>
      if ( x15 and x63 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s238;

      elsif ( x15 and not x63 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s281;

      elsif ( not x15 and x6 and x63 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s199;

      elsif ( not x15 and x6 and not x63 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s303;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s304;

      end if;

   when s281 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      elsif ( not x15 and x13 and x11 and x64 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x15 and x13 and x11 and not x64 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s305;

      elsif ( not x15 and x13 and not x11 and x6 and x4 and x64 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s260;

      elsif ( not x15 and x13 and not x11 and x6 and x4 and not x64 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s263;

      elsif ( not x15 and x13 and not x11 and x6 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s191;

      elsif ( not x15 and x13 and not x11 and not x6 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x15 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s256;

      elsif ( not x15 and not x13 and x14 and x64 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( not x15 and not x13 and x14 and not x64 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s306;

      elsif ( not x15 and not x13 and not x14 and x9 and x64 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( not x15 and not x13 and not x14 and x9 and not x64 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s306;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and x64 and x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and x64 and not x2 ) = '1' then
         current_zoom <= s281;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and not x64 and x33 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s306;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and not x64 and not x33 ) = '1' then
         current_zoom <= s281;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x6 and x64 and x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x6 and x64 and not x8 ) = '1' then
         current_zoom <= s281;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x6 and not x64 and x8 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s306;

      else
         current_zoom <= s281;

      end if;

   when s282 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      elsif ( not x15 and x11 and x64 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x15 and x11 and not x64 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s305;

      elsif ( not x15 and not x11 and x10 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s307;

      else
         current_zoom <= s282;

      end if;

   when s283 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s265;

   when s284 =>
      if ( x26 and x28 and x9 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x26 and x28 and not x9 and x23 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      elsif ( x26 and x28 and not x9 and not x23 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( x26 and not x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( not x26 and x1 and x27 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( not x26 and x1 and x27 and not x2 and x3 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      elsif ( not x26 and x1 and x27 and not x2 and not x3 ) = '1' then
         current_zoom <= s284;

      elsif ( not x26 and x1 and not x27 and x5 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s247;

      elsif ( not x26 and x1 and not x27 and x5 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s248;

      elsif ( not x26 and x1 and not x27 and x5 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s226;

      elsif ( not x26 and x1 and not x27 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( not x26 and not x1 and x27 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( not x26 and not x1 and not x27 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      else
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      end if;

   when s285 =>
         y1 <= '1' ;
         current_zoom <= s142;

   when s286 =>
      if ( x9 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      else
         y2 <= '1' ;
         current_zoom <= s248;

      end if;

   when s287 =>
      if ( x15 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s308;

      elsif ( not x15 and x2 and x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s289;

      elsif ( not x15 and x2 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s290;

      elsif ( not x15 and x2 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s249;

      else
         current_zoom <= s287;

      end if;

   when s288 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      elsif ( not x15 and x6 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s309;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s308;

      end if;

   when s289 =>
      if ( x15 and x13 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s271;

      elsif ( x15 and not x13 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s310;

      elsif ( not x15 and x12 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s310;

      else
         current_zoom <= s289;

      end if;

   when s290 =>
      if ( x15 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s288;

      elsif ( not x15 and x6 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s309;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s308;

      end if;

   when s291 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s293;

      elsif ( not x15 and x8 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s282;

      elsif ( not x15 and not x8 and x9 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s282;

      elsif ( not x15 and not x8 and not x9 and x10 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s293;

      elsif ( not x15 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s291;

      elsif ( not x15 and not x8 and not x9 and not x10 and x64 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x15 and not x8 and not x9 and not x10 and x64 and not x11 ) = '1' then
         current_zoom <= s291;

      elsif ( not x15 and not x8 and not x9 and not x10 and not x64 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s305;

      else
         current_zoom <= s291;

      end if;

   when s292 =>
      if ( x26 and x28 and x62 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x26 and x28 and x62 and not x1 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      elsif ( x26 and x28 and x62 and not x1 and not x2 and x25 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      elsif ( x26 and x28 and x62 and not x1 and not x2 and not x25 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( x26 and x28 and not x62 and x64 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x26 and x28 and not x62 and x64 and not x1 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x26 and x28 and not x62 and x64 and not x1 and not x2 and x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x26 and x28 and not x62 and x64 and not x1 and not x2 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x26 and x28 and not x62 and not x64 and x37 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s230;

      elsif ( x26 and x28 and not x62 and not x64 and not x37 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x26 and x28 and not x62 and not x64 and not x37 and not x2 and x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x26 and x28 and not x62 and not x64 and not x37 and not x2 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x26 and not x28 and x62 and x1 and x2 and x3 and x25 ) = '1' then
         current_zoom <= s292;

      elsif ( x26 and not x28 and x62 and x1 and x2 and x3 and not x25 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( x26 and not x28 and x62 and x1 and x2 and not x3 and x4 and x5 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s229;

      elsif ( x26 and not x28 and x62 and x1 and x2 and not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x26 and not x28 and x62 and x1 and x2 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x26 and not x28 and x62 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s284;

      elsif ( x26 and not x28 and x62 and not x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      elsif ( x26 and not x28 and not x62 and x64 and x1 and x2 and x3 and x25 ) = '1' then
         current_zoom <= s292;

      elsif ( x26 and not x28 and not x62 and x64 and x1 and x2 and x3 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x26 and not x28 and not x62 and x64 and x1 and x2 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( x26 and not x28 and not x62 and x64 and x1 and x2 and not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s142;

      elsif ( x26 and not x28 and not x62 and x64 and x1 and x2 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( x26 and not x28 and not x62 and x64 and x1 and not x2 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s235;

      elsif ( x26 and not x28 and not x62 and x64 and not x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( x26 and not x28 and not x62 and not x64 and x37 and x32 and x3 and x25 ) = '1' then
         current_zoom <= s292;

      elsif ( x26 and not x28 and not x62 and not x64 and x37 and x32 and x3 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      elsif ( x26 and not x28 and not x62 and not x64 and x37 and x32 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s145;

      elsif ( x26 and not x28 and not x62 and not x64 and x37 and x32 and not x3 and x4 and not x5 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s143;

      elsif ( x26 and not x28 and not x62 and not x64 and x37 and x32 and not x3 and not x4 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s230;

      elsif ( x26 and not x28 and not x62 and not x64 and x37 and not x32 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s235;

      elsif ( x26 and not x28 and not x62 and not x64 and not x37 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( not x26 and x27 and x62 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s284;

      elsif ( not x26 and x27 and not x62 ) = '1' then
         y11 <= '1' ;
         current_zoom <= s235;

      elsif ( not x26 and not x27 and x62 and x28 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( not x26 and not x27 and x62 and x28 and not x1 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s245;

      elsif ( not x26 and not x27 and x62 and x28 and not x1 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s167;

      elsif ( not x26 and not x27 and x62 and not x28 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_zoom <= s284;

      elsif ( not x26 and not x27 and not x62 and x28 and x1 and x64 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s225;

      elsif ( not x26 and not x27 and not x62 and x28 and x1 and not x64 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s230;

      elsif ( not x26 and not x27 and not x62 and x28 and not x1 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s144;

      elsif ( not x26 and not x27 and not x62 and x28 and not x1 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_zoom <= s27;

      else
         y11 <= '1' ;
         current_zoom <= s235;

      end if;

   when s293 =>
      if ( x63 and x46 and x34 and x42 and x2 ) = '1' then
         y2 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s311;

      elsif ( x63 and x46 and x34 and x42 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( x63 and x46 and x34 and not x42 and x3 and x35 and x43 and x44 and x2 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s307;

      elsif ( x63 and x46 and x34 and not x42 and x3 and x35 and x43 and x44 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( x63 and x46 and x34 and not x42 and x3 and x35 and x43 and not x44 ) = '1' then
         current_zoom <= s293;

      elsif ( x63 and x46 and x34 and not x42 and x3 and x35 and not x43 ) = '1' then
         current_zoom <= s293;

      elsif ( x63 and x46 and x34 and not x42 and x3 and not x35 ) = '1' then
         current_zoom <= s293;

      elsif ( x63 and x46 and x34 and not x42 and not x3 and x35 and x43 and x44 and x2 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s312;

      elsif ( x63 and x46 and x34 and not x42 and not x3 and x35 and x43 and x44 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( x63 and x46 and x34 and not x42 and not x3 and x35 and x43 and not x44 ) = '1' then
         current_zoom <= s293;

      elsif ( x63 and x46 and x34 and not x42 and not x3 and x35 and not x43 ) = '1' then
         current_zoom <= s293;

      elsif ( x63 and x46 and x34 and not x42 and not x3 and not x35 ) = '1' then
         current_zoom <= s293;

      elsif ( x63 and x46 and not x34 and x33 and x4 and x11 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s313;

      elsif ( x63 and x46 and not x34 and x33 and x4 and not x11 and x12 and x13 and x14 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s312;

      elsif ( x63 and x46 and not x34 and x33 and x4 and not x11 and x12 and x13 and not x14 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s259;

      elsif ( x63 and x46 and not x34 and x33 and x4 and not x11 and x12 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s304;

      elsif ( x63 and x46 and not x34 and x33 and x4 and not x11 and not x12 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and x5 and x37 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and x5 and not x37 and x7 and x39 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and x5 and not x37 and x7 and not x39 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and x5 and not x37 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and x5 and not x37 and not x7 and not x8 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and not x5 and x6 and x38 and x40 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and not x5 and x6 and x38 and not x40 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and not x5 and x6 and not x38 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and not x5 and x6 and not x38 and not x9 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and not x5 and not x6 and x7 and x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and not x5 and not x6 and x7 and not x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and not x5 and not x6 and not x7 and x41 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( x63 and x46 and not x34 and x33 and not x4 and not x5 and not x6 and not x7 and not x41 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( x63 and x46 and not x34 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( x63 and not x46 and x38 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s295;

      elsif ( x63 and not x46 and not x38 and x40 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s295;

      elsif ( x63 and not x46 and not x38 and not x40 and x10 and x37 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s293;

      elsif ( x63 and not x46 and not x38 and not x40 and x10 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s294;

      elsif ( x63 and not x46 and not x38 and not x40 and not x10 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( x63 and not x46 and not x38 and not x40 and not x10 and not x42 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and x3 and x11 and x64 and x2 ) = '1' then
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s242;

      elsif ( not x63 and x15 and x3 and x11 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and x3 and x11 and not x64 and x2 ) = '1' then
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s126;

      elsif ( not x63 and x15 and x3 and x11 and not x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and x3 and not x11 and x4 and x12 and x13 and x2 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s307;

      elsif ( not x63 and x15 and x3 and not x11 and x4 and x12 and x13 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and x3 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and x3 and not x11 and x4 and not x12 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and x3 and not x11 and not x4 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and x4 and x11 and x64 and x2 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s199;

      elsif ( not x63 and x15 and not x3 and x4 and x11 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and x4 and x11 and not x64 and x33 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s199;

      elsif ( not x63 and x15 and not x3 and x4 and x11 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and x12 and x13 and x14 and x64 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s314;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and x12 and x13 and x14 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and x12 and x13 and x14 and not x64 and x33 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s314;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and x12 and x13 and x14 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and x12 and x13 and not x14 and x64 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s261;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and x12 and x13 and not x14 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and x12 and x13 and not x14 and not x64 and x33 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s262;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and x12 and x13 and not x14 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and x12 and not x13 and x64 and x2 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s304;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and x12 and not x13 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and x12 and not x13 and not x64 and x33 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s315;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and x12 and not x13 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and not x12 and x64 and x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and not x12 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and not x12 and not x64 and x33 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s306;

      elsif ( not x63 and x15 and not x3 and x4 and not x11 and not x12 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and x6 and x64 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and x6 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and x6 and not x64 and x33 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s305;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and x6 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and x7 and x8 and x64 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and x7 and x8 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and x7 and x8 and not x64 and x33 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s305;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and x7 and x8 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and x64 and x2 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and not x64 and x33 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and x7 and not x8 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and x64 and x2 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and not x64 and x33 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and x8 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and x64 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and not x64 and x33 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s305;

      elsif ( not x63 and x15 and not x3 and not x4 and x5 and not x6 and not x7 and not x8 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and x7 and x9 and x64 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and x7 and x9 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and x7 and x9 and not x64 and x33 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s305;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and x7 and x9 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and x64 and x2 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and not x64 and x33 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and x7 and not x9 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and x64 and x2 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and not x64 and x33 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and x9 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and x64 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and not x64 and x33 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s305;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and x6 and not x7 and not x9 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and x64 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and not x64 and x33 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s305;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and x10 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and x64 and x2 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and not x64 and x33 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and x7 and not x10 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and x64 and x2 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and not x64 and x33 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s257;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and x10 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and x64 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and x64 and not x2 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and not x64 and x33 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s305;

      elsif ( not x63 and x15 and not x3 and not x4 and not x5 and not x6 and not x7 and not x10 and not x64 and not x33 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and not x15 and x7 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s282;

      elsif ( not x63 and not x15 and not x7 and x9 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_zoom <= s282;

      elsif ( not x63 and not x15 and not x7 and not x9 and x10 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s293;

      elsif ( not x63 and not x15 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_zoom <= s291;

      elsif ( not x63 and not x15 and not x7 and not x9 and not x10 and x64 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x63 and not x15 and not x7 and not x9 and not x10 and x64 and not x11 ) = '1' then
         current_zoom <= s293;

      elsif ( not x63 and not x15 and not x7 and not x9 and not x10 and not x64 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s305;

      else
         current_zoom <= s293;

      end if;

   when s294 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s293;

      elsif ( not x15 and x39 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s295;

      elsif ( not x15 and not x39 and x40 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s295;

      elsif ( not x15 and not x39 and not x40 and x10 and x37 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_zoom <= s293;

      elsif ( not x15 and not x39 and not x40 and x10 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         y36 <= '1' ;
         current_zoom <= s294;

      elsif ( not x15 and not x39 and not x40 and not x10 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      else
         current_zoom <= s294;

      end if;

   when s295 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s278;

      elsif ( not x15 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s279;

      elsif ( not x15 and not x42 and x41 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_zoom <= s307;

      else
         current_zoom <= s295;

      end if;

   when s296 =>
      if ( x46 ) = '1' then
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s278;

      elsif ( not x46 and x44 and x35 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s260;

      elsif ( not x46 and x44 and not x35 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         current_zoom <= s195;

      elsif ( not x46 and not x44 and x14 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s259;

      elsif ( not x46 and not x44 and not x14 and x40 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s259;

      elsif ( not x46 and not x44 and not x14 and not x40 and x38 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s259;

      elsif ( not x46 and not x44 and not x14 and not x40 and not x38 and x39 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s259;

      else
         current_zoom <= s296;

      end if;

   when s297 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      elsif ( not x15 and x13 and x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_zoom <= s260;

      elsif ( not x15 and x13 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s191;

      elsif ( not x15 and not x13 and x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s261;

      elsif ( not x15 and not x13 and not x14 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s261;

      elsif ( not x15 and not x13 and not x14 and not x9 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s261;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s261;

      else
         current_zoom <= s297;

      end if;

   when s298 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      elsif ( not x15 and x13 and x4 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s263;

      elsif ( not x15 and x13 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s191;

      elsif ( not x15 and not x13 and x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s262;

      elsif ( not x15 and not x13 and not x14 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s262;

      elsif ( not x15 and not x13 and not x14 and not x9 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s262;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s262;

      else
         current_zoom <= s298;

      end if;

   when s299 =>
      if ( x45 and x13 ) = '1' then
         y3 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s316;

      elsif ( x45 and not x13 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s238;

      else
         y9 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_zoom <= s295;

      end if;

   when s300 =>
      if ( x15 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s290;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      end if;

   when s301 =>
      if ( x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s270;

      elsif ( not x15 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s317;

      else
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s318;

      end if;

   when s302 =>
      if ( x12 and x15 and x13 and x3 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s319;

      elsif ( x12 and x15 and x13 and not x3 and x14 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s319;

      elsif ( x12 and x15 and x13 and not x3 and not x14 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s289;

      elsif ( x12 and x15 and not x13 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s318;

      elsif ( x12 and not x15 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s301;

      else
         y10 <= '1' ;
         current_zoom <= s301;

      end if;

   when s303 =>
      if ( x62 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s212;

      elsif ( not x62 and x15 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s153;

      elsif ( not x62 and not x15 and x12 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s281;

      else
         current_zoom <= s303;

      end if;

   when s304 =>
      if ( x63 and x15 and x45 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s199;

      elsif ( x63 and x15 and not x45 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s259;

      elsif ( x63 and not x15 and x43 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         current_zoom <= s238;

      elsif ( x63 and not x15 and not x43 ) = '1' then
         current_zoom <= s304;

      elsif ( not x63 and x15 and x14 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s303;

      elsif ( not x63 and x15 and not x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s261;

      elsif ( not x63 and not x15 and x12 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s281;

      else
         current_zoom <= s304;

      end if;

   when s305 =>
      if ( x15 ) = '1' then
         y23 <= '1' ;
         y30 <= '1' ;
         current_zoom <= s263;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      end if;

   when s306 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s281;

      elsif ( not x15 and x6 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s303;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s315;

      end if;

   when s307 =>
      if ( x12 and x63 and x46 and x13 and x3 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s312;

      elsif ( x12 and x63 and x46 and x13 and not x3 and x14 ) = '1' then
         y15 <= '1' ;
         y18 <= '1' ;
         current_zoom <= s312;

      elsif ( x12 and x63 and x46 and x13 and not x3 and not x14 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_zoom <= s259;

      elsif ( x12 and x63 and x46 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s304;

      elsif ( x12 and x63 and not x46 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( x12 and not x63 and x15 and x13 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s314;

      elsif ( x12 and not x63 and x15 and x13 and not x3 and x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s314;

      elsif ( x12 and not x63 and x15 and x13 and not x3 and not x14 and x64 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s261;

      elsif ( x12 and not x63 and x15 and x13 and not x3 and not x14 and not x64 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s262;

      elsif ( x12 and not x63 and x15 and not x13 and x64 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_zoom <= s304;

      elsif ( x12 and not x63 and x15 and not x13 and not x64 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_zoom <= s315;

      elsif ( x12 and not x63 and not x15 and x64 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( x12 and not x63 and not x15 and not x64 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s306;

      elsif ( not x12 and x63 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      elsif ( not x12 and not x63 and x64 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s280;

      else
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_zoom <= s306;

      end if;

   when s308 =>
      if ( x15 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s309;

      elsif ( not x15 and x8 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s271;

      elsif ( not x15 and not x8 and x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s271;

      elsif ( not x15 and not x8 and not x9 and x10 and x6 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s309;

      elsif ( not x15 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s308;

      elsif ( not x15 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s300;

      else
         current_zoom <= s308;

      end if;

   when s309 =>
      if ( x15 and x2 and x3 and x11 ) = '1' then
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s242;

      elsif ( x15 and x2 and x3 and not x11 and x12 and x13 and x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_zoom <= s302;

      elsif ( x15 and x2 and x3 and not x11 and x12 and x13 and not x4 ) = '1' then
         current_zoom <= s309;

      elsif ( x15 and x2 and x3 and not x11 and x12 and not x13 ) = '1' then
         current_zoom <= s309;

      elsif ( x15 and x2 and x3 and not x11 and not x12 ) = '1' then
         current_zoom <= s309;

      elsif ( x15 and x2 and not x3 and x4 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s283;

      elsif ( x15 and x2 and not x3 and x4 and not x11 and x12 and x13 and x14 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s319;

      elsif ( x15 and x2 and not x3 and x4 and not x11 and x12 and x13 and not x14 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s289;

      elsif ( x15 and x2 and not x3 and x4 and not x11 and x12 and not x13 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_zoom <= s318;

      elsif ( x15 and x2 and not x3 and x4 and not x11 and not x12 ) = '1' then
         y10 <= '1' ;
         current_zoom <= s301;

      elsif ( x15 and x2 and not x3 and not x4 and x6 and x5 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s300;

      elsif ( x15 and x2 and not x3 and not x4 and x6 and not x5 and x9 and x7 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s300;

      elsif ( x15 and x2 and not x3 and not x4 and x6 and not x5 and x9 and not x7 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s288;

      elsif ( x15 and x2 and not x3 and not x4 and x6 and not x5 and not x9 and x7 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s288;

      elsif ( x15 and x2 and not x3 and not x4 and x6 and not x5 and not x9 and not x7 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s300;

      elsif ( x15 and x2 and not x3 and not x4 and not x6 and x7 and x5 and x8 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s300;

      elsif ( x15 and x2 and not x3 and not x4 and not x6 and x7 and x5 and not x8 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s288;

      elsif ( x15 and x2 and not x3 and not x4 and not x6 and x7 and not x5 and x10 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s300;

      elsif ( x15 and x2 and not x3 and not x4 and not x6 and x7 and not x5 and not x10 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s288;

      elsif ( x15 and x2 and not x3 and not x4 and not x6 and not x7 and x5 and x8 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s288;

      elsif ( x15 and x2 and not x3 and not x4 and not x6 and not x7 and x5 and not x8 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s300;

      elsif ( x15 and x2 and not x3 and not x4 and not x6 and not x7 and not x5 and x10 ) = '1' then
         y2 <= '1' ;
         current_zoom <= s288;

      elsif ( x15 and x2 and not x3 and not x4 and not x6 and not x7 and not x5 and not x10 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s300;

      elsif ( x15 and not x2 ) = '1' then
         current_zoom <= s309;

      elsif ( not x15 and x7 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s271;

      elsif ( not x15 and not x7 and x9 ) = '1' then
         y13 <= '1' ;
         current_zoom <= s271;

      elsif ( not x15 and not x7 and not x9 and x10 and x6 ) = '1' then
         y1 <= '1' ;
         current_zoom <= s309;

      elsif ( not x15 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_zoom <= s308;

      elsif ( not x15 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s300;

      else
         current_zoom <= s309;

      end if;

   when s310 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_zoom <= s292;

      elsif ( not x15 and x13 and x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s290;

      elsif ( not x15 and x13 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s249;

      elsif ( not x15 and not x13 and x14 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s289;

      elsif ( not x15 and not x13 and not x14 and x9 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s289;

      elsif ( not x15 and not x13 and not x14 and not x9 and x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s289;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s289;

      else
         current_zoom <= s310;

      end if;

   when s311 =>
         y27 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_zoom <= s313;

   when s312 =>
         y19 <= '1' ;
         current_zoom <= s264;

   when s313 =>
         y3 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_zoom <= s316;

   when s314 =>
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s153;

   when s315 =>
      if ( x15 and x14 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s303;

      elsif ( x15 and not x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         current_zoom <= s262;

      elsif ( not x15 and x12 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s281;

      else
         current_zoom <= s315;

      end if;

   when s316 =>
         y3 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_zoom <= s278;

   when s317 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s303;

      elsif ( not x15 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s270;

      else
         current_zoom <= s317;

      end if;

   when s318 =>
      if ( x15 and x14 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_zoom <= s317;

      elsif ( x15 and not x14 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_zoom <= s289;

      elsif ( not x15 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_zoom <= s270;

      else
         current_zoom <= s318;

      end if;

   when s319 =>
         y9 <= '1' ;
         y17 <= '1' ;
         current_zoom <= s303;

   end case;
   end proc_zoom;

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
	current_zoom <= s1;
      elsif (clk'event and clk ='1') then
        proc_zoom;
      end if;
   end process;
end ARC;
