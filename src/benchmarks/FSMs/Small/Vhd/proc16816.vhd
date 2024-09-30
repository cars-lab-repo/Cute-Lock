library ieee;
use ieee.std_logic_1164.all;

entity proc16816 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42 : out std_logic );
end proc16816;

architecture ARC of proc16816 is

   type states_proc16816 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33 );
   signal current_proc16816 : states_proc16816;

begin
   process (clk , rst)
   procedure proc_proc16816 is
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
	y41  <= '0' ;	y42  <= '0' ;

   case current_proc16816 is
   when s1 =>
      if ( x6 and x5 and x19 and x20 ) = '1' then
         y6 <= '1' ;
         y15 <= '1' ;
         y10 <= '1' ;
         y25 <= '1' ;
         current_proc16816 <= s1;

      elsif ( x6 and x5 and x19 and not x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y34 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s2;

      elsif ( x6 and x5 and not x19 and x20 ) = '1' then
         y6 <= '1' ;
         current_proc16816 <= s1;

      elsif ( x6 and x5 and not x19 and not x20 ) = '1' then
         y6 <= '1' ;
         y33 <= '1' ;
         y10 <= '1' ;
         y16 <= '1' ;
         y4 <= '1' ;
         y26 <= '1' ;
         current_proc16816 <= s3;

      elsif ( x6 and not x5 and x4 ) = '1' then
         y8 <= '1' ;
         y7 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         y25 <= '1' ;
         current_proc16816 <= s4;

      elsif ( x6 and not x5 and not x4 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         current_proc16816 <= s5;

      else
         current_proc16816 <= s1;

      end if;

   when s2 =>
         y6 <= '1' ;
         y19 <= '1' ;
         y10 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y42 <= '1' ;
         current_proc16816 <= s6;

   when s3 =>
         y39 <= '1' ;
         current_proc16816 <= s7;

   when s4 =>
         y15 <= '1' ;
         y10 <= '1' ;
         y16 <= '1' ;
         y27 <= '1' ;
         y32 <= '1' ;
         y41 <= '1' ;
         current_proc16816 <= s1;

   when s5 =>
         y28 <= '1' ;
         current_proc16816 <= s8;

   when s6 =>
         y39 <= '1' ;
         current_proc16816 <= s9;

   when s7 =>
         y8 <= '1' ;
         y34 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s10;

   when s8 =>
         y7 <= '1' ;
         y38 <= '1' ;
         current_proc16816 <= s11;

   when s9 =>
         y8 <= '1' ;
         y2 <= '1' ;
         y33 <= '1' ;
         y42 <= '1' ;
         current_proc16816 <= s1;

   when s10 =>
         y10 <= '1' ;
         current_proc16816 <= s1;

   when s11 =>
         y28 <= '1' ;
         current_proc16816 <= s12;

   when s12 =>
      if ( x12 and x14 and x13 and x16 ) = '1' then
         y32 <= '1' ;
         current_proc16816 <= s13;

      elsif ( x12 and x14 and x13 and not x16 ) = '1' then
         y31 <= '1' ;
         current_proc16816 <= s13;

      elsif ( x12 and x14 and not x13 ) = '1' then
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_proc16816 <= s14;

      elsif ( x12 and not x14 and x15 and x13 and x16 ) = '1' then
         y9 <= '1' ;
         y29 <= '1' ;
         y30 <= '1' ;
         current_proc16816 <= s13;

      elsif ( x12 and not x14 and x15 and x13 and not x16 ) = '1' then
         y8 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y40 <= '1' ;
         y17 <= '1' ;
         current_proc16816 <= s13;

      elsif ( x12 and not x14 and x15 and not x13 ) = '1' then
         y9 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_proc16816 <= s14;

      elsif ( x12 and not x14 and not x15 and x13 and x16 and x11 ) = '1' then
         y28 <= '1' ;
         current_proc16816 <= s15;

      elsif ( x12 and not x14 and not x15 and x13 and x16 and not x11 and x18 and x10 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and x16 and not x11 and x18 and not x10 ) = '1' then
         current_proc16816 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and x16 and not x11 and not x18 ) = '1' then
         current_proc16816 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and not x16 and x10 ) = '1' then
         y28 <= '1' ;
         current_proc16816 <= s15;

      elsif ( x12 and not x14 and not x15 and x13 and not x16 and not x10 and x18 and x11 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and not x16 and not x10 and x18 and not x11 ) = '1' then
         current_proc16816 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and not x16 and not x10 and not x18 ) = '1' then
         current_proc16816 <= s1;

      elsif ( x12 and not x14 and not x15 and not x13 and x3 ) = '1' then
         y7 <= '1' ;
         y33 <= '1' ;
         y21 <= '1' ;
         current_proc16816 <= s16;

      elsif ( x12 and not x14 and not x15 and not x13 and not x3 and x16 and x1 ) = '1' then
         y16 <= '1' ;
         y26 <= '1' ;
         current_proc16816 <= s17;

      elsif ( x12 and not x14 and not x15 and not x13 and not x3 and x16 and not x1 ) = '1' then
         y9 <= '1' ;
         y24 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y17 <= '1' ;
         current_proc16816 <= s13;

      elsif ( x12 and not x14 and not x15 and not x13 and not x3 and not x16 ) = '1' then
         y18 <= '1' ;
         current_proc16816 <= s18;

      elsif ( not x12 and x3 ) = '1' then
         y7 <= '1' ;
         y33 <= '1' ;
         y21 <= '1' ;
         current_proc16816 <= s16;

      elsif ( not x12 and not x3 and x13 and x15 and x16 ) = '1' then
         y16 <= '1' ;
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and x9 ) = '1' then
         y16 <= '1' ;
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x18 and x10 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x18 and not x10 and x11 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x18 and not x10 and not x11 ) = '1' then
         current_proc16816 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and not x18 ) = '1' then
         current_proc16816 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and x8 ) = '1' then
         y16 <= '1' ;
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x18 and x10 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x18 and not x10 and x11 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x18 and not x10 and not x11 ) = '1' then
         current_proc16816 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and not x18 ) = '1' then
         current_proc16816 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and x7 ) = '1' then
         y16 <= '1' ;
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x18 and x10 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and x11 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and not x11 ) = '1' then
         current_proc16816 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and not x18 ) = '1' then
         current_proc16816 <= s1;

      elsif ( not x12 and not x3 and not x13 and x14 and x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_proc16816 <= s14;

      elsif ( not x12 and not x3 and not x13 and x14 and not x1 ) = '1' then
         y16 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_proc16816 <= s14;

      elsif ( not x12 and not x3 and not x13 and not x14 and x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s19;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s19;

      end if;

   when s13 =>
      if ( x18 and x10 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( x18 and not x10 and x11 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( x18 and not x10 and not x11 ) = '1' then
         current_proc16816 <= s1;

      else
         current_proc16816 <= s1;

      end if;

   when s14 =>
         y8 <= '1' ;
         y6 <= '1' ;
         y17 <= '1' ;
         current_proc16816 <= s13;

   when s15 =>
         y28 <= '1' ;
         current_proc16816 <= s20;

   when s16 =>
         y28 <= '1' ;
         current_proc16816 <= s21;

   when s17 =>
         y8 <= '1' ;
         y9 <= '1' ;
         y16 <= '1' ;
         y25 <= '1' ;
         current_proc16816 <= s13;

   when s18 =>
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s22;

   when s19 =>
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_proc16816 <= s14;

   when s20 =>
         y28 <= '1' ;
         current_proc16816 <= s23;

   when s21 =>
         y7 <= '1' ;
         y34 <= '1' ;
         y22 <= '1' ;
         current_proc16816 <= s24;

   when s22 =>
      if ( x1 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_proc16816 <= s25;

      else
         y9 <= '1' ;
         y18 <= '1' ;
         current_proc16816 <= s26;

      end if;

   when s23 =>
         y28 <= '1' ;
         current_proc16816 <= s13;

   when s24 =>
         y28 <= '1' ;
         current_proc16816 <= s27;

   when s25 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s28;

   when s26 =>
         y17 <= '1' ;
         current_proc16816 <= s13;

   when s27 =>
      if ( x12 and x2 and x16 and x1 ) = '1' then
         y26 <= '1' ;
         current_proc16816 <= s29;

      elsif ( x12 and x2 and x16 and not x1 and x17 ) = '1' then
         y9 <= '1' ;
         y16 <= '1' ;
         y25 <= '1' ;
         current_proc16816 <= s13;

      elsif ( x12 and x2 and x16 and not x1 and not x17 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s30;

      elsif ( x12 and x2 and not x16 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y3 <= '1' ;
         y34 <= '1' ;
         y19 <= '1' ;
         y1 <= '1' ;
         current_proc16816 <= s28;

      elsif ( x12 and not x2 and x1 ) = '1' then
         y26 <= '1' ;
         current_proc16816 <= s29;

      elsif ( x12 and not x2 and not x1 and x17 and x16 ) = '1' then
         y9 <= '1' ;
         y16 <= '1' ;
         y25 <= '1' ;
         current_proc16816 <= s13;

      elsif ( x12 and not x2 and not x1 and x17 and not x16 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s28;

      elsif ( x12 and not x2 and not x1 and not x17 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s30;

      elsif ( not x12 and x13 and x15 and x16 and x2 ) = '1' then
         y15 <= '1' ;
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and x13 and x15 and x16 and not x2 and x1 ) = '1' then
         y26 <= '1' ;
         current_proc16816 <= s29;

      elsif ( not x12 and x13 and x15 and x16 and not x2 and not x1 and x17 ) = '1' then
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and x13 and x15 and x16 and not x2 and not x1 and not x17 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s30;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and x2 ) = '1' then
         y15 <= '1' ;
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x2 and x1 ) = '1' then
         y26 <= '1' ;
         current_proc16816 <= s29;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x2 and not x1 and x17 ) = '1' then
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x2 and not x1 and not x17 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s30;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x18 and x10 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x18 and not x10 and x11 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x18 and not x10 and not x11 ) = '1' then
         current_proc16816 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and not x18 ) = '1' then
         current_proc16816 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and x2 ) = '1' then
         y15 <= '1' ;
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x2 and x1 ) = '1' then
         y26 <= '1' ;
         current_proc16816 <= s29;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x2 and not x1 and x17 ) = '1' then
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x2 and not x1 and not x17 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s30;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x18 and x10 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x18 and not x10 and x11 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x18 and not x10 and not x11 ) = '1' then
         current_proc16816 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and not x18 ) = '1' then
         current_proc16816 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and x2 ) = '1' then
         y15 <= '1' ;
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x2 and x1 ) = '1' then
         y26 <= '1' ;
         current_proc16816 <= s29;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x2 and not x1 and x17 ) = '1' then
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x2 and not x1 and not x17 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s30;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x18 and x10 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and x11 ) = '1' then
         y37 <= '1' ;
         current_proc16816 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and not x11 ) = '1' then
         current_proc16816 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and not x18 ) = '1' then
         current_proc16816 <= s1;

      elsif ( not x12 and not x13 and x2 and x14 ) = '1' then
         y15 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_proc16816 <= s14;

      elsif ( not x12 and not x13 and x2 and not x14 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y20 <= '1' ;
         y3 <= '1' ;
         y34 <= '1' ;
         y19 <= '1' ;
         y1 <= '1' ;
         current_proc16816 <= s28;

      elsif ( not x12 and not x13 and not x2 and x1 ) = '1' then
         y26 <= '1' ;
         current_proc16816 <= s29;

      elsif ( not x12 and not x13 and not x2 and not x1 and x17 and x14 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_proc16816 <= s14;

      elsif ( not x12 and not x13 and not x2 and not x1 and x17 and not x14 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s28;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s30;

      end if;

   when s28 =>
      if ( x12 ) = '1' then
         y9 <= '1' ;
         y18 <= '1' ;
         current_proc16816 <= s26;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_proc16816 <= s14;

      end if;

   when s29 =>
         y19 <= '1' ;
         y33 <= '1' ;
         y20 <= '1' ;
         y34 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_proc16816 <= s31;

   when s30 =>
         y35 <= '1' ;
         y36 <= '1' ;
         current_proc16816 <= s32;

   when s31 =>
      if ( x17 and x12 and x16 ) = '1' then
         y9 <= '1' ;
         y16 <= '1' ;
         y25 <= '1' ;
         current_proc16816 <= s13;

      elsif ( x17 and x12 and not x16 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s28;

      elsif ( x17 and not x12 and x13 ) = '1' then
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( x17 and not x12 and not x13 and x14 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_proc16816 <= s14;

      elsif ( x17 and not x12 and not x13 and not x14 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s28;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s30;

      end if;

   when s32 =>
         y19 <= '1' ;
         y2 <= '1' ;
         y20 <= '1' ;
         y3 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_proc16816 <= s33;

   when s33 =>
      if ( x12 and x16 ) = '1' then
         y9 <= '1' ;
         y16 <= '1' ;
         y25 <= '1' ;
         current_proc16816 <= s13;

      elsif ( x12 and not x16 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s28;

      elsif ( not x12 and x13 ) = '1' then
         y27 <= '1' ;
         current_proc16816 <= s13;

      elsif ( not x12 and not x13 and x14 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_proc16816 <= s14;

      else
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_proc16816 <= s28;

      end if;

   end case;
   end proc_proc16816;

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
	y41  <= '0' ;	y42  <= '0' ;
	current_proc16816 <= s1;
      elsif (clk'event and clk ='1') then
        proc_proc16816;
      end if;
   end process;
end ARC;
