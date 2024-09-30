library ieee;
use ieee.std_logic_1164.all;

entity gol is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56,y57,y58,y59,y60,
	y61,y62,y63,y64 : out std_logic );
end gol;

architecture ARC of gol is

   type states_gol is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58 );
   signal current_gol : states_gol;

begin
   process (clk , rst)
   procedure proc_gol is
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


   case current_gol is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_gol <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_gol <= s3;

      else
         current_gol <= s1;

      end if;

   when s2 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         current_gol <= s4;

   when s3 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_gol <= s5;

   when s4 =>
         y3 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_gol <= s6;

   when s5 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_gol <= s7;

   when s6 =>
         y9 <= '1' ;
         current_gol <= s8;

   when s7 =>
         y9 <= '1' ;
         current_gol <= s9;

   when s8 =>
         y3 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_gol <= s10;

   when s9 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_gol <= s11;

   when s10 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s12;

   when s11 =>
      if ( x3 and x11 and x12 and x13 and x14 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y24 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_gol <= s13;

      elsif ( x3 and x11 and x12 and x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_gol <= s13;

      elsif ( x3 and x11 and x12 and x13 and not x14 and x15 and x9 ) = '1' then
         y11 <= '1' ;
         current_gol <= s13;

      elsif ( x3 and x11 and x12 and x13 and not x14 and x15 and not x9 and x8 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x3 and x11 and x12 and x13 and not x14 and x15 and not x9 and x8 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( x3 and x11 and x12 and x13 and not x14 and x15 and not x9 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( x3 and x11 and x12 and x13 and not x14 and not x15 and x10 ) = '1' then
         y11 <= '1' ;
         current_gol <= s13;

      elsif ( x3 and x11 and x12 and x13 and not x14 and not x15 and not x10 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x3 and x11 and x12 and x13 and not x14 and not x15 and not x10 and x8 and not x9 ) = '1' then
         current_gol <= s1;

      elsif ( x3 and x11 and x12 and x13 and not x14 and not x15 and not x10 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( x3 and x11 and x12 and not x13 and x14 and x15 ) = '1' then
         y35 <= '1' ;
         current_gol <= s13;

      elsif ( x3 and x11 and x12 and not x13 and x14 and not x15 ) = '1' then
         y18 <= '1' ;
         current_gol <= s13;

      elsif ( x3 and x11 and x12 and not x13 and not x14 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x3 and x11 and x12 and not x13 and not x14 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x3 and x11 and x12 and not x13 and not x14 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( x3 and x11 and x12 and not x13 and not x14 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( x3 and x11 and not x12 and x6 and x13 and x14 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y42 <= '1' ;
         current_gol <= s13;

      elsif ( x3 and x11 and not x12 and x6 and x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y21 <= '1' ;
         y43 <= '1' ;
         current_gol <= s13;

      elsif ( x3 and x11 and not x12 and x6 and x13 and not x14 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y42 <= '1' ;
         y44 <= '1' ;
         current_gol <= s13;

      elsif ( x3 and x11 and not x12 and x6 and x13 and not x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y21 <= '1' ;
         current_gol <= s14;

      elsif ( x3 and x11 and not x12 and x6 and not x13 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x3 and x11 and not x12 and x6 and not x13 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x3 and x11 and not x12 and x6 and not x13 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( x3 and x11 and not x12 and x6 and not x13 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( x3 and x11 and not x12 and not x6 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y21 <= '1' ;
         current_gol <= s15;

      elsif ( x3 and not x11 and x12 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y21 <= '1' ;
         current_gol <= s15;

      elsif ( x3 and not x11 and not x12 and x6 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y21 <= '1' ;
         current_gol <= s16;

      elsif ( x3 and not x11 and not x12 and not x6 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y21 <= '1' ;
         current_gol <= s15;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_gol <= s17;

      end if;

   when s12 =>
         y11 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_gol <= s1;

   when s13 =>
      if ( x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      else
         current_gol <= s1;

      end if;

   when s14 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y42 <= '1' ;
         y44 <= '1' ;
         current_gol <= s18;

   when s15 =>
      if ( x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y25 <= '1' ;
         current_gol <= s19;

      elsif ( not x5 and x7 and x11 and x13 and x14 and x15 ) = '1' then
         y3 <= '1' ;
         y14 <= '1' ;
         current_gol <= s13;

      elsif ( not x5 and x7 and x11 and x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y59 <= '1' ;
         current_gol <= s20;

      elsif ( not x5 and x7 and x11 and x13 and not x14 and x15 ) = '1' then
         y3 <= '1' ;
         y14 <= '1' ;
         y58 <= '1' ;
         current_gol <= s21;

      elsif ( not x5 and x7 and x11 and x13 and not x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y29 <= '1' ;
         current_gol <= s22;

      elsif ( not x5 and x7 and x11 and not x13 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x5 and x7 and x11 and not x13 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x5 and x7 and x11 and not x13 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( not x5 and x7 and x11 and not x13 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and x13 and x14 and x15 ) = '1' then
         y61 <= '1' ;
         current_gol <= s13;

      elsif ( not x5 and x7 and not x11 and x12 and x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s13;

      elsif ( not x5 and x7 and not x11 and x12 and x13 and not x14 and x15 and x16 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s13;

      elsif ( not x5 and x7 and not x11 and x12 and x13 and not x14 and x15 and not x16 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and x13 and not x14 and x15 and not x16 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and x13 and not x14 and x15 and not x16 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and x13 and not x14 and x15 and not x16 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and x13 and not x14 and not x15 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s13;

      elsif ( not x5 and x7 and not x11 and x12 and x13 and not x14 and not x15 and not x17 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and x13 and not x14 and not x15 and not x17 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and x13 and not x14 and not x15 and not x17 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and x13 and not x14 and not x15 and not x17 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and not x13 and x14 and x15 and x18 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s13;

      elsif ( not x5 and x7 and not x11 and x12 and not x13 and x14 and x15 and not x18 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and not x13 and x14 and x15 and not x18 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and not x13 and x14 and x15 and not x18 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and not x13 and x14 and x15 and not x18 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and not x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y14 <= '1' ;
         y62 <= '1' ;
         current_gol <= s23;

      elsif ( not x5 and x7 and not x11 and x12 and not x13 and not x14 and x15 ) = '1' then
         y9 <= '1' ;
         current_gol <= s24;

      elsif ( not x5 and x7 and not x11 and x12 and not x13 and not x14 and not x15 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and not x13 and not x14 and not x15 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and not x13 and not x14 and not x15 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and x12 and not x13 and not x14 and not x15 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( not x5 and x7 and not x11 and not x12 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y29 <= '1' ;
         current_gol <= s25;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_gol <= s26;

      end if;

   when s16 =>
      if ( x13 and x14 ) = '1' then
         y5 <= '1' ;
         y29 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y53 <= '1' ;
         current_gol <= s13;

      elsif ( x13 and not x14 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         current_gol <= s13;

      elsif ( x13 and not x14 and not x15 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         current_gol <= s13;

      elsif ( not x13 and x14 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y48 <= '1' ;
         y49 <= '1' ;
         current_gol <= s27;

      elsif ( not x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y45 <= '1' ;
         y46 <= '1' ;
         current_gol <= s28;

      elsif ( not x13 and not x14 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y24 <= '1' ;
         y36 <= '1' ;
         current_gol <= s29;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y24 <= '1' ;
         y36 <= '1' ;
         current_gol <= s30;

      end if;

   when s17 =>
      if ( x4 ) = '1' then
         y6 <= '1' ;
         current_gol <= s3;

      elsif ( not x4 and x11 and x12 and x13 and x14 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y24 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and x11 and x12 and x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and x11 and x12 and x13 and not x14 and x15 and x9 ) = '1' then
         y11 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and x11 and x12 and x13 and not x14 and x15 and not x9 and x8 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x4 and x11 and x12 and x13 and not x14 and x15 and not x9 and x8 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( not x4 and x11 and x12 and x13 and not x14 and x15 and not x9 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( not x4 and x11 and x12 and x13 and not x14 and not x15 and x10 ) = '1' then
         y11 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and x11 and x12 and x13 and not x14 and not x15 and not x10 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x4 and x11 and x12 and x13 and not x14 and not x15 and not x10 and x8 and not x9 ) = '1' then
         current_gol <= s1;

      elsif ( not x4 and x11 and x12 and x13 and not x14 and not x15 and not x10 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( not x4 and x11 and x12 and not x13 and x14 and x15 ) = '1' then
         y35 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and x11 and x12 and not x13 and x14 and not x15 ) = '1' then
         y18 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and x11 and x12 and not x13 and not x14 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x4 and x11 and x12 and not x13 and not x14 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x4 and x11 and x12 and not x13 and not x14 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( not x4 and x11 and x12 and not x13 and not x14 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( not x4 and x11 and not x12 and x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         current_gol <= s26;

      elsif ( not x4 and x11 and not x12 and not x5 and x13 and x14 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y38 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and x11 and not x12 and not x5 and x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y23 <= '1' ;
         y38 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and x11 and not x12 and not x5 and x13 and not x14 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and x11 and not x12 and not x5 and x13 and not x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_gol <= s31;

      elsif ( not x4 and x11 and not x12 and not x5 and not x13 and x14 and x15 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y42 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and x11 and not x12 and not x5 and not x13 and x14 and not x15 ) = '1' then
         y41 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and x11 and not x12 and not x5 and not x13 and not x14 and x15 ) = '1' then
         y40 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and x11 and not x12 and not x5 and not x13 and not x14 and not x15 ) = '1' then
         y39 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and not x11 and x12 and x13 and x14 and x15 ) = '1' then
         y61 <= '1' ;
         current_gol <= s13;

      elsif ( not x4 and not x11 and x12 and x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         current_gol <= s26;

      elsif ( not x4 and not x11 and x12 and x13 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         current_gol <= s26;

      elsif ( not x4 and not x11 and x12 and not x13 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         current_gol <= s26;

      elsif ( not x4 and not x11 and not x12 and x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         current_gol <= s26;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_gol <= s16;

      end if;

   when s18 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y32 <= '1' ;
         y38 <= '1' ;
         current_gol <= s13;

   when s19 =>
         y9 <= '1' ;
         current_gol <= s32;

   when s20 =>
         y9 <= '1' ;
         current_gol <= s33;

   when s21 =>
         y9 <= '1' ;
         current_gol <= s34;

   when s22 =>
         y9 <= '1' ;
         current_gol <= s35;

   when s23 =>
         y9 <= '1' ;
         current_gol <= s36;

   when s24 =>
      if ( x16 ) = '1' then
         y11 <= '1' ;
         current_gol <= s13;

      elsif ( not x16 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x16 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x16 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      else
         current_gol <= s1;

      end if;

   when s25 =>
         y9 <= '1' ;
         current_gol <= s37;

   when s26 =>
      if ( x11 and x13 and x14 and x15 ) = '1' then
         y3 <= '1' ;
         y14 <= '1' ;
         current_gol <= s13;

      elsif ( x11 and x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y59 <= '1' ;
         current_gol <= s20;

      elsif ( x11 and x13 and not x14 and x15 ) = '1' then
         y3 <= '1' ;
         y14 <= '1' ;
         y58 <= '1' ;
         current_gol <= s21;

      elsif ( x11 and x13 and not x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y29 <= '1' ;
         current_gol <= s22;

      elsif ( x11 and not x13 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x11 and not x13 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x11 and not x13 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( x11 and not x13 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( not x11 and x12 and x13 and x14 and x15 ) = '1' then
         y61 <= '1' ;
         current_gol <= s13;

      elsif ( not x11 and x12 and x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s13;

      elsif ( not x11 and x12 and x13 and not x14 and x15 and x16 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s13;

      elsif ( not x11 and x12 and x13 and not x14 and x15 and not x16 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x11 and x12 and x13 and not x14 and x15 and not x16 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x11 and x12 and x13 and not x14 and x15 and not x16 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( not x11 and x12 and x13 and not x14 and x15 and not x16 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( not x11 and x12 and x13 and not x14 and not x15 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s13;

      elsif ( not x11 and x12 and x13 and not x14 and not x15 and not x17 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x11 and x12 and x13 and not x14 and not x15 and not x17 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x11 and x12 and x13 and not x14 and not x15 and not x17 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( not x11 and x12 and x13 and not x14 and not x15 and not x17 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( not x11 and x12 and not x13 and x14 and x15 and x18 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s13;

      elsif ( not x11 and x12 and not x13 and x14 and x15 and not x18 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x11 and x12 and not x13 and x14 and x15 and not x18 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x11 and x12 and not x13 and x14 and x15 and not x18 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( not x11 and x12 and not x13 and x14 and x15 and not x18 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( not x11 and x12 and not x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y14 <= '1' ;
         y62 <= '1' ;
         current_gol <= s23;

      elsif ( not x11 and x12 and not x13 and not x14 and x15 ) = '1' then
         y9 <= '1' ;
         current_gol <= s24;

      elsif ( not x11 and x12 and not x13 and not x14 and not x15 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x11 and x12 and not x13 and not x14 and not x15 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( not x11 and x12 and not x13 and not x14 and not x15 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( not x11 and x12 and not x13 and not x14 and not x15 and not x8 ) = '1' then
         current_gol <= s1;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y29 <= '1' ;
         current_gol <= s25;

      end if;

   when s27 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y50 <= '1' ;
         current_gol <= s13;

   when s28 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y47 <= '1' ;
         current_gol <= s13;

   when s29 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y45 <= '1' ;
         y46 <= '1' ;
         current_gol <= s38;

   when s30 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y48 <= '1' ;
         y49 <= '1' ;
         current_gol <= s39;

   when s31 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_gol <= s40;

   when s32 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y26 <= '1' ;
         current_gol <= s41;

   when s33 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y60 <= '1' ;
         current_gol <= s42;

   when s34 =>
         y3 <= '1' ;
         y14 <= '1' ;
         y56 <= '1' ;
         current_gol <= s43;

   when s35 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y30 <= '1' ;
         current_gol <= s44;

   when s36 =>
         y3 <= '1' ;
         y14 <= '1' ;
         y63 <= '1' ;
         current_gol <= s45;

   when s37 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y30 <= '1' ;
         current_gol <= s46;

   when s38 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y50 <= '1' ;
         y52 <= '1' ;
         current_gol <= s13;

   when s39 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y47 <= '1' ;
         y51 <= '1' ;
         current_gol <= s13;

   when s40 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y32 <= '1' ;
         y38 <= '1' ;
         current_gol <= s13;

   when s41 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y27 <= '1' ;
         current_gol <= s47;

   when s42 =>
         y9 <= '1' ;
         current_gol <= s48;

   when s43 =>
         y9 <= '1' ;
         current_gol <= s49;

   when s44 =>
         y9 <= '1' ;
         current_gol <= s50;

   when s45 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_gol <= s51;

   when s46 =>
         y9 <= '1' ;
         current_gol <= s52;

   when s47 =>
      if ( x7 and x11 and x13 and x14 and x15 ) = '1' then
         y3 <= '1' ;
         y14 <= '1' ;
         current_gol <= s13;

      elsif ( x7 and x11 and x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y59 <= '1' ;
         current_gol <= s20;

      elsif ( x7 and x11 and x13 and not x14 and x15 ) = '1' then
         y3 <= '1' ;
         y14 <= '1' ;
         y58 <= '1' ;
         current_gol <= s21;

      elsif ( x7 and x11 and x13 and not x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y29 <= '1' ;
         current_gol <= s22;

      elsif ( x7 and x11 and not x13 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x7 and x11 and not x13 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x7 and x11 and not x13 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( x7 and x11 and not x13 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and x13 and x14 and x15 ) = '1' then
         y61 <= '1' ;
         current_gol <= s13;

      elsif ( x7 and not x11 and x12 and x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s13;

      elsif ( x7 and not x11 and x12 and x13 and not x14 and x15 and x16 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s13;

      elsif ( x7 and not x11 and x12 and x13 and not x14 and x15 and not x16 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and x13 and not x14 and x15 and not x16 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and x13 and not x14 and x15 and not x16 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and x13 and not x14 and x15 and not x16 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and x13 and not x14 and not x15 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s13;

      elsif ( x7 and not x11 and x12 and x13 and not x14 and not x15 and not x17 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and x13 and not x14 and not x15 and not x17 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and x13 and not x14 and not x15 and not x17 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and x13 and not x14 and not x15 and not x17 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and not x13 and x14 and x15 and x18 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_gol <= s13;

      elsif ( x7 and not x11 and x12 and not x13 and x14 and x15 and not x18 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and not x13 and x14 and x15 and not x18 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and not x13 and x14 and x15 and not x18 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and not x13 and x14 and x15 and not x18 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and not x13 and x14 and not x15 ) = '1' then
         y3 <= '1' ;
         y14 <= '1' ;
         y62 <= '1' ;
         current_gol <= s23;

      elsif ( x7 and not x11 and x12 and not x13 and not x14 and x15 ) = '1' then
         y9 <= '1' ;
         current_gol <= s24;

      elsif ( x7 and not x11 and x12 and not x13 and not x14 and not x15 and x8 and x9 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and not x13 and not x14 and not x15 and x8 and not x9 and x10 ) = '1' then
         y64 <= '1' ;
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and not x13 and not x14 and not x15 and x8 and not x9 and not x10 ) = '1' then
         current_gol <= s1;

      elsif ( x7 and not x11 and x12 and not x13 and not x14 and not x15 and not x8 ) = '1' then
         current_gol <= s1;

      elsif ( x7 and not x11 and not x12 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y29 <= '1' ;
         current_gol <= s25;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_gol <= s26;

      end if;

   when s48 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y55 <= '1' ;
         current_gol <= s13;

   when s49 =>
         y3 <= '1' ;
         y14 <= '1' ;
         y57 <= '1' ;
         current_gol <= s13;

   when s50 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y31 <= '1' ;
         current_gol <= s53;

   when s51 =>
         y11 <= '1' ;
         current_gol <= s13;

   when s52 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y31 <= '1' ;
         current_gol <= s16;

   when s53 =>
         y3 <= '1' ;
         y14 <= '1' ;
         y58 <= '1' ;
         current_gol <= s54;

   when s54 =>
         y9 <= '1' ;
         current_gol <= s55;

   when s55 =>
         y3 <= '1' ;
         y14 <= '1' ;
         y56 <= '1' ;
         current_gol <= s56;

   when s56 =>
         y9 <= '1' ;
         current_gol <= s57;

   when s57 =>
         y3 <= '1' ;
         y14 <= '1' ;
         y57 <= '1' ;
         current_gol <= s58;

   when s58 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y32 <= '1' ;
         y38 <= '1' ;
         current_gol <= s13;

   end case;
   end proc_gol;

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

	current_gol <= s1;
      elsif (clk'event and clk ='1') then
        proc_gol;
      end if;
   end process;
end ARC;
