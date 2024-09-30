library ieee;
use ieee.std_logic_1164.all;

entity roiz is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53 : out std_logic );
end roiz;

architecture ARC of roiz is

   type states_roiz is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35 );
   signal current_roiz : states_roiz;

begin
   process (clk , rst)
   procedure proc_roiz is
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

   case current_roiz is
   when s1 =>
      if ( x14 and x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_roiz <= s2;

      elsif ( x14 and not x15 ) = '1' then
         y1 <= '1' ;
         current_roiz <= s3;

      else
         current_roiz <= s1;

      end if;

   when s2 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         current_roiz <= s4;

   when s3 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_roiz <= s5;

   when s4 =>
         y47 <= '1' ;
         current_roiz <= s6;

   when s5 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_roiz <= s7;

   when s6 =>
         y3 <= '1' ;
         y18 <= '1' ;
         y52 <= '1' ;
         current_roiz <= s8;

   when s7 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_roiz <= s9;

   when s8 =>
         y35 <= '1' ;
         current_roiz <= s10;

   when s9 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         current_roiz <= s11;

   when s10 =>
         y3 <= '1' ;
         y18 <= '1' ;
         y53 <= '1' ;
         current_roiz <= s12;

   when s11 =>
      if ( x7 and x9 and x8 and x2 and x3 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x7 and x9 and x8 and x2 and x3 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x7 and x9 and x8 and x2 and x3 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( x7 and x9 and x8 and x2 and x3 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( x7 and x9 and x8 and x2 and not x3 and x4 ) = '1' then
         y32 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and x9 and x8 and x2 and not x3 and not x4 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and x9 and x8 and not x2 and x3 and x4 and x17 ) = '1' then
         y17 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and x9 and x8 and not x2 and x3 and x4 and not x17 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x7 and x9 and x8 and not x2 and x3 and x4 and not x17 and x1 and not x16 ) = '1' then
         current_roiz <= s1;

      elsif ( x7 and x9 and x8 and not x2 and x3 and x4 and not x17 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( x7 and x9 and x8 and not x2 and x3 and not x4 and x16 ) = '1' then
         y17 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and x9 and x8 and not x2 and x3 and not x4 and not x16 and x1 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x7 and x9 and x8 and not x2 and x3 and not x4 and not x16 and x1 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( x7 and x9 and x8 and not x2 and x3 and not x4 and not x16 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( x7 and x9 and x8 and not x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and x9 and x8 and not x2 and not x3 and not x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y29 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and x9 and not x8 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y34 <= '1' ;
         current_roiz <= s14;

      elsif ( x7 and not x9 and x11 and x2 and x8 and x3 and x4 ) = '1' then
         y45 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and x11 and x2 and x8 and x3 and not x4 ) = '1' then
         y44 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and x11 and x2 and x8 and not x3 and x4 ) = '1' then
         y46 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and x11 and x2 and x8 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and x11 and x2 and not x8 and x3 and x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and x11 and x2 and not x8 and x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and x11 and x2 and not x8 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and x11 and x2 and not x8 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and x11 and not x2 and x8 and x3 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x7 and not x9 and x11 and not x2 and x8 and x3 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x7 and not x9 and x11 and not x2 and x8 and x3 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( x7 and not x9 and x11 and not x2 and x8 and x3 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( x7 and not x9 and x11 and not x2 and x8 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and x11 and not x2 and x8 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and x11 and not x2 and not x8 and x4 and x3 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y50 <= '1' ;
         y51 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and x11 and not x2 and not x8 and x4 and not x3 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y50 <= '1' ;
         y51 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and x11 and not x2 and not x8 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y50 <= '1' ;
         y51 <= '1' ;
         current_roiz <= s13;

      elsif ( x7 and not x9 and not x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y34 <= '1' ;
         current_roiz <= s14;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_roiz <= s15;

      end if;

   when s12 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s16;

   when s13 =>
      if ( x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      else
         current_roiz <= s1;

      end if;

   when s14 =>
      if ( x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_roiz <= s17;

      elsif ( not x6 and x10 and x9 and x2 and x3 and x4 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and x2 and x3 and x4 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and x2 and x3 and x4 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and x2 and x3 and x4 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and x2 and x3 and not x4 ) = '1' then
         y16 <= '1' ;
         current_roiz <= s19;

      elsif ( not x6 and x10 and x9 and x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y18 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s20;

      elsif ( not x6 and x10 and x9 and x2 and not x3 and not x4 and x13 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and x9 and x2 and not x3 and not x4 and not x13 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and x2 and not x3 and not x4 and not x13 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and x2 and not x3 and not x4 and not x13 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and x2 and not x3 and not x4 and not x13 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and not x2 and x3 and x4 and x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and x9 and not x2 and x3 and x4 and not x14 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and not x2 and x3 and x4 and not x14 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and not x2 and x3 and x4 and not x14 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and not x2 and x3 and x4 and not x14 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and not x2 and x3 and not x4 and x12 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and x9 and not x2 and x3 and not x4 and not x12 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and not x2 and x3 and not x4 and not x12 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and not x2 and x3 and not x4 and not x12 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and not x2 and x3 and not x4 and not x12 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( not x6 and x10 and x9 and not x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and x9 and not x2 and not x3 and not x4 ) = '1' then
         y26 <= '1' ;
         current_roiz <= s21;

      elsif ( not x6 and x10 and not x9 and x2 and x8 and x3 and x4 ) = '1' then
         y45 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and x2 and x8 and x3 and not x4 ) = '1' then
         y44 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and x2 and x8 and not x3 and x4 ) = '1' then
         y46 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and x2 and x8 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and x2 and not x8 and x3 and x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and x2 and not x8 and x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and x2 and not x8 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and x2 and not x8 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and not x2 and x8 and x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y37 <= '1' ;
         current_roiz <= s22;

      elsif ( not x6 and x10 and not x9 and not x2 and x8 and x3 and not x4 ) = '1' then
         y3 <= '1' ;
         y18 <= '1' ;
         y42 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and not x2 and x8 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and not x2 and x8 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and not x2 and not x8 and x4 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and not x2 and not x8 and x4 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x6 and x10 and not x9 and not x2 and not x8 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y36 <= '1' ;
         y40 <= '1' ;
         current_roiz <= s23;

      end if;

   when s15 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_roiz <= s24;

   when s16 =>
         y9 <= '1' ;
         y48 <= '1' ;
         y49 <= '1' ;
         current_roiz <= s1;

   when s17 =>
         y35 <= '1' ;
         current_roiz <= s25;

   when s18 =>
         y17 <= '1' ;
         current_roiz <= s26;

   when s19 =>
      if ( x12 ) = '1' then
         y17 <= '1' ;
         current_roiz <= s13;

      elsif ( not x12 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x12 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x12 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      else
         current_roiz <= s1;

      end if;

   when s20 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s27;

   when s21 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

   when s22 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s28;

   when s23 =>
      if ( x9 and x2 and x3 and x4 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x9 and x2 and x3 and x4 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x9 and x2 and x3 and x4 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( x9 and x2 and x3 and x4 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( x9 and x2 and x3 and not x4 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         current_roiz <= s18;

      elsif ( x9 and x2 and x3 and not x4 and not x6 ) = '1' then
         y16 <= '1' ;
         current_roiz <= s19;

      elsif ( x9 and x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y18 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s20;

      elsif ( x9 and x2 and not x3 and not x4 and x13 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( x9 and x2 and not x3 and not x4 and not x13 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x9 and x2 and not x3 and not x4 and not x13 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x9 and x2 and not x3 and not x4 and not x13 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( x9 and x2 and not x3 and not x4 and not x13 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( x9 and not x2 and x3 and x4 and x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( x9 and not x2 and x3 and x4 and not x14 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x9 and not x2 and x3 and x4 and not x14 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x9 and not x2 and x3 and x4 and not x14 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( x9 and not x2 and x3 and x4 and not x14 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( x9 and not x2 and x3 and not x4 and x12 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( x9 and not x2 and x3 and not x4 and not x12 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x9 and not x2 and x3 and not x4 and not x12 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x9 and not x2 and x3 and not x4 and not x12 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( x9 and not x2 and x3 and not x4 and not x12 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( x9 and not x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( x9 and not x2 and not x3 and not x4 ) = '1' then
         y26 <= '1' ;
         current_roiz <= s21;

      elsif ( not x9 and x2 and x8 and x3 and x4 ) = '1' then
         y45 <= '1' ;
         current_roiz <= s13;

      elsif ( not x9 and x2 and x8 and x3 and not x4 ) = '1' then
         y44 <= '1' ;
         current_roiz <= s13;

      elsif ( not x9 and x2 and x8 and not x3 and x4 ) = '1' then
         y46 <= '1' ;
         current_roiz <= s13;

      elsif ( not x9 and x2 and x8 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x9 and x2 and not x8 and x3 and x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x9 and x2 and not x8 and x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x9 and x2 and not x8 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x9 and x2 and not x8 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x9 and not x2 and x8 and x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y37 <= '1' ;
         current_roiz <= s22;

      elsif ( not x9 and not x2 and x8 and x3 and not x4 ) = '1' then
         y3 <= '1' ;
         y18 <= '1' ;
         y42 <= '1' ;
         current_roiz <= s13;

      elsif ( not x9 and not x2 and x8 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x9 and not x2 and x8 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x9 and not x2 and not x8 and x4 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x9 and not x2 and not x8 and x4 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      end if;

   when s24 =>
      if ( x5 ) = '1' then
         y15 <= '1' ;
         current_roiz <= s3;

      elsif ( not x5 and x8 and x9 and x2 and x3 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x5 and x8 and x9 and x2 and x3 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x5 and x8 and x9 and x2 and x3 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and x8 and x9 and x2 and x3 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and x8 and x9 and x2 and not x3 and x4 ) = '1' then
         y32 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and x8 and x9 and x2 and not x3 and not x4 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and x8 and x9 and not x2 and x3 and x4 and x17 ) = '1' then
         y17 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and x8 and x9 and not x2 and x3 and x4 and not x17 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x5 and x8 and x9 and not x2 and x3 and x4 and not x17 and x1 and not x16 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and x8 and x9 and not x2 and x3 and x4 and not x17 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and x8 and x9 and not x2 and x3 and not x4 and x16 ) = '1' then
         y17 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and x8 and x9 and not x2 and x3 and not x4 and not x16 and x1 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x5 and x8 and x9 and not x2 and x3 and not x4 and not x16 and x1 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and x8 and x9 and not x2 and x3 and not x4 and not x16 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and x8 and x9 and not x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and x8 and x9 and not x2 and not x3 and not x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y29 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and x8 and not x9 and x6 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_roiz <= s29;

      elsif ( not x5 and x8 and not x9 and not x6 and x2 and x3 and x4 ) = '1' then
         y45 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and x8 and not x9 and not x6 and x2 and x3 and not x4 ) = '1' then
         y44 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and x8 and not x9 and not x6 and x2 and not x3 and x4 ) = '1' then
         y46 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and x8 and not x9 and not x6 and x2 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and x8 and not x9 and not x6 and not x2 and x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y37 <= '1' ;
         current_roiz <= s30;

      elsif ( not x5 and x8 and not x9 and not x6 and not x2 and x3 and not x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and x8 and not x9 and not x6 and not x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and x8 and not x9 and not x6 and not x2 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and not x8 and x6 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_roiz <= s29;

      elsif ( not x5 and not x8 and not x6 and x9 and x2 and x3 and x4 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and x2 and x3 and x4 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and x2 and x3 and x4 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and x2 and x3 and x4 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and x2 and x3 and not x4 ) = '1' then
         y16 <= '1' ;
         current_roiz <= s19;

      elsif ( not x5 and not x8 and not x6 and x9 and x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y18 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s20;

      elsif ( not x5 and not x8 and not x6 and x9 and x2 and not x3 and not x4 and x13 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and not x8 and not x6 and x9 and x2 and not x3 and not x4 and not x13 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and x2 and not x3 and not x4 and not x13 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and x2 and not x3 and not x4 and not x13 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and x2 and not x3 and not x4 and not x13 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and not x2 and x3 and x4 and x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and not x8 and not x6 and x9 and not x2 and x3 and x4 and not x14 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and not x2 and x3 and x4 and not x14 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and not x2 and x3 and x4 and not x14 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and not x2 and x3 and x4 and not x14 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and not x2 and x3 and not x4 and x12 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and not x8 and not x6 and x9 and not x2 and x3 and not x4 and not x12 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and not x2 and x3 and not x4 and not x12 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and not x2 and x3 and not x4 and not x12 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and not x2 and x3 and not x4 and not x12 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( not x5 and not x8 and not x6 and x9 and not x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and not x8 and not x6 and x9 and not x2 and not x3 and not x4 ) = '1' then
         y26 <= '1' ;
         current_roiz <= s21;

      elsif ( not x5 and not x8 and not x6 and not x9 and x2 and x3 and x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and not x8 and not x6 and not x9 and x2 and x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and not x8 and not x6 and not x9 and x2 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and not x8 and not x6 and not x9 and x2 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and not x8 and not x6 and not x9 and not x2 and x4 and x3 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         current_roiz <= s13;

      elsif ( not x5 and not x8 and not x6 and not x9 and not x2 and x4 and not x3 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         current_roiz <= s13;

      else
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         current_roiz <= s13;

      end if;

   when s25 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         current_roiz <= s31;

   when s26 =>
         y3 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_roiz <= s19;

   when s27 =>
         y9 <= '1' ;
         current_roiz <= s13;

   when s28 =>
         y3 <= '1' ;
         y18 <= '1' ;
         y43 <= '1' ;
         current_roiz <= s13;

   when s29 =>
         y24 <= '1' ;
         current_roiz <= s32;

   when s30 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s33;

   when s31 =>
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y34 <= '1' ;
         current_roiz <= s34;

   when s32 =>
         y25 <= '1' ;
         current_roiz <= s35;

   when s33 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y39 <= '1' ;
         y41 <= '1' ;
         current_roiz <= s13;

   when s34 =>
      if ( x10 and x9 and x2 and x3 and x4 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x10 and x9 and x2 and x3 and x4 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x10 and x9 and x2 and x3 and x4 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( x10 and x9 and x2 and x3 and x4 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( x10 and x9 and x2 and x3 and not x4 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y10 <= '1' ;
         current_roiz <= s18;

      elsif ( x10 and x9 and x2 and x3 and not x4 and not x6 ) = '1' then
         y16 <= '1' ;
         current_roiz <= s19;

      elsif ( x10 and x9 and x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y18 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s20;

      elsif ( x10 and x9 and x2 and not x3 and not x4 and x13 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and x9 and x2 and not x3 and not x4 and not x13 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x10 and x9 and x2 and not x3 and not x4 and not x13 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x10 and x9 and x2 and not x3 and not x4 and not x13 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( x10 and x9 and x2 and not x3 and not x4 and not x13 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( x10 and x9 and not x2 and x3 and x4 and x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and x9 and not x2 and x3 and x4 and not x14 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x10 and x9 and not x2 and x3 and x4 and not x14 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x10 and x9 and not x2 and x3 and x4 and not x14 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( x10 and x9 and not x2 and x3 and x4 and not x14 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( x10 and x9 and not x2 and x3 and not x4 and x12 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and x9 and not x2 and x3 and not x4 and not x12 and x1 and x16 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x10 and x9 and not x2 and x3 and not x4 and not x12 and x1 and not x16 and x17 ) = '1' then
         y33 <= '1' ;
         current_roiz <= s1;

      elsif ( x10 and x9 and not x2 and x3 and not x4 and not x12 and x1 and not x16 and not x17 ) = '1' then
         current_roiz <= s1;

      elsif ( x10 and x9 and not x2 and x3 and not x4 and not x12 and not x1 ) = '1' then
         current_roiz <= s1;

      elsif ( x10 and x9 and not x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and x9 and not x2 and not x3 and not x4 ) = '1' then
         y26 <= '1' ;
         current_roiz <= s21;

      elsif ( x10 and not x9 and x2 and x8 and x3 and x4 ) = '1' then
         y45 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and x2 and x8 and x3 and not x4 ) = '1' then
         y44 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and x2 and x8 and not x3 and x4 ) = '1' then
         y46 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and x2 and x8 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and x2 and not x8 and x3 and x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and x2 and not x8 and x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and x2 and not x8 and not x3 and x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and x2 and not x8 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and not x2 and x8 and x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y37 <= '1' ;
         current_roiz <= s22;

      elsif ( x10 and not x9 and not x2 and x8 and x3 and not x4 ) = '1' then
         y3 <= '1' ;
         y18 <= '1' ;
         y42 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and not x2 and x8 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and not x2 and x8 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and not x2 and not x8 and x4 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and not x2 and not x8 and x4 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      elsif ( x10 and not x9 and not x2 and not x8 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_roiz <= s13;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y36 <= '1' ;
         y40 <= '1' ;
         current_roiz <= s23;

      end if;

   when s35 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_roiz <= s23;

   end case;
   end proc_roiz;

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
	current_roiz <= s1;
      elsif (clk'event and clk ='1') then
        proc_roiz;
      end if;
   end process;
end ARC;
