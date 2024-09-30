library ieee;
use ieee.std_logic_1164.all;

entity big is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28 : out std_logic );
end big;

architecture ARC of big is

   type states_big is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17 );
   signal current_big : states_big;

begin
   process (clk , rst)
   procedure proc_big is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;


   case current_big is
   when s1 =>
      if ( x17 and x18 and x1 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_big <= s2;

      elsif ( x17 and x18 and not x1 and x2 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( x17 and x18 and not x1 and not x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( x17 and not x18 and x15 and x1 and x10 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( x17 and not x18 and x15 and x1 and not x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( x17 and not x18 and x15 and not x1 and x6 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_big <= s2;

      elsif ( x17 and not x18 and x15 and not x1 and not x6 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( x17 and not x18 and not x15 and x1 and x2 and x3 and x4 ) = '1' then
         current_big <= s1;

      elsif ( x17 and not x18 and not x15 and x1 and x2 and x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( x17 and not x18 and not x15 and x1 and x2 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( x17 and not x18 and not x15 and x1 and x2 and not x3 and x4 and not x5 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( x17 and not x18 and not x15 and x1 and x2 and not x3 and not x4 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( x17 and not x18 and not x15 and x1 and not x2 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_big <= s2;

      elsif ( x17 and not x18 and not x15 and not x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( not x17 and x18 and x15 and x1 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( not x17 and x18 and x15 and not x1 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( not x17 and x18 and x15 and not x1 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( not x17 and x18 and not x15 and x1 and x2 and x3 and x4 ) = '1' then
         current_big <= s1;

      elsif ( not x17 and x18 and not x15 and x1 and x2 and x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( not x17 and x18 and not x15 and x1 and x2 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( not x17 and x18 and not x15 and x1 and x2 and not x3 and x4 and not x5 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( not x17 and x18 and not x15 and x1 and x2 and not x3 and not x4 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( not x17 and x18 and not x15 and x1 and not x2 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_big <= s2;

      elsif ( not x17 and x18 and not x15 and not x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_big <= s2;

      end if;

   when s2 =>
      if ( x17 and x18 and x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_big <= s8;

      elsif ( x17 and x18 and not x4 and x1 and x3 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s9;

      elsif ( x17 and x18 and not x4 and x1 and not x3 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_big <= s10;

      elsif ( x17 and x18 and not x4 and not x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_big <= s11;

      elsif ( x17 and not x18 and x11 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_big <= s2;

      elsif ( x17 and not x18 and not x11 and x16 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( x17 and not x18 and not x11 and not x16 ) = '1' then
         current_big <= s1;

      elsif ( not x17 and x18 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( not x17 and not x18 and x15 and x1 and x2 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( not x17 and not x18 and x15 and x1 and not x2 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( not x17 and not x18 and x15 and x1 and not x2 and not x3 ) = '1' then
         current_big <= s2;

      elsif ( not x17 and not x18 and x15 and not x1 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( not x17 and not x18 and not x15 and x1 and x2 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( not x17 and not x18 and not x15 and x1 and x2 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s9;

      elsif ( not x17 and not x18 and not x15 and x1 and x2 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_big <= s11;

      elsif ( not x17 and not x18 and not x15 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( not x17 and not x18 and not x15 and not x1 and x2 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      end if;

   when s3 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( x17 and not x18 and x7 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_big <= s12;

      elsif ( x17 and not x18 and not x7 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_big <= s13;

      elsif ( not x17 and x15 and x18 and x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( not x17 and x15 and x18 and not x5 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_big <= s11;

      elsif ( not x17 and x15 and not x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( not x17 and not x15 and x5 and x18 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( not x17 and not x15 and x5 and not x18 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( not x17 and not x15 and x5 and not x18 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s9;

      elsif ( not x17 and not x15 and x5 and not x18 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_big <= s11;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      end if;

   when s4 =>
      if ( x17 and x18 and x6 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s14;

      elsif ( x17 and x18 and not x6 and x8 and x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_big <= s8;

      elsif ( x17 and x18 and not x6 and x8 and not x4 and x1 and x3 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s9;

      elsif ( x17 and x18 and not x6 and x8 and not x4 and x1 and not x3 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_big <= s10;

      elsif ( x17 and x18 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_big <= s11;

      elsif ( x17 and x18 and not x6 and not x8 ) = '1' then
         current_big <= s1;

      elsif ( x17 and not x18 and x12 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_big <= s2;

      elsif ( x17 and not x18 and not x12 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( not x17 and x18 and x15 and x9 ) = '1' then
         current_big <= s1;

      elsif ( not x17 and x18 and x15 and not x9 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_big <= s15;

      elsif ( not x17 and x18 and not x15 and x3 and x4 ) = '1' then
         current_big <= s4;

      elsif ( not x17 and x18 and not x15 and x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( not x17 and x18 and not x15 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( not x17 and x18 and not x15 and not x3 and x4 and not x5 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( not x17 and x18 and not x15 and not x3 and not x4 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( not x17 and not x18 and x15 and x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( not x17 and not x18 and x15 and not x2 ) = '1' then
         current_big <= s1;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      end if;

   when s5 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( x17 and not x18 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( not x17 and x15 and x18 and x2 and x4 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_big <= s10;

      elsif ( not x17 and x15 and x18 and x2 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_big <= s11;

      elsif ( not x17 and x15 and x18 and not x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( not x17 and x15 and not x18 and x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( not x17 and x15 and not x18 and not x2 ) = '1' then
         current_big <= s1;

      elsif ( not x17 and not x15 and x1 and x18 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( not x17 and not x15 and x1 and not x18 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( not x17 and not x15 and x1 and not x18 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s9;

      elsif ( not x17 and not x15 and x1 and not x18 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_big <= s11;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      end if;

   when s6 =>
      if ( x18 and x17 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_big <= s16;

      elsif ( x18 and x17 and not x7 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_big <= s13;

      elsif ( x18 and not x17 and x15 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_big <= s12;

      elsif ( x18 and not x17 and not x15 ) = '1' then
         current_big <= s1;

      elsif ( not x18 and x17 ) = '1' then
         current_big <= s6;

      else
         y11 <= '1' ;
         y23 <= '1' ;
         current_big <= s11;

      end if;

   when s7 =>
      if ( x17 and x18 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_big <= s15;

      elsif ( x17 and not x18 and x5 ) = '1' then
         current_big <= s7;

      elsif ( x17 and not x18 and not x5 and x14 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( x17 and not x18 and not x5 and not x14 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_big <= s10;

      elsif ( not x17 and x18 and x15 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( not x17 and x18 and not x15 ) = '1' then
         current_big <= s1;

      elsif ( not x17 and not x18 and x15 and x4 and x1 ) = '1' then
         current_big <= s7;

      elsif ( not x17 and not x18 and x15 and x4 and not x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_big <= s11;

      elsif ( not x17 and not x18 and x15 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      else
         current_big <= s7;

      end if;

   when s8 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( x17 and not x18 and x2 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_big <= s8;

      elsif ( x17 and not x18 and not x2 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_big <= s16;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      end if;

   when s9 =>
      if ( x18 and x17 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_big <= s17;

      elsif ( x18 and x17 and not x5 and x6 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( x18 and x17 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( x18 and not x17 ) = '1' then
         current_big <= s1;

      elsif ( not x18 and x17 and x9 and x10 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( not x18 and x17 and x9 and not x10 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( not x18 and x17 and not x9 and x6 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_big <= s17;

      elsif ( not x18 and x17 and not x9 and not x6 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( not x18 and not x17 and x6 and x7 and x2 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( not x18 and not x17 and x6 and x7 and x2 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s9;

      elsif ( not x18 and not x17 and x6 and x7 and x2 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_big <= s11;

      elsif ( not x18 and not x17 and x6 and x7 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( not x18 and not x17 and x6 and not x7 and x8 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_big <= s17;

      elsif ( not x18 and not x17 and x6 and not x7 and not x8 and x2 and x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( not x18 and not x17 and x6 and not x7 and not x8 and x2 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s9;

      elsif ( not x18 and not x17 and x6 and not x7 and not x8 and x2 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_big <= s11;

      elsif ( not x18 and not x17 and x6 and not x7 and not x8 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( not x18 and not x17 and not x6 and x2 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_big <= s17;

      else
         current_big <= s1;

      end if;

   when s10 =>
      if ( x17 and x11 and x8 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( x17 and x11 and not x8 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( x17 and not x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( not x17 and x18 and x8 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_big <= s16;

      elsif ( not x17 and x18 and not x8 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_big <= s13;

      else
         y11 <= '1' ;
         y23 <= '1' ;
         current_big <= s11;

      end if;

   when s11 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( x17 and not x18 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_big <= s10;

      elsif ( x17 and not x18 and not x7 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( not x17 and x18 and x3 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( not x17 and x18 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s14;

      elsif ( not x17 and not x18 and x15 ) = '1' then
         current_big <= s1;

      elsif ( not x17 and not x18 and not x15 and x1 and x2 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_big <= s17;

      elsif ( not x17 and not x18 and not x15 and x1 and not x2 ) = '1' then
         current_big <= s1;

      else
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_big <= s10;

      end if;

   when s12 =>
      if ( x17 and x18 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_big <= s17;

      elsif ( x17 and x18 and not x5 and x6 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( x17 and x18 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( x17 and not x18 and x14 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_big <= s2;

      elsif ( x17 and not x18 and not x14 ) = '1' then
         current_big <= s1;

      elsif ( not x17 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_big <= s8;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_big <= s13;

      end if;

   when s13 =>
      if ( x17 and x18 and x6 and x9 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s14;

      elsif ( x17 and x18 and x6 and not x9 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( x17 and x18 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_big <= s12;

      elsif ( x17 and not x18 and x10 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( x17 and not x18 and not x10 ) = '1' then
         y11 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_big <= s15;

      elsif ( not x17 and x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_big <= s8;

      end if;

   when s14 =>
      if ( x17 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( x17 and not x13 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( not x17 and x7 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s9;

      else
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_big <= s17;

      end if;

   when s15 =>
      if ( x17 and x18 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_big <= s17;

      elsif ( x17 and x18 and not x5 and x6 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( x17 and x18 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( x17 and not x18 and x2 ) = '1' then
         current_big <= s1;

      elsif ( x17 and not x18 and not x2 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         y28 <= '1' ;
         current_big <= s12;

      elsif ( not x17 and x9 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s9;

      end if;

   when s16 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_big <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      elsif ( x17 and not x18 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_big <= s8;

      elsif ( x17 and not x18 and not x6 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_big <= s13;

      else
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      end if;

   when s17 =>
      if ( x18 and x17 and x5 ) = '1' then
         y14 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_big <= s17;

      elsif ( x18 and x17 and not x5 and x6 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( x18 and x17 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_big <= s6;

      elsif ( x18 and not x17 and x1 ) = '1' then
         current_big <= s1;

      elsif ( x18 and not x17 and not x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_big <= s4;

      elsif ( not x18 and x17 and x3 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_big <= s3;

      elsif ( not x18 and x17 and not x3 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         y28 <= '1' ;
         current_big <= s7;

      else
         current_big <= s1;

      end if;

   end case;
   end proc_big;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;

	current_big <= s1;
      elsif (clk'event and clk ='1') then
        proc_big;
      end if;
   end process;
end ARC;
