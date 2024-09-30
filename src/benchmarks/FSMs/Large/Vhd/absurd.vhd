library ieee;
use ieee.std_logic_1164.all;

entity absurd is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
	x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,
	x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,
	x61,x62,x63,x64,x65 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56,y57,y58,y59,y60,
	y61,y62,y63,y64,y65,y66,y67,y68,y69,y70,y71,y72,y73,y74,y75,
	y76,y77,y78,y79,y80,y81,y82,y83,y84,y85,y86,y87,y88,y89,y90,
	y91,y92,y93,y94,y95,y96,y97,y98,y99,y100,y101,y102,y103,y104,y105,
	y106,y107,y108,y109,y110,y111,y112,y113,y114,y115,y116,y117,y118,y119,y120,
	y121,y122,y123,y124,y125,y126,y127,y128,y129,y130,y131,y132,y133,y134,y135,
	y136,y137,y138,y139,y140,y141,y142,y143,y144,y145,y146,y147,y148,y149,y150,
	y151,y152,y153,y154,y155,y156,y157,y158,y159,y160,y161,y162,y163,y164,y165,
	y166,y167,y168,y169,y170,y171,y172,y173,y174,y175,y176,y177,y178,y179,y180,
	y181,y182,y183,y184,y185,y186,y187,y188,y189,y190,y191,y192,y193,y194,y195,
	y196,y197,y198,y199,y200,y201,y202,y203,y204,y205,y206,y207,y208,y209 : out std_logic );
end absurd;

architecture ARC of absurd is

   type states_absurd is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
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
	s271,s272,s273,s274 );
   signal current_absurd : states_absurd;

