library ieee;
use ieee.std_logic_1164.all;

entity max is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41 : out std_logic );
end max;

architecture ARC of max is

   type states_max is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26 );
   signal current_max : states_max;

begin
   process (clk , rst)
   procedure proc_max is
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
	y41  <= '0' ;

   case current_max is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y7 <= '1' ;
         current_max <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_max <= s3;

      else
         current_max <= s1;

      end if;

   when s2 =>
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_max <= s4;

   when s3 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_max <= s5;

   when s4 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         current_max <= s6;

   when s5 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_max <= s7;

   when s6 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_max <= s8;

   when s7 =>
      if ( x3 and x5 and x6 and x21 and x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_max <= s9;

      elsif ( x3 and x5 and x6 and x21 and not x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y34 <= '1' ;
         y36 <= '1' ;
         current_max <= s9;

      elsif ( x3 and x5 and x6 and not x21 and x22 and x10 and x24 ) = '1' then
         y9 <= '1' ;
         current_max <= s10;

      elsif ( x3 and x5 and x6 and not x21 and x22 and x10 and not x24 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( x3 and x5 and x6 and not x21 and x22 and x10 and not x24 and x26 and not x25 ) = '1' then
         current_max <= s1;

      elsif ( x3 and x5 and x6 and not x21 and x22 and x10 and not x24 and not x26 ) = '1' then
         current_max <= s1;

      elsif ( x3 and x5 and x6 and not x21 and x22 and not x10 and x25 ) = '1' then
         y9 <= '1' ;
         current_max <= s10;

      elsif ( x3 and x5 and x6 and not x21 and x22 and not x10 and not x25 and x26 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( x3 and x5 and x6 and not x21 and x22 and not x10 and not x25 and x26 and not x24 ) = '1' then
         current_max <= s1;

      elsif ( x3 and x5 and x6 and not x21 and x22 and not x10 and not x25 and not x26 ) = '1' then
         current_max <= s1;

      elsif ( x3 and x5 and x6 and not x21 and not x22 and x23 and x10 ) = '1' then
         y19 <= '1' ;
         current_max <= s9;

      elsif ( x3 and x5 and x6 and not x21 and not x22 and x23 and not x10 ) = '1' then
         y22 <= '1' ;
         current_max <= s9;

      elsif ( x3 and x5 and x6 and not x21 and not x22 and not x23 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( x3 and x5 and x6 and not x21 and not x22 and not x23 and x26 and not x25 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( x3 and x5 and x6 and not x21 and not x22 and not x23 and x26 and not x25 and not x24 ) = '1' then
         current_max <= s1;

      elsif ( x3 and x5 and x6 and not x21 and not x22 and not x23 and not x26 ) = '1' then
         current_max <= s1;

      elsif ( x3 and x5 and not x6 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_max <= s9;

      elsif ( x3 and x5 and not x6 and not x7 and x8 ) = '1' then
         y5 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y39 <= '1' ;
         current_max <= s9;

      elsif ( x3 and x5 and not x6 and not x7 and not x8 and x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y26 <= '1' ;
         current_max <= s9;

      elsif ( x3 and x5 and not x6 and not x7 and not x8 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_max <= s12;

      elsif ( x3 and not x5 and x6 and x8 and x9 and x14 ) = '1' then
         y33 <= '1' ;
         current_max <= s11;

      elsif ( x3 and not x5 and x6 and x8 and x9 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_max <= s12;

      elsif ( x3 and not x5 and x6 and x8 and not x9 and x10 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y15 <= '1' ;
         current_max <= s13;

      elsif ( x3 and not x5 and x6 and x8 and not x9 and not x10 and x13 and x14 ) = '1' then
         y33 <= '1' ;
         current_max <= s11;

      elsif ( x3 and not x5 and x6 and x8 and not x9 and not x10 and x13 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_max <= s12;

      elsif ( x3 and not x5 and x6 and x8 and not x9 and not x10 and not x13 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( x3 and not x5 and x6 and x8 and not x9 and not x10 and not x13 and x26 and not x25 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( x3 and not x5 and x6 and x8 and not x9 and not x10 and not x13 and x26 and not x25 and not x24 ) = '1' then
         current_max <= s1;

      elsif ( x3 and not x5 and x6 and x8 and not x9 and not x10 and not x13 and not x26 ) = '1' then
         current_max <= s1;

      elsif ( x3 and not x5 and x6 and not x8 and x9 and x10 and x11 and x14 ) = '1' then
         y33 <= '1' ;
         current_max <= s11;

      elsif ( x3 and not x5 and x6 and not x8 and x9 and x10 and x11 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_max <= s12;

      elsif ( x3 and not x5 and x6 and not x8 and x9 and x10 and not x11 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( x3 and not x5 and x6 and not x8 and x9 and x10 and not x11 and x26 and not x25 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( x3 and not x5 and x6 and not x8 and x9 and x10 and not x11 and x26 and not x25 and not x24 ) = '1' then
         current_max <= s1;

      elsif ( x3 and not x5 and x6 and not x8 and x9 and x10 and not x11 and not x26 ) = '1' then
         current_max <= s1;

      elsif ( x3 and not x5 and x6 and not x8 and x9 and not x10 and x12 and x14 ) = '1' then
         y33 <= '1' ;
         current_max <= s11;

      elsif ( x3 and not x5 and x6 and not x8 and x9 and not x10 and x12 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_max <= s12;

      elsif ( x3 and not x5 and x6 and not x8 and x9 and not x10 and not x12 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( x3 and not x5 and x6 and not x8 and x9 and not x10 and not x12 and x26 and not x25 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( x3 and not x5 and x6 and not x8 and x9 and not x10 and not x12 and x26 and not x25 and not x24 ) = '1' then
         current_max <= s1;

      elsif ( x3 and not x5 and x6 and not x8 and x9 and not x10 and not x12 and not x26 ) = '1' then
         current_max <= s1;

      elsif ( x3 and not x5 and x6 and not x8 and not x9 and x10 and x14 ) = '1' then
         y33 <= '1' ;
         current_max <= s11;

      elsif ( x3 and not x5 and x6 and not x8 and not x9 and x10 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_max <= s12;

      elsif ( x3 and not x5 and x6 and not x8 and not x9 and not x10 ) = '1' then
         y30 <= '1' ;
         current_max <= s9;

      elsif ( x3 and not x5 and not x6 and x8 ) = '1' then
         y5 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y39 <= '1' ;
         current_max <= s9;

      elsif ( x3 and not x5 and not x6 and not x8 and x14 ) = '1' then
         y25 <= '1' ;
         y26 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_max <= s9;

      elsif ( x3 and not x5 and not x6 and not x8 and not x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_max <= s12;

      else
         y5 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_max <= s14;

      end if;

   when s8 =>
         y9 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_max <= s1;

   when s9 =>
      if ( x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( x26 and not x25 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( x26 and not x25 and not x24 ) = '1' then
         current_max <= s1;

      else
         current_max <= s1;

      end if;

   when s10 =>
         y9 <= '1' ;
         current_max <= s9;

   when s11 =>
      if ( x19 ) = '1' then
         y9 <= '1' ;
         current_max <= s10;

      elsif ( not x19 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x19 and x26 and not x25 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x19 and x26 and not x25 and not x24 ) = '1' then
         current_max <= s1;

      else
         current_max <= s1;

      end if;

   when s12 =>
      if ( x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y17 <= '1' ;
         current_max <= s15;

      elsif ( not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_max <= s16;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y13 <= '1' ;
         current_max <= s17;

      end if;

   when s13 =>
      if ( x14 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y26 <= '1' ;
         current_max <= s9;

      elsif ( x14 and not x5 and x6 ) = '1' then
         y33 <= '1' ;
         current_max <= s11;

      elsif ( x14 and not x5 and not x6 ) = '1' then
         y25 <= '1' ;
         y26 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_max <= s9;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_max <= s12;

      end if;

   when s14 =>
      if ( x4 ) = '1' then
         y10 <= '1' ;
         current_max <= s3;

      elsif ( not x4 and x5 and x6 and x21 and x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and x5 and x6 and x21 and not x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y34 <= '1' ;
         y36 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and x5 and x6 and not x21 and x22 and x10 and x24 ) = '1' then
         y9 <= '1' ;
         current_max <= s10;

      elsif ( not x4 and x5 and x6 and not x21 and x22 and x10 and not x24 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x4 and x5 and x6 and not x21 and x22 and x10 and not x24 and x26 and not x25 ) = '1' then
         current_max <= s1;

      elsif ( not x4 and x5 and x6 and not x21 and x22 and x10 and not x24 and not x26 ) = '1' then
         current_max <= s1;

      elsif ( not x4 and x5 and x6 and not x21 and x22 and not x10 and x25 ) = '1' then
         y9 <= '1' ;
         current_max <= s10;

      elsif ( not x4 and x5 and x6 and not x21 and x22 and not x10 and not x25 and x26 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x4 and x5 and x6 and not x21 and x22 and not x10 and not x25 and x26 and not x24 ) = '1' then
         current_max <= s1;

      elsif ( not x4 and x5 and x6 and not x21 and x22 and not x10 and not x25 and not x26 ) = '1' then
         current_max <= s1;

      elsif ( not x4 and x5 and x6 and not x21 and not x22 and x23 and x10 ) = '1' then
         y19 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and x5 and x6 and not x21 and not x22 and x23 and not x10 ) = '1' then
         y22 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and x5 and x6 and not x21 and not x22 and not x23 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x4 and x5 and x6 and not x21 and not x22 and not x23 and x26 and not x25 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x4 and x5 and x6 and not x21 and not x22 and not x23 and x26 and not x25 and not x24 ) = '1' then
         current_max <= s1;

      elsif ( not x4 and x5 and x6 and not x21 and not x22 and not x23 and not x26 ) = '1' then
         current_max <= s1;

      elsif ( not x4 and x5 and not x6 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and x5 and not x6 and not x7 and x8 ) = '1' then
         y5 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y39 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and x5 and not x6 and not x7 and not x8 and x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         current_max <= s16;

      elsif ( not x4 and x5 and not x6 and not x7 and not x8 and not x15 and x9 and x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y27 <= '1' ;
         current_max <= s18;

      elsif ( not x4 and x5 and not x6 and not x7 and not x8 and not x15 and x9 and not x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and x5 and not x6 and not x7 and not x8 and not x15 and not x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and not x5 and x6 and x8 and x9 and x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         current_max <= s16;

      elsif ( not x4 and not x5 and x6 and x8 and x9 and not x15 and x17 ) = '1' then
         y31 <= '1' ;
         current_max <= s19;

      elsif ( not x4 and not x5 and x6 and x8 and x9 and not x15 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and not x5 and x6 and x8 and not x9 and x10 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y15 <= '1' ;
         current_max <= s20;

      elsif ( not x4 and not x5 and x6 and x8 and not x9 and not x10 and x13 and x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         current_max <= s16;

      elsif ( not x4 and not x5 and x6 and x8 and not x9 and not x10 and x13 and not x15 and x17 ) = '1' then
         y31 <= '1' ;
         current_max <= s19;

      elsif ( not x4 and not x5 and x6 and x8 and not x9 and not x10 and x13 and not x15 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and not x5 and x6 and x8 and not x9 and not x10 and not x13 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x4 and not x5 and x6 and x8 and not x9 and not x10 and not x13 and x26 and not x25 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x4 and not x5 and x6 and x8 and not x9 and not x10 and not x13 and x26 and not x25 and not x24 ) = '1' then
         current_max <= s1;

      elsif ( not x4 and not x5 and x6 and x8 and not x9 and not x10 and not x13 and not x26 ) = '1' then
         current_max <= s1;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and x10 and x11 and x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         current_max <= s16;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and x10 and x11 and not x15 and x17 ) = '1' then
         y31 <= '1' ;
         current_max <= s19;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and x10 and x11 and not x15 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and x10 and not x11 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and x10 and not x11 and x26 and not x25 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and x10 and not x11 and x26 and not x25 and not x24 ) = '1' then
         current_max <= s1;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and x10 and not x11 and not x26 ) = '1' then
         current_max <= s1;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and not x10 and x12 and x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         current_max <= s16;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and not x10 and x12 and not x15 and x17 ) = '1' then
         y31 <= '1' ;
         current_max <= s19;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and not x10 and x12 and not x15 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and not x10 and not x12 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and not x10 and not x12 and x26 and not x25 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and not x10 and not x12 and x26 and not x25 and not x24 ) = '1' then
         current_max <= s1;

      elsif ( not x4 and not x5 and x6 and not x8 and x9 and not x10 and not x12 and not x26 ) = '1' then
         current_max <= s1;

      elsif ( not x4 and not x5 and x6 and not x8 and not x9 and x10 and x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         current_max <= s16;

      elsif ( not x4 and not x5 and x6 and not x8 and not x9 and x10 and not x15 and x17 ) = '1' then
         y31 <= '1' ;
         current_max <= s19;

      elsif ( not x4 and not x5 and x6 and not x8 and not x9 and x10 and not x15 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and not x5 and x6 and not x8 and not x9 and not x10 ) = '1' then
         y30 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and not x5 and not x6 and x8 ) = '1' then
         y5 <= '1' ;
         y23 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_max <= s9;

      elsif ( not x4 and not x5 and not x6 and not x8 and x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         current_max <= s16;

      else
         y5 <= '1' ;
         y23 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y39 <= '1' ;
         current_max <= s9;

      end if;

   when s15 =>
      if ( x16 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_max <= s16;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y13 <= '1' ;
         current_max <= s17;

      end if;

   when s16 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y13 <= '1' ;
         current_max <= s17;

   when s17 =>
         y20 <= '1' ;
         y21 <= '1' ;
         current_max <= s21;

   when s18 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_max <= s22;

   when s19 =>
      if ( x20 ) = '1' then
         y9 <= '1' ;
         current_max <= s10;

      elsif ( not x20 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x20 and x26 and not x25 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x20 and x26 and not x25 and not x24 ) = '1' then
         current_max <= s1;

      else
         current_max <= s1;

      end if;

   when s20 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         current_max <= s16;

      elsif ( not x15 and x17 ) = '1' then
         y31 <= '1' ;
         current_max <= s19;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_max <= s9;

      end if;

   when s21 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y13 <= '1' ;
         current_max <= s23;

   when s22 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y28 <= '1' ;
         y41 <= '1' ;
         current_max <= s9;

   when s23 =>
      if ( x5 and x9 and x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y27 <= '1' ;
         current_max <= s24;

      elsif ( x5 and x9 and not x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         y27 <= '1' ;
         current_max <= s9;

      elsif ( x5 and not x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y29 <= '1' ;
         current_max <= s9;

      elsif ( not x5 and x6 and x17 ) = '1' then
         y32 <= '1' ;
         current_max <= s25;

      elsif ( not x5 and x6 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         current_max <= s9;

      else
         y5 <= '1' ;
         y26 <= '1' ;
         y29 <= '1' ;
         y39 <= '1' ;
         current_max <= s9;

      end if;

   when s24 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y29 <= '1' ;
         current_max <= s26;

   when s25 =>
      if ( x18 ) = '1' then
         y9 <= '1' ;
         current_max <= s10;

      elsif ( not x18 and x26 and x25 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x18 and x26 and not x25 and x24 ) = '1' then
         y22 <= '1' ;
         current_max <= s1;

      elsif ( not x18 and x26 and not x25 and not x24 ) = '1' then
         current_max <= s1;

      else
         current_max <= s1;

      end if;

   when s26 =>
         y3 <= '1' ;
         y13 <= '1' ;
         y29 <= '1' ;
         current_max <= s9;

   end case;
   end proc_max;

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
	y41  <= '0' ;
	current_max <= s1;
      elsif (clk'event and clk ='1') then
        proc_max;
      end if;
   end process;
end ARC;
