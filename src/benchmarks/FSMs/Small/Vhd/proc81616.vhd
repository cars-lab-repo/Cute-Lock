library ieee;
use ieee.std_logic_1164.all;

entity proc81616 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39 : out std_logic );
end proc81616;

architecture ARC of proc81616 is

   type states_proc81616 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36 );
   signal current_proc81616 : states_proc81616;

begin
   process (clk , rst)
   procedure proc_proc81616 is
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
	y37  <= '0' ;	y38  <= '0' ;	y39  <= '0' ;

   case current_proc81616 is
   when s1 =>
      if ( x6 and x5 and x20 and x19 ) = '1' then
         y17 <= '1' ;
         y29 <= '1' ;
         y34 <= '1' ;
         current_proc81616 <= s1;

      elsif ( x6 and x5 and x20 and not x19 ) = '1' then
         y34 <= '1' ;
         current_proc81616 <= s1;

      elsif ( x6 and x5 and not x20 and x19 ) = '1' then
         y39 <= '1' ;
         current_proc81616 <= s1;

      elsif ( x6 and x5 and not x20 and not x19 ) = '1' then
         y36 <= '1' ;
         current_proc81616 <= s1;

      elsif ( x6 and not x5 and x4 ) = '1' then
         y1 <= '1' ;
         y17 <= '1' ;
         y19 <= '1' ;
         y29 <= '1' ;
         y36 <= '1' ;
         current_proc81616 <= s2;

      elsif ( x6 and not x5 and not x4 ) = '1' then
         y35 <= '1' ;
         y37 <= '1' ;
         current_proc81616 <= s3;

      else
         current_proc81616 <= s1;

      end if;

   when s2 =>
         y1 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y35 <= '1' ;
         y38 <= '1' ;
         current_proc81616 <= s1;

   when s3 =>
         y20 <= '1' ;
         current_proc81616 <= s4;

   when s4 =>
      if ( x12 and x14 and x13 and x16 ) = '1' then
         y25 <= '1' ;
         current_proc81616 <= s5;

      elsif ( x12 and x14 and x13 and not x16 ) = '1' then
         y24 <= '1' ;
         current_proc81616 <= s5;

      elsif ( x12 and x14 and not x13 ) = '1' then
         y8 <= '1' ;
         current_proc81616 <= s6;

      elsif ( x12 and not x14 and x15 and x13 and x16 ) = '1' then
         y8 <= '1' ;
         current_proc81616 <= s6;

      elsif ( x12 and not x14 and x15 and x13 and not x16 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y21 <= '1' ;
         current_proc81616 <= s7;

      elsif ( x12 and not x14 and x15 and not x13 ) = '1' then
         y8 <= '1' ;
         current_proc81616 <= s6;

      elsif ( x12 and not x14 and not x15 and x13 and x16 and x11 ) = '1' then
         y20 <= '1' ;
         current_proc81616 <= s8;

      elsif ( x12 and not x14 and not x15 and x13 and x16 and not x11 and x17 and x10 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and x16 and not x11 and x17 and not x10 ) = '1' then
         current_proc81616 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and x16 and not x11 and not x17 ) = '1' then
         current_proc81616 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and not x16 and x10 ) = '1' then
         y20 <= '1' ;
         current_proc81616 <= s8;

      elsif ( x12 and not x14 and not x15 and x13 and not x16 and not x10 and x17 and x11 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and not x16 and not x10 and x17 and not x11 ) = '1' then
         current_proc81616 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and not x16 and not x10 and not x17 ) = '1' then
         current_proc81616 <= s1;

      elsif ( x12 and not x14 and not x15 and not x13 and x3 ) = '1' then
         y9 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_proc81616 <= s9;

      elsif ( x12 and not x14 and not x15 and not x13 and not x3 and x16 and x1 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s10;

      elsif ( x12 and not x14 and not x15 and not x13 and not x3 and x16 and not x1 ) = '1' then
         y8 <= '1' ;
         current_proc81616 <= s6;

      elsif ( x12 and not x14 and not x15 and not x13 and not x3 and not x16 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s10;

      elsif ( not x12 and x3 ) = '1' then
         y9 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_proc81616 <= s9;

      elsif ( not x12 and not x3 and x13 and x15 and x16 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s10;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and x9 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s10;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x17 and x10 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x17 and not x10 and x11 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x17 and not x10 and not x11 ) = '1' then
         current_proc81616 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and not x17 ) = '1' then
         current_proc81616 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and x8 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s10;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x17 and x10 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x17 and not x10 and x11 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x17 and not x10 and not x11 ) = '1' then
         current_proc81616 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and not x17 ) = '1' then
         current_proc81616 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and x7 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s10;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x17 and x10 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x17 and not x10 and x11 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x17 and not x10 and not x11 ) = '1' then
         current_proc81616 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and not x17 ) = '1' then
         current_proc81616 <= s1;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s10;

      end if;

   when s5 =>
      if ( x17 and x10 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( x17 and not x10 and x11 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( x17 and not x10 and not x11 ) = '1' then
         current_proc81616 <= s1;

      else
         current_proc81616 <= s1;

      end if;

   when s6 =>
      if ( x13 ) = '1' then
         y5 <= '1' ;
         current_proc81616 <= s11;

      else
         y5 <= '1' ;
         current_proc81616 <= s12;

      end if;

   when s7 =>
         y3 <= '1' ;
         y26 <= '1' ;
         current_proc81616 <= s13;

   when s8 =>
         y20 <= '1' ;
         current_proc81616 <= s5;

   when s9 =>
         y20 <= '1' ;
         current_proc81616 <= s14;

   when s10 =>
         y5 <= '1' ;
         current_proc81616 <= s15;

   when s11 =>
         y27 <= '1' ;
         current_proc81616 <= s16;

   when s12 =>
         y27 <= '1' ;
         current_proc81616 <= s17;

   when s13 =>
         y27 <= '1' ;
         current_proc81616 <= s18;

   when s14 =>
      if ( x12 and x2 and x16 and x1 ) = '1' then
         y1 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_proc81616 <= s20;

      elsif ( x12 and x2 and x16 and not x1 and x18 ) = '1' then
         y8 <= '1' ;
         current_proc81616 <= s21;

      elsif ( x12 and x2 and x16 and not x1 and not x18 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s23;

      elsif ( x12 and x2 and not x16 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_proc81616 <= s19;

      elsif ( x12 and not x2 and x1 ) = '1' then
         y1 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_proc81616 <= s20;

      elsif ( x12 and not x2 and not x1 and x18 and x16 ) = '1' then
         y8 <= '1' ;
         current_proc81616 <= s21;

      elsif ( x12 and not x2 and not x1 and x18 and not x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc81616 <= s22;

      elsif ( x12 and not x2 and not x1 and not x18 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s23;

      elsif ( not x12 and x13 and x15 and x16 and x2 ) = '1' then
         y1 <= '1' ;
         y18 <= '1' ;
         current_proc81616 <= s5;

      elsif ( not x12 and x13 and x15 and x16 and not x2 and x1 ) = '1' then
         y1 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_proc81616 <= s20;

      elsif ( not x12 and x13 and x15 and x16 and not x2 and not x1 and x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc81616 <= s22;

      elsif ( not x12 and x13 and x15 and x16 and not x2 and not x1 and not x18 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s23;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and x2 ) = '1' then
         y1 <= '1' ;
         y18 <= '1' ;
         current_proc81616 <= s5;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x2 and x1 ) = '1' then
         y1 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_proc81616 <= s20;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x2 and not x1 and x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc81616 <= s22;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x2 and not x1 and not x18 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s23;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x17 and x10 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x17 and not x10 and x11 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x17 and not x10 and not x11 ) = '1' then
         current_proc81616 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and not x17 ) = '1' then
         current_proc81616 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and x2 ) = '1' then
         y1 <= '1' ;
         y18 <= '1' ;
         current_proc81616 <= s5;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x2 and x1 ) = '1' then
         y1 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_proc81616 <= s20;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x2 and not x1 and x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc81616 <= s22;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x2 and not x1 and not x18 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s23;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x17 and x10 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x17 and not x10 and x11 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x17 and not x10 and not x11 ) = '1' then
         current_proc81616 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and not x17 ) = '1' then
         current_proc81616 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and x2 ) = '1' then
         y1 <= '1' ;
         y18 <= '1' ;
         current_proc81616 <= s5;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x2 and x1 ) = '1' then
         y1 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_proc81616 <= s20;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x2 and not x1 and x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc81616 <= s22;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x2 and not x1 and not x18 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s23;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x17 and x10 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x17 and not x10 and x11 ) = '1' then
         y28 <= '1' ;
         current_proc81616 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x17 and not x10 and not x11 ) = '1' then
         current_proc81616 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and not x17 ) = '1' then
         current_proc81616 <= s1;

      elsif ( not x12 and not x13 and x2 and x14 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_proc81616 <= s24;

      elsif ( not x12 and not x13 and x2 and not x14 ) = '1' then
         y8 <= '1' ;
         current_proc81616 <= s21;

      elsif ( not x12 and not x13 and not x2 and x1 ) = '1' then
         y1 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_proc81616 <= s20;

      elsif ( not x12 and not x13 and not x2 and not x1 and x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc81616 <= s22;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s23;

      end if;

   when s15 =>
         y27 <= '1' ;
         current_proc81616 <= s25;

   when s16 =>
         y6 <= '1' ;
         current_proc81616 <= s26;

   when s17 =>
         y6 <= '1' ;
         current_proc81616 <= s27;

   when s18 =>
         y10 <= '1' ;
         y26 <= '1' ;
         current_proc81616 <= s5;

   when s19 =>
         y8 <= '1' ;
         current_proc81616 <= s21;

   when s20 =>
         y9 <= '1' ;
         y29 <= '1' ;
         current_proc81616 <= s28;

   when s21 =>
      if ( x16 ) = '1' then
         y5 <= '1' ;
         current_proc81616 <= s11;

      elsif ( not x16 and x12 ) = '1' then
         y3 <= '1' ;
         y26 <= '1' ;
         current_proc81616 <= s13;

      else
         y5 <= '1' ;
         current_proc81616 <= s11;

      end if;

   when s22 =>
      if ( x12 ) = '1' then
         y8 <= '1' ;
         current_proc81616 <= s21;

      elsif ( not x12 and x13 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_proc81616 <= s5;

      else
         y9 <= '1' ;
         current_proc81616 <= s29;

      end if;

   when s23 =>
         y5 <= '1' ;
         current_proc81616 <= s30;

   when s24 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_proc81616 <= s7;

   when s25 =>
         y6 <= '1' ;
         current_proc81616 <= s31;

   when s26 =>
      if ( x12 and x13 ) = '1' then
         y22 <= '1' ;
         y23 <= '1' ;
         current_proc81616 <= s5;

      elsif ( x12 and not x13 ) = '1' then
         y1 <= '1' ;
         y17 <= '1' ;
         current_proc81616 <= s5;

      else
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_proc81616 <= s24;

      end if;

   when s27 =>
      if ( x15 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_proc81616 <= s24;

      elsif ( not x15 and x14 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_proc81616 <= s24;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s7;

      end if;

   when s28 =>
      if ( x18 and x12 and x16 ) = '1' then
         y8 <= '1' ;
         current_proc81616 <= s21;

      elsif ( x18 and x12 and not x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc81616 <= s22;

      elsif ( x18 and not x12 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc81616 <= s22;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc81616 <= s23;

      end if;

   when s29 =>
      if ( x14 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_proc81616 <= s24;

      else
         y8 <= '1' ;
         current_proc81616 <= s21;

      end if;

   when s30 =>
         y27 <= '1' ;
         current_proc81616 <= s32;

   when s31 =>
      if ( x12 and x1 ) = '1' then
         y9 <= '1' ;
         current_proc81616 <= s33;

      elsif ( x12 and not x1 and x16 ) = '1' then
         y9 <= '1' ;
         current_proc81616 <= s33;

      elsif ( x12 and not x1 and not x16 ) = '1' then
         y8 <= '1' ;
         current_proc81616 <= s21;

      elsif ( not x12 and x13 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_proc81616 <= s5;

      else
         y9 <= '1' ;
         current_proc81616 <= s33;

      end if;

   when s32 =>
         y6 <= '1' ;
         current_proc81616 <= s34;

   when s33 =>
      if ( x12 and x16 ) = '1' then
         y8 <= '1' ;
         current_proc81616 <= s21;

      elsif ( x12 and not x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc81616 <= s22;

      elsif ( not x12 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc81616 <= s22;

      elsif ( not x12 and not x1 and x14 ) = '1' then
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_proc81616 <= s24;

      else
         y8 <= '1' ;
         current_proc81616 <= s21;

      end if;

   when s34 =>
         y30 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_proc81616 <= s35;

   when s35 =>
         y9 <= '1' ;
         y29 <= '1' ;
         current_proc81616 <= s36;

   when s36 =>
      if ( x12 and x16 ) = '1' then
         y8 <= '1' ;
         current_proc81616 <= s21;

      elsif ( x12 and not x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc81616 <= s22;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc81616 <= s22;

      end if;

   end case;
   end proc_proc81616;

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
	y37  <= '0' ;	y38  <= '0' ;	y39  <= '0' ;
	current_proc81616 <= s1;
      elsif (clk'event and clk ='1') then
        proc_proc81616;
      end if;
   end process;
end ARC;
