library ieee;
use ieee.std_logic_1164.all;

entity amtz is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52 : out std_logic );
end amtz;

architecture ARC of amtz is

   type states_amtz is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79,s80,s81,s82,s83,s84,s85 );
   signal current_amtz : states_amtz;

begin
   process (clk , rst)
   procedure proc_amtz is
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


   case current_amtz is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y8 <= '1' ;
         current_amtz <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y17 <= '1' ;
         current_amtz <= s3;

      else
         current_amtz <= s1;

      end if;

   when s2 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y19 <= '1' ;
         current_amtz <= s4;

   when s3 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_amtz <= s5;

   when s4 =>
         y5 <= '1' ;
         current_amtz <= s6;

   when s5 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y15 <= '1' ;
         current_amtz <= s7;

   when s6 =>
         y1 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_amtz <= s8;

   when s7 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_amtz <= s9;

   when s8 =>
         y13 <= '1' ;
         current_amtz <= s10;

   when s9 =>
         y5 <= '1' ;
         current_amtz <= s11;

   when s10 =>
      if ( x17 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         current_amtz <= s12;

      else
         y1 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_amtz <= s8;

      end if;

   when s11 =>
         y1 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_amtz <= s13;

   when s12 =>
         y5 <= '1' ;
         current_amtz <= s14;

   when s13 =>
         y13 <= '1' ;
         current_amtz <= s15;

   when s14 =>
         y1 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_amtz <= s16;

   when s15 =>
      if ( x17 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y15 <= '1' ;
         current_amtz <= s17;

      else
         y1 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_amtz <= s13;

      end if;

   when s16 =>
         y13 <= '1' ;
         current_amtz <= s18;

   when s17 =>
      if ( x18 and x22 and x23 and x3 and x4 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x18 and x22 and x23 and x3 and x4 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x18 and x22 and x23 and x3 and x4 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( x18 and x22 and x23 and x3 and x4 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( x18 and x22 and x23 and x3 and not x4 and x5 ) = '1' then
         y25 <= '1' ;
         y26 <= '1' ;
         current_amtz <= s1;

      elsif ( x18 and x22 and x23 and x3 and not x4 and not x5 ) = '1' then
         y51 <= '1' ;
         y52 <= '1' ;
         current_amtz <= s1;

      elsif ( x18 and x22 and x23 and not x3 and x4 and x5 and x15 ) = '1' then
         y10 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and x22 and x23 and not x3 and x4 and x5 and not x15 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x18 and x22 and x23 and not x3 and x4 and x5 and not x15 and x21 and not x16 ) = '1' then
         current_amtz <= s1;

      elsif ( x18 and x22 and x23 and not x3 and x4 and x5 and not x15 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( x18 and x22 and x23 and not x3 and x4 and not x5 and x16 ) = '1' then
         y10 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and x22 and x23 and not x3 and x4 and not x5 and not x16 and x21 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x18 and x22 and x23 and not x3 and x4 and not x5 and not x16 and x21 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( x18 and x22 and x23 and not x3 and x4 and not x5 and not x16 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( x18 and x22 and x23 and not x3 and not x4 and x5 ) = '1' then
         y1 <= '1' ;
         y20 <= '1' ;
         y47 <= '1' ;
         y48 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and x22 and x23 and not x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and x22 and not x23 and x9 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y36 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and x22 and not x23 and not x9 and x3 and x4 and x5 ) = '1' then
         y42 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and x22 and not x23 and not x9 and x3 and x4 and not x5 ) = '1' then
         y41 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and x22 and not x23 and not x9 and x3 and not x4 and x5 ) = '1' then
         y40 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and x22 and not x23 and not x9 and x3 and not x4 and not x5 ) = '1' then
         y39 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and x22 and not x23 and not x9 and not x3 and x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y11 <= '1' ;
         y36 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and x22 and not x23 and not x9 and not x3 and not x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         current_amtz <= s20;

      elsif ( x18 and not x22 and x23 and x9 ) = '1' then
         y46 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and not x22 and x23 and not x9 and x10 and x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y11 <= '1' ;
         y19 <= '1' ;
         current_amtz <= s21;

      elsif ( x18 and not x22 and x23 and not x9 and x10 and not x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         current_amtz <= s20;

      elsif ( x18 and not x22 and x23 and not x9 and not x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         current_amtz <= s20;

      elsif ( x18 and not x22 and not x23 and x3 and x4 and x5 ) = '1' then
         y31 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and not x22 and not x23 and x3 and x4 and not x5 ) = '1' then
         y30 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and not x22 and not x23 and x3 and not x4 and x5 ) = '1' then
         y31 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and not x22 and not x23 and x3 and not x4 and not x5 ) = '1' then
         y30 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and not x22 and not x23 and not x3 and x8 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y44 <= '1' ;
         current_amtz <= s19;

      elsif ( x18 and not x22 and not x23 and not x3 and not x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         current_amtz <= s20;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_amtz <= s22;

      end if;

   when s18 =>
      if ( x17 ) = '1' then
         y22 <= '1' ;
         current_amtz <= s23;

      else
         y1 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_amtz <= s16;

      end if;

   when s19 =>
      if ( x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      else
         current_amtz <= s1;

      end if;

   when s20 =>
      if ( x7 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y15 <= '1' ;
         y19 <= '1' ;
         current_amtz <= s24;

      elsif ( not x7 and x19 and x23 and x3 and x4 and x5 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and x3 and x4 and x5 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and x3 and x4 and x5 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and x3 and x4 and x5 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and x3 and x4 and not x5 ) = '1' then
         y6 <= '1' ;
         current_amtz <= s25;

      elsif ( not x7 and x19 and x23 and x3 and not x4 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y19 <= '1' ;
         current_amtz <= s26;

      elsif ( not x7 and x19 and x23 and x3 and not x4 and not x5 and x13 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

      elsif ( not x7 and x19 and x23 and x3 and not x4 and not x5 and not x13 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and x3 and not x4 and not x5 and not x13 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and x3 and not x4 and not x5 and not x13 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and x3 and not x4 and not x5 and not x13 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and not x3 and x4 and x5 and x12 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

      elsif ( not x7 and x19 and x23 and not x3 and x4 and x5 and not x12 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and not x3 and x4 and x5 and not x12 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and not x3 and x4 and x5 and not x12 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and not x3 and x4 and x5 and not x12 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and not x3 and x4 and not x5 and x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

      elsif ( not x7 and x19 and x23 and not x3 and x4 and not x5 and not x11 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and not x3 and x4 and not x5 and not x11 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and not x3 and x4 and not x5 and not x11 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and not x3 and x4 and not x5 and not x11 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( not x7 and x19 and x23 and not x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

      elsif ( not x7 and x19 and not x23 and x22 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y9 <= '1' ;
         y23 <= '1' ;
         current_amtz <= s27;

      elsif ( not x7 and x19 and not x23 and x22 and x4 and not x5 ) = '1' then
         y6 <= '1' ;
         current_amtz <= s28;

      elsif ( not x7 and x19 and not x23 and x22 and not x4 ) = '1' then
         y6 <= '1' ;
         current_amtz <= s29;

      elsif ( not x7 and x19 and not x23 and not x22 ) = '1' then
         y6 <= '1' ;
         current_amtz <= s25;

      else
         y1 <= '1' ;
         y8 <= '1' ;
         y23 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_amtz <= s30;

      end if;

   when s21 =>
         y45 <= '1' ;
         current_amtz <= s31;

   when s22 =>
      if ( x6 ) = '1' then
         y18 <= '1' ;
         current_amtz <= s3;

      elsif ( not x6 and x22 and x23 and x3 and x4 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x6 and x22 and x23 and x3 and x4 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x6 and x22 and x23 and x3 and x4 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( not x6 and x22 and x23 and x3 and x4 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( not x6 and x22 and x23 and x3 and not x4 and x5 ) = '1' then
         y25 <= '1' ;
         y26 <= '1' ;
         current_amtz <= s1;

      elsif ( not x6 and x22 and x23 and x3 and not x4 and not x5 ) = '1' then
         y51 <= '1' ;
         y52 <= '1' ;
         current_amtz <= s1;

      elsif ( not x6 and x22 and x23 and not x3 and x4 and x5 and x15 ) = '1' then
         y10 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and x22 and x23 and not x3 and x4 and x5 and not x15 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x6 and x22 and x23 and not x3 and x4 and x5 and not x15 and x21 and not x16 ) = '1' then
         current_amtz <= s1;

      elsif ( not x6 and x22 and x23 and not x3 and x4 and x5 and not x15 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( not x6 and x22 and x23 and not x3 and x4 and not x5 and x16 ) = '1' then
         y10 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and x22 and x23 and not x3 and x4 and not x5 and not x16 and x21 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x6 and x22 and x23 and not x3 and x4 and not x5 and not x16 and x21 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( not x6 and x22 and x23 and not x3 and x4 and not x5 and not x16 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( not x6 and x22 and x23 and not x3 and not x4 and x5 ) = '1' then
         y1 <= '1' ;
         y20 <= '1' ;
         y47 <= '1' ;
         y48 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and x22 and x23 and not x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y19 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and x22 and not x23 and x9 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y36 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and x22 and not x23 and not x9 and x3 and x4 and x5 ) = '1' then
         y42 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and x22 and not x23 and not x9 and x3 and x4 and not x5 ) = '1' then
         y41 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and x22 and not x23 and not x9 and x3 and not x4 and x5 ) = '1' then
         y40 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and x22 and not x23 and not x9 and x3 and not x4 and not x5 ) = '1' then
         y39 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and x22 and not x23 and not x9 and not x3 and x7 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y8 <= '1' ;
         y27 <= '1' ;
         current_amtz <= s30;

      elsif ( not x6 and x22 and not x23 and not x9 and not x3 and not x7 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y37 <= '1' ;
         current_amtz <= s32;

      elsif ( not x6 and x22 and not x23 and not x9 and not x3 and not x7 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and x22 and not x23 and not x9 and not x3 and not x7 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y27 <= '1' ;
         y36 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and not x22 and x23 and x9 ) = '1' then
         y46 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and not x22 and x23 and not x9 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y8 <= '1' ;
         y27 <= '1' ;
         current_amtz <= s30;

      elsif ( not x6 and not x22 and not x23 and x3 and x4 and x5 ) = '1' then
         y31 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and not x22 and not x23 and x3 and x4 and not x5 ) = '1' then
         y30 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and not x22 and not x23 and x3 and not x4 and x5 ) = '1' then
         y31 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and not x22 and not x23 and x3 and not x4 and not x5 ) = '1' then
         y30 <= '1' ;
         current_amtz <= s19;

      elsif ( not x6 and not x22 and not x23 and not x3 and x7 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y8 <= '1' ;
         y27 <= '1' ;
         current_amtz <= s30;

      else
         y1 <= '1' ;
         y27 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y44 <= '1' ;
         current_amtz <= s19;

      end if;

   when s23 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         current_amtz <= s33;

   when s24 =>
         y5 <= '1' ;
         current_amtz <= s34;

   when s25 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y15 <= '1' ;
         y19 <= '1' ;
         current_amtz <= s35;

   when s26 =>
         y5 <= '1' ;
         current_amtz <= s36;

   when s27 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y37 <= '1' ;
         current_amtz <= s37;

   when s28 =>
         y5 <= '1' ;
         current_amtz <= s38;

   when s29 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y15 <= '1' ;
         y19 <= '1' ;
         current_amtz <= s39;

   when s30 =>
      if ( x23 and x3 and x4 and x5 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x23 and x3 and x4 and x5 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x23 and x3 and x4 and x5 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( x23 and x3 and x4 and x5 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( x23 and x3 and x4 and not x5 ) = '1' then
         y6 <= '1' ;
         current_amtz <= s25;

      elsif ( x23 and x3 and not x4 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y19 <= '1' ;
         current_amtz <= s26;

      elsif ( x23 and x3 and not x4 and not x5 and x13 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

      elsif ( x23 and x3 and not x4 and not x5 and not x13 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x23 and x3 and not x4 and not x5 and not x13 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x23 and x3 and not x4 and not x5 and not x13 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( x23 and x3 and not x4 and not x5 and not x13 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( x23 and not x3 and x4 and x5 and x12 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

      elsif ( x23 and not x3 and x4 and x5 and not x12 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x23 and not x3 and x4 and x5 and not x12 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x23 and not x3 and x4 and x5 and not x12 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( x23 and not x3 and x4 and x5 and not x12 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( x23 and not x3 and x4 and not x5 and x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

      elsif ( x23 and not x3 and x4 and not x5 and not x11 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x23 and not x3 and x4 and not x5 and not x11 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x23 and not x3 and x4 and not x5 and not x11 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( x23 and not x3 and x4 and not x5 and not x11 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( x23 and not x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

      elsif ( not x23 and x22 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y9 <= '1' ;
         y23 <= '1' ;
         current_amtz <= s27;

      elsif ( not x23 and x22 and x4 and not x5 ) = '1' then
         y6 <= '1' ;
         current_amtz <= s28;

      elsif ( not x23 and x22 and not x4 ) = '1' then
         y6 <= '1' ;
         current_amtz <= s29;

      else
         y6 <= '1' ;
         current_amtz <= s25;

      end if;

   when s31 =>
      if ( x14 ) = '1' then
         y10 <= '1' ;
         current_amtz <= s19;

      elsif ( not x14 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x14 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( not x14 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      else
         current_amtz <= s1;

      end if;

   when s32 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y27 <= '1' ;
         y36 <= '1' ;
         current_amtz <= s40;

   when s33 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s41;

   when s34 =>
         y1 <= '1' ;
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_amtz <= s42;

   when s35 =>
         y14 <= '1' ;
         current_amtz <= s43;

   when s36 =>
         y1 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_amtz <= s44;

   when s37 =>
         y6 <= '1' ;
         current_amtz <= s45;

   when s38 =>
         y1 <= '1' ;
         y21 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_amtz <= s46;

   when s39 =>
         y5 <= '1' ;
         current_amtz <= s47;

   when s40 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y20 <= '1' ;
         y38 <= '1' ;
         current_amtz <= s19;

   when s41 =>
         y10 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_amtz <= s1;

   when s42 =>
         y13 <= '1' ;
         current_amtz <= s48;

   when s43 =>
         y5 <= '1' ;
         current_amtz <= s49;

   when s44 =>
         y13 <= '1' ;
         current_amtz <= s50;

   when s45 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y15 <= '1' ;
         y36 <= '1' ;
         current_amtz <= s51;

   when s46 =>
         y13 <= '1' ;
         current_amtz <= s52;

   when s47 =>
         y1 <= '1' ;
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_amtz <= s53;

   when s48 =>
      if ( x17 ) = '1' then
         y22 <= '1' ;
         current_amtz <= s54;

      else
         y1 <= '1' ;
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_amtz <= s42;

      end if;

   when s49 =>
         y1 <= '1' ;
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_amtz <= s55;

   when s50 =>
      if ( x17 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         current_amtz <= s56;

      else
         y1 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_amtz <= s44;

      end if;

   when s51 =>
         y14 <= '1' ;
         current_amtz <= s57;

   when s52 =>
      if ( x17 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y37 <= '1' ;
         current_amtz <= s58;

      else
         y1 <= '1' ;
         y21 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_amtz <= s46;

      end if;

   when s53 =>
         y13 <= '1' ;
         current_amtz <= s59;

   when s54 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y15 <= '1' ;
         y19 <= '1' ;
         current_amtz <= s60;

   when s55 =>
         y13 <= '1' ;
         current_amtz <= s61;

   when s56 =>
         y22 <= '1' ;
         current_amtz <= s62;

   when s57 =>
         y5 <= '1' ;
         current_amtz <= s63;

   when s58 =>
         y14 <= '1' ;
         current_amtz <= s64;

   when s59 =>
      if ( x17 ) = '1' then
         y14 <= '1' ;
         current_amtz <= s65;

      else
         y1 <= '1' ;
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_amtz <= s53;

      end if;

   when s60 =>
         y1 <= '1' ;
         y3 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         current_amtz <= s66;

   when s61 =>
      if ( x17 ) = '1' then
         y22 <= '1' ;
         current_amtz <= s67;

      else
         y1 <= '1' ;
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_amtz <= s55;

      end if;

   when s62 =>
         y5 <= '1' ;
         current_amtz <= s68;

   when s63 =>
         y1 <= '1' ;
         y12 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_amtz <= s69;

   when s64 =>
         y22 <= '1' ;
         current_amtz <= s70;

   when s65 =>
         y22 <= '1' ;
         current_amtz <= s71;

   when s66 =>
      if ( x19 and x23 and x3 and x4 and x5 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x19 and x23 and x3 and x4 and x5 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x19 and x23 and x3 and x4 and x5 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( x19 and x23 and x3 and x4 and x5 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( x19 and x23 and x3 and x4 and not x5 ) = '1' then
         y6 <= '1' ;
         current_amtz <= s25;

      elsif ( x19 and x23 and x3 and not x4 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y19 <= '1' ;
         current_amtz <= s26;

      elsif ( x19 and x23 and x3 and not x4 and not x5 and x13 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

      elsif ( x19 and x23 and x3 and not x4 and not x5 and not x13 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x19 and x23 and x3 and not x4 and not x5 and not x13 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x19 and x23 and x3 and not x4 and not x5 and not x13 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( x19 and x23 and x3 and not x4 and not x5 and not x13 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( x19 and x23 and not x3 and x4 and x5 and x12 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

      elsif ( x19 and x23 and not x3 and x4 and x5 and not x12 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x19 and x23 and not x3 and x4 and x5 and not x12 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x19 and x23 and not x3 and x4 and x5 and not x12 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( x19 and x23 and not x3 and x4 and x5 and not x12 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( x19 and x23 and not x3 and x4 and not x5 and x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

      elsif ( x19 and x23 and not x3 and x4 and not x5 and not x11 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x19 and x23 and not x3 and x4 and not x5 and not x11 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x19 and x23 and not x3 and x4 and not x5 and not x11 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( x19 and x23 and not x3 and x4 and not x5 and not x11 and not x21 ) = '1' then
         current_amtz <= s1;

      elsif ( x19 and x23 and not x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

      elsif ( x19 and not x23 and x22 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y9 <= '1' ;
         y23 <= '1' ;
         current_amtz <= s27;

      elsif ( x19 and not x23 and x22 and x4 and not x5 ) = '1' then
         y6 <= '1' ;
         current_amtz <= s28;

      elsif ( x19 and not x23 and x22 and not x4 ) = '1' then
         y6 <= '1' ;
         current_amtz <= s29;

      elsif ( x19 and not x23 and not x22 ) = '1' then
         y6 <= '1' ;
         current_amtz <= s25;

      else
         y1 <= '1' ;
         y8 <= '1' ;
         y23 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_amtz <= s30;

      end if;

   when s67 =>
      if ( x20 and x23 ) = '1' then
         y45 <= '1' ;
         current_amtz <= s31;

      elsif ( x20 and not x23 ) = '1' then
         y1 <= '1' ;
         y20 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y44 <= '1' ;
         current_amtz <= s19;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         y15 <= '1' ;
         y19 <= '1' ;
         current_amtz <= s35;

      end if;

   when s68 =>
         y1 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_amtz <= s72;

   when s69 =>
         y13 <= '1' ;
         current_amtz <= s73;

   when s70 =>
      if ( x20 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x20 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x20 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( x20 and not x21 ) = '1' then
         current_amtz <= s1;

      else
         y5 <= '1' ;
         current_amtz <= s38;

      end if;

   when s71 =>
      if ( x20 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y20 <= '1' ;
         y36 <= '1' ;
         current_amtz <= s19;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         y15 <= '1' ;
         y19 <= '1' ;
         current_amtz <= s39;

      end if;

   when s72 =>
         y13 <= '1' ;
         current_amtz <= s74;

   when s73 =>
      if ( x17 ) = '1' then
         y22 <= '1' ;
         current_amtz <= s75;

      else
         y1 <= '1' ;
         y12 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_amtz <= s69;

      end if;

   when s74 =>
      if ( x17 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         current_amtz <= s76;

      else
         y1 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_amtz <= s72;

      end if;

   when s75 =>
      if ( x20 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         current_amtz <= s77;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         y15 <= '1' ;
         y36 <= '1' ;
         current_amtz <= s51;

      end if;

   when s76 =>
         y22 <= '1' ;
         current_amtz <= s78;

   when s77 =>
         y6 <= '1' ;
         current_amtz <= s79;

   when s78 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_amtz <= s19;

   when s79 =>
         y5 <= '1' ;
         current_amtz <= s80;

   when s80 =>
         y1 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_amtz <= s81;

   when s81 =>
         y13 <= '1' ;
         current_amtz <= s82;

   when s82 =>
      if ( x17 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         current_amtz <= s83;

      else
         y1 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_amtz <= s81;

      end if;

   when s83 =>
         y14 <= '1' ;
         current_amtz <= s84;

   when s84 =>
         y22 <= '1' ;
         current_amtz <= s85;

   when s85 =>
      if ( x20 and x21 and x16 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x20 and x21 and not x16 and x15 ) = '1' then
         y43 <= '1' ;
         current_amtz <= s1;

      elsif ( x20 and x21 and not x16 and not x15 ) = '1' then
         current_amtz <= s1;

      elsif ( x20 and not x21 ) = '1' then
         current_amtz <= s1;

      else
         y5 <= '1' ;
         current_amtz <= s80;

      end if;

   end case;
   end proc_amtz;

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

	current_amtz <= s1;
      elsif (clk'event and clk ='1') then
        proc_amtz;
      end if;
   end process;
end ARC;
