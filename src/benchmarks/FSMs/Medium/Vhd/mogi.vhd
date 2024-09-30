library ieee;
use ieee.std_logic_1164.all;

entity mogi is
   port ( clk,rst,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,
	x17,x18,x19 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y47,y48,y49,y51 : out std_logic );
end mogi;

architecture ARC of mogi is

   type states_mogi is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60
	 );
   signal current_mogi : states_mogi;

begin
   process (clk , rst)
   procedure proc_mogi is
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
	y45  <= '0' ;	y47  <= '0' ;	y48  <= '0' ;	y49  <= '0' ;
	y51  <= '0' ;

   case current_mogi is
   when s1 =>
      if ( x8 ) = '1' then
         current_mogi <= s1;

      elsif ( not x8 and x9 ) = '1' then
         y4 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         current_mogi <= s2;

      else
         y5 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         current_mogi <= s3;

      end if;

   when s2 =>
         y36 <= '1' ;
         current_mogi <= s4;

   when s3 =>
         y1 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s5;

   when s4 =>
         y6 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s6;

   when s5 =>
      if ( x19 and x18 ) = '1' then
         y2 <= '1' ;
         current_mogi <= s7;

      elsif ( x19 and not x18 ) = '1' then
         y2 <= '1' ;
         current_mogi <= s8;

      else
         y2 <= '1' ;
         current_mogi <= s9;

      end if;

   when s6 =>
         y2 <= '1' ;
         current_mogi <= s10;

   when s7 =>
      if ( x18 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s11;

      else
         y11 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s12;

      end if;

   when s8 =>
         y1 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s11;

   when s9 =>
      if ( x19 and x18 ) = '1' then
         y8 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s13;

      elsif ( x19 and not x18 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s14;

      else
         y1 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s11;

      end if;

   when s10 =>
         y6 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s15;

   when s11 =>
      if ( x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_mogi <= s16;

      elsif ( not x5 and x6 ) = '1' then
         y5 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s17;

      elsif ( not x5 and not x6 and x18 and x2 and x3 and x19 and x4 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         y32 <= '1' ;
         y35 <= '1' ;
         current_mogi <= s18;

      elsif ( not x5 and not x6 and x18 and x2 and x3 and x19 and not x4 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         current_mogi <= s19;

      elsif ( not x5 and not x6 and x18 and x2 and x3 and not x19 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and x2 and x3 and not x19 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and x2 and x3 and not x19 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and x2 and x3 and not x19 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and x2 and not x3 and x4 and x19 and x17 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and x18 and x2 and not x3 and x4 and x19 and not x17 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and x2 and not x3 and x4 and x19 and not x17 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and x2 and not x3 and x4 and x19 and not x17 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and x2 and not x3 and x4 and x19 and not x17 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and x2 and not x3 and x4 and not x19 ) = '1' then
         y38 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and x18 and x2 and not x3 and not x4 and x19 and x16 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and x18 and x2 and not x3 and not x4 and x19 and not x16 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and x2 and not x3 and not x4 and x19 and not x16 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and x2 and not x3 and not x4 and x19 and not x16 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and x2 and not x3 and not x4 and x19 and not x16 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and x2 and not x3 and not x4 and not x19 ) = '1' then
         y39 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and x4 and x19 and x15 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and x4 and x19 and not x15 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and x4 and x19 and not x15 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and x4 and x19 and not x15 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and x4 and x19 and not x15 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and x4 and not x19 ) = '1' then
         y1 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and not x4 and x19 and x14 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and not x4 and x19 and not x14 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and not x4 and x19 and not x14 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and not x4 and x19 and not x14 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and not x4 and x19 and not x14 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and not x4 and not x19 and x12 ) = '1' then
         y1 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and not x4 and not x19 and not x12 and x11 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and not x4 and not x19 and not x12 and x11 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and not x2 and x3 and not x4 and not x19 and not x12 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( not x5 and not x6 and x18 and not x2 and not x3 and x4 and x19 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and x18 and not x2 and not x3 and x4 and not x19 ) = '1' then
         y10 <= '1' ;
         y14 <= '1' ;
         y23 <= '1' ;
         y42 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and x18 and not x2 and not x3 and not x4 and x19 ) = '1' then
         y47 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and x18 and not x2 and not x3 and not x4 and not x19 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         y22 <= '1' ;
         y43 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and not x18 and x2 and x19 and x3 and x4 ) = '1' then
         y44 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and not x18 and x2 and x19 and x3 and not x4 ) = '1' then
         y45 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and not x18 and x2 and x19 and not x3 and x4 ) = '1' then
         y47 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and not x18 and x2 and x19 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y23 <= '1' ;
         current_mogi <= s20;

      elsif ( not x5 and not x6 and not x18 and x2 and not x19 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and not x18 and not x2 and x19 and x3 and x4 ) = '1' then
         y12 <= '1' ;
         y14 <= '1' ;
         y23 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and not x18 and not x2 and x19 and x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( not x5 and not x6 and not x18 and not x2 and x19 and not x3 and x4 ) = '1' then
         y37 <= '1' ;
         current_mogi <= s21;

      elsif ( not x5 and not x6 and not x18 and not x2 and x19 and not x3 and not x4 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s22;

      else
         y11 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         current_mogi <= s14;

      end if;

   when s12 =>
         y2 <= '1' ;
         current_mogi <= s9;

   when s13 =>
      if ( x7 and x19 and x18 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x7 and x19 and x18 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x7 and x19 and x18 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x7 and x19 and x18 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x7 and x19 and not x18 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         y20 <= '1' ;
         current_mogi <= s14;

      elsif ( x7 and not x19 and x2 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x7 and not x19 and x2 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x7 and not x19 and x2 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x7 and not x19 and x2 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x7 and not x19 and not x2 and x18 and x3 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x7 and not x19 and not x2 and x18 and x3 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x7 and not x19 and not x2 and x18 and x3 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x7 and not x19 and not x2 and x18 and x3 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x7 and not x19 and not x2 and x18 and not x3 and x4 ) = '1' then
         y10 <= '1' ;
         y14 <= '1' ;
         y20 <= '1' ;
         y42 <= '1' ;
         current_mogi <= s14;

      elsif ( x7 and not x19 and not x2 and x18 and not x3 and not x4 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x7 and not x19 and not x2 and x18 and not x3 and not x4 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x7 and not x19 and not x2 and x18 and not x3 and not x4 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x7 and not x19 and not x2 and x18 and not x3 and not x4 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x7 and not x19 and not x2 and not x18 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         y20 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         current_mogi <= s14;

      else
         y5 <= '1' ;
         y14 <= '1' ;
         y20 <= '1' ;
         current_mogi <= s23;

      end if;

   when s14 =>
      if ( x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      else
         current_mogi <= s1;

      end if;

   when s15 =>
         y38 <= '1' ;
         y40 <= '1' ;
         current_mogi <= s1;

   when s16 =>
         y1 <= '1' ;
         y8 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s24;

   when s17 =>
      if ( x19 and x18 and x2 and x3 and x4 and x5 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      elsif ( x19 and x18 and x2 and x3 and x4 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      elsif ( x19 and x18 and x2 and x3 and x4 and not x5 and not x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         y32 <= '1' ;
         y35 <= '1' ;
         current_mogi <= s18;

      elsif ( x19 and x18 and x2 and x3 and not x4 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         current_mogi <= s19;

      elsif ( x19 and x18 and x2 and not x3 and x4 and x17 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and x2 and not x3 and x4 and x17 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      elsif ( x19 and x18 and x2 and not x3 and x4 and x17 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and x2 and not x3 and x4 and not x17 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and x2 and not x3 and x4 and not x17 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and x2 and not x3 and x4 and not x17 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and x2 and not x3 and x4 and not x17 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and x2 and not x3 and not x4 and x16 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and x2 and not x3 and not x4 and x16 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      elsif ( x19 and x18 and x2 and not x3 and not x4 and x16 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and x2 and not x3 and not x4 and not x16 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and x2 and not x3 and not x4 and not x16 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and x2 and not x3 and not x4 and not x16 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and x2 and not x3 and not x4 and not x16 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x2 and x3 and x4 and x15 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x2 and x3 and x4 and x15 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      elsif ( x19 and x18 and not x2 and x3 and x4 and x15 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x2 and x3 and x4 and not x15 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and not x2 and x3 and x4 and not x15 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and not x2 and x3 and x4 and not x15 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x2 and x3 and x4 and not x15 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x2 and x3 and not x4 and x14 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x2 and x3 and not x4 and x14 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      elsif ( x19 and x18 and not x2 and x3 and not x4 and x14 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x2 and x3 and not x4 and not x14 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and not x2 and x3 and not x4 and not x14 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and not x2 and x3 and not x4 and not x14 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x2 and x3 and not x4 and not x14 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x2 and not x3 and x4 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x2 and not x3 and x4 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      elsif ( x19 and x18 and not x2 and not x3 and x4 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x2 and not x3 and not x4 ) = '1' then
         y47 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and not x18 and x2 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      elsif ( x19 and not x18 and not x2 and x3 and x4 ) = '1' then
         y23 <= '1' ;
         y27 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s27;

      elsif ( x19 and not x18 and not x2 and x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s28;

      elsif ( x19 and not x18 and not x2 and not x3 and x4 ) = '1' then
         y37 <= '1' ;
         current_mogi <= s29;

      elsif ( x19 and not x18 and not x2 and not x3 and not x4 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s30;

      elsif ( not x19 and x18 and x2 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x19 and x18 and x2 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x19 and x18 and x2 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( not x19 and x18 and x2 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( not x19 and x18 and not x2 and x3 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x19 and x18 and not x2 and x3 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x19 and x18 and not x2 and x3 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( not x19 and x18 and not x2 and x3 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( not x19 and x18 and not x2 and not x3 and x4 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      elsif ( not x19 and x18 and not x2 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y22 <= '1' ;
         y43 <= '1' ;
         current_mogi <= s31;

      else
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      end if;

   when s18 =>
      if ( x14 ) = '1' then
         y1 <= '1' ;
         current_mogi <= s14;

      elsif ( not x14 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x14 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x14 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      else
         current_mogi <= s1;

      end if;

   when s19 =>
         y36 <= '1' ;
         current_mogi <= s32;

   when s20 =>
         y11 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s33;

   when s21 =>
         y12 <= '1' ;
         y14 <= '1' ;
         y25 <= '1' ;
         current_mogi <= s14;

   when s22 =>
         y36 <= '1' ;
         current_mogi <= s14;

   when s23 =>
      if ( x19 and x18 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s34;

      elsif ( x19 and x18 and not x6 and x10 and x2 and x3 and x4 and x5 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      elsif ( x19 and x18 and not x6 and x10 and x2 and x3 and x4 and not x5 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         y32 <= '1' ;
         y35 <= '1' ;
         current_mogi <= s18;

      elsif ( x19 and x18 and not x6 and x10 and x2 and x3 and not x4 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         current_mogi <= s19;

      elsif ( x19 and x18 and not x6 and x10 and x2 and not x3 and x4 and x17 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x6 and x10 and x2 and not x3 and x4 and x17 and not x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x6 and x10 and x2 and not x3 and x4 and not x17 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and x2 and not x3 and x4 and not x17 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and x2 and not x3 and x4 and not x17 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and x2 and not x3 and x4 and not x17 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and x2 and not x3 and not x4 and x16 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x6 and x10 and x2 and not x3 and not x4 and x16 and not x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x6 and x10 and x2 and not x3 and not x4 and not x16 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and x2 and not x3 and not x4 and not x16 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and x2 and not x3 and not x4 and not x16 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and x2 and not x3 and not x4 and not x16 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and x3 and x4 and x15 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and x3 and x4 and x15 and not x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and x3 and x4 and not x15 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and x3 and x4 and not x15 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and x3 and x4 and not x15 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and x3 and x4 and not x15 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and x3 and not x4 and x14 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and x3 and not x4 and x14 and not x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and x3 and not x4 and not x14 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and x3 and not x4 and not x14 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and x3 and not x4 and not x14 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and x3 and not x4 and not x14 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and not x3 and x4 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and not x3 and x4 and not x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x6 and x10 and not x2 and not x3 and not x4 ) = '1' then
         y47 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and x18 and not x6 and not x10 ) = '1' then
         y5 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         y30 <= '1' ;
         y35 <= '1' ;
         y51 <= '1' ;
         current_mogi <= s17;

      elsif ( x19 and not x18 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      elsif ( x19 and not x18 and not x6 and x10 and x2 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      elsif ( x19 and not x18 and not x6 and x10 and not x2 and x3 and x4 ) = '1' then
         y23 <= '1' ;
         y27 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s27;

      elsif ( x19 and not x18 and not x6 and x10 and not x2 and x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s28;

      elsif ( x19 and not x18 and not x6 and x10 and not x2 and not x3 and x4 ) = '1' then
         y37 <= '1' ;
         current_mogi <= s29;

      elsif ( x19 and not x18 and not x6 and x10 and not x2 and not x3 and not x4 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s30;

      elsif ( x19 and not x18 and not x6 and not x10 ) = '1' then
         y5 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         y30 <= '1' ;
         y35 <= '1' ;
         y51 <= '1' ;
         current_mogi <= s17;

      elsif ( not x19 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s34;

      elsif ( not x19 and not x6 and x10 and x18 and x2 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x19 and not x6 and x10 and x18 and x2 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x19 and not x6 and x10 and x18 and x2 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( not x19 and not x6 and x10 and x18 and x2 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( not x19 and not x6 and x10 and x18 and not x2 and x3 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x19 and not x6 and x10 and x18 and not x2 and x3 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x19 and not x6 and x10 and x18 and not x2 and x3 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( not x19 and not x6 and x10 and x18 and not x2 and x3 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( not x19 and not x6 and x10 and x18 and not x2 and not x3 and x4 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      elsif ( not x19 and not x6 and x10 and x18 and not x2 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y22 <= '1' ;
         y43 <= '1' ;
         current_mogi <= s31;

      elsif ( not x19 and not x6 and x10 and not x18 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      else
         y5 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         y30 <= '1' ;
         y35 <= '1' ;
         y51 <= '1' ;
         current_mogi <= s17;

      end if;

   when s24 =>
      if ( x19 and x18 ) = '1' then
         y2 <= '1' ;
         current_mogi <= s9;

      elsif ( x19 and not x18 ) = '1' then
         y2 <= '1' ;
         current_mogi <= s35;

      else
         y2 <= '1' ;
         current_mogi <= s36;

      end if;

   when s25 =>
      if ( x19 and x18 ) = '1' then
         y2 <= '1' ;
         current_mogi <= s37;

      elsif ( x19 and not x18 ) = '1' then
         y23 <= '1' ;
         y27 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s38;

      else
         y2 <= '1' ;
         current_mogi <= s39;

      end if;

   when s26 =>
      if ( x19 and x18 ) = '1' then
         y2 <= '1' ;
         current_mogi <= s41;

      elsif ( x19 and not x18 ) = '1' then
         y2 <= '1' ;
         current_mogi <= s40;

      else
         y2 <= '1' ;
         current_mogi <= s41;

      end if;

   when s27 =>
         y2 <= '1' ;
         current_mogi <= s42;

   when s28 =>
         y2 <= '1' ;
         current_mogi <= s7;

   when s29 =>
         y25 <= '1' ;
         y27 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s43;

   when s30 =>
         y2 <= '1' ;
         current_mogi <= s39;

   when s31 =>
         y21 <= '1' ;
         y29 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s44;

   when s32 =>
      if ( x18 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x18 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      elsif ( x18 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( not x18 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x18 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x18 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      else
         current_mogi <= s1;

      end if;

   when s33 =>
         y12 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         current_mogi <= s14;

   when s34 =>
      if ( x19 and x18 ) = '1' then
         y2 <= '1' ;
         current_mogi <= s36;

      elsif ( x19 and not x18 ) = '1' then
         y23 <= '1' ;
         y28 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s45;

      else
         y2 <= '1' ;
         current_mogi <= s37;

      end if;

   when s35 =>
         y8 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s13;

   when s36 =>
      if ( x19 and x18 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s46;

      elsif ( x19 and not x18 ) = '1' then
         y25 <= '1' ;
         y28 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s47;

      else
         y8 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s13;

      end if;

   when s37 =>
      if ( x19 and x18 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s30;

      elsif ( x19 and not x18 ) = '1' then
         y25 <= '1' ;
         y29 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s14;

      else
         y9 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s46;

      end if;

   when s38 =>
         y2 <= '1' ;
         current_mogi <= s48;

   when s39 =>
      if ( x19 and x18 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s49;

      elsif ( x19 and not x18 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s50;

      else
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      end if;

   when s40 =>
         y9 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s46;

   when s41 =>
      if ( x19 and x18 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s51;

      elsif ( x19 and not x18 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s19;

      else
         y9 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s51;

      end if;

   when s42 =>
         y23 <= '1' ;
         y28 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s52;

   when s43 =>
         y2 <= '1' ;
         current_mogi <= s36;

   when s44 =>
         y3 <= '1' ;
         current_mogi <= s53;

   when s45 =>
         y2 <= '1' ;
         current_mogi <= s54;

   when s46 =>
         y5 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         current_mogi <= s55;

   when s47 =>
         y2 <= '1' ;
         current_mogi <= s37;

   when s48 =>
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s34;

   when s49 =>
         y9 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         y32 <= '1' ;
         y35 <= '1' ;
         current_mogi <= s31;

   when s50 =>
         y2 <= '1' ;
         current_mogi <= s41;

   when s51 =>
      if ( x19 and x18 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         current_mogi <= s14;

      elsif ( x19 and not x18 ) = '1' then
         y23 <= '1' ;
         y29 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s56;

      elsif ( not x19 and x18 ) = '1' then
         y10 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         y42 <= '1' ;
         current_mogi <= s14;

      elsif ( not x19 and not x18 and x2 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_mogi <= s31;

      else
         y11 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         current_mogi <= s14;

      end if;

   when s52 =>
         y2 <= '1' ;
         current_mogi <= s57;

   when s53 =>
         y21 <= '1' ;
         y28 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s58;

   when s54 =>
         y9 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s51;

   when s55 =>
      if ( x10 and x19 and x18 and x2 and x3 and x4 and x5 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      elsif ( x10 and x19 and x18 and x2 and x3 and x4 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      elsif ( x10 and x19 and x18 and x2 and x3 and x4 and not x5 and not x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         y32 <= '1' ;
         y35 <= '1' ;
         current_mogi <= s18;

      elsif ( x10 and x19 and x18 and x2 and x3 and not x4 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         current_mogi <= s19;

      elsif ( x10 and x19 and x18 and x2 and not x3 and x4 and x17 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x10 and x19 and x18 and x2 and not x3 and x4 and x17 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      elsif ( x10 and x19 and x18 and x2 and not x3 and x4 and x17 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x10 and x19 and x18 and x2 and not x3 and x4 and not x17 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and x2 and not x3 and x4 and not x17 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and x2 and not x3 and x4 and not x17 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and x2 and not x3 and x4 and not x17 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and x2 and not x3 and not x4 and x16 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x10 and x19 and x18 and x2 and not x3 and not x4 and x16 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      elsif ( x10 and x19 and x18 and x2 and not x3 and not x4 and x16 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x10 and x19 and x18 and x2 and not x3 and not x4 and not x16 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and x2 and not x3 and not x4 and not x16 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and x2 and not x3 and not x4 and not x16 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and x2 and not x3 and not x4 and not x16 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and not x2 and x3 and x4 and x15 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x10 and x19 and x18 and not x2 and x3 and x4 and x15 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      elsif ( x10 and x19 and x18 and not x2 and x3 and x4 and x15 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x10 and x19 and x18 and not x2 and x3 and x4 and not x15 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and not x2 and x3 and x4 and not x15 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and not x2 and x3 and x4 and not x15 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and not x2 and x3 and x4 and not x15 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and not x2 and x3 and not x4 and x14 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x10 and x19 and x18 and not x2 and x3 and not x4 and x14 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      elsif ( x10 and x19 and x18 and not x2 and x3 and not x4 and x14 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x10 and x19 and x18 and not x2 and x3 and not x4 and not x14 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and not x2 and x3 and not x4 and not x14 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and not x2 and x3 and not x4 and not x14 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and not x2 and x3 and not x4 and not x14 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x10 and x19 and x18 and not x2 and not x3 and x4 and x5 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         current_mogi <= s14;

      elsif ( x10 and x19 and x18 and not x2 and not x3 and x4 and not x5 and x6 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s26;

      elsif ( x10 and x19 and x18 and not x2 and not x3 and x4 and not x5 and not x6 ) = '1' then
         y6 <= '1' ;
         y14 <= '1' ;
         y24 <= '1' ;
         current_mogi <= s14;

      elsif ( x10 and x19 and x18 and not x2 and not x3 and not x4 ) = '1' then
         y47 <= '1' ;
         current_mogi <= s14;

      elsif ( x10 and x19 and not x18 and x2 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      elsif ( x10 and x19 and not x18 and not x2 and x3 and x4 ) = '1' then
         y23 <= '1' ;
         y27 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s27;

      elsif ( x10 and x19 and not x18 and not x2 and x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s28;

      elsif ( x10 and x19 and not x18 and not x2 and not x3 and x4 ) = '1' then
         y37 <= '1' ;
         current_mogi <= s29;

      elsif ( x10 and x19 and not x18 and not x2 and not x3 and not x4 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s30;

      elsif ( x10 and not x19 and x18 and x2 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x10 and not x19 and x18 and x2 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x10 and not x19 and x18 and x2 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x10 and not x19 and x18 and x2 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x10 and not x19 and x18 and not x2 and x3 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x10 and not x19 and x18 and not x2 and x3 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x10 and not x19 and x18 and not x2 and x3 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x10 and not x19 and x18 and not x2 and x3 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x10 and not x19 and x18 and not x2 and not x3 and x4 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      elsif ( x10 and not x19 and x18 and not x2 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y22 <= '1' ;
         y43 <= '1' ;
         current_mogi <= s31;

      elsif ( x10 and not x19 and not x18 ) = '1' then
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y49 <= '1' ;
         current_mogi <= s25;

      else
         y5 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         y30 <= '1' ;
         y35 <= '1' ;
         y51 <= '1' ;
         current_mogi <= s17;

      end if;

   when s56 =>
         y11 <= '1' ;
         y14 <= '1' ;
         y21 <= '1' ;
         current_mogi <= s14;

   when s57 =>
         y23 <= '1' ;
         y29 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s14;

   when s58 =>
         y3 <= '1' ;
         current_mogi <= s59;

   when s59 =>
         y21 <= '1' ;
         y27 <= '1' ;
         y48 <= '1' ;
         current_mogi <= s60;

   when s60 =>
      if ( x18 and x19 and x14 ) = '1' then
         y1 <= '1' ;
         current_mogi <= s14;

      elsif ( x18 and x19 and not x14 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x18 and x19 and not x14 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x18 and x19 and not x14 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x18 and x19 and not x14 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( x18 and not x19 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x18 and not x19 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( x18 and not x19 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      elsif ( x18 and not x19 and not x11 ) = '1' then
         current_mogi <= s1;

      elsif ( not x18 and x11 and x12 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x18 and x11 and not x12 and x13 ) = '1' then
         y41 <= '1' ;
         current_mogi <= s1;

      elsif ( not x18 and x11 and not x12 and not x13 ) = '1' then
         current_mogi <= s1;

      else
         current_mogi <= s1;

      end if;

   end case;
   end proc_mogi;

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
	y45  <= '0' ;	y47  <= '0' ;	y48  <= '0' ;	y49  <= '0' ;
	y51  <= '0' ;
	current_mogi <= s1;
      elsif (clk'event and clk ='1') then
        proc_mogi;
      end if;
   end process;
end ARC;
