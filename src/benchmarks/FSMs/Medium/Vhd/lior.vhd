library ieee;
use ieee.std_logic_1164.all;

entity lior is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31 : out std_logic );
end lior;

architecture ARC of lior is

   type states_lior is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31 );
   signal current_lior : states_lior;

begin
   process (clk , rst)
   procedure proc_lior is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;
	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;

   case current_lior is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_lior <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_lior <= s3;

      else
         current_lior <= s1;

      end if;

   when s2 =>
         y9 <= '1' ;
         current_lior <= s4;

   when s3 =>
         y2 <= '1' ;
         current_lior <= s5;

   when s4 =>
         y10 <= '1' ;
         current_lior <= s6;

   when s5 =>
         y3 <= '1' ;
         y4 <= '1' ;
         current_lior <= s7;

   when s6 =>
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_lior <= s8;

   when s7 =>
      if ( x3 and x24 and x23 and x7 ) = '1' then
         y15 <= '1' ;
         current_lior <= s9;

      elsif ( x3 and x24 and x23 and not x7 ) = '1' then
         y16 <= '1' ;
         current_lior <= s10;

      elsif ( x3 and x24 and not x23 and x5 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x3 and x24 and not x23 and x5 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x3 and x24 and not x23 and x5 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x3 and x24 and not x23 and x5 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x3 and x24 and not x23 and not x5 ) = '1' then
         y14 <= '1' ;
         current_lior <= s12;

      elsif ( x3 and not x24 and x5 and x11 and x12 and x23 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( x3 and not x24 and x5 and x11 and x12 and not x23 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( x3 and not x24 and x5 and x11 and not x12 and x13 and x23 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( x3 and not x24 and x5 and x11 and not x12 and x13 and not x23 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( x3 and not x24 and x5 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      elsif ( x3 and not x24 and x5 and not x11 ) = '1' then
         current_lior <= s1;

      elsif ( x3 and not x24 and not x5 ) = '1' then
         y14 <= '1' ;
         current_lior <= s12;

      else
         y5 <= '1' ;
         current_lior <= s14;

      end if;

   when s8 =>
      if ( x24 ) = '1' then
         current_lior <= s1;

      elsif ( not x24 and x23 and x10 ) = '1' then
         y25 <= '1' ;
         current_lior <= s15;

      elsif ( not x24 and x23 and not x10 ) = '1' then
         y23 <= '1' ;
         current_lior <= s16;

      else
         current_lior <= s1;

      end if;

   when s9 =>
      if ( x24 and x23 and x10 and x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and x23 and x10 and not x11 and x12 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and x23 and x10 and not x11 and not x12 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and x23 and not x10 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x7 and x9 and x10 and x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s18;

      elsif ( x24 and not x23 and x7 and x9 and x10 and not x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and not x23 and x7 and x9 and not x10 and x13 and x14 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and x7 and x9 and not x10 and x13 and not x14 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x7 and x9 and not x10 and x13 and not x14 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x7 and x9 and not x10 and x13 and not x14 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x7 and x9 and not x10 and x13 and not x14 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x7 and x9 and not x10 and not x13 and x15 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and x7 and x9 and not x10 and not x13 and not x15 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x7 and x9 and not x10 and not x13 and not x15 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x7 and x9 and not x10 and not x13 and not x15 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x7 and x9 and not x10 and not x13 and not x15 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x7 and not x9 and x16 and x17 and x18 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and x7 and not x9 and x16 and x17 and not x18 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x7 and not x9 and x16 and x17 and not x18 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x7 and not x9 and x16 and x17 and not x18 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x7 and not x9 and x16 and x17 and not x18 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x7 and not x9 and x16 and not x17 and x19 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and x7 and not x9 and x16 and not x17 and not x19 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x7 and not x9 and x16 and not x17 and not x19 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x7 and not x9 and x16 and not x17 and not x19 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x7 and not x9 and x16 and not x17 and not x19 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x7 and not x9 and not x16 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and not x7 ) = '1' then
         y16 <= '1' ;
         current_lior <= s10;

      elsif ( not x24 and x7 and x23 ) = '1' then
         y31 <= '1' ;
         current_lior <= s20;

      elsif ( not x24 and x7 and not x23 and x8 and x9 and x10 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x24 and x7 and not x23 and x8 and x9 and not x10 ) = '1' then
         y22 <= '1' ;
         current_lior <= s21;

      elsif ( not x24 and x7 and not x23 and x8 and not x9 and x10 ) = '1' then
         y21 <= '1' ;
         current_lior <= s22;

      elsif ( not x24 and x7 and not x23 and x8 and not x9 and not x10 ) = '1' then
         y20 <= '1' ;
         current_lior <= s23;

      elsif ( not x24 and x7 and not x23 and not x8 and x9 and x10 ) = '1' then
         y19 <= '1' ;
         current_lior <= s18;

      elsif ( not x24 and x7 and not x23 and not x8 and x9 and not x10 ) = '1' then
         y18 <= '1' ;
         current_lior <= s24;

      elsif ( not x24 and x7 and not x23 and not x8 and not x9 ) = '1' then
         y17 <= '1' ;
         current_lior <= s24;

      else
         y16 <= '1' ;
         current_lior <= s10;

      end if;

   when s10 =>
      if ( x24 and x23 and x10 and x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and x23 and x10 and not x11 and x12 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and x23 and x10 and not x11 and not x12 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and x23 and not x10 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x9 and x10 and x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s18;

      elsif ( x24 and not x23 and x9 and x10 and not x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and not x23 and x9 and not x10 and x13 and x14 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and x9 and not x10 and x13 and not x14 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x9 and not x10 and x13 and not x14 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x9 and not x10 and x13 and not x14 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x9 and not x10 and x13 and not x14 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x9 and not x10 and not x13 and x15 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and x9 and not x10 and not x13 and not x15 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x9 and not x10 and not x13 and not x15 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x9 and not x10 and not x13 and not x15 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x9 and not x10 and not x13 and not x15 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x9 and x16 and x17 and x18 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and not x9 and x16 and x17 and not x18 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x9 and x16 and x17 and not x18 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x9 and x16 and x17 and not x18 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x9 and x16 and x17 and not x18 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x9 and x16 and not x17 and x19 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and not x9 and x16 and not x17 and not x19 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x9 and x16 and not x17 and not x19 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x9 and x16 and not x17 and not x19 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x9 and x16 and not x17 and not x19 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x9 and not x16 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( not x24 and x23 ) = '1' then
         y31 <= '1' ;
         current_lior <= s20;

      elsif ( not x24 and not x23 and x8 and x9 and x10 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x24 and not x23 and x8 and x9 and not x10 ) = '1' then
         y22 <= '1' ;
         current_lior <= s21;

      elsif ( not x24 and not x23 and x8 and not x9 and x10 ) = '1' then
         y21 <= '1' ;
         current_lior <= s22;

      elsif ( not x24 and not x23 and x8 and not x9 and not x10 ) = '1' then
         y20 <= '1' ;
         current_lior <= s23;

      elsif ( not x24 and not x23 and not x8 and x9 and x10 ) = '1' then
         y19 <= '1' ;
         current_lior <= s18;

      elsif ( not x24 and not x23 and not x8 and x9 and not x10 ) = '1' then
         y18 <= '1' ;
         current_lior <= s24;

      else
         y17 <= '1' ;
         current_lior <= s24;

      end if;

   when s11 =>
      if ( x23 and x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( x23 and x11 and not x12 and x13 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( x23 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      elsif ( x23 and not x11 ) = '1' then
         current_lior <= s1;

      elsif ( not x23 and x24 ) = '1' then
         current_lior <= s1;

      elsif ( not x23 and not x24 and x11 and x12 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x23 and not x24 and x11 and not x12 and x13 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x23 and not x24 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      else
         current_lior <= s1;

      end if;

   when s12 =>
      if ( x24 and x23 and x10 and x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and x23 and x10 and not x11 and x12 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and x23 and x10 and not x11 and not x12 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and x23 and not x10 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x6 ) = '1' then
         y15 <= '1' ;
         current_lior <= s9;

      elsif ( x24 and not x23 and not x6 and x7 and x9 and x10 and x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s18;

      elsif ( x24 and not x23 and not x6 and x7 and x9 and x10 and not x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and not x23 and not x6 and x7 and x9 and not x10 and x13 and x14 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and not x6 and x7 and x9 and not x10 and x13 and not x14 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x6 and x7 and x9 and not x10 and x13 and not x14 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x6 and x7 and x9 and not x10 and x13 and not x14 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x6 and x7 and x9 and not x10 and x13 and not x14 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x6 and x7 and x9 and not x10 and not x13 and x15 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and not x6 and x7 and x9 and not x10 and not x13 and not x15 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x6 and x7 and x9 and not x10 and not x13 and not x15 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x6 and x7 and x9 and not x10 and not x13 and not x15 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x6 and x7 and x9 and not x10 and not x13 and not x15 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x6 and x7 and not x9 and x16 and x17 and x18 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and not x6 and x7 and not x9 and x16 and x17 and not x18 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x6 and x7 and not x9 and x16 and x17 and not x18 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x6 and x7 and not x9 and x16 and x17 and not x18 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x6 and x7 and not x9 and x16 and x17 and not x18 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x6 and x7 and not x9 and x16 and not x17 and x19 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and not x6 and x7 and not x9 and x16 and not x17 and not x19 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x6 and x7 and not x9 and x16 and not x17 and not x19 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x6 and x7 and not x9 and x16 and not x17 and not x19 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x6 and x7 and not x9 and x16 and not x17 and not x19 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x6 and x7 and not x9 and not x16 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and not x6 and not x7 ) = '1' then
         y16 <= '1' ;
         current_lior <= s10;

      elsif ( not x24 and x6 ) = '1' then
         y15 <= '1' ;
         current_lior <= s9;

      elsif ( not x24 and not x6 and x7 and x23 ) = '1' then
         y31 <= '1' ;
         current_lior <= s20;

      elsif ( not x24 and not x6 and x7 and not x23 and x8 and x9 and x10 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x24 and not x6 and x7 and not x23 and x8 and x9 and not x10 ) = '1' then
         y22 <= '1' ;
         current_lior <= s21;

      elsif ( not x24 and not x6 and x7 and not x23 and x8 and not x9 and x10 ) = '1' then
         y21 <= '1' ;
         current_lior <= s22;

      elsif ( not x24 and not x6 and x7 and not x23 and x8 and not x9 and not x10 ) = '1' then
         y20 <= '1' ;
         current_lior <= s23;

      elsif ( not x24 and not x6 and x7 and not x23 and not x8 and x9 and x10 ) = '1' then
         y19 <= '1' ;
         current_lior <= s18;

      elsif ( not x24 and not x6 and x7 and not x23 and not x8 and x9 and not x10 ) = '1' then
         y18 <= '1' ;
         current_lior <= s24;

      elsif ( not x24 and not x6 and x7 and not x23 and not x8 and not x9 ) = '1' then
         y17 <= '1' ;
         current_lior <= s24;

      else
         y16 <= '1' ;
         current_lior <= s10;

      end if;

   when s13 =>
      if ( x23 and x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( x23 and x11 and not x12 and x13 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( x23 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      elsif ( x23 and not x11 ) = '1' then
         current_lior <= s1;

      else
         current_lior <= s1;

      end if;

   when s14 =>
      if ( x24 and x4 ) = '1' then
         y6 <= '1' ;
         current_lior <= s3;

      elsif ( x24 and not x4 and x23 and x5 and x6 and x10 and x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and not x4 and x23 and x5 and x6 and x10 and not x11 and x12 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and not x4 and x23 and x5 and x6 and x10 and not x11 and not x12 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x4 and x23 and x5 and x6 and not x10 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x4 and x23 and x5 and not x6 and x7 ) = '1' then
         y17 <= '1' ;
         current_lior <= s25;

      elsif ( x24 and not x4 and x23 and x5 and not x6 and not x7 ) = '1' then
         y18 <= '1' ;
         current_lior <= s26;

      elsif ( x24 and not x4 and x23 and not x5 and x6 and x7 and x8 ) = '1' then
         y14 <= '1' ;
         current_lior <= s12;

      elsif ( x24 and not x4 and x23 and not x5 and x6 and x7 and not x8 and x10 and x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and not x4 and x23 and not x5 and x6 and x7 and not x8 and x10 and not x11 and x12 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and not x4 and x23 and not x5 and x6 and x7 and not x8 and x10 and not x11 and not x12 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x4 and x23 and not x5 and x6 and x7 and not x8 and not x10 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x4 and x23 and not x5 and x6 and not x7 and x9 ) = '1' then
         y14 <= '1' ;
         current_lior <= s12;

      elsif ( x24 and not x4 and x23 and not x5 and x6 and not x7 and not x9 and x10 and x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and not x4 and x23 and not x5 and x6 and not x7 and not x9 and x10 and not x11 and x12 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and not x4 and x23 and not x5 and x6 and not x7 and not x9 and x10 and not x11 and not x12 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x4 and x23 and not x5 and x6 and not x7 and not x9 and not x10 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x4 and x23 and not x5 and not x6 and x7 ) = '1' then
         y15 <= '1' ;
         current_lior <= s9;

      elsif ( x24 and not x4 and x23 and not x5 and not x6 and not x7 ) = '1' then
         y16 <= '1' ;
         current_lior <= s10;

      elsif ( x24 and not x4 and not x23 and x8 ) = '1' then
         y17 <= '1' ;
         current_lior <= s25;

      elsif ( x24 and not x4 and not x23 and not x8 ) = '1' then
         y18 <= '1' ;
         current_lior <= s26;

      elsif ( not x24 and x23 and x4 and x8 and x9 and x10 ) = '1' then
         y18 <= '1' ;
         current_lior <= s26;

      elsif ( not x24 and x23 and x4 and x8 and x9 and not x10 ) = '1' then
         y17 <= '1' ;
         current_lior <= s25;

      elsif ( not x24 and x23 and x4 and x8 and not x9 and x10 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( not x24 and x23 and x4 and x8 and not x9 and not x10 ) = '1' then
         y20 <= '1' ;
         current_lior <= s23;

      elsif ( not x24 and x23 and x4 and not x8 and x9 and x10 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x24 and x23 and x4 and not x8 and x9 and not x10 ) = '1' then
         y21 <= '1' ;
         current_lior <= s22;

      elsif ( not x24 and x23 and x4 and not x8 and not x9 and x10 ) = '1' then
         y25 <= '1' ;
         current_lior <= s15;

      elsif ( not x24 and x23 and x4 and not x8 and not x9 and not x10 ) = '1' then
         y23 <= '1' ;
         current_lior <= s16;

      elsif ( not x24 and x23 and not x4 ) = '1' then
         y6 <= '1' ;
         current_lior <= s3;

      elsif ( not x24 and not x23 and x4 ) = '1' then
         y6 <= '1' ;
         current_lior <= s3;

      elsif ( not x24 and not x23 and not x4 and x8 and x9 and x10 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x24 and not x23 and not x4 and x8 and x9 and not x10 ) = '1' then
         y22 <= '1' ;
         current_lior <= s21;

      elsif ( not x24 and not x23 and not x4 and x8 and not x9 and x10 ) = '1' then
         y21 <= '1' ;
         current_lior <= s22;

      elsif ( not x24 and not x23 and not x4 and x8 and not x9 and not x10 ) = '1' then
         y20 <= '1' ;
         current_lior <= s23;

      elsif ( not x24 and not x23 and not x4 and not x8 and x9 and x10 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( not x24 and not x23 and not x4 and not x8 and x9 and not x10 ) = '1' then
         y18 <= '1' ;
         current_lior <= s26;

      else
         y17 <= '1' ;
         current_lior <= s25;

      end if;

   when s15 =>
         y26 <= '1' ;
         current_lior <= s27;

   when s16 =>
         y24 <= '1' ;
         current_lior <= s13;

   when s17 =>
      if ( x24 and x23 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 ) = '1' then
         y20 <= '1' ;
         current_lior <= s23;

      elsif ( not x24 and x11 and x12 and x23 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( not x24 and x11 and x12 and not x23 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x24 and x11 and not x12 and x13 and x23 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( not x24 and x11 and not x12 and x13 and not x23 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x24 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      else
         current_lior <= s1;

      end if;

   when s18 =>
      if ( x24 ) = '1' then
         y21 <= '1' ;
         current_lior <= s22;

      elsif ( not x24 and x11 and x12 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x24 and x11 and not x12 and x13 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x24 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      else
         current_lior <= s1;

      end if;

   when s19 =>
      if ( x23 ) = '1' then
         y29 <= '1' ;
         current_lior <= s28;

      elsif ( not x23 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x23 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x23 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      else
         current_lior <= s1;

      end if;

   when s20 =>
      if ( x8 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( not x8 and x9 and x10 ) = '1' then
         y27 <= '1' ;
         current_lior <= s27;

      elsif ( not x8 and x9 and not x10 ) = '1' then
         y28 <= '1' ;
         current_lior <= s27;

      elsif ( not x8 and not x9 and x10 ) = '1' then
         y25 <= '1' ;
         current_lior <= s15;

      else
         y23 <= '1' ;
         current_lior <= s16;

      end if;

   when s21 =>
      if ( x23 and x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( x23 and x11 and not x12 and x13 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( x23 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      elsif ( x23 and not x11 ) = '1' then
         current_lior <= s1;

      elsif ( not x23 and x24 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x23 and x24 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x23 and x24 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( not x23 and x24 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( not x23 and not x24 and x11 and x12 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x23 and not x24 and x11 and not x12 and x13 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x23 and not x24 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      else
         current_lior <= s1;

      end if;

   when s22 =>
      if ( x23 and x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( x23 and x11 and not x12 and x13 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( x23 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      elsif ( x23 and not x11 ) = '1' then
         current_lior <= s1;

      elsif ( not x23 and x24 and x12 ) = '1' then
         y22 <= '1' ;
         current_lior <= s21;

      elsif ( not x23 and x24 and not x12 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x23 and x24 and not x12 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x23 and x24 and not x12 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( not x23 and x24 and not x12 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( not x23 and not x24 and x11 and x12 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x23 and not x24 and x11 and not x12 and x13 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x23 and not x24 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      else
         current_lior <= s1;

      end if;

   when s23 =>
      if ( x23 ) = '1' then
         y21 <= '1' ;
         current_lior <= s29;

      elsif ( not x23 and x24 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x23 and x24 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( not x23 and x24 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( not x23 and x24 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( not x23 and not x24 and x11 and x12 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x23 and not x24 and x11 and not x12 and x13 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x23 and not x24 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      else
         current_lior <= s1;

      end if;

   when s24 =>
      if ( x11 and x12 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( x11 and not x12 and x13 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      else
         current_lior <= s1;

      end if;

   when s25 =>
      if ( x24 and x23 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( not x24 and x11 and x12 and x23 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( not x24 and x11 and x12 and not x23 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x24 and x11 and not x12 and x13 and x23 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( not x24 and x11 and not x12 and x13 and not x23 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x24 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      else
         current_lior <= s1;

      end if;

   when s26 =>
      if ( x24 and x23 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x9 and x10 and x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s18;

      elsif ( x24 and not x23 and x9 and x10 and not x11 ) = '1' then
         y19 <= '1' ;
         current_lior <= s17;

      elsif ( x24 and not x23 and x9 and not x10 and x13 and x14 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and x9 and not x10 and x13 and not x14 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x9 and not x10 and x13 and not x14 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x9 and not x10 and x13 and not x14 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x9 and not x10 and x13 and not x14 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x9 and not x10 and not x13 and x15 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and x9 and not x10 and not x13 and not x15 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x9 and not x10 and not x13 and not x15 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and x9 and not x10 and not x13 and not x15 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and x9 and not x10 and not x13 and not x15 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x9 and x16 and x17 and x18 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and not x9 and x16 and x17 and not x18 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x9 and x16 and x17 and not x18 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x9 and x16 and x17 and not x18 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x9 and x16 and x17 and not x18 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x9 and x16 and not x17 and x19 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( x24 and not x23 and not x9 and x16 and not x17 and not x19 and x20 and x21 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x9 and x16 and not x17 and not x19 and x20 and not x21 and x22 ) = '1' then
         y23 <= '1' ;
         current_lior <= s11;

      elsif ( x24 and not x23 and not x9 and x16 and not x17 and not x19 and x20 and not x21 and not x22 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x9 and x16 and not x17 and not x19 and not x20 ) = '1' then
         current_lior <= s1;

      elsif ( x24 and not x23 and not x9 and not x16 ) = '1' then
         y20 <= '1' ;
         current_lior <= s19;

      elsif ( not x24 and x11 and x12 and x23 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( not x24 and x11 and x12 and not x23 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x24 and x11 and not x12 and x13 and x23 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( not x24 and x11 and not x12 and x13 and not x23 ) = '1' then
         y24 <= '1' ;
         current_lior <= s13;

      elsif ( not x24 and x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      else
         current_lior <= s1;

      end if;

   when s27 =>
      if ( x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( x11 and not x12 and x13 ) = '1' then
         y31 <= '1' ;
         current_lior <= s1;

      elsif ( x11 and not x12 and not x13 ) = '1' then
         current_lior <= s1;

      else
         current_lior <= s1;

      end if;

   when s28 =>
         y27 <= '1' ;
         current_lior <= s30;

   when s29 =>
         y22 <= '1' ;
         current_lior <= s21;

   when s30 =>
         y29 <= '1' ;
         current_lior <= s31;

   when s31 =>
         y30 <= '1' ;
         current_lior <= s27;

   end case;
   end proc_lior;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;
	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;
	current_lior <= s1;
      elsif (clk'event and clk ='1') then
        proc_lior;
      end if;
   end process;
end ARC;
