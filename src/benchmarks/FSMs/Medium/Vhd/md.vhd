library ieee;
use ieee.std_logic_1164.all;

entity md is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53 : out std_logic );
end md;

architecture ARC of md is

   type states_md is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59 );
   signal current_md : states_md;

begin
   process (clk , rst)
   procedure proc_md is
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
	y53  <= '0' ;

   case current_md is
   when s1 =>
      if ( x12 and x13 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         current_md <= s2;

      elsif ( x12 and not x13 ) = '1' then
         y25 <= '1' ;
         current_md <= s3;

      else
         current_md <= s1;

      end if;

   when s2 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y16 <= '1' ;
         current_md <= s4;

   when s3 =>
         y26 <= '1' ;
         current_md <= s5;

   when s4 =>
         y2 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_md <= s6;

   when s5 =>
         y27 <= '1' ;
         current_md <= s7;

   when s6 =>
         y21 <= '1' ;
         current_md <= s8;

   when s7 =>
      if ( x19 and x20 and x1 and x2 and x3 and x4 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and x3 and x4 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and x3 and x4 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and x3 and x4 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and x3 and not x4 and x5 ) = '1' then
         y23 <= '1' ;
         current_md <= s9;

      elsif ( x19 and x20 and x1 and x2 and x3 and not x4 and not x5 ) = '1' then
         y33 <= '1' ;
         current_md <= s9;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and x5 and x18 ) = '1' then
         y22 <= '1' ;
         current_md <= s9;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and x5 and not x18 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and x5 and not x18 and x22 and not x21 ) = '1' then
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and x5 and not x18 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and not x5 and x21 ) = '1' then
         y22 <= '1' ;
         current_md <= s9;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and not x5 and not x21 and x22 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and not x5 and not x21 and x22 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and not x5 and not x21 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_md <= s9;

      elsif ( x19 and x20 and x1 and x2 and not x3 and not x4 and not x5 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y34 <= '1' ;
         y37 <= '1' ;
         current_md <= s9;

      elsif ( x19 and x20 and x1 and not x2 and x8 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         current_md <= s10;

      elsif ( x19 and x20 and x1 and not x2 and not x8 ) = '1' then
         y26 <= '1' ;
         current_md <= s11;

      elsif ( x19 and x20 and not x1 and x2 ) = '1' then
         y26 <= '1' ;
         current_md <= s11;

      elsif ( x19 and x20 and not x1 and not x2 and x8 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         current_md <= s10;

      elsif ( x19 and x20 and not x1 and not x2 and not x8 ) = '1' then
         y26 <= '1' ;
         current_md <= s11;

      elsif ( x19 and not x20 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         current_md <= s12;

      else
         y28 <= '1' ;
         current_md <= s13;

      end if;

   when s8 =>
         y2 <= '1' ;
         y17 <= '1' ;
         y19 <= '1' ;
         current_md <= s14;

   when s9 =>
      if ( x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      else
         current_md <= s1;

      end if;

   when s10 =>
      if ( x1 and x2 ) = '1' then
         current_md <= s1;

      elsif ( x1 and not x2 and x3 and x4 and x5 ) = '1' then
         y31 <= '1' ;
         current_md <= s9;

      elsif ( x1 and not x2 and x3 and x4 and not x5 ) = '1' then
         y13 <= '1' ;
         current_md <= s9;

      elsif ( x1 and not x2 and x3 and not x4 and x5 ) = '1' then
         y51 <= '1' ;
         current_md <= s9;

      elsif ( x1 and not x2 and x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y48 <= '1' ;
         y50 <= '1' ;
         current_md <= s9;

      elsif ( x1 and not x2 and not x3 and x4 and x6 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s15;

      elsif ( x1 and not x2 and not x3 and x4 and x6 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x1 and not x2 and not x3 and x4 and not x6 and x7 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s15;

      elsif ( x1 and not x2 and not x3 and x4 and not x6 and x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x1 and not x2 and not x3 and x4 and not x6 and not x7 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y48 <= '1' ;
         current_md <= s17;

      elsif ( x1 and not x2 and not x3 and x4 and not x6 and not x7 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y20 <= '1' ;
         current_md <= s9;

      elsif ( x1 and not x2 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( x1 and not x2 and not x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( not x1 and x2 ) = '1' then
         current_md <= s1;

      elsif ( not x1 and not x2 and x3 and x4 and x5 ) = '1' then
         y41 <= '1' ;
         y45 <= '1' ;
         y46 <= '1' ;
         current_md <= s9;

      elsif ( not x1 and not x2 and x3 and x4 and not x5 ) = '1' then
         y39 <= '1' ;
         y43 <= '1' ;
         y44 <= '1' ;
         current_md <= s9;

      elsif ( not x1 and not x2 and x3 and not x4 and x5 ) = '1' then
         y41 <= '1' ;
         y42 <= '1' ;
         current_md <= s9;

      elsif ( not x1 and not x2 and x3 and not x4 and not x5 ) = '1' then
         y39 <= '1' ;
         y40 <= '1' ;
         current_md <= s9;

      elsif ( not x1 and not x2 and not x3 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y47 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( not x1 and not x2 and not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y48 <= '1' ;
         y49 <= '1' ;
         current_md <= s9;

      else
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y32 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      end if;

   when s11 =>
         y27 <= '1' ;
         current_md <= s18;

   when s12 =>
      if ( x6 ) = '1' then
         y30 <= '1' ;
         current_md <= s3;

      elsif ( not x6 and x1 and x2 and x3 and x4 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x6 and x1 and x2 and x3 and x4 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x6 and x1 and x2 and x3 and x4 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( not x6 and x1 and x2 and x3 and x4 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( not x6 and x1 and x2 and x3 and not x4 and x5 ) = '1' then
         y23 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and x1 and x2 and x3 and not x4 and not x5 ) = '1' then
         y33 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and x1 and x2 and not x3 and x4 and x5 and x18 ) = '1' then
         y22 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and x1 and x2 and not x3 and x4 and x5 and not x18 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x6 and x1 and x2 and not x3 and x4 and x5 and not x18 and x22 and not x21 ) = '1' then
         current_md <= s1;

      elsif ( not x6 and x1 and x2 and not x3 and x4 and x5 and not x18 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( not x6 and x1 and x2 and not x3 and x4 and not x5 and x21 ) = '1' then
         y22 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and x1 and x2 and not x3 and x4 and not x5 and not x21 and x22 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x6 and x1 and x2 and not x3 and x4 and not x5 and not x21 and x22 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( not x6 and x1 and x2 and not x3 and x4 and not x5 and not x21 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( not x6 and x1 and x2 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and x1 and x2 and not x3 and not x4 and not x5 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y34 <= '1' ;
         y37 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and x1 and not x2 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s19;

      elsif ( not x6 and x1 and not x2 and not x7 and x3 and x4 and x5 ) = '1' then
         y31 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and x1 and not x2 and not x7 and x3 and x4 and not x5 ) = '1' then
         y13 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and x1 and not x2 and not x7 and x3 and not x4 and x5 ) = '1' then
         y51 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and x1 and not x2 and not x7 and x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y48 <= '1' ;
         y50 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and x1 and not x2 and not x7 and not x3 and x4 and x5 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_md <= s20;

      elsif ( not x6 and x1 and not x2 and not x7 and not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_md <= s20;

      elsif ( not x6 and x1 and not x2 and not x7 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_md <= s20;

      elsif ( not x6 and x1 and not x2 and not x7 and not x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and not x1 and x2 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s21;

      elsif ( not x6 and not x1 and x2 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s21;

      elsif ( not x6 and not x1 and x2 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s21;

      elsif ( not x6 and not x1 and x2 and not x3 and not x4 and not x5 ) = '1' then
         y38 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and not x1 and not x2 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s19;

      elsif ( not x6 and not x1 and not x2 and not x7 and x3 and x4 and x5 ) = '1' then
         y41 <= '1' ;
         y45 <= '1' ;
         y46 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and not x1 and not x2 and not x7 and x3 and x4 and not x5 ) = '1' then
         y39 <= '1' ;
         y43 <= '1' ;
         y44 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and not x1 and not x2 and not x7 and x3 and not x4 and x5 ) = '1' then
         y41 <= '1' ;
         y42 <= '1' ;
         current_md <= s9;

      elsif ( not x6 and not x1 and not x2 and not x7 and x3 and not x4 and not x5 ) = '1' then
         y39 <= '1' ;
         y40 <= '1' ;
         current_md <= s9;

      else
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_md <= s24;

      end if;

   when s13 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y11 <= '1' ;
         current_md <= s25;

   when s14 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s26;

   when s15 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

   when s16 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s27;

   when s17 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y20 <= '1' ;
         current_md <= s9;

   when s18 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_md <= s28;

   when s19 =>
      if ( x1 and x4 and x5 ) = '1' then
         y26 <= '1' ;
         current_md <= s29;

      elsif ( x1 and x4 and not x5 and x3 ) = '1' then
         y13 <= '1' ;
         current_md <= s9;

      elsif ( x1 and x4 and not x5 and not x3 and x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x1 and x4 and not x5 and not x3 and not x6 and x7 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x1 and x4 and not x5 and not x3 and not x6 and not x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y20 <= '1' ;
         current_md <= s9;

      elsif ( x1 and not x4 ) = '1' then
         y26 <= '1' ;
         current_md <= s29;

      else
         y26 <= '1' ;
         current_md <= s29;

      end if;

   when s20 =>
      if ( x3 and x4 and x5 ) = '1' then
         y31 <= '1' ;
         current_md <= s9;

      elsif ( x3 and x4 and not x5 ) = '1' then
         y13 <= '1' ;
         current_md <= s9;

      elsif ( x3 and not x4 and x5 ) = '1' then
         y51 <= '1' ;
         current_md <= s9;

      elsif ( x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y48 <= '1' ;
         y50 <= '1' ;
         current_md <= s9;

      elsif ( not x3 and x4 and x6 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s15;

      elsif ( not x3 and x4 and x6 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( not x3 and x4 and not x6 and x7 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s15;

      elsif ( not x3 and x4 and not x6 and x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( not x3 and x4 and not x6 and not x7 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y48 <= '1' ;
         current_md <= s17;

      elsif ( not x3 and x4 and not x6 and not x7 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y20 <= '1' ;
         current_md <= s9;

      elsif ( not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      end if;

   when s21 =>
      if ( x3 and x4 ) = '1' then
         y26 <= '1' ;
         current_md <= s22;

      elsif ( x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y11 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s23;

      elsif ( x3 and not x4 and not x5 and x16 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( x3 and not x4 and not x5 and not x16 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x3 and not x4 and not x5 and not x16 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x3 and not x4 and not x5 and not x16 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( x3 and not x4 and not x5 and not x16 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( not x3 and x4 and x5 and x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( not x3 and x4 and x5 and not x15 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x3 and x4 and x5 and not x15 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x3 and x4 and x5 and not x15 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( not x3 and x4 and x5 and not x15 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( not x3 and x4 and not x5 and x17 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( not x3 and x4 and not x5 and not x17 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x3 and x4 and not x5 and not x17 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x3 and x4 and not x5 and not x17 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( not x3 and x4 and not x5 and not x17 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      else
         y38 <= '1' ;
         current_md <= s9;

      end if;

   when s22 =>
         y27 <= '1' ;
         current_md <= s30;

   when s23 =>
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         y53 <= '1' ;
         current_md <= s31;

   when s24 =>
      if ( x3 and x4 and x5 ) = '1' then
         y41 <= '1' ;
         y45 <= '1' ;
         y46 <= '1' ;
         current_md <= s9;

      elsif ( x3 and x4 and not x5 ) = '1' then
         y39 <= '1' ;
         y43 <= '1' ;
         y44 <= '1' ;
         current_md <= s9;

      elsif ( x3 and not x4 and x5 ) = '1' then
         y41 <= '1' ;
         y42 <= '1' ;
         current_md <= s9;

      elsif ( x3 and not x4 and not x5 ) = '1' then
         y39 <= '1' ;
         y40 <= '1' ;
         current_md <= s9;

      elsif ( not x3 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y47 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y48 <= '1' ;
         y49 <= '1' ;
         current_md <= s9;

      else
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y32 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      end if;

   when s25 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_md <= s32;

   when s26 =>
         y22 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_md <= s1;

   when s27 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s33;

   when s28 =>
      if ( x7 and x19 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y20 <= '1' ;
         current_md <= s34;

      elsif ( x7 and not x19 ) = '1' then
         y28 <= '1' ;
         current_md <= s35;

      elsif ( not x7 and x9 and x1 and x3 ) = '1' then
         y26 <= '1' ;
         current_md <= s29;

      elsif ( not x7 and x9 and x1 and not x3 and x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_md <= s36;

      elsif ( not x7 and x9 and x1 and not x3 and x4 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( not x7 and x9 and x1 and not x3 and x4 and not x5 and not x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y20 <= '1' ;
         current_md <= s9;

      elsif ( not x7 and x9 and x1 and not x3 and not x4 ) = '1' then
         y26 <= '1' ;
         current_md <= s29;

      elsif ( not x7 and x9 and not x1 and x2 and x3 and x4 ) = '1' then
         y26 <= '1' ;
         current_md <= s22;

      elsif ( not x7 and x9 and not x1 and x2 and x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y11 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s23;

      elsif ( not x7 and x9 and not x1 and x2 and x3 and not x4 and not x5 and x16 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( not x7 and x9 and not x1 and x2 and x3 and not x4 and not x5 and not x16 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x7 and x9 and not x1 and x2 and x3 and not x4 and not x5 and not x16 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x7 and x9 and not x1 and x2 and x3 and not x4 and not x5 and not x16 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( not x7 and x9 and not x1 and x2 and x3 and not x4 and not x5 and not x16 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( not x7 and x9 and not x1 and x2 and not x3 and x4 and x5 and x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( not x7 and x9 and not x1 and x2 and not x3 and x4 and x5 and not x15 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x7 and x9 and not x1 and x2 and not x3 and x4 and x5 and not x15 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x7 and x9 and not x1 and x2 and not x3 and x4 and x5 and not x15 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( not x7 and x9 and not x1 and x2 and not x3 and x4 and x5 and not x15 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( not x7 and x9 and not x1 and x2 and not x3 and x4 and not x5 and x17 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( not x7 and x9 and not x1 and x2 and not x3 and x4 and not x5 and not x17 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x7 and x9 and not x1 and x2 and not x3 and x4 and not x5 and not x17 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x7 and x9 and not x1 and x2 and not x3 and x4 and not x5 and not x17 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( not x7 and x9 and not x1 and x2 and not x3 and x4 and not x5 and not x17 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( not x7 and x9 and not x1 and x2 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( not x7 and x9 and not x1 and x2 and not x3 and not x4 and not x5 ) = '1' then
         y38 <= '1' ;
         current_md <= s9;

      elsif ( not x7 and x9 and not x1 and not x2 ) = '1' then
         y26 <= '1' ;
         current_md <= s29;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y32 <= '1' ;
         current_md <= s37;

      end if;

   when s29 =>
         y27 <= '1' ;
         current_md <= s38;

   when s30 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y48 <= '1' ;
         current_md <= s39;

   when s31 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

   when s32 =>
      if ( x19 and x20 and x1 and x2 and x3 and x4 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and x3 and x4 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and x3 and x4 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and x3 and x4 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and x3 and not x4 and x5 ) = '1' then
         y23 <= '1' ;
         current_md <= s9;

      elsif ( x19 and x20 and x1 and x2 and x3 and not x4 and not x5 ) = '1' then
         y33 <= '1' ;
         current_md <= s9;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and x5 and x18 ) = '1' then
         y22 <= '1' ;
         current_md <= s9;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and x5 and not x18 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and x5 and not x18 and x22 and not x21 ) = '1' then
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and x5 and not x18 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and not x5 and x21 ) = '1' then
         y22 <= '1' ;
         current_md <= s9;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and not x5 and not x21 and x22 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and not x5 and not x21 and x22 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and not x3 and x4 and not x5 and not x21 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( x19 and x20 and x1 and x2 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_md <= s9;

      elsif ( x19 and x20 and x1 and x2 and not x3 and not x4 and not x5 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y34 <= '1' ;
         y37 <= '1' ;
         current_md <= s9;

      elsif ( x19 and x20 and x1 and not x2 and x8 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         current_md <= s10;

      elsif ( x19 and x20 and x1 and not x2 and not x8 ) = '1' then
         y26 <= '1' ;
         current_md <= s11;

      elsif ( x19 and x20 and not x1 and x2 ) = '1' then
         y26 <= '1' ;
         current_md <= s11;

      elsif ( x19 and x20 and not x1 and not x2 and x8 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         current_md <= s10;

      elsif ( x19 and x20 and not x1 and not x2 and not x8 ) = '1' then
         y26 <= '1' ;
         current_md <= s11;

      elsif ( x19 and not x20 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         current_md <= s12;

      elsif ( not x19 and x11 ) = '1' then
         y28 <= '1' ;
         current_md <= s13;

      else
         y29 <= '1' ;
         current_md <= s40;

      end if;

   when s33 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         current_md <= s41;

   when s34 =>
      if ( x9 and x1 and x3 ) = '1' then
         y26 <= '1' ;
         current_md <= s29;

      elsif ( x9 and x1 and not x3 and x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_md <= s36;

      elsif ( x9 and x1 and not x3 and x4 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x9 and x1 and not x3 and x4 and not x5 and not x6 and x7 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x9 and x1 and not x3 and x4 and not x5 and not x6 and not x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y20 <= '1' ;
         current_md <= s9;

      elsif ( x9 and x1 and not x3 and not x4 ) = '1' then
         y26 <= '1' ;
         current_md <= s29;

      elsif ( x9 and not x1 and x2 and x3 and x4 ) = '1' then
         y26 <= '1' ;
         current_md <= s22;

      elsif ( x9 and not x1 and x2 and x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y11 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s23;

      elsif ( x9 and not x1 and x2 and x3 and not x4 and not x5 and x16 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( x9 and not x1 and x2 and x3 and not x4 and not x5 and not x16 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x9 and not x1 and x2 and x3 and not x4 and not x5 and not x16 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x9 and not x1 and x2 and x3 and not x4 and not x5 and not x16 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( x9 and not x1 and x2 and x3 and not x4 and not x5 and not x16 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( x9 and not x1 and x2 and not x3 and x4 and x5 and x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( x9 and not x1 and x2 and not x3 and x4 and x5 and not x15 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x9 and not x1 and x2 and not x3 and x4 and x5 and not x15 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x9 and not x1 and x2 and not x3 and x4 and x5 and not x15 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( x9 and not x1 and x2 and not x3 and x4 and x5 and not x15 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( x9 and not x1 and x2 and not x3 and x4 and not x5 and x17 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( x9 and not x1 and x2 and not x3 and x4 and not x5 and not x17 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x9 and not x1 and x2 and not x3 and x4 and not x5 and not x17 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x9 and not x1 and x2 and not x3 and x4 and not x5 and not x17 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( x9 and not x1 and x2 and not x3 and x4 and not x5 and not x17 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( x9 and not x1 and x2 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( x9 and not x1 and x2 and not x3 and not x4 and not x5 ) = '1' then
         y38 <= '1' ;
         current_md <= s9;

      elsif ( x9 and not x1 and not x2 ) = '1' then
         y26 <= '1' ;
         current_md <= s29;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y32 <= '1' ;
         current_md <= s37;

      end if;

   when s35 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y21 <= '1' ;
         current_md <= s42;

   when s36 =>
         y26 <= '1' ;
         current_md <= s29;

   when s37 =>
      if ( x1 and x3 ) = '1' then
         y26 <= '1' ;
         current_md <= s29;

      elsif ( x1 and not x3 and x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_md <= s36;

      elsif ( x1 and not x3 and x4 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x1 and not x3 and x4 and not x5 and not x6 and x7 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x1 and not x3 and x4 and not x5 and not x6 and not x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y20 <= '1' ;
         current_md <= s9;

      elsif ( x1 and not x3 and not x4 ) = '1' then
         y26 <= '1' ;
         current_md <= s29;

      elsif ( not x1 and x2 and x3 and x4 ) = '1' then
         y26 <= '1' ;
         current_md <= s22;

      elsif ( not x1 and x2 and x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y11 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s23;

      elsif ( not x1 and x2 and x3 and not x4 and not x5 and x16 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( not x1 and x2 and x3 and not x4 and not x5 and not x16 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x1 and x2 and x3 and not x4 and not x5 and not x16 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x1 and x2 and x3 and not x4 and not x5 and not x16 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( not x1 and x2 and x3 and not x4 and not x5 and not x16 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( not x1 and x2 and not x3 and x4 and x5 and x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( not x1 and x2 and not x3 and x4 and x5 and not x15 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x1 and x2 and not x3 and x4 and x5 and not x15 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x1 and x2 and not x3 and x4 and x5 and not x15 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( not x1 and x2 and not x3 and x4 and x5 and not x15 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( not x1 and x2 and not x3 and x4 and not x5 and x17 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( not x1 and x2 and not x3 and x4 and not x5 and not x17 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x1 and x2 and not x3 and x4 and not x5 and not x17 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x1 and x2 and not x3 and x4 and not x5 and not x17 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( not x1 and x2 and not x3 and x4 and not x5 and not x17 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( not x1 and x2 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_md <= s9;

      elsif ( not x1 and x2 and not x3 and not x4 and not x5 ) = '1' then
         y38 <= '1' ;
         current_md <= s9;

      else
         y26 <= '1' ;
         current_md <= s29;

      end if;

   when s38 =>
      if ( x10 and x1 and x2 ) = '1' then
         current_md <= s1;

      elsif ( x10 and x1 and not x2 and x3 and x4 and x5 ) = '1' then
         y31 <= '1' ;
         current_md <= s9;

      elsif ( x10 and x1 and not x2 and x3 and x4 and not x5 ) = '1' then
         y13 <= '1' ;
         current_md <= s9;

      elsif ( x10 and x1 and not x2 and x3 and not x4 and x5 ) = '1' then
         y51 <= '1' ;
         current_md <= s9;

      elsif ( x10 and x1 and not x2 and x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y48 <= '1' ;
         y50 <= '1' ;
         current_md <= s9;

      elsif ( x10 and x1 and not x2 and not x3 and x4 and x6 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s15;

      elsif ( x10 and x1 and not x2 and not x3 and x4 and x6 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x10 and x1 and not x2 and not x3 and x4 and not x6 and x7 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s15;

      elsif ( x10 and x1 and not x2 and not x3 and x4 and not x6 and x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x10 and x1 and not x2 and not x3 and x4 and not x6 and not x7 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y48 <= '1' ;
         current_md <= s17;

      elsif ( x10 and x1 and not x2 and not x3 and x4 and not x6 and not x7 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y20 <= '1' ;
         current_md <= s9;

      elsif ( x10 and x1 and not x2 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( x10 and x1 and not x2 and not x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and x2 ) = '1' then
         current_md <= s1;

      elsif ( x10 and not x1 and not x2 and x3 and x4 and x5 ) = '1' then
         y41 <= '1' ;
         y45 <= '1' ;
         y46 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and not x2 and x3 and x4 and not x5 ) = '1' then
         y39 <= '1' ;
         y43 <= '1' ;
         y44 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and not x2 and x3 and not x4 and x5 ) = '1' then
         y41 <= '1' ;
         y42 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and not x2 and x3 and not x4 and not x5 ) = '1' then
         y39 <= '1' ;
         y40 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and not x2 and not x3 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y47 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and not x2 and not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y48 <= '1' ;
         y49 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and not x2 and not x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y32 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      else
         y28 <= '1' ;
         current_md <= s43;

      end if;

   when s39 =>
      if ( x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         current_md <= s44;

      else
         y28 <= '1' ;
         current_md <= s45;

      end if;

   when s40 =>
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_md <= s46;

   when s41 =>
      if ( x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( not x5 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x5 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x5 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      else
         current_md <= s1;

      end if;

   when s42 =>
      if ( x19 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y20 <= '1' ;
         current_md <= s34;

      elsif ( not x19 and x11 ) = '1' then
         y28 <= '1' ;
         current_md <= s35;

      else
         y29 <= '1' ;
         current_md <= s47;

      end if;

   when s43 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y21 <= '1' ;
         current_md <= s48;

   when s44 =>
         y53 <= '1' ;
         current_md <= s49;

   when s45 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y21 <= '1' ;
         current_md <= s50;

   when s46 =>
      if ( x11 and x19 and x20 and x1 and x2 and x3 and x4 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x11 and x19 and x20 and x1 and x2 and x3 and x4 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x11 and x19 and x20 and x1 and x2 and x3 and x4 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( x11 and x19 and x20 and x1 and x2 and x3 and x4 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( x11 and x19 and x20 and x1 and x2 and x3 and not x4 and x5 ) = '1' then
         y23 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x19 and x20 and x1 and x2 and x3 and not x4 and not x5 ) = '1' then
         y33 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x19 and x20 and x1 and x2 and not x3 and x4 and x5 and x18 ) = '1' then
         y22 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x19 and x20 and x1 and x2 and not x3 and x4 and x5 and not x18 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x11 and x19 and x20 and x1 and x2 and not x3 and x4 and x5 and not x18 and x22 and not x21 ) = '1' then
         current_md <= s1;

      elsif ( x11 and x19 and x20 and x1 and x2 and not x3 and x4 and x5 and not x18 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( x11 and x19 and x20 and x1 and x2 and not x3 and x4 and not x5 and x21 ) = '1' then
         y22 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x19 and x20 and x1 and x2 and not x3 and x4 and not x5 and not x21 and x22 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( x11 and x19 and x20 and x1 and x2 and not x3 and x4 and not x5 and not x21 and x22 and not x18 ) = '1' then
         current_md <= s1;

      elsif ( x11 and x19 and x20 and x1 and x2 and not x3 and x4 and not x5 and not x21 and not x22 ) = '1' then
         current_md <= s1;

      elsif ( x11 and x19 and x20 and x1 and x2 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x19 and x20 and x1 and x2 and not x3 and not x4 and not x5 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y34 <= '1' ;
         y37 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x19 and x20 and x1 and not x2 and x8 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         current_md <= s10;

      elsif ( x11 and x19 and x20 and x1 and not x2 and not x8 ) = '1' then
         y26 <= '1' ;
         current_md <= s11;

      elsif ( x11 and x19 and x20 and not x1 and x2 ) = '1' then
         y26 <= '1' ;
         current_md <= s11;

      elsif ( x11 and x19 and x20 and not x1 and not x2 and x8 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         current_md <= s10;

      elsif ( x11 and x19 and x20 and not x1 and not x2 and not x8 ) = '1' then
         y26 <= '1' ;
         current_md <= s11;

      elsif ( x11 and x19 and not x20 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         current_md <= s12;

      elsif ( x11 and not x19 ) = '1' then
         y28 <= '1' ;
         current_md <= s13;

      else
         y29 <= '1' ;
         current_md <= s40;

      end if;

   when s47 =>
         y3 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y31 <= '1' ;
         current_md <= s51;

   when s48 =>
      if ( x10 and x1 and x2 ) = '1' then
         current_md <= s1;

      elsif ( x10 and x1 and not x2 and x3 and x4 and x5 ) = '1' then
         y31 <= '1' ;
         current_md <= s9;

      elsif ( x10 and x1 and not x2 and x3 and x4 and not x5 ) = '1' then
         y13 <= '1' ;
         current_md <= s9;

      elsif ( x10 and x1 and not x2 and x3 and not x4 and x5 ) = '1' then
         y51 <= '1' ;
         current_md <= s9;

      elsif ( x10 and x1 and not x2 and x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y48 <= '1' ;
         y50 <= '1' ;
         current_md <= s9;

      elsif ( x10 and x1 and not x2 and not x3 and x4 and x6 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s15;

      elsif ( x10 and x1 and not x2 and not x3 and x4 and x6 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x10 and x1 and not x2 and not x3 and x4 and not x6 and x7 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s15;

      elsif ( x10 and x1 and not x2 and not x3 and x4 and not x6 and x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x10 and x1 and not x2 and not x3 and x4 and not x6 and not x7 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y48 <= '1' ;
         current_md <= s17;

      elsif ( x10 and x1 and not x2 and not x3 and x4 and not x6 and not x7 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y20 <= '1' ;
         current_md <= s9;

      elsif ( x10 and x1 and not x2 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( x10 and x1 and not x2 and not x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and x2 ) = '1' then
         current_md <= s1;

      elsif ( x10 and not x1 and not x2 and x3 and x4 and x5 ) = '1' then
         y41 <= '1' ;
         y45 <= '1' ;
         y46 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and not x2 and x3 and x4 and not x5 ) = '1' then
         y39 <= '1' ;
         y43 <= '1' ;
         y44 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and not x2 and x3 and not x4 and x5 ) = '1' then
         y41 <= '1' ;
         y42 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and not x2 and x3 and not x4 and not x5 ) = '1' then
         y39 <= '1' ;
         y40 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and not x2 and not x3 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y47 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and not x2 and not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y48 <= '1' ;
         y49 <= '1' ;
         current_md <= s9;

      elsif ( x10 and not x1 and not x2 and not x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y32 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( not x10 and x11 ) = '1' then
         y28 <= '1' ;
         current_md <= s43;

      else
         y29 <= '1' ;
         current_md <= s52;

      end if;

   when s49 =>
         y2 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_md <= s53;

   when s50 =>
      if ( x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         current_md <= s44;

      elsif ( not x10 and x11 ) = '1' then
         y28 <= '1' ;
         current_md <= s45;

      else
         y29 <= '1' ;
         current_md <= s54;

      end if;

   when s51 =>
      if ( x11 and x19 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y20 <= '1' ;
         current_md <= s34;

      elsif ( x11 and not x19 ) = '1' then
         y28 <= '1' ;
         current_md <= s35;

      else
         y29 <= '1' ;
         current_md <= s47;

      end if;

   when s52 =>
         y3 <= '1' ;
         y4 <= '1' ;
         y13 <= '1' ;
         y20 <= '1' ;
         current_md <= s55;

   when s53 =>
         y2 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_md <= s56;

   when s54 =>
         y3 <= '1' ;
         y4 <= '1' ;
         y13 <= '1' ;
         y20 <= '1' ;
         current_md <= s57;

   when s55 =>
      if ( x11 and x10 and x1 and x2 ) = '1' then
         current_md <= s1;

      elsif ( x11 and x10 and x1 and not x2 and x3 and x4 and x5 ) = '1' then
         y31 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and x1 and not x2 and x3 and x4 and not x5 ) = '1' then
         y13 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and x1 and not x2 and x3 and not x4 and x5 ) = '1' then
         y51 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and x1 and not x2 and x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y48 <= '1' ;
         y50 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and x1 and not x2 and not x3 and x4 and x6 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s15;

      elsif ( x11 and x10 and x1 and not x2 and not x3 and x4 and x6 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x11 and x10 and x1 and not x2 and not x3 and x4 and not x6 and x7 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_md <= s15;

      elsif ( x11 and x10 and x1 and not x2 and not x3 and x4 and not x6 and x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y19 <= '1' ;
         y21 <= '1' ;
         current_md <= s16;

      elsif ( x11 and x10 and x1 and not x2 and not x3 and x4 and not x6 and not x7 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y48 <= '1' ;
         current_md <= s17;

      elsif ( x11 and x10 and x1 and not x2 and not x3 and x4 and not x6 and not x7 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         y20 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and x1 and not x2 and not x3 and not x4 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and x1 and not x2 and not x3 and not x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and not x1 and x2 ) = '1' then
         current_md <= s1;

      elsif ( x11 and x10 and not x1 and not x2 and x3 and x4 and x5 ) = '1' then
         y41 <= '1' ;
         y45 <= '1' ;
         y46 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and not x1 and not x2 and x3 and x4 and not x5 ) = '1' then
         y39 <= '1' ;
         y43 <= '1' ;
         y44 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and not x1 and not x2 and x3 and not x4 and x5 ) = '1' then
         y41 <= '1' ;
         y42 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and not x1 and not x2 and x3 and not x4 and not x5 ) = '1' then
         y39 <= '1' ;
         y40 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and not x1 and not x2 and not x3 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y47 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and not x1 and not x2 and not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y48 <= '1' ;
         y49 <= '1' ;
         current_md <= s9;

      elsif ( x11 and x10 and not x1 and not x2 and not x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         y20 <= '1' ;
         y32 <= '1' ;
         y48 <= '1' ;
         current_md <= s9;

      elsif ( x11 and not x10 ) = '1' then
         y28 <= '1' ;
         current_md <= s43;

      else
         y29 <= '1' ;
         current_md <= s52;

      end if;

   when s56 =>
         y2 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_md <= s58;

   when s57 =>
      if ( x11 and x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         current_md <= s44;

      elsif ( x11 and not x10 ) = '1' then
         y28 <= '1' ;
         current_md <= s45;

      else
         y29 <= '1' ;
         current_md <= s54;

      end if;

   when s58 =>
         y2 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_md <= s59;

   when s59 =>
      if ( x14 ) = '1' then
         y22 <= '1' ;
         current_md <= s9;

      elsif ( not x14 and x22 and x21 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x14 and x22 and not x21 and x18 ) = '1' then
         y52 <= '1' ;
         current_md <= s1;

      elsif ( not x14 and x22 and not x21 and not x18 ) = '1' then
         current_md <= s1;

      else
         current_md <= s1;

      end if;

   end case;
   end proc_md;

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
	y53  <= '0' ;
	current_md <= s1;
      elsif (clk'event and clk ='1') then
        proc_md;
      end if;
   end process;
end ARC;
