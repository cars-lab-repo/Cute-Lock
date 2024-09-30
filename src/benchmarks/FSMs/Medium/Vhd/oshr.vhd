library ieee;
use ieee.std_logic_1164.all;

entity oshr is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56,y57,y58,y59,y60,
	y61,y62,y63,y64,y65,y66,y67,y68,y69,y70,y71,y72 : out std_logic );
end oshr;

architecture ARC of oshr is

   type states_oshr is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55 );
   signal current_oshr : states_oshr;

begin
   process (clk , rst)
   procedure proc_oshr is
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


   case current_oshr is
   when s1 =>
      if ( x2 and x1 ) = '1' then
         y18 <= '1' ;
         current_oshr <= s2;

      elsif ( x2 and not x1 ) = '1' then
         y6 <= '1' ;
         current_oshr <= s3;

      else
         current_oshr <= s1;

      end if;

   when s2 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_oshr <= s4;

   when s3 =>
         y7 <= '1' ;
         current_oshr <= s5;

   when s4 =>
         y2 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_oshr <= s6;

   when s5 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_oshr <= s7;

   when s6 =>
         y19 <= '1' ;
         current_oshr <= s8;

   when s7 =>
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_oshr <= s9;

   when s8 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y55 <= '1' ;
         y58 <= '1' ;
         y69 <= '1' ;
         current_oshr <= s10;

   when s9 =>
         y13 <= '1' ;
         current_oshr <= s11;

   when s10 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_oshr <= s12;

   when s11 =>
      if ( x3 and x4 and x6 and x7 and x10 and x12 ) = '1' then
         y22 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and x6 and x7 and x10 and not x12 ) = '1' then
         y25 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and x6 and x7 and not x10 and x11 and x12 and x13 ) = '1' then
         y13 <= '1' ;
         current_oshr <= s14;

      elsif ( x3 and x4 and x6 and x7 and not x10 and x11 and x12 and not x13 and x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( x3 and x4 and x6 and x7 and not x10 and x11 and x12 and not x13 and x19 and not x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s16;

      elsif ( x3 and x4 and x6 and x7 and not x10 and x11 and x12 and not x13 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( x3 and x4 and x6 and x7 and not x10 and x11 and not x12 and x14 ) = '1' then
         y13 <= '1' ;
         current_oshr <= s14;

      elsif ( x3 and x4 and x6 and x7 and not x10 and x11 and not x12 and not x14 and x19 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( x3 and x4 and x6 and x7 and not x10 and x11 and not x12 and not x14 and x19 and not x13 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and x6 and x7 and not x10 and x11 and not x12 and not x14 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( x3 and x4 and x6 and x7 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y32 <= '1' ;
         y53 <= '1' ;
         current_oshr <= s17;

      elsif ( x3 and x4 and x6 and x7 and not x10 and not x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y54 <= '1' ;
         current_oshr <= s18;

      elsif ( x3 and x4 and x6 and not x7 and x5 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_oshr <= s19;

      elsif ( x3 and x4 and x6 and not x7 and x5 and not x9 and x10 and x11 and x12 ) = '1' then
         y28 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and x6 and not x7 and x5 and not x9 and x10 and x11 and not x12 ) = '1' then
         y29 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and x6 and not x7 and x5 and not x9 and x10 and not x11 and x12 ) = '1' then
         y30 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and x6 and not x7 and x5 and not x9 and x10 and not x11 and not x12 ) = '1' then
         y56 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and x6 and not x7 and x5 and not x9 and not x10 and x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s20;

      elsif ( x3 and x4 and x6 and not x7 and x5 and not x9 and not x10 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and x6 and not x7 and x5 and not x9 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and x6 and not x7 and x5 and not x9 and not x10 and not x11 and not x12 ) = '1' then
         y36 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and x6 and not x7 and not x5 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and x6 and not x7 and not x5 and not x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y43 <= '1' ;
         current_oshr <= s21;

      elsif ( x3 and x4 and not x6 and x7 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_oshr <= s19;

      elsif ( x3 and x4 and not x6 and x7 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y43 <= '1' ;
         current_oshr <= s21;

      elsif ( x3 and x4 and not x6 and not x7 and x5 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_oshr <= s19;

      elsif ( x3 and x4 and not x6 and not x7 and x5 and not x9 and x10 and x11 and x12 ) = '1' then
         y4 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y42 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and not x6 and not x7 and x5 and not x9 and x10 and x11 and not x12 ) = '1' then
         y4 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y41 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and not x6 and not x7 and x5 and not x9 and x10 and not x11 ) = '1' then
         y4 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and not x6 and not x7 and x5 and not x9 and not x10 and x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y59 <= '1' ;
         y60 <= '1' ;
         current_oshr <= s22;

      elsif ( x3 and x4 and not x6 and not x7 and x5 and not x9 and not x10 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y63 <= '1' ;
         y64 <= '1' ;
         current_oshr <= s23;

      elsif ( x3 and x4 and not x6 and not x7 and x5 and not x9 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y61 <= '1' ;
         y62 <= '1' ;
         current_oshr <= s24;

      elsif ( x3 and x4 and not x6 and not x7 and x5 and not x9 and not x10 and not x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y65 <= '1' ;
         y66 <= '1' ;
         current_oshr <= s25;

      elsif ( x3 and x4 and not x6 and not x7 and not x5 and x8 and x11 and x12 ) = '1' then
         y4 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y39 <= '1' ;
         y42 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and not x6 and not x7 and not x5 and x8 and x11 and not x12 ) = '1' then
         y4 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y39 <= '1' ;
         y41 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and not x6 and not x7 and not x5 and x8 and not x11 ) = '1' then
         y4 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_oshr <= s13;

      elsif ( x3 and x4 and not x6 and not x7 and not x5 and not x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y43 <= '1' ;
         current_oshr <= s21;

      elsif ( x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_oshr <= s26;

      else
         y5 <= '1' ;
         current_oshr <= s27;

      end if;

   when s12 =>
         y2 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_oshr <= s28;

   when s13 =>
      if ( x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( x19 and not x14 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( x19 and not x14 and not x13 and x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s16;

      elsif ( x19 and not x14 and not x13 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         current_oshr <= s13;

      elsif ( x19 and not x14 and not x13 and not x11 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

      else
         current_oshr <= s1;

      end if;

   when s14 =>
         y13 <= '1' ;
         current_oshr <= s29;

   when s15 =>
      if ( x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s16;

      elsif ( x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         current_oshr <= s13;

      else
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

      end if;

   when s16 =>
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s30;

   when s17 =>
         y26 <= '1' ;
         current_oshr <= s13;

   when s18 =>
         y27 <= '1' ;
         current_oshr <= s13;

   when s19 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y70 <= '1' ;
         y71 <= '1' ;
         y72 <= '1' ;
         current_oshr <= s31;

   when s20 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s32;

   when s21 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y70 <= '1' ;
         y71 <= '1' ;
         y72 <= '1' ;
         current_oshr <= s33;

   when s22 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y61 <= '1' ;
         y62 <= '1' ;
         current_oshr <= s34;

   when s23 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y65 <= '1' ;
         y66 <= '1' ;
         current_oshr <= s35;

   when s24 =>
         y57 <= '1' ;
         current_oshr <= s13;

   when s25 =>
         y46 <= '1' ;
         current_oshr <= s13;

   when s26 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y16 <= '1' ;
         current_oshr <= s36;

   when s27 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_oshr <= s5;

   when s28 =>
         y13 <= '1' ;
         current_oshr <= s37;

   when s29 =>
         y13 <= '1' ;
         current_oshr <= s38;

   when s30 =>
         y2 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_oshr <= s13;

   when s31 =>
         y68 <= '1' ;
         current_oshr <= s39;

   when s32 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y32 <= '1' ;
         y35 <= '1' ;
         current_oshr <= s13;

   when s33 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y43 <= '1' ;
         current_oshr <= s40;

   when s34 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y32 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

   when s35 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y59 <= '1' ;
         y67 <= '1' ;
         current_oshr <= s13;

   when s36 =>
      if ( x5 and x6 and x7 and x10 and x12 ) = '1' then
         y22 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and x6 and x7 and x10 and not x12 ) = '1' then
         y25 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and x6 and x7 and not x10 and x11 and x12 and x13 ) = '1' then
         y13 <= '1' ;
         current_oshr <= s14;

      elsif ( x5 and x6 and x7 and not x10 and x11 and x12 and not x13 and x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( x5 and x6 and x7 and not x10 and x11 and x12 and not x13 and x19 and not x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s16;

      elsif ( x5 and x6 and x7 and not x10 and x11 and x12 and not x13 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( x5 and x6 and x7 and not x10 and x11 and not x12 and x14 ) = '1' then
         y13 <= '1' ;
         current_oshr <= s14;

      elsif ( x5 and x6 and x7 and not x10 and x11 and not x12 and not x14 and x19 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( x5 and x6 and x7 and not x10 and x11 and not x12 and not x14 and x19 and not x13 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and x6 and x7 and not x10 and x11 and not x12 and not x14 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( x5 and x6 and x7 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y32 <= '1' ;
         y53 <= '1' ;
         current_oshr <= s17;

      elsif ( x5 and x6 and x7 and not x10 and not x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y54 <= '1' ;
         current_oshr <= s18;

      elsif ( x5 and x6 and not x7 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_oshr <= s19;

      elsif ( x5 and x6 and not x7 and not x9 and x10 and x11 and x12 ) = '1' then
         y28 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and x6 and not x7 and not x9 and x10 and x11 and not x12 ) = '1' then
         y29 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and x6 and not x7 and not x9 and x10 and not x11 and x12 ) = '1' then
         y30 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and x6 and not x7 and not x9 and x10 and not x11 and not x12 ) = '1' then
         y56 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and x6 and not x7 and not x9 and not x10 and x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s20;

      elsif ( x5 and x6 and not x7 and not x9 and not x10 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and x6 and not x7 and not x9 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and x6 and not x7 and not x9 and not x10 and not x11 and not x12 ) = '1' then
         y36 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and not x6 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_oshr <= s19;

      elsif ( x5 and not x6 and not x7 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         current_oshr <= s19;

      elsif ( x5 and not x6 and not x7 and not x9 and x10 and x11 and x12 ) = '1' then
         y4 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y42 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and not x6 and not x7 and not x9 and x10 and x11 and not x12 ) = '1' then
         y4 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y41 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and not x6 and not x7 and not x9 and x10 and not x11 ) = '1' then
         y4 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         current_oshr <= s13;

      elsif ( x5 and not x6 and not x7 and not x9 and not x10 and x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y59 <= '1' ;
         y60 <= '1' ;
         current_oshr <= s22;

      elsif ( x5 and not x6 and not x7 and not x9 and not x10 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y63 <= '1' ;
         y64 <= '1' ;
         current_oshr <= s23;

      elsif ( x5 and not x6 and not x7 and not x9 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y61 <= '1' ;
         y62 <= '1' ;
         current_oshr <= s24;

      elsif ( x5 and not x6 and not x7 and not x9 and not x10 and not x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y65 <= '1' ;
         y66 <= '1' ;
         current_oshr <= s25;

      else
         y17 <= '1' ;
         current_oshr <= s3;

      end if;

   when s37 =>
         y13 <= '1' ;
         current_oshr <= s41;

   when s38 =>
         y13 <= '1' ;
         current_oshr <= s13;

   when s39 =>
      if ( x6 and x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s16;

      elsif ( x6 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         current_oshr <= s13;

      elsif ( x6 and not x11 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

      elsif ( not x6 and x7 and x10 and x11 ) = '1' then
         y48 <= '1' ;
         current_oshr <= s42;

      elsif ( not x6 and x7 and x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y45 <= '1' ;
         y49 <= '1' ;
         current_oshr <= s43;

      elsif ( not x6 and x7 and x10 and not x11 and not x12 and x16 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

      elsif ( not x6 and x7 and x10 and not x11 and not x12 and not x16 and x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x6 and x7 and x10 and not x11 and not x12 and not x16 and x19 and not x14 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x6 and x7 and x10 and not x11 and not x12 and not x16 and x19 and not x14 and not x13 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

      elsif ( not x6 and x7 and x10 and not x11 and not x12 and not x16 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( not x6 and x7 and not x10 and x11 and x12 and x18 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

      elsif ( not x6 and x7 and not x10 and x11 and x12 and not x18 and x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x6 and x7 and not x10 and x11 and x12 and not x18 and x19 and not x14 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x6 and x7 and not x10 and x11 and x12 and not x18 and x19 and not x14 and not x13 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s16;

      elsif ( not x6 and x7 and not x10 and x11 and x12 and not x18 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( not x6 and x7 and not x10 and x11 and not x12 and x17 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

      elsif ( not x6 and x7 and not x10 and x11 and not x12 and not x17 and x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x6 and x7 and not x10 and x11 and not x12 and not x17 and x19 and not x14 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x6 and x7 and not x10 and x11 and not x12 and not x17 and x19 and not x14 and not x13 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         current_oshr <= s13;

      elsif ( not x6 and x7 and not x10 and x11 and not x12 and not x17 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( not x6 and x7 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

      elsif ( not x6 and x7 and not x10 and not x11 and not x12 ) = '1' then
         y52 <= '1' ;
         current_oshr <= s13;

      elsif ( not x6 and not x7 and x11 and x12 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         current_oshr <= s13;

      elsif ( not x6 and not x7 and x11 and not x12 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y41 <= '1' ;
         current_oshr <= s13;

      else
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y42 <= '1' ;
         current_oshr <= s13;

      end if;

   when s40 =>
      if ( x9 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y21 <= '1' ;
         current_oshr <= s44;

      elsif ( not x9 and x15 and x6 and x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s16;

      elsif ( not x9 and x15 and x6 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         current_oshr <= s13;

      elsif ( not x9 and x15 and x6 and not x11 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

      elsif ( not x9 and x15 and not x6 and x7 and x10 and x11 ) = '1' then
         y48 <= '1' ;
         current_oshr <= s42;

      elsif ( not x9 and x15 and not x6 and x7 and x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y45 <= '1' ;
         y49 <= '1' ;
         current_oshr <= s43;

      elsif ( not x9 and x15 and not x6 and x7 and x10 and not x11 and not x12 and x16 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

      elsif ( not x9 and x15 and not x6 and x7 and x10 and not x11 and not x12 and not x16 and x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x9 and x15 and not x6 and x7 and x10 and not x11 and not x12 and not x16 and x19 and not x14 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x9 and x15 and not x6 and x7 and x10 and not x11 and not x12 and not x16 and x19 and not x14 and not x13 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

      elsif ( not x9 and x15 and not x6 and x7 and x10 and not x11 and not x12 and not x16 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( not x9 and x15 and not x6 and x7 and not x10 and x11 and x12 and x18 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

      elsif ( not x9 and x15 and not x6 and x7 and not x10 and x11 and x12 and not x18 and x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x9 and x15 and not x6 and x7 and not x10 and x11 and x12 and not x18 and x19 and not x14 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x9 and x15 and not x6 and x7 and not x10 and x11 and x12 and not x18 and x19 and not x14 and not x13 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s16;

      elsif ( not x9 and x15 and not x6 and x7 and not x10 and x11 and x12 and not x18 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( not x9 and x15 and not x6 and x7 and not x10 and x11 and not x12 and x17 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

      elsif ( not x9 and x15 and not x6 and x7 and not x10 and x11 and not x12 and not x17 and x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x9 and x15 and not x6 and x7 and not x10 and x11 and not x12 and not x17 and x19 and not x14 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x9 and x15 and not x6 and x7 and not x10 and x11 and not x12 and not x17 and x19 and not x14 and not x13 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         current_oshr <= s13;

      elsif ( not x9 and x15 and not x6 and x7 and not x10 and x11 and not x12 and not x17 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( not x9 and x15 and not x6 and x7 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

      elsif ( not x9 and x15 and not x6 and x7 and not x10 and not x11 and not x12 ) = '1' then
         y52 <= '1' ;
         current_oshr <= s13;

      elsif ( not x9 and x15 and not x6 and not x7 and x11 and x12 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         current_oshr <= s13;

      elsif ( not x9 and x15 and not x6 and not x7 and x11 and not x12 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y41 <= '1' ;
         current_oshr <= s13;

      elsif ( not x9 and x15 and not x6 and not x7 and not x11 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y42 <= '1' ;
         current_oshr <= s13;

      else
         y4 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         y40 <= '1' ;
         y47 <= '1' ;
         current_oshr <= s39;

      end if;

   when s41 =>
         y22 <= '1' ;
         current_oshr <= s45;

   when s42 =>
      if ( x17 ) = '1' then
         y13 <= '1' ;
         current_oshr <= s46;

      elsif ( not x17 and x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x17 and x19 and not x14 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( not x17 and x19 and not x14 and not x13 and x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s16;

      elsif ( not x17 and x19 and not x14 and not x13 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         current_oshr <= s13;

      elsif ( not x17 and x19 and not x14 and not x13 and not x11 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

      else
         current_oshr <= s1;

      end if;

   when s43 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y55 <= '1' ;
         y58 <= '1' ;
         y69 <= '1' ;
         current_oshr <= s47;

   when s44 =>
         y44 <= '1' ;
         current_oshr <= s48;

   when s45 =>
         y23 <= '1' ;
         current_oshr <= s1;

   when s46 =>
         y13 <= '1' ;
         current_oshr <= s49;

   when s47 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         current_oshr <= s50;

   when s48 =>
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y45 <= '1' ;
         current_oshr <= s51;

   when s49 =>
         y13 <= '1' ;
         current_oshr <= s52;

   when s50 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

   when s51 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y32 <= '1' ;
         current_oshr <= s53;

   when s52 =>
         y13 <= '1' ;
         current_oshr <= s13;

   when s53 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y70 <= '1' ;
         y71 <= '1' ;
         y72 <= '1' ;
         current_oshr <= s54;

   when s54 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y45 <= '1' ;
         current_oshr <= s55;

   when s55 =>
      if ( x15 and x6 and x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s16;

      elsif ( x15 and x6 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         current_oshr <= s13;

      elsif ( x15 and x6 and not x11 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

      elsif ( x15 and not x6 and x7 and x10 and x11 ) = '1' then
         y48 <= '1' ;
         current_oshr <= s42;

      elsif ( x15 and not x6 and x7 and x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y45 <= '1' ;
         y49 <= '1' ;
         current_oshr <= s43;

      elsif ( x15 and not x6 and x7 and x10 and not x11 and not x12 and x16 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

      elsif ( x15 and not x6 and x7 and x10 and not x11 and not x12 and not x16 and x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( x15 and not x6 and x7 and x10 and not x11 and not x12 and not x16 and x19 and not x14 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( x15 and not x6 and x7 and x10 and not x11 and not x12 and not x16 and x19 and not x14 and not x13 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         current_oshr <= s13;

      elsif ( x15 and not x6 and x7 and x10 and not x11 and not x12 and not x16 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( x15 and not x6 and x7 and not x10 and x11 and x12 and x18 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

      elsif ( x15 and not x6 and x7 and not x10 and x11 and x12 and not x18 and x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( x15 and not x6 and x7 and not x10 and x11 and x12 and not x18 and x19 and not x14 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( x15 and not x6 and x7 and not x10 and x11 and x12 and not x18 and x19 and not x14 and not x13 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         current_oshr <= s16;

      elsif ( x15 and not x6 and x7 and not x10 and x11 and x12 and not x18 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( x15 and not x6 and x7 and not x10 and x11 and not x12 and x17 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

      elsif ( x15 and not x6 and x7 and not x10 and x11 and not x12 and not x17 and x19 and x14 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( x15 and not x6 and x7 and not x10 and x11 and not x12 and not x17 and x19 and not x14 and x13 ) = '1' then
         y24 <= '1' ;
         current_oshr <= s15;

      elsif ( x15 and not x6 and x7 and not x10 and x11 and not x12 and not x17 and x19 and not x14 and not x13 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         current_oshr <= s13;

      elsif ( x15 and not x6 and x7 and not x10 and x11 and not x12 and not x17 and not x19 ) = '1' then
         current_oshr <= s1;

      elsif ( x15 and not x6 and x7 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_oshr <= s13;

      elsif ( x15 and not x6 and x7 and not x10 and not x11 and not x12 ) = '1' then
         y52 <= '1' ;
         current_oshr <= s13;

      elsif ( x15 and not x6 and not x7 and x11 and x12 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         current_oshr <= s13;

      elsif ( x15 and not x6 and not x7 and x11 and not x12 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y41 <= '1' ;
         current_oshr <= s13;

      elsif ( x15 and not x6 and not x7 and not x11 ) = '1' then
         y4 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         y38 <= '1' ;
         y42 <= '1' ;
         current_oshr <= s13;

      else
         y4 <= '1' ;
         y9 <= '1' ;
         y33 <= '1' ;
         y40 <= '1' ;
         y47 <= '1' ;
         current_oshr <= s39;

      end if;

   end case;
   end proc_oshr;

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

	current_oshr <= s1;
      elsif (clk'event and clk ='1') then
        proc_oshr;
      end if;
   end process;
end ARC;
