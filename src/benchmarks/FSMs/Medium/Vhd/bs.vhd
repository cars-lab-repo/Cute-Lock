library ieee;
use ieee.std_logic_1164.all;

entity bs is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x16,
	x17,x18,x19 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y10,y11,y12,y13 : out std_logic );
end bs;

architecture ARC of bs is

   type states_bs is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17 );
   signal current_bs : states_bs;

begin
   process (clk , rst)
   procedure proc_bs is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;	y13  <= '0' ;


   case current_bs is
   when s1 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_bs <= s2;

      elsif ( x17 and x18 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( x17 and x18 and not x1 and not x2 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( x17 and not x18 and x19 and x1 and x10 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( x17 and not x18 and x19 and x1 and not x10 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( x17 and not x18 and x19 and not x1 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_bs <= s2;

      elsif ( x17 and not x18 and x19 and not x1 and not x6 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( x17 and not x18 and not x19 and x1 and x2 and x3 and x4 ) = '1' then
         current_bs <= s1;

      elsif ( x17 and not x18 and not x19 and x1 and x2 and x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( x17 and not x18 and not x19 and x1 and x2 and not x3 and x4 and x5 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( x17 and not x18 and not x19 and x1 and x2 and not x3 and x4 and not x5 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( x17 and not x18 and not x19 and x1 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( x17 and not x18 and not x19 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_bs <= s2;

      elsif ( x17 and not x18 and not x19 and not x1 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( not x17 and x18 and x19 and x1 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( not x17 and x18 and x19 and not x1 and x4 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( not x17 and x18 and x19 and not x1 and not x4 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( not x17 and x18 and not x19 and x1 and x2 and x3 and x4 ) = '1' then
         current_bs <= s1;

      elsif ( not x17 and x18 and not x19 and x1 and x2 and x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( not x17 and x18 and not x19 and x1 and x2 and not x3 and x4 and x5 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( not x17 and x18 and not x19 and x1 and x2 and not x3 and x4 and not x5 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( not x17 and x18 and not x19 and x1 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( not x17 and x18 and not x19 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_bs <= s2;

      elsif ( not x17 and x18 and not x19 and not x1 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         current_bs <= s2;

      end if;

   when s2 =>
      if ( x17 and x18 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s8;

      elsif ( x17 and x18 and not x4 and x1 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s9;

      elsif ( x17 and x18 and not x4 and x1 and not x3 ) = '1' then
         y8 <= '1' ;
         current_bs <= s10;

      elsif ( x17 and x18 and not x4 and not x1 ) = '1' then
         y6 <= '1' ;
         current_bs <= s11;

      elsif ( x17 and not x18 and x11 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_bs <= s2;

      elsif ( x17 and not x18 and not x11 and x16 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( x17 and not x18 and not x11 and not x16 ) = '1' then
         current_bs <= s1;

      elsif ( not x17 and x18 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( not x17 and not x18 and x19 and x1 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( not x17 and not x18 and x19 and x1 and not x2 and x3 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( not x17 and not x18 and x19 and x1 and not x2 and not x3 ) = '1' then
         current_bs <= s2;

      elsif ( not x17 and not x18 and x19 and not x1 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( not x17 and not x18 and not x19 and x1 and x2 and x3 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( not x17 and not x18 and not x19 and x1 and x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s9;

      elsif ( not x17 and not x18 and not x19 and x1 and x2 and not x3 and not x4 ) = '1' then
         y6 <= '1' ;
         current_bs <= s11;

      elsif ( not x17 and not x18 and not x19 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( not x17 and not x18 and not x19 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      else
         y4 <= '1' ;
         current_bs <= s4;

      end if;

   when s3 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( x17 and not x18 and x7 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_bs <= s12;

      elsif ( x17 and not x18 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_bs <= s13;

      elsif ( not x17 and x18 and x19 and x5 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( not x17 and x18 and x19 and not x5 ) = '1' then
         y6 <= '1' ;
         current_bs <= s11;

      elsif ( not x17 and x18 and not x19 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( not x17 and not x18 and x19 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( not x17 and not x18 and not x19 and x5 and x3 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( not x17 and not x18 and not x19 and x5 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s9;

      elsif ( not x17 and not x18 and not x19 and x5 and not x3 and not x4 ) = '1' then
         y6 <= '1' ;
         current_bs <= s11;

      else
         y2 <= '1' ;
         current_bs <= s7;

      end if;

   when s4 =>
      if ( x17 and x18 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_bs <= s14;

      elsif ( x17 and x18 and not x6 and x8 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s8;

      elsif ( x17 and x18 and not x6 and x8 and not x4 and x1 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s9;

      elsif ( x17 and x18 and not x6 and x8 and not x4 and x1 and not x3 ) = '1' then
         y8 <= '1' ;
         current_bs <= s10;

      elsif ( x17 and x18 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y6 <= '1' ;
         current_bs <= s11;

      elsif ( x17 and x18 and not x6 and not x8 ) = '1' then
         current_bs <= s1;

      elsif ( x17 and not x18 and x12 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_bs <= s2;

      elsif ( x17 and not x18 and not x12 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( not x17 and x18 and x19 and x9 ) = '1' then
         current_bs <= s1;

      elsif ( not x17 and x18 and x19 and not x9 ) = '1' then
         y13 <= '1' ;
         current_bs <= s15;

      elsif ( not x17 and x18 and not x19 and x3 and x4 ) = '1' then
         current_bs <= s4;

      elsif ( not x17 and x18 and not x19 and x3 and not x4 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( not x17 and x18 and not x19 and not x3 and x4 and x5 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( not x17 and x18 and not x19 and not x3 and x4 and not x5 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( not x17 and x18 and not x19 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( not x17 and not x18 and x19 and x2 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( not x17 and not x18 and x19 and not x2 ) = '1' then
         current_bs <= s1;

      else
         y5 <= '1' ;
         current_bs <= s6;

      end if;

   when s5 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( x17 and not x18 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( not x17 and x18 and x2 and x19 and x4 ) = '1' then
         y8 <= '1' ;
         current_bs <= s10;

      elsif ( not x17 and x18 and x2 and x19 and not x4 ) = '1' then
         y6 <= '1' ;
         current_bs <= s11;

      elsif ( not x17 and x18 and x2 and not x19 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( not x17 and x18 and not x2 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( not x17 and not x18 and x19 and x2 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( not x17 and not x18 and x19 and not x2 ) = '1' then
         current_bs <= s1;

      elsif ( not x17 and not x18 and not x19 and x1 and x3 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( not x17 and not x18 and not x19 and x1 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s9;

      elsif ( not x17 and not x18 and not x19 and x1 and not x3 and not x4 ) = '1' then
         y6 <= '1' ;
         current_bs <= s11;

      else
         y5 <= '1' ;
         current_bs <= s6;

      end if;

   when s6 =>
      if ( x17 and x18 and x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_bs <= s16;

      elsif ( x17 and x18 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_bs <= s13;

      elsif ( x17 and not x18 ) = '1' then
         current_bs <= s6;

      elsif ( not x17 and x18 and x19 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_bs <= s12;

      elsif ( not x17 and x18 and not x19 ) = '1' then
         current_bs <= s1;

      else
         y6 <= '1' ;
         current_bs <= s11;

      end if;

   when s7 =>
      if ( x18 and x17 ) = '1' then
         y13 <= '1' ;
         current_bs <= s15;

      elsif ( x18 and not x17 and x19 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( x18 and not x17 and not x19 ) = '1' then
         current_bs <= s1;

      elsif ( not x18 and x17 and x5 ) = '1' then
         current_bs <= s7;

      elsif ( not x18 and x17 and not x5 and x14 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( not x18 and x17 and not x5 and not x14 ) = '1' then
         y8 <= '1' ;
         current_bs <= s10;

      elsif ( not x18 and not x17 and x19 and x4 and x1 ) = '1' then
         current_bs <= s7;

      elsif ( not x18 and not x17 and x19 and x4 and not x1 ) = '1' then
         y6 <= '1' ;
         current_bs <= s11;

      elsif ( not x18 and not x17 and x19 and not x4 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      else
         current_bs <= s7;

      end if;

   when s8 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( x17 and not x18 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s8;

      elsif ( x17 and not x18 and not x2 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_bs <= s16;

      else
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      end if;

   when s9 =>
      if ( x18 and x17 and x5 ) = '1' then
         y7 <= '1' ;
         current_bs <= s17;

      elsif ( x18 and x17 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( x18 and x17 and not x5 and not x6 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( x18 and not x17 ) = '1' then
         current_bs <= s1;

      elsif ( not x18 and x17 and x9 and x10 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( not x18 and x17 and x9 and not x10 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( not x18 and x17 and not x9 and x6 ) = '1' then
         y7 <= '1' ;
         current_bs <= s17;

      elsif ( not x18 and x17 and not x9 and not x6 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( not x18 and not x17 and x6 and x7 and x2 and x3 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( not x18 and not x17 and x6 and x7 and x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s9;

      elsif ( not x18 and not x17 and x6 and x7 and x2 and not x3 and not x4 ) = '1' then
         y6 <= '1' ;
         current_bs <= s11;

      elsif ( not x18 and not x17 and x6 and x7 and not x2 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( not x18 and not x17 and x6 and not x7 and x8 ) = '1' then
         y7 <= '1' ;
         current_bs <= s17;

      elsif ( not x18 and not x17 and x6 and not x7 and not x8 and x2 and x3 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( not x18 and not x17 and x6 and not x7 and not x8 and x2 and not x3 and x4 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s9;

      elsif ( not x18 and not x17 and x6 and not x7 and not x8 and x2 and not x3 and not x4 ) = '1' then
         y6 <= '1' ;
         current_bs <= s11;

      elsif ( not x18 and not x17 and x6 and not x7 and not x8 and not x2 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( not x18 and not x17 and not x6 and x2 ) = '1' then
         y7 <= '1' ;
         current_bs <= s17;

      else
         current_bs <= s1;

      end if;

   when s10 =>
      if ( x17 and x11 and x8 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( x17 and x11 and not x8 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( x17 and not x11 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( not x17 and x18 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_bs <= s16;

      elsif ( not x17 and x18 and not x8 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_bs <= s13;

      else
         y6 <= '1' ;
         current_bs <= s11;

      end if;

   when s11 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( x17 and not x18 and x7 ) = '1' then
         y8 <= '1' ;
         current_bs <= s10;

      elsif ( x17 and not x18 and not x7 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( not x17 and x18 and x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( not x17 and x18 and not x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_bs <= s14;

      elsif ( not x17 and not x18 and x19 ) = '1' then
         current_bs <= s1;

      elsif ( not x17 and not x18 and not x19 and x1 and x2 ) = '1' then
         y7 <= '1' ;
         current_bs <= s17;

      elsif ( not x17 and not x18 and not x19 and x1 and not x2 ) = '1' then
         current_bs <= s1;

      else
         y8 <= '1' ;
         current_bs <= s10;

      end if;

   when s12 =>
      if ( x17 and x18 and x5 ) = '1' then
         y7 <= '1' ;
         current_bs <= s17;

      elsif ( x17 and x18 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( x17 and x18 and not x5 and not x6 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( x17 and not x18 and x14 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_bs <= s2;

      elsif ( x17 and not x18 and not x14 ) = '1' then
         current_bs <= s1;

      elsif ( not x17 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s8;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_bs <= s13;

      end if;

   when s13 =>
      if ( x17 and x18 and x6 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_bs <= s14;

      elsif ( x17 and x18 and x6 and not x9 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( x17 and x18 and not x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_bs <= s12;

      elsif ( x17 and not x18 and x10 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( x17 and not x18 and not x10 ) = '1' then
         y13 <= '1' ;
         current_bs <= s15;

      elsif ( not x17 and x8 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s8;

      end if;

   when s14 =>
      if ( x17 and x13 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( x17 and not x13 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( not x17 and x7 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s9;

      else
         y7 <= '1' ;
         current_bs <= s17;

      end if;

   when s15 =>
      if ( x17 and x18 and x5 ) = '1' then
         y7 <= '1' ;
         current_bs <= s17;

      elsif ( x17 and x18 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( x17 and x18 and not x5 and not x6 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( x17 and not x18 and x2 ) = '1' then
         current_bs <= s1;

      elsif ( x17 and not x18 and not x2 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_bs <= s12;

      elsif ( not x17 and x9 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s9;

      end if;

   when s16 =>
      if ( x17 and x18 and x1 ) = '1' then
         y1 <= '1' ;
         y4 <= '1' ;
         current_bs <= s5;

      elsif ( x17 and x18 and not x1 and x3 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( x17 and x18 and not x1 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      elsif ( x17 and not x18 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_bs <= s8;

      elsif ( x17 and not x18 and not x6 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_bs <= s13;

      else
         y2 <= '1' ;
         current_bs <= s7;

      end if;

   when s17 =>
      if ( x18 and x17 and x5 ) = '1' then
         y7 <= '1' ;
         current_bs <= s17;

      elsif ( x18 and x17 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( x18 and x17 and not x5 and not x6 ) = '1' then
         y5 <= '1' ;
         current_bs <= s6;

      elsif ( x18 and not x17 and x1 ) = '1' then
         current_bs <= s1;

      elsif ( x18 and not x17 and not x1 ) = '1' then
         y4 <= '1' ;
         current_bs <= s4;

      elsif ( not x18 and x17 and x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         current_bs <= s3;

      elsif ( not x18 and x17 and not x3 ) = '1' then
         y2 <= '1' ;
         current_bs <= s7;

      else
         current_bs <= s1;

      end if;

   end case;
   end proc_bs;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;	y13  <= '0' ;

	current_bs <= s1;
      elsif (clk'event and clk ='1') then
        proc_bs;
      end if;
   end process;
end ARC;
