library ieee;
use ieee.std_logic_1164.all;

entity ratm is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56,y57 : out std_logic );
end ratm;

architecture ARC of ratm is

   type states_ratm is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73 );
   signal current_ratm : states_ratm;

begin
   process (clk , rst)
   procedure proc_ratm is
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
	y57  <= '0' ;

   case current_ratm is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_ratm <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_ratm <= s3;

      else
         current_ratm <= s1;

      end if;

   when s2 =>
         y19 <= '1' ;
         current_ratm <= s4;

   when s3 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_ratm <= s5;

   when s4 =>
         y2 <= '1' ;
         y15 <= '1' ;
         y31 <= '1' ;
         current_ratm <= s6;

   when s5 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         current_ratm <= s7;

   when s6 =>
         y24 <= '1' ;
         current_ratm <= s8;

   when s7 =>
         y6 <= '1' ;
         y7 <= '1' ;
         current_ratm <= s9;

   when s8 =>
         y2 <= '1' ;
         y15 <= '1' ;
         y31 <= '1' ;
         current_ratm <= s10;

   when s9 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_ratm <= s11;

   when s10 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s12;

   when s11 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         current_ratm <= s13;

   when s12 =>
         y7 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_ratm <= s1;

   when s13 =>
      if ( x3 and x4 and x6 ) = '1' then
         y39 <= '1' ;
         current_ratm <= s14;

      elsif ( x3 and x4 and not x6 ) = '1' then
         y39 <= '1' ;
         current_ratm <= s15;

      elsif ( x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y17 <= '1' ;
         current_ratm <= s16;

      elsif ( not x3 and x5 ) = '1' then
         y6 <= '1' ;
         y26 <= '1' ;
         current_ratm <= s3;

      else
         y20 <= '1' ;
         current_ratm <= s17;

      end if;

   when s14 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         current_ratm <= s18;

   when s15 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         current_ratm <= s19;

   when s16 =>
      if ( x7 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s20;

      elsif ( not x7 and x9 and x6 and x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s21;

      elsif ( not x7 and x9 and x6 and not x12 and x11 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y35 <= '1' ;
         current_ratm <= s23;

      elsif ( not x7 and x9 and x6 and not x12 and not x11 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x7 and x9 and x6 and not x12 and not x11 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x7 and x9 and x6 and not x12 and not x11 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( not x7 and x9 and x6 and not x12 and not x11 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and x10 and x11 and x12 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and x10 and x11 and x12 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and x10 and x11 and x12 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and x10 and x11 and x12 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and x10 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s25;

      elsif ( not x7 and x9 and not x6 and x8 and x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         current_ratm <= s26;

      elsif ( not x7 and x9 and not x6 and x8 and x10 and not x11 and not x12 and x15 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

      elsif ( not x7 and x9 and not x6 and x8 and x10 and not x11 and not x12 and not x15 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and x10 and not x11 and not x12 and not x15 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and x10 and not x11 and not x12 and not x15 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and x10 and not x11 and not x12 and not x15 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and not x10 and x11 and x12 and x16 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

      elsif ( not x7 and x9 and not x6 and x8 and not x10 and x11 and x12 and not x16 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and not x10 and x11 and x12 and not x16 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and not x10 and x11 and x12 and not x16 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and not x10 and x11 and x12 and not x16 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and not x10 and x11 and not x12 and x17 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

      elsif ( not x7 and x9 and not x6 and x8 and not x10 and x11 and not x12 and not x17 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and not x10 and x11 and not x12 and not x17 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and not x10 and x11 and not x12 and not x17 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and not x10 and x11 and not x12 and not x17 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( not x7 and x9 and not x6 and x8 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

      elsif ( not x7 and x9 and not x6 and x8 and not x10 and not x11 and not x12 ) = '1' then
         y57 <= '1' ;
         current_ratm <= s24;

      elsif ( not x7 and x9 and not x6 and not x8 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s21;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_ratm <= s27;

      end if;

   when s17 =>
      if ( x6 and x8 and x10 and x11 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x6 and x8 and x10 and x11 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x6 and x8 and x10 and x11 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( x6 and x8 and x10 and x11 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( x6 and x8 and x10 and not x11 and x12 ) = '1' then
         y21 <= '1' ;
         current_ratm <= s24;

      elsif ( x6 and x8 and x10 and not x11 and not x12 ) = '1' then
         y23 <= '1' ;
         current_ratm <= s24;

      elsif ( x6 and x8 and not x10 and x11 and x12 and x13 ) = '1' then
         y7 <= '1' ;
         current_ratm <= s28;

      elsif ( x6 and x8 and not x10 and x11 and x12 and not x13 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x6 and x8 and not x10 and x11 and x12 and not x13 and x18 and not x14 ) = '1' then
         current_ratm <= s1;

      elsif ( x6 and x8 and not x10 and x11 and x12 and not x13 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( x6 and x8 and not x10 and x11 and not x12 and x14 ) = '1' then
         y7 <= '1' ;
         current_ratm <= s29;

      elsif ( x6 and x8 and not x10 and x11 and not x12 and not x14 and x18 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x6 and x8 and not x10 and x11 and not x12 and not x14 and x18 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( x6 and x8 and not x10 and x11 and not x12 and not x14 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( x6 and x8 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y27 <= '1' ;
         y45 <= '1' ;
         current_ratm <= s24;

      elsif ( x6 and x8 and not x10 and not x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y38 <= '1' ;
         y46 <= '1' ;
         current_ratm <= s24;

      elsif ( x6 and not x8 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y33 <= '1' ;
         current_ratm <= s27;

      elsif ( x6 and not x8 and not x7 and x10 and x11 and x12 ) = '1' then
         y40 <= '1' ;
         current_ratm <= s24;

      elsif ( x6 and not x8 and not x7 and x10 and x11 and not x12 ) = '1' then
         y41 <= '1' ;
         current_ratm <= s24;

      elsif ( x6 and not x8 and not x7 and x10 and not x11 and x12 ) = '1' then
         y42 <= '1' ;
         current_ratm <= s24;

      elsif ( x6 and not x8 and not x7 and x10 and not x11 and not x12 ) = '1' then
         y43 <= '1' ;
         current_ratm <= s24;

      elsif ( x6 and not x8 and not x7 and not x10 and x11 and x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y35 <= '1' ;
         current_ratm <= s30;

      elsif ( x6 and not x8 and not x7 and not x10 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y35 <= '1' ;
         y37 <= '1' ;
         current_ratm <= s24;

      elsif ( x6 and not x8 and not x7 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y33 <= '1' ;
         y36 <= '1' ;
         current_ratm <= s24;

      elsif ( x6 and not x8 and not x7 and not x10 and not x11 and not x12 ) = '1' then
         y44 <= '1' ;
         current_ratm <= s24;

      elsif ( not x6 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y33 <= '1' ;
         current_ratm <= s27;

      elsif ( not x6 and not x8 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y33 <= '1' ;
         current_ratm <= s27;

      else
         y2 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y33 <= '1' ;
         current_ratm <= s31;

      end if;

   when s18 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y27 <= '1' ;
         y36 <= '1' ;
         current_ratm <= s24;

   when s19 =>
      if ( x6 and x11 and x12 ) = '1' then
         y5 <= '1' ;
         y27 <= '1' ;
         y49 <= '1' ;
         y50 <= '1' ;
         current_ratm <= s22;

      elsif ( x6 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y35 <= '1' ;
         current_ratm <= s23;

      elsif ( x6 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y27 <= '1' ;
         y36 <= '1' ;
         current_ratm <= s24;

      elsif ( x6 and not x11 and not x12 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x6 and not x11 and not x12 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x6 and not x11 and not x12 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( x6 and not x11 and not x12 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( not x6 and x10 and x11 and x12 ) = '1' then
         y47 <= '1' ;
         current_ratm <= s32;

      elsif ( not x6 and x10 and x11 and not x12 ) = '1' then
         y48 <= '1' ;
         current_ratm <= s33;

      elsif ( not x6 and x10 and not x11 and x12 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s34;

      elsif ( not x6 and x10 and not x11 and not x12 ) = '1' then
         y54 <= '1' ;
         current_ratm <= s35;

      elsif ( not x6 and not x10 and x11 and x12 ) = '1' then
         y5 <= '1' ;
         y15 <= '1' ;
         y29 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_ratm <= s24;

      elsif ( not x6 and not x10 and x11 and not x12 ) = '1' then
         y5 <= '1' ;
         y15 <= '1' ;
         y30 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_ratm <= s24;

      elsif ( not x6 and not x10 and not x11 and x12 ) = '1' then
         y5 <= '1' ;
         y15 <= '1' ;
         y28 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_ratm <= s24;

      elsif ( not x6 and not x10 and not x11 and not x12 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x6 and not x10 and not x11 and not x12 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x6 and not x10 and not x11 and not x12 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      else
         current_ratm <= s1;

      end if;

   when s20 =>
         y24 <= '1' ;
         y25 <= '1' ;
         current_ratm <= s36;

   when s21 =>
         y24 <= '1' ;
         y25 <= '1' ;
         current_ratm <= s37;

   when s22 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y35 <= '1' ;
         current_ratm <= s23;

   when s23 =>
         y2 <= '1' ;
         y15 <= '1' ;
         y31 <= '1' ;
         current_ratm <= s38;

   when s24 =>
      if ( x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      else
         current_ratm <= s1;

      end if;

   when s25 =>
         y24 <= '1' ;
         y25 <= '1' ;
         current_ratm <= s39;

   when s26 =>
         y24 <= '1' ;
         y25 <= '1' ;
         current_ratm <= s40;

   when s27 =>
      if ( x6 and x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s21;

      elsif ( x6 and not x12 and x11 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y35 <= '1' ;
         current_ratm <= s23;

      elsif ( x6 and not x12 and not x11 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x6 and not x12 and not x11 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x6 and not x12 and not x11 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( x6 and not x12 and not x11 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( not x6 and x8 and x10 and x11 and x12 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x6 and x8 and x10 and x11 and x12 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x6 and x8 and x10 and x11 and x12 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( not x6 and x8 and x10 and x11 and x12 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( not x6 and x8 and x10 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s25;

      elsif ( not x6 and x8 and x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         current_ratm <= s26;

      elsif ( not x6 and x8 and x10 and not x11 and not x12 and x15 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

      elsif ( not x6 and x8 and x10 and not x11 and not x12 and not x15 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x6 and x8 and x10 and not x11 and not x12 and not x15 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x6 and x8 and x10 and not x11 and not x12 and not x15 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( not x6 and x8 and x10 and not x11 and not x12 and not x15 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( not x6 and x8 and not x10 and x11 and x12 and x16 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

      elsif ( not x6 and x8 and not x10 and x11 and x12 and not x16 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x6 and x8 and not x10 and x11 and x12 and not x16 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x6 and x8 and not x10 and x11 and x12 and not x16 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( not x6 and x8 and not x10 and x11 and x12 and not x16 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( not x6 and x8 and not x10 and x11 and not x12 and x17 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

      elsif ( not x6 and x8 and not x10 and x11 and not x12 and not x17 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x6 and x8 and not x10 and x11 and not x12 and not x17 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x6 and x8 and not x10 and x11 and not x12 and not x17 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( not x6 and x8 and not x10 and x11 and not x12 and not x17 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( not x6 and x8 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

      elsif ( not x6 and x8 and not x10 and not x11 and not x12 ) = '1' then
         y57 <= '1' ;
         current_ratm <= s24;

      else
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s21;

      end if;

   when s28 =>
         y7 <= '1' ;
         current_ratm <= s41;

   when s29 =>
         y7 <= '1' ;
         current_ratm <= s42;

   when s30 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y33 <= '1' ;
         y36 <= '1' ;
         current_ratm <= s43;

   when s31 =>
      if ( x10 and x11 and x12 ) = '1' then
         y47 <= '1' ;
         current_ratm <= s32;

      elsif ( x10 and x11 and not x12 ) = '1' then
         y48 <= '1' ;
         current_ratm <= s33;

      elsif ( x10 and not x11 and x12 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s34;

      elsif ( x10 and not x11 and not x12 ) = '1' then
         y54 <= '1' ;
         current_ratm <= s35;

      elsif ( not x10 and x11 and x12 ) = '1' then
         y5 <= '1' ;
         y15 <= '1' ;
         y29 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_ratm <= s24;

      elsif ( not x10 and x11 and not x12 ) = '1' then
         y5 <= '1' ;
         y15 <= '1' ;
         y30 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_ratm <= s24;

      elsif ( not x10 and not x11 and x12 ) = '1' then
         y5 <= '1' ;
         y15 <= '1' ;
         y28 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_ratm <= s24;

      elsif ( not x10 and not x11 and not x12 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x10 and not x11 and not x12 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x10 and not x11 and not x12 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      else
         current_ratm <= s1;

      end if;

   when s32 =>
         y56 <= '1' ;
         current_ratm <= s44;

   when s33 =>
         y54 <= '1' ;
         current_ratm <= s45;

   when s34 =>
         y51 <= '1' ;
         current_ratm <= s24;

   when s35 =>
         y52 <= '1' ;
         current_ratm <= s24;

   when s36 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s46;

   when s37 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s47;

   when s38 =>
         y24 <= '1' ;
         y25 <= '1' ;
         current_ratm <= s48;

   when s39 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s49;

   when s40 =>
         y2 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         current_ratm <= s50;

   when s41 =>
         y7 <= '1' ;
         current_ratm <= s51;

   when s42 =>
         y7 <= '1' ;
         current_ratm <= s52;

   when s43 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y27 <= '1' ;
         y37 <= '1' ;
         current_ratm <= s24;

   when s44 =>
         y55 <= '1' ;
         current_ratm <= s24;

   when s45 =>
         y53 <= '1' ;
         current_ratm <= s24;

   when s46 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y27 <= '1' ;
         current_ratm <= s53;

   when s47 =>
         y24 <= '1' ;
         y25 <= '1' ;
         current_ratm <= s54;

   when s48 =>
         y2 <= '1' ;
         y15 <= '1' ;
         y31 <= '1' ;
         current_ratm <= s55;

   when s49 =>
         y24 <= '1' ;
         y25 <= '1' ;
         current_ratm <= s56;

   when s50 =>
         y24 <= '1' ;
         current_ratm <= s57;

   when s51 =>
         y7 <= '1' ;
         current_ratm <= s24;

   when s52 =>
         y7 <= '1' ;
         current_ratm <= s24;

   when s53 =>
      if ( x9 and x6 and x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s21;

      elsif ( x9 and x6 and not x12 and x11 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y35 <= '1' ;
         current_ratm <= s23;

      elsif ( x9 and x6 and not x12 and not x11 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x9 and x6 and not x12 and not x11 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x9 and x6 and not x12 and not x11 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( x9 and x6 and not x12 and not x11 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and x10 and x11 and x12 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and x10 and x11 and x12 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and x10 and x11 and x12 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and x10 and x11 and x12 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and x10 and x11 and not x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s25;

      elsif ( x9 and not x6 and x8 and x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         current_ratm <= s26;

      elsif ( x9 and not x6 and x8 and x10 and not x11 and not x12 and x15 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

      elsif ( x9 and not x6 and x8 and x10 and not x11 and not x12 and not x15 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and x10 and not x11 and not x12 and not x15 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and x10 and not x11 and not x12 and not x15 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and x10 and not x11 and not x12 and not x15 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and not x10 and x11 and x12 and x16 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

      elsif ( x9 and not x6 and x8 and not x10 and x11 and x12 and not x16 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and not x10 and x11 and x12 and not x16 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and not x10 and x11 and x12 and not x16 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and not x10 and x11 and x12 and not x16 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and not x10 and x11 and not x12 and x17 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

      elsif ( x9 and not x6 and x8 and not x10 and x11 and not x12 and not x17 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and not x10 and x11 and not x12 and not x17 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and not x10 and x11 and not x12 and not x17 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and not x10 and x11 and not x12 and not x17 and not x18 ) = '1' then
         current_ratm <= s1;

      elsif ( x9 and not x6 and x8 and not x10 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

      elsif ( x9 and not x6 and x8 and not x10 and not x11 and not x12 ) = '1' then
         y57 <= '1' ;
         current_ratm <= s24;

      elsif ( x9 and not x6 and not x8 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s21;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y28 <= '1' ;
         y33 <= '1' ;
         current_ratm <= s27;

      end if;

   when s54 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s58;

   when s55 =>
         y24 <= '1' ;
         y25 <= '1' ;
         current_ratm <= s59;

   when s56 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s60;

   when s57 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         current_ratm <= s24;

   when s58 =>
         y24 <= '1' ;
         y25 <= '1' ;
         current_ratm <= s61;

   when s59 =>
         y2 <= '1' ;
         y15 <= '1' ;
         y31 <= '1' ;
         current_ratm <= s62;

   when s60 =>
         y24 <= '1' ;
         y25 <= '1' ;
         current_ratm <= s63;

   when s61 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s64;

   when s62 =>
         y24 <= '1' ;
         y25 <= '1' ;
         current_ratm <= s65;

   when s63 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         current_ratm <= s66;

   when s64 =>
         y24 <= '1' ;
         current_ratm <= s19;

   when s65 =>
         y2 <= '1' ;
         y15 <= '1' ;
         y31 <= '1' ;
         current_ratm <= s67;

   when s66 =>
         y24 <= '1' ;
         current_ratm <= s68;

   when s67 =>
         y24 <= '1' ;
         current_ratm <= s69;

   when s68 =>
         y25 <= '1' ;
         current_ratm <= s70;

   when s69 =>
      if ( x12 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y32 <= '1' ;
         y36 <= '1' ;
         current_ratm <= s24;

      elsif ( not x12 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x12 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x12 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      else
         current_ratm <= s1;

      end if;

   when s70 =>
      if ( x19 ) = '1' then
         y7 <= '1' ;
         current_ratm <= s71;

      elsif ( not x19 and x18 and x14 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x19 and x18 and not x14 and x13 ) = '1' then
         y56 <= '1' ;
         current_ratm <= s1;

      elsif ( not x19 and x18 and not x14 and not x13 ) = '1' then
         current_ratm <= s1;

      else
         current_ratm <= s1;

      end if;

   when s71 =>
         y7 <= '1' ;
         current_ratm <= s72;

   when s72 =>
         y7 <= '1' ;
         current_ratm <= s73;

   when s73 =>
         y7 <= '1' ;
         current_ratm <= s24;

   end case;
   end proc_ratm;

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
	y57  <= '0' ;
	current_ratm <= s1;
      elsif (clk'event and clk ='1') then
        proc_ratm;
      end if;
   end process;
end ARC;