begin
   process (clk , rst)
   procedure proc_absurd is
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
	y53  <= '0' ;	y54  <= '0' ;	y55  <= '0' ;	y56  <= '0' ;
	y57  <= '0' ;	y58  <= '0' ;	y59  <= '0' ;	y60  <= '0' ;
	y61  <= '0' ;	y62  <= '0' ;	y63  <= '0' ;	y64  <= '0' ;
	y65  <= '0' ;	y66  <= '0' ;	y67  <= '0' ;	y68  <= '0' ;
	y69  <= '0' ;	y70  <= '0' ;	y71  <= '0' ;	y72  <= '0' ;
	y73  <= '0' ;	y74  <= '0' ;	y75  <= '0' ;	y76  <= '0' ;
	y77  <= '0' ;	y78  <= '0' ;	y79  <= '0' ;	y80  <= '0' ;
	y81  <= '0' ;	y82  <= '0' ;	y83  <= '0' ;	y84  <= '0' ;
	y85  <= '0' ;	y86  <= '0' ;	y87  <= '0' ;	y88  <= '0' ;
	y89  <= '0' ;	y90  <= '0' ;	y91  <= '0' ;	y92  <= '0' ;
	y93  <= '0' ;	y94  <= '0' ;	y95  <= '0' ;	y96  <= '0' ;
	y97  <= '0' ;	y98  <= '0' ;	y99  <= '0' ;	y100 <= '0' ;
	y101 <= '0' ;	y102 <= '0' ;	y103 <= '0' ;	y104 <= '0' ;
	y105 <= '0' ;	y106 <= '0' ;	y107 <= '0' ;	y108 <= '0' ;
	y109 <= '0' ;	y110 <= '0' ;	y111 <= '0' ;	y112 <= '0' ;
	y113 <= '0' ;	y114 <= '0' ;	y115 <= '0' ;	y116 <= '0' ;
	y117 <= '0' ;	y118 <= '0' ;	y119 <= '0' ;	y120 <= '0' ;
	y121 <= '0' ;	y122 <= '0' ;	y123 <= '0' ;	y124 <= '0' ;
	y125 <= '0' ;	y126 <= '0' ;	y127 <= '0' ;	y128 <= '0' ;
	y129 <= '0' ;	y130 <= '0' ;	y131 <= '0' ;	y132 <= '0' ;
	y133 <= '0' ;	y134 <= '0' ;	y135 <= '0' ;	y136 <= '0' ;
	y137 <= '0' ;	y138 <= '0' ;	y139 <= '0' ;	y140 <= '0' ;
	y141 <= '0' ;	y142 <= '0' ;	y143 <= '0' ;	y144 <= '0' ;
	y145 <= '0' ;	y146 <= '0' ;	y147 <= '0' ;	y148 <= '0' ;
	y149 <= '0' ;	y150 <= '0' ;	y151 <= '0' ;	y152 <= '0' ;
	y153 <= '0' ;	y154 <= '0' ;	y155 <= '0' ;	y156 <= '0' ;
	y157 <= '0' ;	y158 <= '0' ;	y159 <= '0' ;	y160 <= '0' ;
	y161 <= '0' ;	y162 <= '0' ;	y163 <= '0' ;	y164 <= '0' ;
	y165 <= '0' ;	y166 <= '0' ;	y167 <= '0' ;	y168 <= '0' ;
	y169 <= '0' ;	y170 <= '0' ;	y171 <= '0' ;	y172 <= '0' ;
	y173 <= '0' ;	y174 <= '0' ;	y175 <= '0' ;	y176 <= '0' ;
	y177 <= '0' ;	y178 <= '0' ;	y179 <= '0' ;	y180 <= '0' ;
	y181 <= '0' ;	y182 <= '0' ;	y183 <= '0' ;	y184 <= '0' ;
	y185 <= '0' ;	y186 <= '0' ;	y187 <= '0' ;	y188 <= '0' ;
	y189 <= '0' ;	y190 <= '0' ;	y191 <= '0' ;	y192 <= '0' ;
	y193 <= '0' ;	y194 <= '0' ;	y195 <= '0' ;	y196 <= '0' ;
	y197 <= '0' ;	y198 <= '0' ;	y199 <= '0' ;	y200 <= '0' ;
	y201 <= '0' ;	y202 <= '0' ;	y203 <= '0' ;	y204 <= '0' ;
	y205 <= '0' ;	y206 <= '0' ;	y207 <= '0' ;	y208 <= '0' ;
	y209 <= '0' ;

   case current_absurd is
   when s1 =>
      if ( x10 and x7 and x12 and x23 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and x7 and x12 and not x23 ) = '1' then
         y163 <= '1' ;
         y164 <= '1' ;
         current_absurd <= s2;

      elsif ( x10 and x7 and not x12 and x18 and x56 and x26 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y57 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s3;

      elsif ( x10 and x7 and not x12 and x18 and x56 and x26 and not x42 ) = '1' then
         y91 <= '1' ;
         y92 <= '1' ;
         current_absurd <= s1;

      elsif ( x10 and x7 and not x12 and x18 and x56 and not x26 and x42 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s4;

      elsif ( x10 and x7 and not x12 and x18 and x56 and not x26 and not x42 ) = '1' then
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( x10 and x7 and not x12 and x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and x7 and not x12 and not x18 and x56 and x52 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s5;

      elsif ( x10 and x7 and not x12 and not x18 and x56 and not x52 ) = '1' then
         y95 <= '1' ;
         y97 <= '1' ;
         current_absurd <= s6;

      elsif ( x10 and x7 and not x12 and not x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and x8 and x9 and x11 and x18 and x56 and x26 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y57 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s3;

      elsif ( x10 and not x7 and x8 and x9 and x11 and x18 and x56 and x26 and not x42 ) = '1' then
         y91 <= '1' ;
         y92 <= '1' ;
         current_absurd <= s1;

      elsif ( x10 and not x7 and x8 and x9 and x11 and x18 and x56 and not x26 and x42 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s4;

      elsif ( x10 and not x7 and x8 and x9 and x11 and x18 and x56 and not x26 and not x42 ) = '1' then
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( x10 and not x7 and x8 and x9 and x11 and x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and x8 and x9 and x11 and not x18 and x56 and x52 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s5;

      elsif ( x10 and not x7 and x8 and x9 and x11 and not x18 and x56 and not x52 ) = '1' then
         y95 <= '1' ;
         y97 <= '1' ;
         current_absurd <= s6;

      elsif ( x10 and not x7 and x8 and x9 and x11 and not x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and x8 and x9 and not x11 and x31 and x12 and x29 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and x8 and x9 and not x11 and x31 and x12 and not x29 ) = '1' then
         y1 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y50 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s7;

      elsif ( x10 and not x7 and x8 and x9 and not x11 and x31 and not x12 and x4 and x14 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and x8 and x9 and not x11 and x31 and not x12 and x4 and not x14 ) = '1' then
         y76 <= '1' ;
         y77 <= '1' ;
         current_absurd <= s8;

      elsif ( x10 and not x7 and x8 and x9 and not x11 and x31 and not x12 and not x4 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and x8 and x9 and not x11 and not x31 ) = '1' then
         y24 <= '1' ;
         current_absurd <= s9;

      elsif ( x10 and not x7 and x8 and not x9 and x18 and x56 and x26 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y57 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s3;

      elsif ( x10 and not x7 and x8 and not x9 and x18 and x56 and x26 and not x42 ) = '1' then
         y91 <= '1' ;
         y92 <= '1' ;
         current_absurd <= s1;

      elsif ( x10 and not x7 and x8 and not x9 and x18 and x56 and not x26 and x42 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s4;

      elsif ( x10 and not x7 and x8 and not x9 and x18 and x56 and not x26 and not x42 ) = '1' then
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( x10 and not x7 and x8 and not x9 and x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and x8 and not x9 and not x18 and x56 and x52 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s5;

      elsif ( x10 and not x7 and x8 and not x9 and not x18 and x56 and not x52 ) = '1' then
         y95 <= '1' ;
         y97 <= '1' ;
         current_absurd <= s6;

      elsif ( x10 and not x7 and x8 and not x9 and not x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and x9 and x12 and x11 and x46 and x47 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and x9 and x12 and x11 and x46 and not x47 ) = '1' then
         y39 <= '1' ;
         y40 <= '1' ;
         current_absurd <= s10;

      elsif ( x10 and not x7 and not x8 and x9 and x12 and x11 and not x46 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and x9 and x12 and not x11 and x58 ) = '1' then
         y20 <= '1' ;
         y109 <= '1' ;
         y111 <= '1' ;
         current_absurd <= s11;

      elsif ( x10 and not x7 and not x8 and x9 and x12 and not x11 and not x58 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and x9 and not x12 and x11 and x18 and x56 and x26 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y57 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s3;

      elsif ( x10 and not x7 and not x8 and x9 and not x12 and x11 and x18 and x56 and x26 and not x42 ) = '1' then
         y91 <= '1' ;
         y92 <= '1' ;
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and x9 and not x12 and x11 and x18 and x56 and not x26 and x42 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s4;

      elsif ( x10 and not x7 and not x8 and x9 and not x12 and x11 and x18 and x56 and not x26 and not x42 ) = '1' then
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and x9 and not x12 and x11 and x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and x9 and not x12 and x11 and not x18 and x56 and x52 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s5;

      elsif ( x10 and not x7 and not x8 and x9 and not x12 and x11 and not x18 and x56 and not x52 ) = '1' then
         y95 <= '1' ;
         y97 <= '1' ;
         current_absurd <= s6;

      elsif ( x10 and not x7 and not x8 and x9 and not x12 and x11 and not x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and x9 and not x12 and not x11 and x58 ) = '1' then
         y38 <= '1' ;
         current_absurd <= s12;

      elsif ( x10 and not x7 and not x8 and x9 and not x12 and not x11 and not x58 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and not x9 and x12 and x18 and x56 and x26 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y57 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s3;

      elsif ( x10 and not x7 and not x8 and not x9 and x12 and x18 and x56 and x26 and not x42 ) = '1' then
         y91 <= '1' ;
         y92 <= '1' ;
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and not x9 and x12 and x18 and x56 and not x26 and x42 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s4;

      elsif ( x10 and not x7 and not x8 and not x9 and x12 and x18 and x56 and not x26 and not x42 ) = '1' then
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and not x9 and x12 and x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and not x9 and x12 and not x18 and x56 and x52 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s5;

      elsif ( x10 and not x7 and not x8 and not x9 and x12 and not x18 and x56 and not x52 ) = '1' then
         y95 <= '1' ;
         y97 <= '1' ;
         current_absurd <= s6;

      elsif ( x10 and not x7 and not x8 and not x9 and x12 and not x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and not x9 and not x12 and x11 and x18 and x56 and x26 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y57 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s3;

      elsif ( x10 and not x7 and not x8 and not x9 and not x12 and x11 and x18 and x56 and x26 and not x42 ) = '1' then
         y91 <= '1' ;
         y92 <= '1' ;
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and not x9 and not x12 and x11 and x18 and x56 and not x26 and x42 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s4;

      elsif ( x10 and not x7 and not x8 and not x9 and not x12 and x11 and x18 and x56 and not x26 and not x42 ) = '1' then
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and not x9 and not x12 and x11 and x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and not x9 and not x12 and x11 and not x18 and x56 and x52 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s5;

      elsif ( x10 and not x7 and not x8 and not x9 and not x12 and x11 and not x18 and x56 and not x52 ) = '1' then
         y95 <= '1' ;
         y97 <= '1' ;
         current_absurd <= s6;

      elsif ( x10 and not x7 and not x8 and not x9 and not x12 and x11 and not x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and not x9 and not x12 and not x11 and x31 and x14 ) = '1' then
         y31 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_absurd <= s13;

      elsif ( x10 and not x7 and not x8 and not x9 and not x12 and not x11 and x31 and not x14 ) = '1' then
         current_absurd <= s1;

      elsif ( x10 and not x7 and not x8 and not x9 and not x12 and not x11 and not x31 ) = '1' then
         y24 <= '1' ;
         current_absurd <= s9;

      elsif ( not x10 and x11 and x12 and x7 and x18 and x56 and x26 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y57 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s3;

      elsif ( not x10 and x11 and x12 and x7 and x18 and x56 and x26 and not x42 ) = '1' then
         y91 <= '1' ;
         y92 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and x11 and x12 and x7 and x18 and x56 and not x26 and x42 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s4;

      elsif ( not x10 and x11 and x12 and x7 and x18 and x56 and not x26 and not x42 ) = '1' then
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and x11 and x12 and x7 and x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and x12 and x7 and not x18 and x56 and x52 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s5;

      elsif ( not x10 and x11 and x12 and x7 and not x18 and x56 and not x52 ) = '1' then
         y95 <= '1' ;
         y97 <= '1' ;
         current_absurd <= s6;

      elsif ( not x10 and x11 and x12 and x7 and not x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and x12 and not x7 and x9 and x18 and x56 and x26 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y57 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s3;

      elsif ( not x10 and x11 and x12 and not x7 and x9 and x18 and x56 and x26 and not x42 ) = '1' then
         y91 <= '1' ;
         y92 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and x11 and x12 and not x7 and x9 and x18 and x56 and not x26 and x42 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s4;

      elsif ( not x10 and x11 and x12 and not x7 and x9 and x18 and x56 and not x26 and not x42 ) = '1' then
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and x11 and x12 and not x7 and x9 and x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and x12 and not x7 and x9 and not x18 and x56 and x52 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s5;

      elsif ( not x10 and x11 and x12 and not x7 and x9 and not x18 and x56 and not x52 ) = '1' then
         y95 <= '1' ;
         y97 <= '1' ;
         current_absurd <= s6;

      elsif ( not x10 and x11 and x12 and not x7 and x9 and not x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and x12 and not x7 and not x9 and x8 ) = '1' then
         y120 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s14;

      elsif ( not x10 and x11 and x12 and not x7 and not x9 and not x8 and x31 and x5 and x14 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and x12 and not x7 and not x9 and not x8 and x31 and x5 and not x14 ) = '1' then
         y31 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_absurd <= s15;

      elsif ( not x10 and x11 and x12 and not x7 and not x9 and not x8 and x31 and not x5 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and x12 and not x7 and not x9 and not x8 and not x31 ) = '1' then
         y24 <= '1' ;
         current_absurd <= s9;

      elsif ( not x10 and x11 and not x12 and x7 and x56 and x18 and x26 ) = '1' then
         y12 <= '1' ;
         y85 <= '1' ;
         y92 <= '1' ;
         y93 <= '1' ;
         y146 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and x7 and x56 and x18 and not x26 ) = '1' then
         y18 <= '1' ;
         y86 <= '1' ;
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and x7 and x56 and not x18 ) = '1' then
         y64 <= '1' ;
         current_absurd <= s16;

      elsif ( not x10 and x11 and not x12 and x7 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and not x7 and x8 and x9 and x58 ) = '1' then
         y20 <= '1' ;
         y109 <= '1' ;
         y111 <= '1' ;
         current_absurd <= s11;

      elsif ( not x10 and x11 and not x12 and not x7 and x8 and x9 and not x58 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and not x7 and x8 and not x9 and x18 and x56 and x26 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y57 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s3;

      elsif ( not x10 and x11 and not x12 and not x7 and x8 and not x9 and x18 and x56 and x26 and not x42 ) = '1' then
         y91 <= '1' ;
         y92 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and not x7 and x8 and not x9 and x18 and x56 and not x26 and x42 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s4;

      elsif ( not x10 and x11 and not x12 and not x7 and x8 and not x9 and x18 and x56 and not x26 and not x42 ) = '1' then
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and not x7 and x8 and not x9 and x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and not x7 and x8 and not x9 and not x18 and x56 and x52 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s5;

      elsif ( not x10 and x11 and not x12 and not x7 and x8 and not x9 and not x18 and x56 and not x52 ) = '1' then
         y95 <= '1' ;
         y97 <= '1' ;
         current_absurd <= s6;

      elsif ( not x10 and x11 and not x12 and not x7 and x8 and not x9 and not x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and x9 and x18 and x56 and x26 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y57 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s3;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and x9 and x18 and x56 and x26 and not x42 ) = '1' then
         y91 <= '1' ;
         y92 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and x9 and x18 and x56 and not x26 and x42 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s4;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and x9 and x18 and x56 and not x26 and not x42 ) = '1' then
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and x9 and x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and x9 and not x18 and x56 and x52 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s5;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and x9 and not x18 and x56 and not x52 ) = '1' then
         y95 <= '1' ;
         y97 <= '1' ;
         current_absurd <= s6;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and x9 and not x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and not x9 and x53 and x58 and x41 ) = '1' then
         y22 <= '1' ;
         current_absurd <= s17;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and not x9 and x53 and x58 and not x41 ) = '1' then
         y98 <= '1' ;
         y99 <= '1' ;
         current_absurd <= s18;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and not x9 and x53 and not x58 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and not x9 and not x53 and x58 and x41 ) = '1' then
         y98 <= '1' ;
         y100 <= '1' ;
         current_absurd <= s19;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and not x9 and not x53 and x58 and not x41 ) = '1' then
         y20 <= '1' ;
         current_absurd <= s12;

      elsif ( not x10 and x11 and not x12 and not x7 and not x8 and not x9 and not x53 and not x58 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and not x11 and x7 and x18 and x56 and x26 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y57 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s3;

      elsif ( not x10 and not x11 and x7 and x18 and x56 and x26 and not x42 ) = '1' then
         y91 <= '1' ;
         y92 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and not x11 and x7 and x18 and x56 and not x26 and x42 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s4;

      elsif ( not x10 and not x11 and x7 and x18 and x56 and not x26 and not x42 ) = '1' then
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and not x11 and x7 and x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and not x11 and x7 and not x18 and x56 and x52 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s5;

      elsif ( not x10 and not x11 and x7 and not x18 and x56 and not x52 ) = '1' then
         y95 <= '1' ;
         y97 <= '1' ;
         current_absurd <= s6;

      elsif ( not x10 and not x11 and x7 and not x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and x8 and x9 and x12 and x56 and x18 and x26 ) = '1' then
         y12 <= '1' ;
         y85 <= '1' ;
         y92 <= '1' ;
         y93 <= '1' ;
         y146 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and x8 and x9 and x12 and x56 and x18 and not x26 ) = '1' then
         y18 <= '1' ;
         y86 <= '1' ;
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and x8 and x9 and x12 and x56 and not x18 ) = '1' then
         y19 <= '1' ;
         y64 <= '1' ;
         current_absurd <= s20;

      elsif ( not x10 and not x11 and not x7 and x8 and x9 and x12 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and x8 and x9 and not x12 and x58 ) = '1' then
         y135 <= '1' ;
         y136 <= '1' ;
         y137 <= '1' ;
         current_absurd <= s21;

      elsif ( not x10 and not x11 and not x7 and x8 and x9 and not x12 and not x58 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and x8 and not x9 and x12 and x58 ) = '1' then
         y43 <= '1' ;
         y44 <= '1' ;
         current_absurd <= s22;

      elsif ( not x10 and not x11 and not x7 and x8 and not x9 and x12 and not x58 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and x8 and not x9 and not x12 and x34 and x58 ) = '1' then
         y98 <= '1' ;
         y99 <= '1' ;
         current_absurd <= s18;

      elsif ( not x10 and not x11 and not x7 and x8 and not x9 and not x12 and x34 and not x58 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and x8 and not x9 and not x12 and not x34 and x33 and x58 ) = '1' then
         y98 <= '1' ;
         y100 <= '1' ;
         current_absurd <= s19;

      elsif ( not x10 and not x11 and not x7 and x8 and not x9 and not x12 and not x34 and x33 and not x58 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and x8 and not x9 and not x12 and not x34 and not x33 and x32 and x58 ) = '1' then
         y22 <= '1' ;
         current_absurd <= s17;

      elsif ( not x10 and not x11 and not x7 and x8 and not x9 and not x12 and not x34 and not x33 and x32 and not x58 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and x8 and not x9 and not x12 and not x34 and not x33 and not x32 and x58 ) = '1' then
         y20 <= '1' ;
         current_absurd <= s12;

      elsif ( not x10 and not x11 and not x7 and x8 and not x9 and not x12 and not x34 and not x33 and not x32 and not x58 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and not x8 and x18 and x56 and x26 and x42 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y57 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s3;

      elsif ( not x10 and not x11 and not x7 and not x8 and x18 and x56 and x26 and not x42 ) = '1' then
         y91 <= '1' ;
         y92 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and not x8 and x18 and x56 and not x26 and x42 ) = '1' then
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s4;

      elsif ( not x10 and not x11 and not x7 and not x8 and x18 and x56 and not x26 and not x42 ) = '1' then
         y92 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and not x8 and x18 and not x56 ) = '1' then
         current_absurd <= s1;

      elsif ( not x10 and not x11 and not x7 and not x8 and not x18 and x56 and x52 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y88 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s5;

      elsif ( not x10 and not x11 and not x7 and not x8 and not x18 and x56 and not x52 ) = '1' then
         y95 <= '1' ;
         y97 <= '1' ;
         current_absurd <= s6;

      else
         current_absurd <= s1;

      end if;

   when s2 =>
         current_absurd <= s23;

   when s3 =>
         y157 <= '1' ;
         y158 <= '1' ;
         current_absurd <= s24;

   when s4 =>
         y4 <= '1' ;
         y6 <= '1' ;
         y50 <= '1' ;
         y88 <= '1' ;
         current_absurd <= s25;

   when s5 =>
         y157 <= '1' ;
         y158 <= '1' ;
         current_absurd <= s26;

   when s6 =>
         y80 <= '1' ;
         current_absurd <= s27;

   when s7 =>
      if ( x16 and x14 ) = '1' then
         y27 <= '1' ;
         y29 <= '1' ;
         y30 <= '1' ;
         y74 <= '1' ;
         y152 <= '1' ;
         current_absurd <= s28;

      elsif ( x16 and not x14 ) = '1' then
         current_absurd <= s7;

      else
         y1 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y50 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s7;

      end if;

   when s8 =>
      if ( x29 ) = '1' then
         current_absurd <= s8;

      else
         y27 <= '1' ;
         y29 <= '1' ;
         y30 <= '1' ;
         y74 <= '1' ;
         y152 <= '1' ;
         current_absurd <= s28;

      end if;

   when s9 =>
      if ( x8 and x31 and x12 and x29 ) = '1' then
         current_absurd <= s9;

      elsif ( x8 and x31 and x12 and not x29 ) = '1' then
         y1 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y50 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s7;

      elsif ( x8 and x31 and not x12 and x4 and x14 ) = '1' then
         current_absurd <= s9;

      elsif ( x8 and x31 and not x12 and x4 and not x14 ) = '1' then
         y76 <= '1' ;
         y77 <= '1' ;
         current_absurd <= s8;

      elsif ( x8 and x31 and not x12 and not x4 ) = '1' then
         current_absurd <= s9;

      elsif ( x8 and not x31 ) = '1' then
         y24 <= '1' ;
         current_absurd <= s9;

      elsif ( not x8 and x10 and x31 and x14 ) = '1' then
         y31 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_absurd <= s13;

      elsif ( not x8 and x10 and x31 and not x14 ) = '1' then
         current_absurd <= s9;

      elsif ( not x8 and x10 and not x31 ) = '1' then
         y24 <= '1' ;
         current_absurd <= s9;

      elsif ( not x8 and not x10 and x31 and x5 and x14 ) = '1' then
         current_absurd <= s9;

      elsif ( not x8 and not x10 and x31 and x5 and not x14 ) = '1' then
         y31 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_absurd <= s15;

      elsif ( not x8 and not x10 and x31 and not x5 ) = '1' then
         current_absurd <= s9;

      else
         y24 <= '1' ;
         current_absurd <= s9;

      end if;

   when s10 =>
      if ( x45 ) = '1' then
         current_absurd <= s10;

      elsif ( not x45 and x25 and x22 and x21 ) = '1' then
         y85 <= '1' ;
         y93 <= '1' ;
         y166 <= '1' ;
         y167 <= '1' ;
         y170 <= '1' ;
         y171 <= '1' ;
         y172 <= '1' ;
         y174 <= '1' ;
         y176 <= '1' ;
         y178 <= '1' ;
         y180 <= '1' ;
         y184 <= '1' ;
         current_absurd <= s29;

      elsif ( not x45 and x25 and x22 and not x21 ) = '1' then
         y166 <= '1' ;
         y167 <= '1' ;
         y170 <= '1' ;
         y171 <= '1' ;
         y174 <= '1' ;
         y176 <= '1' ;
         y180 <= '1' ;
         current_absurd <= s30;

      elsif ( not x45 and x25 and not x22 and x21 ) = '1' then
         y166 <= '1' ;
         y167 <= '1' ;
         y170 <= '1' ;
         y171 <= '1' ;
         y174 <= '1' ;
         y176 <= '1' ;
         y178 <= '1' ;
         y180 <= '1' ;
         y184 <= '1' ;
         current_absurd <= s31;

      elsif ( not x45 and x25 and not x22 and not x21 ) = '1' then
         y166 <= '1' ;
         y170 <= '1' ;
         y171 <= '1' ;
         y183 <= '1' ;
         current_absurd <= s32;

      elsif ( not x45 and not x25 and x22 and x21 ) = '1' then
         y167 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y173 <= '1' ;
         y174 <= '1' ;
         current_absurd <= s33;

      elsif ( not x45 and not x25 and x22 and not x21 ) = '1' then
         y167 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y173 <= '1' ;
         y174 <= '1' ;
         current_absurd <= s34;

      elsif ( not x45 and not x25 and not x22 and x21 ) = '1' then
         y167 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y173 <= '1' ;
         y174 <= '1' ;
         current_absurd <= s35;

      else
         y167 <= '1' ;
         y168 <= '1' ;
         y169 <= '1' ;
         y173 <= '1' ;
         current_absurd <= s36;

      end if;

   when s11 =>
      if ( x3 ) = '1' then
         y20 <= '1' ;
         y106 <= '1' ;
         y107 <= '1' ;
         current_absurd <= s37;

      elsif ( not x3 and x8 ) = '1' then
         y149 <= '1' ;
         current_absurd <= s38;

      elsif ( not x3 and not x8 and x51 ) = '1' then
         y98 <= '1' ;
         current_absurd <= s39;

      elsif ( not x3 and not x8 and not x51 and x57 ) = '1' then
         y20 <= '1' ;
         y106 <= '1' ;
         y109 <= '1' ;
         current_absurd <= s40;

      else
         current_absurd <= s11;

      end if;

   when s12 =>
         y21 <= '1' ;
         current_absurd <= s1;

   when s13 =>
      if ( x6 ) = '1' then
         y29 <= '1' ;
         y30 <= '1' ;
         current_absurd <= s41;

      else
         current_absurd <= s13;

      end if;

   when s14 =>
      if ( x16 ) = '1' then
         y1 <= '1' ;
         y84 <= '1' ;
         y116 <= '1' ;
         y128 <= '1' ;
         y129 <= '1' ;
         y130 <= '1' ;
         current_absurd <= s42;

      else
         y120 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s14;

      end if;

   when s15 =>
         y29 <= '1' ;
         y30 <= '1' ;
         current_absurd <= s41;

   when s16 =>
         y86 <= '1' ;
         y92 <= '1' ;
         y161 <= '1' ;
         y195 <= '1' ;
         y199 <= '1' ;
         current_absurd <= s43;

   when s17 =>
      if ( x8 ) = '1' then
         y98 <= '1' ;
         y112 <= '1' ;
         current_absurd <= s44;

      else
         y98 <= '1' ;
         y100 <= '1' ;
         current_absurd <= s19;

      end if;

   when s18 =>
         y157 <= '1' ;
         y175 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s45;

   when s19 =>
         y157 <= '1' ;
         y175 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s46;

   when s20 =>
         y147 <= '1' ;
         current_absurd <= s47;

   when s21 =>
         y139 <= '1' ;
         current_absurd <= s48;

   when s22 =>
         y157 <= '1' ;
         y159 <= '1' ;
         y179 <= '1' ;
         y195 <= '1' ;
         y198 <= '1' ;
         current_absurd <= s49;

   when s23 =>
      if ( x61 ) = '1' then
         y120 <= '1' ;
         y161 <= '1' ;
         current_absurd <= s50;

      else
         y120 <= '1' ;
         y161 <= '1' ;
         current_absurd <= s51;

      end if;

   when s24 =>
         y63 <= '1' ;
         current_absurd <= s52;

   when s25 =>
         y63 <= '1' ;
         current_absurd <= s53;

   when s26 =>
         y63 <= '1' ;
         current_absurd <= s54;

   when s27 =>
      if ( x7 and x10 and x37 ) = '1' then
         y17 <= '1' ;
         y93 <= '1' ;
         y95 <= '1' ;
         current_absurd <= s55;

      elsif ( x7 and x10 and not x37 ) = '1' then
         y2 <= '1' ;
         y16 <= '1' ;
         current_absurd <= s56;

      elsif ( x7 and not x10 and x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

      elsif ( x7 and not x10 and not x11 and x12 and x28 ) = '1' then
         y80 <= '1' ;
         current_absurd <= s58;

      elsif ( x7 and not x10 and not x11 and x12 and not x28 and x35 and x27 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( x7 and not x10 and not x11 and x12 and not x28 and x35 and not x27 ) = '1' then
         current_absurd <= s1;

      elsif ( x7 and not x10 and not x11 and x12 and not x28 and not x35 ) = '1' then
         current_absurd <= s1;

      elsif ( x7 and not x10 and not x11 and not x12 and x27 ) = '1' then
         y80 <= '1' ;
         current_absurd <= s58;

      elsif ( x7 and not x10 and not x11 and not x12 and not x27 and x35 and x28 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( x7 and not x10 and not x11 and not x12 and not x27 and x35 and not x28 ) = '1' then
         current_absurd <= s1;

      elsif ( x7 and not x10 and not x11 and not x12 and not x27 and not x35 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and x8 and x10 and x9 and x37 ) = '1' then
         y17 <= '1' ;
         y93 <= '1' ;
         y95 <= '1' ;
         current_absurd <= s55;

      elsif ( not x7 and x8 and x10 and x9 and not x37 ) = '1' then
         y2 <= '1' ;
         y16 <= '1' ;
         current_absurd <= s56;

      elsif ( not x7 and x8 and x10 and not x9 and x12 and x11 and x37 ) = '1' then
         y17 <= '1' ;
         y93 <= '1' ;
         y95 <= '1' ;
         current_absurd <= s55;

      elsif ( not x7 and x8 and x10 and not x9 and x12 and x11 and not x37 ) = '1' then
         y2 <= '1' ;
         y16 <= '1' ;
         current_absurd <= s56;

      elsif ( not x7 and x8 and x10 and not x9 and x12 and not x11 ) = '1' then
         y55 <= '1' ;
         current_absurd <= s59;

      elsif ( not x7 and x8 and x10 and not x9 and not x12 and x11 ) = '1' then
         y56 <= '1' ;
         current_absurd <= s59;

      elsif ( not x7 and x8 and x10 and not x9 and not x12 and not x11 and x27 ) = '1' then
         y48 <= '1' ;
         current_absurd <= s60;

      elsif ( not x7 and x8 and x10 and not x9 and not x12 and not x11 and not x27 ) = '1' then
         current_absurd <= s27;

      elsif ( not x7 and x8 and not x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

      elsif ( not x7 and not x8 and x9 and x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

      elsif ( not x7 and not x8 and x9 and not x10 and x12 and x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

      elsif ( not x7 and not x8 and x9 and not x10 and x12 and not x11 and x37 ) = '1' then
         y17 <= '1' ;
         y93 <= '1' ;
         y95 <= '1' ;
         current_absurd <= s55;

      elsif ( not x7 and not x8 and x9 and not x10 and x12 and not x11 and not x37 ) = '1' then
         y2 <= '1' ;
         y16 <= '1' ;
         current_absurd <= s56;

      elsif ( not x7 and not x8 and x9 and not x10 and not x12 and x37 ) = '1' then
         y17 <= '1' ;
         y93 <= '1' ;
         y95 <= '1' ;
         current_absurd <= s55;

      elsif ( not x7 and not x8 and x9 and not x10 and not x12 and not x37 ) = '1' then
         y2 <= '1' ;
         y16 <= '1' ;
         current_absurd <= s56;

      elsif ( not x7 and not x8 and not x9 and x10 and x11 and x12 and x37 ) = '1' then
         y17 <= '1' ;
         y93 <= '1' ;
         y95 <= '1' ;
         current_absurd <= s55;

      elsif ( not x7 and not x8 and not x9 and x10 and x11 and x12 and not x37 and x65 ) = '1' then
         y2 <= '1' ;
         y16 <= '1' ;
         current_absurd <= s56;

      elsif ( not x7 and not x8 and not x9 and x10 and x11 and x12 and not x37 and not x65 and x35 and x27 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( not x7 and not x8 and not x9 and x10 and x11 and x12 and not x37 and not x65 and x35 and not x27 and x28 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( not x7 and not x8 and not x9 and x10 and x11 and x12 and not x37 and not x65 and x35 and not x27 and not x28 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and not x8 and not x9 and x10 and x11 and x12 and not x37 and not x65 and not x35 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and not x8 and not x9 and x10 and x11 and not x12 and x37 ) = '1' then
         y17 <= '1' ;
         y93 <= '1' ;
         y95 <= '1' ;
         current_absurd <= s55;

      elsif ( not x7 and not x8 and not x9 and x10 and x11 and not x12 and not x37 and x62 ) = '1' then
         y2 <= '1' ;
         y16 <= '1' ;
         current_absurd <= s56;

      elsif ( not x7 and not x8 and not x9 and x10 and x11 and not x12 and not x37 and not x62 and x35 and x27 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( not x7 and not x8 and not x9 and x10 and x11 and not x12 and not x37 and not x62 and x35 and not x27 and x28 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( not x7 and not x8 and not x9 and x10 and x11 and not x12 and not x37 and not x62 and x35 and not x27 and not x28 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and not x8 and not x9 and x10 and x11 and not x12 and not x37 and not x62 and not x35 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and not x8 and not x9 and x10 and not x11 and x37 ) = '1' then
         y17 <= '1' ;
         y93 <= '1' ;
         y95 <= '1' ;
         current_absurd <= s55;

      elsif ( not x7 and not x8 and not x9 and x10 and not x11 and not x37 and x15 ) = '1' then
         y2 <= '1' ;
         y16 <= '1' ;
         current_absurd <= s56;

      elsif ( not x7 and not x8 and not x9 and x10 and not x11 and not x37 and not x15 and x35 and x27 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( not x7 and not x8 and not x9 and x10 and not x11 and not x37 and not x15 and x35 and not x27 and x28 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( not x7 and not x8 and not x9 and x10 and not x11 and not x37 and not x15 and x35 and not x27 and not x28 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and not x8 and not x9 and x10 and not x11 and not x37 and not x15 and not x35 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and not x8 and not x9 and not x10 and x37 ) = '1' then
         y17 <= '1' ;
         y93 <= '1' ;
         y95 <= '1' ;
         current_absurd <= s55;

      else
         y2 <= '1' ;
         y16 <= '1' ;
         current_absurd <= s56;

      end if;

   when s28 =>
         y150 <= '1' ;
         current_absurd <= s61;

   when s29 =>
      if ( x48 ) = '1' then
         y166 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y183 <= '1' ;
         current_absurd <= s62;

      else
         current_absurd <= s29;

      end if;

   when s30 =>
      if ( x48 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s63;

      else
         current_absurd <= s30;

      end if;

   when s31 =>
      if ( x48 ) = '1' then
         y166 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y183 <= '1' ;
         current_absurd <= s64;

      else
         current_absurd <= s31;

      end if;

   when s32 =>
      if ( x48 and x43 and x45 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s10;

      elsif ( x48 and x43 and not x45 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s65;

      elsif ( x48 and not x43 ) = '1' then
         y41 <= '1' ;
         current_absurd <= s1;

      else
         current_absurd <= s32;

      end if;

   when s33 =>
         y167 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y173 <= '1' ;
         y175 <= '1' ;
         y176 <= '1' ;
         y177 <= '1' ;
         y178 <= '1' ;
         current_absurd <= s66;

   when s34 =>
         y167 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y173 <= '1' ;
         y175 <= '1' ;
         y176 <= '1' ;
         y177 <= '1' ;
         y178 <= '1' ;
         current_absurd <= s67;

   when s35 =>
         y167 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y173 <= '1' ;
         y175 <= '1' ;
         y176 <= '1' ;
         y177 <= '1' ;
         y178 <= '1' ;
         current_absurd <= s68;

   when s36 =>
      if ( x48 and x45 and x47 ) = '1' then
         y41 <= '1' ;
         current_absurd <= s1;

      elsif ( x48 and x45 and not x47 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s10;

      elsif ( x48 and not x45 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s69;

      else
         current_absurd <= s36;

      end if;

   when s37 =>
         y98 <= '1' ;
         current_absurd <= s70;

   when s38 =>
         y98 <= '1' ;
         current_absurd <= s71;

   when s39 =>
         y157 <= '1' ;
         y180 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s72;

   when s40 =>
         y98 <= '1' ;
         current_absurd <= s73;

   when s41 =>
      if ( x60 ) = '1' then
         current_absurd <= s41;

      else
         y27 <= '1' ;
         y28 <= '1' ;
         current_absurd <= s74;

      end if;

   when s42 =>
      if ( x13 ) = '1' then
         y126 <= '1' ;
         current_absurd <= s75;

      else
         y127 <= '1' ;
         current_absurd <= s75;

      end if;

   when s43 =>
      if ( x16 ) = '1' then
         current_absurd <= s1;

      else
         y155 <= '1' ;
         current_absurd <= s76;

      end if;

   when s44 =>
         y157 <= '1' ;
         y175 <= '1' ;
         y180 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s77;

   when s45 =>
      if ( x16 ) = '1' then
         y20 <= '1' ;
         current_absurd <= s12;

      else
         y98 <= '1' ;
         y99 <= '1' ;
         current_absurd <= s18;

      end if;

   when s46 =>
      if ( x16 ) = '1' then
         y20 <= '1' ;
         current_absurd <= s12;

      else
         y98 <= '1' ;
         y100 <= '1' ;
         current_absurd <= s19;

      end if;

   when s47 =>
         y65 <= '1' ;
         current_absurd <= s78;

   when s48 =>
         y119 <= '1' ;
         y124 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s79;

   when s49 =>
      if ( x16 ) = '1' then
         y157 <= '1' ;
         y159 <= '1' ;
         y165 <= '1' ;
         y180 <= '1' ;
         y184 <= '1' ;
         y197 <= '1' ;
         current_absurd <= s80;

      else
         y157 <= '1' ;
         y159 <= '1' ;
         y179 <= '1' ;
         y197 <= '1' ;
         current_absurd <= s81;

      end if;

   when s50 =>
         y123 <= '1' ;
         y161 <= '1' ;
         current_absurd <= s82;

   when s51 =>
         y123 <= '1' ;
         y161 <= '1' ;
         current_absurd <= s83;

   when s52 =>
         y158 <= '1' ;
         y159 <= '1' ;
         current_absurd <= s1;

   when s53 =>
         y8 <= '1' ;
         y10 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s84;

   when s54 =>
         y158 <= '1' ;
         y159 <= '1' ;
         current_absurd <= s85;

   when s55 =>
         y80 <= '1' ;
         current_absurd <= s86;

   when s56 =>
      if ( x39 ) = '1' then
         y4 <= '1' ;
         current_absurd <= s87;

      elsif ( not x39 and x10 ) = '1' then
         y4 <= '1' ;
         current_absurd <= s87;

      elsif ( not x39 and not x10 and x7 ) = '1' then
         y16 <= '1' ;
         y81 <= '1' ;
         y82 <= '1' ;
         current_absurd <= s88;

      else
         y4 <= '1' ;
         current_absurd <= s87;

      end if;

   when s57 =>
      if ( x9 ) = '1' then
         y4 <= '1' ;
         current_absurd <= s89;

      elsif ( not x9 and x10 and x8 and x7 ) = '1' then
         y4 <= '1' ;
         current_absurd <= s89;

      elsif ( not x9 and x10 and x8 and not x7 ) = '1' then
         y16 <= '1' ;
         y81 <= '1' ;
         y82 <= '1' ;
         current_absurd <= s88;

      elsif ( not x9 and x10 and not x8 ) = '1' then
         y4 <= '1' ;
         current_absurd <= s89;

      else
         y4 <= '1' ;
         current_absurd <= s89;

      end if;

   when s58 =>
         y80 <= '1' ;
         current_absurd <= s59;

   when s59 =>
      if ( x35 and x27 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( x35 and not x27 and x28 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( x35 and not x27 and not x28 ) = '1' then
         current_absurd <= s1;

      else
         current_absurd <= s1;

      end if;

   when s60 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         y51 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         current_absurd <= s90;

   when s61 =>
      if ( x4 ) = '1' then
         y151 <= '1' ;
         current_absurd <= s91;

      else
         current_absurd <= s61;

      end if;

   when s62 =>
         y159 <= '1' ;
         y166 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y180 <= '1' ;
         y182 <= '1' ;
         y183 <= '1' ;
         current_absurd <= s92;

   when s63 =>
         y12 <= '1' ;
         y18 <= '1' ;
         y93 <= '1' ;
         y166 <= '1' ;
         y167 <= '1' ;
         y170 <= '1' ;
         y171 <= '1' ;
         y172 <= '1' ;
         y177 <= '1' ;
         y178 <= '1' ;
         y179 <= '1' ;
         current_absurd <= s93;

   when s64 =>
         y159 <= '1' ;
         y166 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y180 <= '1' ;
         y182 <= '1' ;
         y183 <= '1' ;
         current_absurd <= s94;

   when s65 =>
      if ( x22 and x21 ) = '1' then
         y85 <= '1' ;
         y93 <= '1' ;
         y166 <= '1' ;
         y167 <= '1' ;
         y170 <= '1' ;
         y171 <= '1' ;
         y172 <= '1' ;
         y174 <= '1' ;
         y176 <= '1' ;
         y178 <= '1' ;
         y180 <= '1' ;
         y184 <= '1' ;
         current_absurd <= s29;

      elsif ( x22 and not x21 ) = '1' then
         y166 <= '1' ;
         y167 <= '1' ;
         y170 <= '1' ;
         y171 <= '1' ;
         y174 <= '1' ;
         y176 <= '1' ;
         y180 <= '1' ;
         current_absurd <= s30;

      elsif ( not x22 and x21 ) = '1' then
         y166 <= '1' ;
         y167 <= '1' ;
         y170 <= '1' ;
         y171 <= '1' ;
         y174 <= '1' ;
         y176 <= '1' ;
         y178 <= '1' ;
         y180 <= '1' ;
         y184 <= '1' ;
         current_absurd <= s31;

      else
         y166 <= '1' ;
         y170 <= '1' ;
         y171 <= '1' ;
         y183 <= '1' ;
         current_absurd <= s32;

      end if;

   when s66 =>
         y18 <= '1' ;
         y85 <= '1' ;
         y166 <= '1' ;
         y167 <= '1' ;
         y170 <= '1' ;
         y171 <= '1' ;
         y172 <= '1' ;
         current_absurd <= s95;

   when s67 =>
         y18 <= '1' ;
         y85 <= '1' ;
         y166 <= '1' ;
         y167 <= '1' ;
         y170 <= '1' ;
         y171 <= '1' ;
         y172 <= '1' ;
         current_absurd <= s96;

   when s68 =>
         y165 <= '1' ;
         y166 <= '1' ;
         y167 <= '1' ;
         y168 <= '1' ;
         y169 <= '1' ;
         current_absurd <= s97;

   when s69 =>
      if ( x22 and x21 ) = '1' then
         y167 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y173 <= '1' ;
         y174 <= '1' ;
         current_absurd <= s33;

      elsif ( x22 and not x21 ) = '1' then
         y167 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y173 <= '1' ;
         y174 <= '1' ;
         current_absurd <= s34;

      elsif ( not x22 and x21 ) = '1' then
         y167 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y173 <= '1' ;
         y174 <= '1' ;
         current_absurd <= s35;

      else
         y167 <= '1' ;
         y168 <= '1' ;
         y169 <= '1' ;
         y173 <= '1' ;
         current_absurd <= s36;

      end if;

   when s70 =>
         y159 <= '1' ;
         y175 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s98;

   when s71 =>
         y157 <= '1' ;
         y180 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s99;

   when s72 =>
      if ( x16 ) = '1' then
         y20 <= '1' ;
         y106 <= '1' ;
         y109 <= '1' ;
         current_absurd <= s40;

      else
         y98 <= '1' ;
         current_absurd <= s39;

      end if;

   when s73 =>
         y159 <= '1' ;
         y175 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s100;

   when s74 =>
         y25 <= '1' ;
         y26 <= '1' ;
         current_absurd <= s101;

   when s75 =>
         y120 <= '1' ;
         y195 <= '1' ;
         y201 <= '1' ;
         current_absurd <= s102;

   when s76 =>
         y86 <= '1' ;
         y209 <= '1' ;
         current_absurd <= s103;

   when s77 =>
      if ( x16 ) = '1' then
         y20 <= '1' ;
         current_absurd <= s104;

      else
         y98 <= '1' ;
         y112 <= '1' ;
         current_absurd <= s44;

      end if;

   when s78 =>
         y66 <= '1' ;
         current_absurd <= s105;

   when s79 =>
      if ( x16 ) = '1' then
         y134 <= '1' ;
         current_absurd <= s106;

      else
         y139 <= '1' ;
         current_absurd <= s48;

      end if;

   when s80 =>
         y159 <= '1' ;
         y165 <= '1' ;
         y175 <= '1' ;
         y177 <= '1' ;
         y180 <= '1' ;
         y195 <= '1' ;
         y196 <= '1' ;
         current_absurd <= s107;

   when s81 =>
         y159 <= '1' ;
         y165 <= '1' ;
         y175 <= '1' ;
         y177 <= '1' ;
         y180 <= '1' ;
         y195 <= '1' ;
         y196 <= '1' ;
         current_absurd <= s108;

   when s82 =>
         y119 <= '1' ;
         y161 <= '1' ;
         current_absurd <= s109;

   when s83 =>
         y119 <= '1' ;
         y161 <= '1' ;
         current_absurd <= s110;

   when s84 =>
         current_absurd <= s1;

   when s85 =>
         y37 <= '1' ;
         y55 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y87 <= '1' ;
         current_absurd <= s1;

   when s86 =>
      if ( x7 and x10 and x38 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

      elsif ( x7 and x10 and not x38 and x39 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s111;

      elsif ( x7 and x10 and not x38 and not x39 ) = '1' then
         y5 <= '1' ;
         y16 <= '1' ;
         y51 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s112;

      elsif ( x7 and not x10 and x39 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s111;

      elsif ( x7 and not x10 and not x39 ) = '1' then
         y5 <= '1' ;
         y16 <= '1' ;
         y51 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s112;

      elsif ( not x7 and x9 and x38 and x8 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_absurd <= s113;

      elsif ( not x7 and x9 and x38 and not x8 and x11 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_absurd <= s113;

      elsif ( not x7 and x9 and x38 and not x8 and not x11 and x12 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_absurd <= s113;

      elsif ( not x7 and x9 and x38 and not x8 and not x11 and not x12 ) = '1' then
         y18 <= '1' ;
         y37 <= '1' ;
         current_absurd <= s59;

      elsif ( not x7 and x9 and not x38 and x39 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s111;

      elsif ( not x7 and x9 and not x38 and not x39 ) = '1' then
         y5 <= '1' ;
         y16 <= '1' ;
         y51 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s112;

      elsif ( not x7 and not x9 and x8 and x38 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y49 <= '1' ;
         y51 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         y57 <= '1' ;
         current_absurd <= s114;

      elsif ( not x7 and not x9 and x8 and not x38 and x39 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s111;

      elsif ( not x7 and not x9 and x8 and not x38 and not x39 ) = '1' then
         y5 <= '1' ;
         y16 <= '1' ;
         y51 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s112;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and x12 and x65 and x38 ) = '1' then
         y18 <= '1' ;
         y37 <= '1' ;
         current_absurd <= s59;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and x12 and x65 and not x38 and x39 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s111;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and x12 and x65 and not x38 and not x39 ) = '1' then
         y5 <= '1' ;
         y16 <= '1' ;
         y51 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s112;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and x12 and not x65 and x35 and x27 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and x12 and not x65 and x35 and not x27 and x28 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and x12 and not x65 and x35 and not x27 and not x28 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and x12 and not x65 and not x35 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and not x12 and x62 and x38 ) = '1' then
         y18 <= '1' ;
         y37 <= '1' ;
         current_absurd <= s59;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and not x12 and x62 and not x38 and x39 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s111;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and not x12 and x62 and not x38 and not x39 ) = '1' then
         y5 <= '1' ;
         y16 <= '1' ;
         y51 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s112;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and not x12 and not x62 and x35 and x27 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and not x12 and not x62 and x35 and not x27 and x28 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and not x12 and not x62 and x35 and not x27 and not x28 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and not x9 and not x8 and x10 and x11 and not x12 and not x62 and not x35 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and not x9 and not x8 and x10 and not x11 and x15 and x38 ) = '1' then
         y18 <= '1' ;
         y37 <= '1' ;
         current_absurd <= s59;

      elsif ( not x7 and not x9 and not x8 and x10 and not x11 and x15 and not x38 and x39 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s111;

      elsif ( not x7 and not x9 and not x8 and x10 and not x11 and x15 and not x38 and not x39 ) = '1' then
         y5 <= '1' ;
         y16 <= '1' ;
         y51 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s112;

      elsif ( not x7 and not x9 and not x8 and x10 and not x11 and not x15 and x35 and x27 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( not x7 and not x9 and not x8 and x10 and not x11 and not x15 and x35 and not x27 and x28 ) = '1' then
         y96 <= '1' ;
         current_absurd <= s1;

      elsif ( not x7 and not x9 and not x8 and x10 and not x11 and not x15 and x35 and not x27 and not x28 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and not x9 and not x8 and x10 and not x11 and not x15 and not x35 ) = '1' then
         current_absurd <= s1;

      elsif ( not x7 and not x9 and not x8 and not x10 and x38 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

      elsif ( not x7 and not x9 and not x8 and not x10 and not x38 and x39 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s111;

      else
         y5 <= '1' ;
         y16 <= '1' ;
         y51 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s112;

      end if;

   when s87 =>
         y83 <= '1' ;
         current_absurd <= s115;

   when s88 =>
         y83 <= '1' ;
         current_absurd <= s116;

   when s89 =>
         y83 <= '1' ;
         current_absurd <= s117;

   when s90 =>
         y16 <= '1' ;
         y81 <= '1' ;
         y82 <= '1' ;
         current_absurd <= s88;

   when s91 =>
      if ( x12 and x4 ) = '1' then
         y73 <= '1' ;
         current_absurd <= s118;

      elsif ( x12 and not x4 ) = '1' then
         current_absurd <= s91;

      else
         y78 <= '1' ;
         current_absurd <= s119;

      end if;

   when s92 =>
         y166 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y175 <= '1' ;
         y180 <= '1' ;
         y181 <= '1' ;
         y183 <= '1' ;
         current_absurd <= s94;

   when s93 =>
      if ( x48 ) = '1' then
         y166 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y183 <= '1' ;
         current_absurd <= s120;

      else
         current_absurd <= s93;

      end if;

   when s94 =>
      if ( x43 and x45 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s10;

      elsif ( x43 and not x45 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s65;

      else
         y41 <= '1' ;
         current_absurd <= s1;

      end if;

   when s95 =>
         y165 <= '1' ;
         y166 <= '1' ;
         y167 <= '1' ;
         y168 <= '1' ;
         y169 <= '1' ;
         current_absurd <= s121;

   when s96 =>
         y165 <= '1' ;
         y166 <= '1' ;
         y167 <= '1' ;
         y168 <= '1' ;
         y169 <= '1' ;
         current_absurd <= s122;

   when s97 =>
      if ( x48 and x45 and x47 ) = '1' then
         y41 <= '1' ;
         current_absurd <= s1;

      elsif ( x48 and x45 and not x47 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s10;

      elsif ( x48 and not x45 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s69;

      else
         current_absurd <= s97;

      end if;

   when s98 =>
      if ( x16 and x19 ) = '1' then
         y20 <= '1' ;
         y108 <= '1' ;
         y110 <= '1' ;
         current_absurd <= s123;

      elsif ( x16 and not x19 and x58 ) = '1' then
         y20 <= '1' ;
         y109 <= '1' ;
         y111 <= '1' ;
         current_absurd <= s11;

      elsif ( x16 and not x19 and not x58 ) = '1' then
         current_absurd <= s98;

      else
         y98 <= '1' ;
         current_absurd <= s70;

      end if;

   when s99 =>
      if ( x16 and x49 ) = '1' then
         y20 <= '1' ;
         y106 <= '1' ;
         y109 <= '1' ;
         current_absurd <= s40;

      elsif ( x16 and not x49 ) = '1' then
         current_absurd <= s99;

      elsif ( not x16 and x44 ) = '1' then
         y148 <= '1' ;
         current_absurd <= s124;

      else
         y98 <= '1' ;
         current_absurd <= s71;

      end if;

   when s100 =>
      if ( x16 ) = '1' then
         y20 <= '1' ;
         y108 <= '1' ;
         y110 <= '1' ;
         current_absurd <= s123;

      else
         y98 <= '1' ;
         current_absurd <= s73;

      end if;

   when s101 =>
      if ( x64 and x30 ) = '1' then
         y23 <= '1' ;
         current_absurd <= s125;

      elsif ( x64 and not x30 ) = '1' then
         y104 <= '1' ;
         y105 <= '1' ;
         current_absurd <= s126;

      else
         y25 <= '1' ;
         y26 <= '1' ;
         current_absurd <= s101;

      end if;

   when s102 =>
      if ( x16 and x36 and x55 and x2 and x1 ) = '1' then
         y119 <= '1' ;
         y195 <= '1' ;
         y202 <= '1' ;
         current_absurd <= s127;

      elsif ( x16 and x36 and x55 and x2 and not x1 ) = '1' then
         y117 <= '1' ;
         y118 <= '1' ;
         y119 <= '1' ;
         y121 <= '1' ;
         y122 <= '1' ;
         y123 <= '1' ;
         y124 <= '1' ;
         y125 <= '1' ;
         current_absurd <= s128;

      elsif ( x16 and x36 and x55 and not x2 ) = '1' then
         y117 <= '1' ;
         y118 <= '1' ;
         y119 <= '1' ;
         y121 <= '1' ;
         y122 <= '1' ;
         y123 <= '1' ;
         y124 <= '1' ;
         y125 <= '1' ;
         current_absurd <= s128;

      elsif ( x16 and x36 and not x55 ) = '1' then
         y46 <= '1' ;
         current_absurd <= s129;

      elsif ( x16 and not x36 ) = '1' then
         y161 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         y200 <= '1' ;
         current_absurd <= s130;

      else
         y120 <= '1' ;
         y195 <= '1' ;
         y201 <= '1' ;
         current_absurd <= s102;

      end if;

   when s103 =>
         y12 <= '1' ;
         y86 <= '1' ;
         y92 <= '1' ;
         y95 <= '1' ;
         y161 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s131;

   when s104 =>
         y98 <= '1' ;
         y100 <= '1' ;
         current_absurd <= s19;

   when s105 =>
      if ( x7 ) = '1' then
         y86 <= '1' ;
         y92 <= '1' ;
         y161 <= '1' ;
         y195 <= '1' ;
         y199 <= '1' ;
         current_absurd <= s43;

      else
         y86 <= '1' ;
         y92 <= '1' ;
         y161 <= '1' ;
         y195 <= '1' ;
         y199 <= '1' ;
         current_absurd <= s132;

      end if;

   when s106 =>
      if ( x20 ) = '1' then
         y138 <= '1' ;
         current_absurd <= s133;

      else
         current_absurd <= s106;

      end if;

   when s107 =>
      if ( x16 ) = '1' then
         y98 <= '1' ;
         y99 <= '1' ;
         current_absurd <= s18;

      else
         y20 <= '1' ;
         current_absurd <= s12;

      end if;

   when s108 =>
      if ( x16 ) = '1' then
         y98 <= '1' ;
         y100 <= '1' ;
         current_absurd <= s19;

      else
         y20 <= '1' ;
         current_absurd <= s12;

      end if;

   when s109 =>
         y120 <= '1' ;
         y162 <= '1' ;
         current_absurd <= s134;

   when s110 =>
         y120 <= '1' ;
         y162 <= '1' ;
         current_absurd <= s135;

   when s111 =>
         y4 <= '1' ;
         y6 <= '1' ;
         y50 <= '1' ;
         y88 <= '1' ;
         current_absurd <= s136;

   when s112 =>
      if ( x16 and x7 and x10 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s138;

      elsif ( x16 and x7 and not x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s137;

      elsif ( x16 and not x7 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s138;

      else
         y2 <= '1' ;
         y16 <= '1' ;
         current_absurd <= s139;

      end if;

   when s113 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         current_absurd <= s90;

   when s114 =>
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

   when s115 =>
         y6 <= '1' ;
         y51 <= '1' ;
         current_absurd <= s140;

   when s116 =>
         y82 <= '1' ;
         y84 <= '1' ;
         current_absurd <= s141;

   when s117 =>
         y6 <= '1' ;
         y51 <= '1' ;
         current_absurd <= s142;

   when s118 =>
      if ( x40 ) = '1' then
         current_absurd <= s118;

      else
         y74 <= '1' ;
         y152 <= '1' ;
         y154 <= '1' ;
         current_absurd <= s143;

      end if;

   when s119 =>
         y75 <= '1' ;
         current_absurd <= s144;

   when s120 =>
         y159 <= '1' ;
         y166 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y180 <= '1' ;
         y182 <= '1' ;
         y183 <= '1' ;
         current_absurd <= s145;

   when s121 =>
      if ( x48 and x45 and x47 ) = '1' then
         y41 <= '1' ;
         current_absurd <= s1;

      elsif ( x48 and x45 and not x47 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s10;

      elsif ( x48 and not x45 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s69;

      else
         current_absurd <= s121;

      end if;

   when s122 =>
      if ( x48 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s146;

      else
         current_absurd <= s122;

      end if;

   when s123 =>
         y98 <= '1' ;
         current_absurd <= s147;

   when s124 =>
         y120 <= '1' ;
         y195 <= '1' ;
         y207 <= '1' ;
         y208 <= '1' ;
         current_absurd <= s148;

   when s125 =>
      if ( x60 ) = '1' then
         y25 <= '1' ;
         y26 <= '1' ;
         current_absurd <= s101;

      elsif ( not x60 and x63 and x23 ) = '1' then
         y23 <= '1' ;
         current_absurd <= s1;

      elsif ( not x60 and x63 and not x23 ) = '1' then
         y28 <= '1' ;
         y35 <= '1' ;
         y81 <= '1' ;
         current_absurd <= s149;

      elsif ( not x60 and not x63 and x23 ) = '1' then
         y25 <= '1' ;
         y26 <= '1' ;
         current_absurd <= s101;

      else
         y28 <= '1' ;
         y35 <= '1' ;
         y81 <= '1' ;
         current_absurd <= s150;

      end if;

   when s126 =>
         y57 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s151;

   when s127 =>
      if ( x16 ) = '1' then
         y117 <= '1' ;
         y118 <= '1' ;
         y119 <= '1' ;
         y120 <= '1' ;
         y121 <= '1' ;
         y122 <= '1' ;
         current_absurd <= s128;

      else
         y117 <= '1' ;
         y118 <= '1' ;
         y119 <= '1' ;
         y121 <= '1' ;
         y122 <= '1' ;
         y123 <= '1' ;
         y124 <= '1' ;
         y125 <= '1' ;
         current_absurd <= s128;

      end if;

   when s128 =>
         y113 <= '1' ;
         current_absurd <= s152;

   when s129 =>
         y45 <= '1' ;
         current_absurd <= s153;

   when s130 =>
      if ( x16 ) = '1' then
         y47 <= '1' ;
         current_absurd <= s154;

      else
         y161 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         y196 <= '1' ;
         y200 <= '1' ;
         current_absurd <= s155;

      end if;

   when s131 =>
      if ( x16 ) = '1' then
         y66 <= '1' ;
         current_absurd <= s105;

      else
         y12 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y85 <= '1' ;
         current_absurd <= s156;

      end if;

   when s132 =>
      if ( x16 ) = '1' then
         y63 <= '1' ;
         current_absurd <= s157;

      else
         y19 <= '1' ;
         y86 <= '1' ;
         y93 <= '1' ;
         current_absurd <= s158;

      end if;

   when s133 =>
      if ( x20 ) = '1' then
         y138 <= '1' ;
         current_absurd <= s133;

      else
         y58 <= '1' ;
         current_absurd <= s159;

      end if;

   when s134 =>
         y123 <= '1' ;
         y162 <= '1' ;
         current_absurd <= s160;

   when s135 =>
         y123 <= '1' ;
         y162 <= '1' ;
         current_absurd <= s161;

   when s136 =>
         y63 <= '1' ;
         current_absurd <= s162;

   when s137 =>
         y157 <= '1' ;
         y158 <= '1' ;
         current_absurd <= s163;

   when s138 =>
         y4 <= '1' ;
         y6 <= '1' ;
         y50 <= '1' ;
         y88 <= '1' ;
         current_absurd <= s164;

   when s139 =>
         y4 <= '1' ;
         current_absurd <= s165;

   when s140 =>
         y83 <= '1' ;
         current_absurd <= s166;

   when s141 =>
         y83 <= '1' ;
         current_absurd <= s167;

   when s142 =>
         y83 <= '1' ;
         current_absurd <= s168;

   when s143 =>
      if ( x54 ) = '1' then
         y153 <= '1' ;
         current_absurd <= s169;

      else
         current_absurd <= s143;

      end if;

   when s144 =>
      if ( x4 ) = '1' then
         y73 <= '1' ;
         current_absurd <= s118;

      else
         current_absurd <= s144;

      end if;

   when s145 =>
         y166 <= '1' ;
         y168 <= '1' ;
         y171 <= '1' ;
         y175 <= '1' ;
         y180 <= '1' ;
         y181 <= '1' ;
         y183 <= '1' ;
         current_absurd <= s94;

   when s146 =>
         y157 <= '1' ;
         y159 <= '1' ;
         y165 <= '1' ;
         y166 <= '1' ;
         y167 <= '1' ;
         y168 <= '1' ;
         y169 <= '1' ;
         y175 <= '1' ;
         y179 <= '1' ;
         y180 <= '1' ;
         y181 <= '1' ;
         y182 <= '1' ;
         current_absurd <= s170;

   when s147 =>
         y157 <= '1' ;
         y159 <= '1' ;
         y175 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s171;

   when s148 =>
      if ( x16 ) = '1' then
         y20 <= '1' ;
         y106 <= '1' ;
         y109 <= '1' ;
         current_absurd <= s40;

      else
         y98 <= '1' ;
         current_absurd <= s71;

      end if;

   when s149 =>
         y57 <= '1' ;
         y81 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s172;

   when s150 =>
         y57 <= '1' ;
         y81 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s173;

   when s151 =>
      if ( x16 ) = '1' then
         y32 <= '1' ;
         current_absurd <= s174;

      else
         y103 <= '1' ;
         current_absurd <= s174;

      end if;

   when s152 =>
         y120 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s175;

   when s153 =>
      if ( x2 and x1 ) = '1' then
         y119 <= '1' ;
         y195 <= '1' ;
         y202 <= '1' ;
         current_absurd <= s127;

      elsif ( x2 and not x1 ) = '1' then
         y117 <= '1' ;
         y118 <= '1' ;
         y119 <= '1' ;
         y121 <= '1' ;
         y122 <= '1' ;
         y123 <= '1' ;
         y124 <= '1' ;
         y125 <= '1' ;
         current_absurd <= s128;

      else
         y117 <= '1' ;
         y118 <= '1' ;
         y119 <= '1' ;
         y121 <= '1' ;
         y122 <= '1' ;
         y123 <= '1' ;
         y124 <= '1' ;
         y125 <= '1' ;
         current_absurd <= s128;

      end if;

   when s154 =>
      if ( x55 and x2 and x1 ) = '1' then
         y119 <= '1' ;
         y195 <= '1' ;
         y202 <= '1' ;
         current_absurd <= s127;

      elsif ( x55 and x2 and not x1 ) = '1' then
         y117 <= '1' ;
         y118 <= '1' ;
         y119 <= '1' ;
         y121 <= '1' ;
         y122 <= '1' ;
         y123 <= '1' ;
         y124 <= '1' ;
         y125 <= '1' ;
         current_absurd <= s128;

      elsif ( x55 and not x2 ) = '1' then
         y117 <= '1' ;
         y118 <= '1' ;
         y119 <= '1' ;
         y121 <= '1' ;
         y122 <= '1' ;
         y123 <= '1' ;
         y124 <= '1' ;
         y125 <= '1' ;
         current_absurd <= s128;

      else
         y46 <= '1' ;
         current_absurd <= s129;

      end if;

   when s155 =>
      if ( x16 ) = '1' then
         current_absurd <= s176;

      elsif ( not x16 and x55 and x2 and x1 ) = '1' then
         y119 <= '1' ;
         y195 <= '1' ;
         y202 <= '1' ;
         current_absurd <= s127;

      elsif ( not x16 and x55 and x2 and not x1 ) = '1' then
         y117 <= '1' ;
         y118 <= '1' ;
         y119 <= '1' ;
         y121 <= '1' ;
         y122 <= '1' ;
         y123 <= '1' ;
         y124 <= '1' ;
         y125 <= '1' ;
         current_absurd <= s128;

      elsif ( not x16 and x55 and not x2 ) = '1' then
         y117 <= '1' ;
         y118 <= '1' ;
         y119 <= '1' ;
         y121 <= '1' ;
         y122 <= '1' ;
         y123 <= '1' ;
         y124 <= '1' ;
         y125 <= '1' ;
         current_absurd <= s128;

      else
         y46 <= '1' ;
         current_absurd <= s129;

      end if;

   when s156 =>
         y147 <= '1' ;
         current_absurd <= s177;

   when s157 =>
         y85 <= '1' ;
         y146 <= '1' ;
         current_absurd <= s1;

   when s158 =>
         y147 <= '1' ;
         current_absurd <= s178;

   when s159 =>
         y123 <= '1' ;
         y195 <= '1' ;
         y196 <= '1' ;
         current_absurd <= s179;

   when s160 =>
         y119 <= '1' ;
         y162 <= '1' ;
         current_absurd <= s180;

   when s161 =>
         y119 <= '1' ;
         y162 <= '1' ;
         current_absurd <= s181;

   when s162 =>
         y8 <= '1' ;
         y10 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s182;

   when s163 =>
         y63 <= '1' ;
         current_absurd <= s183;

   when s164 =>
         y63 <= '1' ;
         current_absurd <= s184;

   when s165 =>
         y83 <= '1' ;
         current_absurd <= s185;

   when s166 =>
         y8 <= '1' ;
         current_absurd <= s186;

   when s167 =>
         y81 <= '1' ;
         y82 <= '1' ;
         y84 <= '1' ;
         current_absurd <= s187;

   when s168 =>
         y8 <= '1' ;
         current_absurd <= s188;

   when s169 =>
      if ( x54 ) = '1' then
         current_absurd <= s169;

      else
         current_absurd <= s189;

      end if;

   when s170 =>
      if ( x48 and x45 and x47 ) = '1' then
         y41 <= '1' ;
         current_absurd <= s1;

      elsif ( x48 and x45 and not x47 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s10;

      elsif ( x48 and not x45 ) = '1' then
         y42 <= '1' ;
         current_absurd <= s69;

      else
         current_absurd <= s170;

      end if;

   when s171 =>
      if ( x16 and x3 ) = '1' then
         y20 <= '1' ;
         y106 <= '1' ;
         y107 <= '1' ;
         current_absurd <= s37;

      elsif ( x16 and not x3 ) = '1' then
         y20 <= '1' ;
         y107 <= '1' ;
         y108 <= '1' ;
         current_absurd <= s190;

      else
         y98 <= '1' ;
         current_absurd <= s147;

      end if;

   when s172 =>
      if ( x16 ) = '1' then
         y31 <= '1' ;
         current_absurd <= s191;

      else
         y101 <= '1' ;
         current_absurd <= s191;

      end if;

   when s173 =>
      if ( x16 ) = '1' then
         y31 <= '1' ;
         current_absurd <= s192;

      else
         y101 <= '1' ;
         current_absurd <= s192;

      end if;

   when s174 =>
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s193;

   when s175 =>
      if ( x16 ) = '1' then
         current_absurd <= s1;

      else
         y120 <= '1' ;
         y161 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s194;

      end if;

   when s176 =>
         y120 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s195;

   when s177 =>
         y63 <= '1' ;
         y65 <= '1' ;
         current_absurd <= s196;

   when s178 =>
         y85 <= '1' ;
         y95 <= '1' ;
         y161 <= '1' ;
         y195 <= '1' ;
         y199 <= '1' ;
         y200 <= '1' ;
         current_absurd <= s197;

   when s179 =>
      if ( x16 ) = '1' then
         y135 <= '1' ;
         y136 <= '1' ;
         y137 <= '1' ;
         current_absurd <= s198;

      else
         y190 <= '1' ;
         y191 <= '1' ;
         y192 <= '1' ;
         current_absurd <= s199;

      end if;

   when s180 =>
         y120 <= '1' ;
         y123 <= '1' ;
         current_absurd <= s200;

   when s181 =>
         y120 <= '1' ;
         y123 <= '1' ;
         current_absurd <= s201;

   when s182 =>
         y17 <= '1' ;
         current_absurd <= s202;

   when s183 =>
         y158 <= '1' ;
         y159 <= '1' ;
         current_absurd <= s59;

   when s184 =>
         y8 <= '1' ;
         y10 <= '1' ;
         y89 <= '1' ;
         y90 <= '1' ;
         current_absurd <= s203;

   when s185 =>
         y6 <= '1' ;
         y51 <= '1' ;
         current_absurd <= s204;

   when s186 =>
         y83 <= '1' ;
         current_absurd <= s205;

   when s187 =>
         y83 <= '1' ;
         current_absurd <= s206;

   when s188 =>
         y83 <= '1' ;
         current_absurd <= s207;

   when s189 =>
         y72 <= '1' ;
         current_absurd <= s208;

   when s190 =>
         y98 <= '1' ;
         current_absurd <= s209;

   when s191 =>
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s210;

   when s192 =>
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s211;

   when s193 =>
      if ( x16 ) = '1' then
         y102 <= '1' ;
         current_absurd <= s125;

      elsif ( not x16 and x60 ) = '1' then
         y25 <= '1' ;
         y26 <= '1' ;
         current_absurd <= s101;

      elsif ( not x16 and not x60 and x63 and x23 ) = '1' then
         y23 <= '1' ;
         current_absurd <= s1;

      elsif ( not x16 and not x60 and x63 and not x23 ) = '1' then
         y28 <= '1' ;
         y35 <= '1' ;
         y81 <= '1' ;
         current_absurd <= s149;

      elsif ( not x16 and not x60 and not x63 and x23 ) = '1' then
         y25 <= '1' ;
         y26 <= '1' ;
         current_absurd <= s101;

      else
         y28 <= '1' ;
         y35 <= '1' ;
         y81 <= '1' ;
         current_absurd <= s150;

      end if;

   when s194 =>
      if ( x16 ) = '1' then
         y16 <= '1' ;
         y84 <= '1' ;
         y114 <= '1' ;
         y115 <= '1' ;
         y116 <= '1' ;
         current_absurd <= s1;

      else
         y113 <= '1' ;
         current_absurd <= s152;

      end if;

   when s195 =>
      if ( x16 ) = '1' then
         current_absurd <= s212;

      else
         y120 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s195;

      end if;

   when s196 =>
         y147 <= '1' ;
         current_absurd <= s213;

   when s197 =>
      if ( x16 ) = '1' then
         y65 <= '1' ;
         current_absurd <= s78;

      else
         y66 <= '1' ;
         current_absurd <= s105;

      end if;

   when s198 =>
         y139 <= '1' ;
         current_absurd <= s214;

   when s199 =>
         y194 <= '1' ;
         current_absurd <= s215;

   when s200 =>
         y123 <= '1' ;
         y161 <= '1' ;
         y162 <= '1' ;
         current_absurd <= s201;

   when s201 =>
      if ( x50 ) = '1' then
         current_absurd <= s216;

      else
         y160 <= '1' ;
         current_absurd <= s217;

      end if;

   when s202 =>
         y5 <= '1' ;
         y16 <= '1' ;
         y51 <= '1' ;
         y162 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s112;

   when s203 =>
      if ( x7 ) = '1' then
         y17 <= '1' ;
         current_absurd <= s218;

      elsif ( not x7 and x8 and x9 ) = '1' then
         y17 <= '1' ;
         current_absurd <= s218;

      elsif ( not x7 and x8 and not x9 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

      elsif ( not x7 and not x8 and x9 and x11 ) = '1' then
         y17 <= '1' ;
         current_absurd <= s218;

      elsif ( not x7 and not x8 and x9 and not x11 and x12 ) = '1' then
         y17 <= '1' ;
         current_absurd <= s218;

      elsif ( not x7 and not x8 and x9 and not x11 and not x12 ) = '1' then
         y37 <= '1' ;
         current_absurd <= s59;

      elsif ( not x7 and not x8 and not x9 and x10 ) = '1' then
         y37 <= '1' ;
         current_absurd <= s59;

      else
         y17 <= '1' ;
         current_absurd <= s218;

      end if;

   when s204 =>
         y83 <= '1' ;
         current_absurd <= s219;

   when s205 =>
         y10 <= '1' ;
         current_absurd <= s220;

   when s206 =>
         y1 <= '1' ;
         y81 <= '1' ;
         y82 <= '1' ;
         current_absurd <= s59;

   when s207 =>
         y10 <= '1' ;
         current_absurd <= s221;

   when s208 =>
      if ( x54 and x12 ) = '1' then
         y74 <= '1' ;
         current_absurd <= s208;

      elsif ( x54 and not x12 ) = '1' then
         y72 <= '1' ;
         y73 <= '1' ;
         current_absurd <= s222;

      elsif ( not x54 and x12 ) = '1' then
         y72 <= '1' ;
         y73 <= '1' ;
         current_absurd <= s222;

      else
         y74 <= '1' ;
         current_absurd <= s208;

      end if;

   when s209 =>
         y159 <= '1' ;
         y175 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s223;

   when s210 =>
      if ( x16 ) = '1' then
         y34 <= '1' ;
         current_absurd <= s224;

      elsif ( not x16 and x23 ) = '1' then
         y23 <= '1' ;
         current_absurd <= s1;

      else
         y28 <= '1' ;
         y35 <= '1' ;
         y81 <= '1' ;
         current_absurd <= s149;

      end if;

   when s211 =>
      if ( x16 ) = '1' then
         y34 <= '1' ;
         current_absurd <= s74;

      else
         y25 <= '1' ;
         y26 <= '1' ;
         current_absurd <= s101;

      end if;

   when s212 =>
         y120 <= '1' ;
         y195 <= '1' ;
         y201 <= '1' ;
         current_absurd <= s225;

   when s213 =>
         y18 <= '1' ;
         y86 <= '1' ;
         y92 <= '1' ;
         y95 <= '1' ;
         y161 <= '1' ;
         y195 <= '1' ;
         y199 <= '1' ;
         y200 <= '1' ;
         current_absurd <= s226;

   when s214 =>
         y119 <= '1' ;
         y124 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s227;

   when s215 =>
         y119 <= '1' ;
         y125 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s228;

   when s216 =>
         y160 <= '1' ;
         current_absurd <= s217;

   when s217 =>
      if ( x24 ) = '1' then
         y163 <= '1' ;
         y164 <= '1' ;
         current_absurd <= s2;

      else
         current_absurd <= s1;

      end if;

   when s218 =>
      if ( x7 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

      elsif ( not x7 and x8 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_absurd <= s113;

      elsif ( not x7 and not x8 and x9 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_absurd <= s113;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

      end if;

   when s219 =>
         y8 <= '1' ;
         current_absurd <= s229;

   when s220 =>
      if ( x7 ) = '1' then
         y17 <= '1' ;
         current_absurd <= s230;

      elsif ( not x7 and x9 and x12 ) = '1' then
         y17 <= '1' ;
         current_absurd <= s230;

      elsif ( not x7 and x9 and not x12 and x8 ) = '1' then
         y17 <= '1' ;
         current_absurd <= s230;

      elsif ( not x7 and x9 and not x12 and not x8 and x11 ) = '1' then
         y17 <= '1' ;
         current_absurd <= s230;

      elsif ( not x7 and x9 and not x12 and not x8 and not x11 ) = '1' then
         y37 <= '1' ;
         current_absurd <= s59;

      elsif ( not x7 and not x9 and x8 and x39 ) = '1' then
         y17 <= '1' ;
         current_absurd <= s230;

      elsif ( not x7 and not x9 and x8 and not x39 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

      elsif ( not x7 and not x9 and not x8 and x10 ) = '1' then
         y37 <= '1' ;
         current_absurd <= s59;

      else
         y17 <= '1' ;
         current_absurd <= s230;

      end if;

   when s221 =>
      if ( x7 and x10 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_absurd <= s113;

      elsif ( x7 and not x10 ) = '1' then
         y13 <= '1' ;
         current_absurd <= s231;

      elsif ( not x7 and x8 and x9 ) = '1' then
         y67 <= '1' ;
         y68 <= '1' ;
         current_absurd <= s232;

      elsif ( not x7 and x8 and not x9 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_absurd <= s113;

      elsif ( not x7 and not x8 and x9 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_absurd <= s113;

      else
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_absurd <= s113;

      end if;

   when s222 =>
      if ( x40 and x29 ) = '1' then
         y71 <= '1' ;
         current_absurd <= s233;

      elsif ( x40 and not x29 ) = '1' then
         current_absurd <= s222;

      else
         y74 <= '1' ;
         y152 <= '1' ;
         y154 <= '1' ;
         current_absurd <= s143;

      end if;

   when s223 =>
      if ( x16 ) = '1' then
         current_absurd <= s1;

      else
         y98 <= '1' ;
         current_absurd <= s209;

      end if;

   when s224 =>
      if ( x23 ) = '1' then
         y23 <= '1' ;
         current_absurd <= s1;

      else
         y28 <= '1' ;
         y35 <= '1' ;
         y81 <= '1' ;
         current_absurd <= s149;

      end if;

   when s225 =>
      if ( x16 and x55 and x2 and x1 ) = '1' then
         y119 <= '1' ;
         y195 <= '1' ;
         y202 <= '1' ;
         current_absurd <= s127;

      elsif ( x16 and x55 and x2 and not x1 ) = '1' then
         y117 <= '1' ;
         y118 <= '1' ;
         y119 <= '1' ;
         y121 <= '1' ;
         y122 <= '1' ;
         y123 <= '1' ;
         y124 <= '1' ;
         y125 <= '1' ;
         current_absurd <= s128;

      elsif ( x16 and x55 and not x2 ) = '1' then
         y117 <= '1' ;
         y118 <= '1' ;
         y119 <= '1' ;
         y121 <= '1' ;
         y122 <= '1' ;
         y123 <= '1' ;
         y124 <= '1' ;
         y125 <= '1' ;
         current_absurd <= s128;

      elsif ( x16 and not x55 ) = '1' then
         y46 <= '1' ;
         current_absurd <= s129;

      else
         y120 <= '1' ;
         y195 <= '1' ;
         y201 <= '1' ;
         current_absurd <= s225;

      end if;

   when s226 =>
      if ( x16 ) = '1' then
         y85 <= '1' ;
         y146 <= '1' ;
         current_absurd <= s234;

      else
         y156 <= '1' ;
         current_absurd <= s76;

      end if;

   when s227 =>
      if ( x16 ) = '1' then
         y134 <= '1' ;
         current_absurd <= s235;

      else
         y139 <= '1' ;
         current_absurd <= s214;

      end if;

   when s228 =>
      if ( x16 ) = '1' then
         y189 <= '1' ;
         current_absurd <= s236;

      else
         y194 <= '1' ;
         current_absurd <= s215;

      end if;

   when s229 =>
         y83 <= '1' ;
         current_absurd <= s237;

   when s230 =>
      if ( x39 and x7 and x10 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s138;

      elsif ( x39 and x7 and not x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s137;

      elsif ( x39 and not x7 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s138;

      elsif ( not x39 and x7 and x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

      elsif ( not x39 and x7 and not x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s137;

      elsif ( not x39 and not x7 and x9 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_absurd <= s113;

      elsif ( not x39 and not x7 and not x9 and x8 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s138;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         current_absurd <= s57;

      end if;

   when s231 =>
      if ( x37 ) = '1' then
         y17 <= '1' ;
         y93 <= '1' ;
         y95 <= '1' ;
         current_absurd <= s55;

      else
         y2 <= '1' ;
         y16 <= '1' ;
         current_absurd <= s56;

      end if;

   when s232 =>
         current_absurd <= s59;

   when s233 =>
      if ( x12 ) = '1' then
         y69 <= '1' ;
         y70 <= '1' ;
         y79 <= '1' ;
         current_absurd <= s1;

      else
         y69 <= '1' ;
         y70 <= '1' ;
         current_absurd <= s1;

      end if;

   when s234 =>
         y12 <= '1' ;
         y86 <= '1' ;
         y93 <= '1' ;
         y209 <= '1' ;
         current_absurd <= s238;

   when s235 =>
      if ( x20 ) = '1' then
         y138 <= '1' ;
         current_absurd <= s239;

      else
         current_absurd <= s235;

      end if;

   when s236 =>
      if ( x17 ) = '1' then
         y193 <= '1' ;
         current_absurd <= s240;

      else
         current_absurd <= s236;

      end if;

   when s237 =>
         y10 <= '1' ;
         current_absurd <= s241;

   when s238 =>
         y12 <= '1' ;
         y19 <= '1' ;
         y86 <= '1' ;
         current_absurd <= s242;

   when s239 =>
      if ( x20 ) = '1' then
         y138 <= '1' ;
         current_absurd <= s239;

      else
         y58 <= '1' ;
         current_absurd <= s243;

      end if;

   when s240 =>
      if ( x17 ) = '1' then
         y193 <= '1' ;
         current_absurd <= s240;

      else
         y145 <= '1' ;
         current_absurd <= s244;

      end if;

   when s241 =>
         y94 <= '1' ;
         current_absurd <= s245;

   when s242 =>
         y18 <= '1' ;
         y86 <= '1' ;
         y146 <= '1' ;
         current_absurd <= s246;

   when s243 =>
         y131 <= '1' ;
         current_absurd <= s247;

   when s244 =>
         y60 <= '1' ;
         y61 <= '1' ;
         y140 <= '1' ;
         y143 <= '1' ;
         current_absurd <= s248;

   when s245 =>
         y12 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y86 <= '1' ;
         current_absurd <= s249;

   when s246 =>
         y156 <= '1' ;
         current_absurd <= s76;

   when s247 =>
         y123 <= '1' ;
         y195 <= '1' ;
         y200 <= '1' ;
         y203 <= '1' ;
         y204 <= '1' ;
         current_absurd <= s250;

   when s248 =>
         y12 <= '1' ;
         y85 <= '1' ;
         y133 <= '1' ;
         current_absurd <= s251;

   when s249 =>
      if ( x7 and x10 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s138;

      elsif ( x7 and not x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s137;

      else
         y18 <= '1' ;
         y19 <= '1' ;
         current_absurd <= s138;

      end if;

   when s250 =>
      if ( x16 ) = '1' then
         y12 <= '1' ;
         y85 <= '1' ;
         y86 <= '1' ;
         y133 <= '1' ;
         current_absurd <= s252;

      else
         y123 <= '1' ;
         y195 <= '1' ;
         y200 <= '1' ;
         y203 <= '1' ;
         current_absurd <= s253;

      end if;

   when s251 =>
         y187 <= '1' ;
         y188 <= '1' ;
         current_absurd <= s254;

   when s252 =>
         y187 <= '1' ;
         y188 <= '1' ;
         current_absurd <= s255;

   when s253 =>
      if ( x16 ) = '1' then
         y18 <= '1' ;
         y85 <= '1' ;
         y93 <= '1' ;
         y133 <= '1' ;
         current_absurd <= s252;

      else
         y123 <= '1' ;
         y195 <= '1' ;
         y200 <= '1' ;
         current_absurd <= s256;

      end if;

   when s254 =>
         y18 <= '1' ;
         y93 <= '1' ;
         y161 <= '1' ;
         y195 <= '1' ;
         y196 <= '1' ;
         y199 <= '1' ;
         current_absurd <= s257;

   when s255 =>
         y18 <= '1' ;
         y93 <= '1' ;
         y161 <= '1' ;
         y195 <= '1' ;
         y196 <= '1' ;
         y199 <= '1' ;
         current_absurd <= s258;

   when s256 =>
      if ( x16 ) = '1' then
         y12 <= '1' ;
         y85 <= '1' ;
         y133 <= '1' ;
         current_absurd <= s252;

      else
         y132 <= '1' ;
         current_absurd <= s259;

      end if;

   when s257 =>
      if ( x16 ) = '1' then
         y186 <= '1' ;
         current_absurd <= s260;

      else
         y185 <= '1' ;
         current_absurd <= s261;

      end if;

   when s258 =>
      if ( x16 ) = '1' then
         y186 <= '1' ;
         current_absurd <= s262;

      else
         y185 <= '1' ;
         current_absurd <= s263;

      end if;

   when s259 =>
      if ( x59 ) = '1' then
         y59 <= '1' ;
         y60 <= '1' ;
         y61 <= '1' ;
         y62 <= '1' ;
         current_absurd <= s1;

      else
         y135 <= '1' ;
         y136 <= '1' ;
         y137 <= '1' ;
         current_absurd <= s198;

      end if;

   when s260 =>
         y12 <= '1' ;
         y93 <= '1' ;
         y161 <= '1' ;
         y195 <= '1' ;
         y196 <= '1' ;
         y199 <= '1' ;
         current_absurd <= s264;

   when s261 =>
         y186 <= '1' ;
         current_absurd <= s260;

   when s262 =>
         y12 <= '1' ;
         y93 <= '1' ;
         y161 <= '1' ;
         y195 <= '1' ;
         y196 <= '1' ;
         y199 <= '1' ;
         current_absurd <= s265;

   when s263 =>
         y186 <= '1' ;
         current_absurd <= s262;

   when s264 =>
      if ( x16 ) = '1' then
         y18 <= '1' ;
         y93 <= '1' ;
         y161 <= '1' ;
         y195 <= '1' ;
         y196 <= '1' ;
         y199 <= '1' ;
         current_absurd <= s257;

      else
         y190 <= '1' ;
         y191 <= '1' ;
         y192 <= '1' ;
         current_absurd <= s266;

      end if;

   when s265 =>
      if ( x16 ) = '1' then
         y18 <= '1' ;
         y93 <= '1' ;
         y161 <= '1' ;
         y195 <= '1' ;
         y196 <= '1' ;
         y199 <= '1' ;
         current_absurd <= s258;

      elsif ( not x16 and x59 ) = '1' then
         y59 <= '1' ;
         y60 <= '1' ;
         y61 <= '1' ;
         y62 <= '1' ;
         current_absurd <= s1;

      else
         y135 <= '1' ;
         y136 <= '1' ;
         y137 <= '1' ;
         current_absurd <= s198;

      end if;

   when s266 =>
         y194 <= '1' ;
         current_absurd <= s267;

   when s267 =>
         y119 <= '1' ;
         y125 <= '1' ;
         y195 <= '1' ;
         current_absurd <= s268;

   when s268 =>
      if ( x16 ) = '1' then
         y189 <= '1' ;
         current_absurd <= s269;

      else
         y194 <= '1' ;
         current_absurd <= s267;

      end if;

   when s269 =>
      if ( x17 ) = '1' then
         y193 <= '1' ;
         current_absurd <= s270;

      else
         current_absurd <= s269;

      end if;

   when s270 =>
      if ( x17 ) = '1' then
         y193 <= '1' ;
         current_absurd <= s270;

      else
         y144 <= '1' ;
         current_absurd <= s271;

      end if;

   when s271 =>
         y205 <= '1' ;
         current_absurd <= s272;

   when s272 =>
         y123 <= '1' ;
         y195 <= '1' ;
         y198 <= '1' ;
         y204 <= '1' ;
         y206 <= '1' ;
         current_absurd <= s273;

   when s273 =>
      if ( x16 ) = '1' then
         y140 <= '1' ;
         y141 <= '1' ;
         y142 <= '1' ;
         y143 <= '1' ;
         current_absurd <= s274;

      else
         y60 <= '1' ;
         y61 <= '1' ;
         y140 <= '1' ;
         y143 <= '1' ;
         current_absurd <= s248;

      end if;

   when s274 =>
         y135 <= '1' ;
         y136 <= '1' ;
         y137 <= '1' ;
         current_absurd <= s21;

   end case;
   end proc_absurd;

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
	y53  <= '0' ;	y54  <= '0' ;	y55  <= '0' ;	y56  <= '0' ;
	y57  <= '0' ;	y58  <= '0' ;	y59  <= '0' ;	y60  <= '0' ;
	y61  <= '0' ;	y62  <= '0' ;	y63  <= '0' ;	y64  <= '0' ;
	y65  <= '0' ;	y66  <= '0' ;	y67  <= '0' ;	y68  <= '0' ;
	y69  <= '0' ;	y70  <= '0' ;	y71  <= '0' ;	y72  <= '0' ;
	y73  <= '0' ;	y74  <= '0' ;	y75  <= '0' ;	y76  <= '0' ;
	y77  <= '0' ;	y78  <= '0' ;	y79  <= '0' ;	y80  <= '0' ;
	y81  <= '0' ;	y82  <= '0' ;	y83  <= '0' ;	y84  <= '0' ;
	y85  <= '0' ;	y86  <= '0' ;	y87  <= '0' ;	y88  <= '0' ;
	y89  <= '0' ;	y90  <= '0' ;	y91  <= '0' ;	y92  <= '0' ;
	y93  <= '0' ;	y94  <= '0' ;	y95  <= '0' ;	y96  <= '0' ;
	y97  <= '0' ;	y98  <= '0' ;	y99  <= '0' ;	y100 <= '0' ;
	y101 <= '0' ;	y102 <= '0' ;	y103 <= '0' ;	y104 <= '0' ;
	y105 <= '0' ;	y106 <= '0' ;	y107 <= '0' ;	y108 <= '0' ;
	y109 <= '0' ;	y110 <= '0' ;	y111 <= '0' ;	y112 <= '0' ;
	y113 <= '0' ;	y114 <= '0' ;	y115 <= '0' ;	y116 <= '0' ;
	y117 <= '0' ;	y118 <= '0' ;	y119 <= '0' ;	y120 <= '0' ;
	y121 <= '0' ;	y122 <= '0' ;	y123 <= '0' ;	y124 <= '0' ;
	y125 <= '0' ;	y126 <= '0' ;	y127 <= '0' ;	y128 <= '0' ;
	y129 <= '0' ;	y130 <= '0' ;	y131 <= '0' ;	y132 <= '0' ;
	y133 <= '0' ;	y134 <= '0' ;	y135 <= '0' ;	y136 <= '0' ;
	y137 <= '0' ;	y138 <= '0' ;	y139 <= '0' ;	y140 <= '0' ;
	y141 <= '0' ;	y142 <= '0' ;	y143 <= '0' ;	y144 <= '0' ;
	y145 <= '0' ;	y146 <= '0' ;	y147 <= '0' ;	y148 <= '0' ;
	y149 <= '0' ;	y150 <= '0' ;	y151 <= '0' ;	y152 <= '0' ;
	y153 <= '0' ;	y154 <= '0' ;	y155 <= '0' ;	y156 <= '0' ;
	y157 <= '0' ;	y158 <= '0' ;	y159 <= '0' ;	y160 <= '0' ;
	y161 <= '0' ;	y162 <= '0' ;	y163 <= '0' ;	y164 <= '0' ;
	y165 <= '0' ;	y166 <= '0' ;	y167 <= '0' ;	y168 <= '0' ;
	y169 <= '0' ;	y170 <= '0' ;	y171 <= '0' ;	y172 <= '0' ;
	y173 <= '0' ;	y174 <= '0' ;	y175 <= '0' ;	y176 <= '0' ;
	y177 <= '0' ;	y178 <= '0' ;	y179 <= '0' ;	y180 <= '0' ;
	y181 <= '0' ;	y182 <= '0' ;	y183 <= '0' ;	y184 <= '0' ;
	y185 <= '0' ;	y186 <= '0' ;	y187 <= '0' ;	y188 <= '0' ;
	y189 <= '0' ;	y190 <= '0' ;	y191 <= '0' ;	y192 <= '0' ;
	y193 <= '0' ;	y194 <= '0' ;	y195 <= '0' ;	y196 <= '0' ;
	y197 <= '0' ;	y198 <= '0' ;	y199 <= '0' ;	y200 <= '0' ;
	y201 <= '0' ;	y202 <= '0' ;	y203 <= '0' ;	y204 <= '0' ;
	y205 <= '0' ;	y206 <= '0' ;	y207 <= '0' ;	y208 <= '0' ;
	y209 <= '0' ;
	current_absurd <= s1;
      elsif (clk'event and clk ='1') then
        proc_absurd;
      end if;
   end process;
end ARC;
