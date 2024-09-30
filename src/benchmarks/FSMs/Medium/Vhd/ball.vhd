library ieee;
use ieee.std_logic_1164.all;

entity ball is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
	x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13 : out std_logic );
end ball;

architecture ARC of ball is

   type states_ball is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24 );
   signal current_ball : states_ball;

begin
   process (clk , rst)
   procedure proc_ball is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;

   case current_ball is
   when s1 =>
      if ( x14 and x10 and x39 and x36 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and x10 and x39 and not x36 and x44 and x41 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      elsif ( x14 and x10 and x39 and not x36 and x44 and not x41 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( x14 and x10 and x39 and not x36 and not x44 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_ball <= s4;

      elsif ( x14 and x10 and not x39 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_ball <= s5;

      elsif ( x14 and not x10 and x11 and x34 and x8 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      elsif ( x14 and not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      elsif ( x14 and not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      elsif ( x14 and not x10 and x11 and not x34 and x32 and not x7 and x26 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      elsif ( x14 and not x10 and x11 and not x34 and x32 and not x7 and x26 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and not x10 and x11 and not x34 and x32 and not x7 and not x26 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_ball <= s4;

      elsif ( x14 and not x10 and x11 and not x34 and not x32 ) = '1' then
         y1 <= '1' ;
         current_ball <= s8;

      elsif ( x14 and not x10 and not x11 and x12 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_ball <= s4;

      elsif ( x14 and not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( x14 and not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( x14 and not x10 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_ball <= s11;

      elsif ( x14 and not x10 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and not x10 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and not x10 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_ball <= s4;

      elsif ( x14 and not x10 and not x11 and not x12 and not x13 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and x10 and x11 and x1 and x2 and x3 and x4 ) = '1' then
         current_ball <= s1;

      elsif ( not x14 and x10 and x11 and x1 and x2 and x3 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( not x14 and x10 and x11 and x1 and x2 and not x3 and x4 and x5 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and x10 and x11 and x1 and x2 and not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         current_ball <= s8;

      elsif ( not x14 and x10 and x11 and x1 and x2 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( not x14 and x10 and x11 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_ball <= s4;

      elsif ( not x14 and x10 and x11 and not x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( not x14 and x10 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_ball <= s4;

      elsif ( not x14 and x10 and not x11 and not x12 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_ball <= s11;

      elsif ( not x14 and not x10 and x11 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_ball <= s12;

      elsif ( not x14 and not x10 and x11 and not x1 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( not x14 and not x10 and x11 and not x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( not x14 and not x10 and not x11 and x1 and x12 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( not x14 and not x10 and not x11 and x1 and not x12 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_ball <= s13;

      elsif ( not x14 and not x10 and not x11 and not x1 and x12 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( not x14 and not x10 and not x11 and not x1 and x12 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( not x14 and not x10 and not x11 and not x1 and not x12 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( not x14 and not x10 and not x11 and not x1 and not x12 and not x2 and x9 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      end if;

   when s2 =>
      if ( x14 and x35 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and not x35 and x13 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_ball <= s11;

      elsif ( x14 and not x35 and not x13 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_ball <= s14;

      elsif ( not x14 and x10 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( not x14 and not x10 and x11 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_ball <= s11;

      elsif ( not x14 and not x10 and not x11 and x7 ) = '1' then
         y2 <= '1' ;
         current_ball <= s15;

      else
         y10 <= '1' ;
         current_ball <= s16;

      end if;

   when s3 =>
      if ( x14 and x42 and x19 and x10 ) = '1' then
         y2 <= '1' ;
         current_ball <= s15;

      elsif ( x14 and x42 and x19 and not x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      elsif ( x14 and x42 and not x19 ) = '1' then
         current_ball <= s3;

      elsif ( x14 and not x42 ) = '1' then
         y2 <= '1' ;
         current_ball <= s15;

      elsif ( not x14 and x11 and x10 ) = '1' then
         current_ball <= s1;

      elsif ( not x14 and x11 and not x10 and x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      elsif ( not x14 and x11 and not x10 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_ball <= s18;

      elsif ( not x14 and not x11 and x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      elsif ( not x14 and not x11 and not x10 and x12 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_ball <= s11;

      elsif ( not x14 and not x11 and not x10 and not x12 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_ball <= s13;

      elsif ( not x14 and not x11 and not x10 and not x12 and not x1 and x4 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      else
         current_ball <= s1;

      end if;

   when s4 =>
      if ( x14 and x30 and x43 ) = '1' then
         current_ball <= s4;

      elsif ( x14 and x30 and not x43 and x18 and x41 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( x14 and x30 and not x43 and x18 and not x41 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( x14 and x30 and not x43 and not x18 and x34 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( x14 and x30 and not x43 and not x18 and not x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( x14 and not x30 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( not x14 and x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( not x14 and not x11 and x1 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( not x14 and not x11 and x1 and not x2 and x3 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( not x14 and not x11 and x1 and not x2 and not x3 ) = '1' then
         current_ball <= s4;

      else
         y1 <= '1' ;
         current_ball <= s8;

      end if;

   when s5 =>
      if ( x28 and x21 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      elsif ( x28 and not x21 ) = '1' then
         current_ball <= s5;

      elsif ( not x28 and x27 and x8 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      elsif ( not x28 and x27 and not x8 and x37 ) = '1' then
         current_ball <= s1;

      elsif ( not x28 and x27 and not x8 and not x37 ) = '1' then
         y10 <= '1' ;
         current_ball <= s16;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      end if;

   when s6 =>
      if ( x42 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      else
         current_ball <= s6;

      end if;

   when s7 =>
      if ( x14 and x16 and x26 and x27 and x29 and x18 ) = '1' then
         y13 <= '1' ;
         current_ball <= s19;

      elsif ( x14 and x16 and x26 and x27 and x29 and not x18 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( x14 and x16 and x26 and x27 and not x29 and x33 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( x14 and x16 and x26 and x27 and not x29 and not x33 and x21 ) = '1' then
         y1 <= '1' ;
         current_ball <= s8;

      elsif ( x14 and x16 and x26 and x27 and not x29 and not x33 and not x21 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( x14 and x16 and x26 and not x27 ) = '1' then
         current_ball <= s7;

      elsif ( x14 and x16 and not x26 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and not x16 and x37 and x22 and x1 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( x14 and not x16 and x37 and x22 and not x1 ) = '1' then
         current_ball <= s7;

      elsif ( x14 and not x16 and x37 and not x22 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and not x16 and not x37 and x25 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and not x16 and not x37 and not x25 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_ball <= s14;

      elsif ( x14 and not x16 and not x37 and not x25 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( x14 and not x16 and not x37 and not x25 and not x4 ) = '1' then
         current_ball <= s7;

      elsif ( not x14 and x10 and x11 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and x10 and not x11 and x12 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and x10 and not x11 and x12 and not x2 ) = '1' then
         current_ball <= s1;

      elsif ( not x14 and x10 and not x11 and not x12 and x1 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_ball <= s5;

      elsif ( not x14 and x10 and not x11 and not x12 and x1 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_ball <= s15;

      elsif ( not x14 and x10 and not x11 and not x12 and x1 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      elsif ( not x14 and x10 and not x11 and not x12 and not x1 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and not x10 and x12 and x2 and x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      elsif ( not x14 and not x10 and x12 and x2 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      elsif ( not x14 and not x10 and x12 and not x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and not x10 and not x12 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_ball <= s20;

      elsif ( not x14 and not x10 and not x12 and not x9 and x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      end if;

   when s8 =>
      if ( x14 and x17 and x19 and x10 ) = '1' then
         y2 <= '1' ;
         current_ball <= s15;

      elsif ( x14 and x17 and x19 and not x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      elsif ( x14 and x17 and not x19 ) = '1' then
         current_ball <= s8;

      elsif ( x14 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_ball <= s4;

      elsif ( x14 and not x17 and not x20 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( x14 and not x17 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( not x14 and x11 and x10 ) = '1' then
         current_ball <= s1;

      elsif ( not x14 and x11 and not x10 ) = '1' then
         y13 <= '1' ;
         current_ball <= s21;

      elsif ( not x14 and not x11 and x12 and x10 and x4 and x1 ) = '1' then
         current_ball <= s8;

      elsif ( not x14 and not x11 and x12 and x10 and x4 and not x1 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      elsif ( not x14 and not x11 and x12 and x10 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( not x14 and not x11 and x12 and not x10 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      else
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      end if;

   when s9 =>
      if ( x14 and x41 and x24 and x5 and x36 ) = '1' then
         current_ball <= s9;

      elsif ( x14 and x41 and x24 and x5 and not x36 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      elsif ( x14 and x41 and x24 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and x41 and not x24 and x31 and x29 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      elsif ( x14 and x41 and not x24 and x31 and not x29 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and x41 and not x24 and not x31 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      elsif ( x14 and not x41 and x11 and x35 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      elsif ( x14 and not x41 and x11 and x35 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and not x41 and x11 and not x35 and x15 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and not x41 and x11 and not x35 and not x15 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and not x41 and not x11 and x40 and x35 ) = '1' then
         y13 <= '1' ;
         current_ball <= s21;

      elsif ( x14 and not x41 and not x11 and x40 and not x35 and x15 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and not x41 and not x11 and x40 and not x35 and not x15 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and not x41 and not x11 and not x40 and x3 and x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_ball <= s11;

      elsif ( x14 and not x41 and not x11 and not x40 and x3 and not x6 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and not x41 and not x11 and not x40 and not x3 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( not x14 and x11 and x10 and x3 and x4 ) = '1' then
         current_ball <= s9;

      elsif ( not x14 and x11 and x10 and x3 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( not x14 and x11 and x10 and not x3 and x4 and x5 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and x11 and x10 and not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         current_ball <= s8;

      elsif ( not x14 and x11 and x10 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( not x14 and x11 and not x10 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_ball <= s5;

      elsif ( not x14 and x11 and not x10 and not x6 and x8 and x4 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_ball <= s14;

      elsif ( not x14 and x11 and not x10 and not x6 and x8 and not x4 and x1 and x3 ) = '1' then
         y2 <= '1' ;
         current_ball <= s15;

      elsif ( not x14 and x11 and not x10 and not x6 and x8 and not x4 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      elsif ( not x14 and x11 and not x10 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      elsif ( not x14 and x11 and not x10 and not x6 and not x8 ) = '1' then
         current_ball <= s1;

      elsif ( not x14 and not x11 and x10 and x2 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and not x11 and x10 and not x2 ) = '1' then
         current_ball <= s1;

      elsif ( not x14 and not x11 and not x10 and x12 and x9 ) = '1' then
         current_ball <= s1;

      elsif ( not x14 and not x11 and not x10 and x12 and not x9 ) = '1' then
         y13 <= '1' ;
         current_ball <= s21;

      elsif ( not x14 and not x11 and not x10 and not x12 and x6 ) = '1' then
         y6 <= '1' ;
         y12 <= '1' ;
         current_ball <= s22;

      elsif ( not x14 and not x11 and not x10 and not x12 and not x6 and x9 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      else
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      end if;

   when s10 =>
      if ( x14 and x13 and x23 and x41 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      elsif ( x14 and x13 and x23 and not x41 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( x14 and x13 and not x23 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      elsif ( x14 and not x13 and x28 and x35 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      elsif ( x14 and not x13 and x28 and x35 and not x5 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and not x13 and x28 and not x35 and x15 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and not x13 and x28 and not x35 and not x15 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and not x13 and not x28 and x6 and x35 ) = '1' then
         y13 <= '1' ;
         current_ball <= s21;

      elsif ( x14 and not x13 and not x28 and x6 and not x35 and x15 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and not x13 and not x28 and x6 and not x35 and not x15 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x14 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y2 <= '1' ;
         current_ball <= s15;

      elsif ( not x14 and x10 and x11 ) = '1' then
         y1 <= '1' ;
         current_ball <= s8;

      elsif ( not x14 and x10 and not x11 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( not x14 and not x10 and x11 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_ball <= s23;

      elsif ( not x14 and not x10 and x11 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_ball <= s8;

      elsif ( not x14 and not x10 and not x11 and x5 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      else
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      end if;

   when s11 =>
      if ( x14 and x8 and x30 ) = '1' then
         y10 <= '1' ;
         current_ball <= s16;

      elsif ( x14 and x8 and not x30 and x37 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and x8 and not x30 and not x37 ) = '1' then
         y10 <= '1' ;
         current_ball <= s16;

      elsif ( x14 and not x8 and x41 ) = '1' then
         y10 <= '1' ;
         current_ball <= s16;

      elsif ( x14 and not x8 and not x41 and x37 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and not x8 and not x41 and not x37 ) = '1' then
         y10 <= '1' ;
         current_ball <= s16;

      elsif ( not x14 and x10 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      elsif ( not x14 and not x10 and x11 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_ball <= s11;

      elsif ( not x14 and not x10 and not x11 and x12 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      elsif ( not x14 and not x10 and not x11 and x12 and not x8 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_ball <= s18;

      else
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_ball <= s24;

      end if;

   when s12 =>
      if ( x7 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_ball <= s13;

      else
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      end if;

   when s13 =>
      if ( x14 and x29 and x42 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_ball <= s18;

      elsif ( x14 and x29 and not x42 ) = '1' then
         current_ball <= s13;

      elsif ( x14 and not x29 and x15 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and not x29 and not x15 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( not x14 and x11 and x6 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_ball <= s5;

      elsif ( not x14 and x11 and x6 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_ball <= s23;

      elsif ( not x14 and x11 and not x6 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         current_ball <= s11;

      elsif ( not x14 and not x11 and x8 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_ball <= s14;

      end if;

   when s14 =>
      if ( x14 and x44 and x3 and x23 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_ball <= s5;

      elsif ( x14 and x44 and x3 and not x23 ) = '1' then
         current_ball <= s14;

      elsif ( x14 and x44 and not x3 ) = '1' then
         current_ball <= s1;

      elsif ( x14 and not x44 and x2 and x23 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_ball <= s5;

      elsif ( x14 and not x44 and x2 and not x23 ) = '1' then
         current_ball <= s14;

      elsif ( x14 and not x44 and not x2 ) = '1' then
         current_ball <= s1;

      elsif ( not x14 and x10 ) = '1' then
         current_ball <= s1;

      elsif ( not x14 and not x10 and x11 and x5 ) = '1' then
         y10 <= '1' ;
         current_ball <= s16;

      elsif ( not x14 and not x10 and x11 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( not x14 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and not x10 and not x11 and x1 ) = '1' then
         current_ball <= s1;

      else
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      end if;

   when s15 =>
      if ( x38 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      else
         current_ball <= s15;

      end if;

   when s16 =>
      if ( x10 and x6 and x7 and x2 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_ball <= s5;

      elsif ( x10 and x6 and x7 and x2 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_ball <= s15;

      elsif ( x10 and x6 and x7 and x2 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      elsif ( x10 and x6 and x7 and not x2 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x10 and x6 and not x7 and x8 ) = '1' then
         y10 <= '1' ;
         current_ball <= s16;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_ball <= s5;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_ball <= s15;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      elsif ( x10 and x6 and not x7 and not x8 and not x2 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( x10 and not x6 and x2 ) = '1' then
         y10 <= '1' ;
         current_ball <= s16;

      elsif ( x10 and not x6 and not x2 ) = '1' then
         current_ball <= s1;

      elsif ( not x10 and x11 and x5 ) = '1' then
         y10 <= '1' ;
         current_ball <= s16;

      elsif ( not x10 and x11 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( not x10 and x11 and not x5 and not x6 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      else
         current_ball <= s1;

      end if;

   when s17 =>
      if ( x10 and x12 ) = '1' then
         current_ball <= s1;

      elsif ( x10 and not x12 and x1 and x2 ) = '1' then
         y10 <= '1' ;
         current_ball <= s16;

      elsif ( x10 and not x12 and x1 and not x2 ) = '1' then
         current_ball <= s1;

      elsif ( x10 and not x12 and not x1 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      elsif ( not x10 and x11 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_ball <= s23;

      elsif ( not x10 and x11 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x10 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_ball <= s8;

      elsif ( not x10 and not x11 and x12 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( not x10 and not x11 and x12 and not x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_ball <= s5;

      elsif ( not x10 and not x11 and not x12 and x6 ) = '1' then
         current_ball <= s1;

      else
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      end if;

   when s18 =>
      if ( x14 and x17 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_ball <= s14;

      elsif ( x14 and not x17 and x21 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      elsif ( x14 and not x17 and not x21 ) = '1' then
         current_ball <= s18;

      elsif ( not x14 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_ball <= s14;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_ball <= s18;

      end if;

   when s19 =>
      if ( x14 and x3 ) = '1' then
         y10 <= '1' ;
         current_ball <= s16;

      elsif ( x14 and not x3 and x2 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_ball <= s18;

      elsif ( x14 and not x3 and not x2 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( x14 and not x3 and not x2 and not x28 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( not x14 and x10 and x5 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_ball <= s5;

      elsif ( not x14 and x10 and x5 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_ball <= s15;

      elsif ( not x14 and x10 and x5 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      elsif ( not x14 and x10 and not x5 ) = '1' then
         y1 <= '1' ;
         current_ball <= s8;

      elsif ( not x14 and not x10 and x11 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_ball <= s23;

      elsif ( not x14 and not x10 and x11 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_ball <= s8;

      else
         current_ball <= s19;

      end if;

   when s20 =>
      if ( x14 and x42 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_ball <= s18;

      elsif ( x14 and not x42 ) = '1' then
         current_ball <= s20;

      elsif ( not x14 and x11 ) = '1' then
         y13 <= '1' ;
         current_ball <= s19;

      elsif ( not x14 and not x11 and x9 ) = '1' then
         y13 <= '1' ;
         current_ball <= s19;

      else
         y2 <= '1' ;
         current_ball <= s15;

      end if;

   when s21 =>
      if ( x14 and x37 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_ball <= s10;

      elsif ( x14 and x37 and not x28 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         current_ball <= s9;

      elsif ( x14 and not x37 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      elsif ( not x14 and x10 and x1 and x2 and x3 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_ball <= s5;

      elsif ( not x14 and x10 and x1 and x2 and not x3 and x4 ) = '1' then
         y2 <= '1' ;
         current_ball <= s15;

      elsif ( not x14 and x10 and x1 and x2 and not x3 and not x4 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      elsif ( not x14 and x10 and x1 and not x2 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      elsif ( not x14 and x10 and not x1 and x2 and x9 ) = '1' then
         y13 <= '1' ;
         current_ball <= s19;

      elsif ( not x14 and x10 and not x1 and x2 and not x9 ) = '1' then
         y2 <= '1' ;
         current_ball <= s15;

      elsif ( not x14 and x10 and not x1 and not x2 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         current_ball <= s2;

      else
         current_ball <= s21;

      end if;

   when s22 =>
      if ( x3 and x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      elsif ( x3 and not x5 ) = '1' then
         y5 <= '1' ;
         y8 <= '1' ;
         current_ball <= s17;

      else
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      end if;

   when s23 =>
      if ( x8 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_ball <= s13;

      elsif ( x8 and not x1 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_ball <= s20;

      elsif ( x8 and not x1 and not x4 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         current_ball <= s7;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      end if;

   when s24 =>
      if ( x14 and x9 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      elsif ( x14 and not x9 and x37 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         current_ball <= s6;

      elsif ( x14 and not x9 and not x37 ) = '1' then
         y10 <= '1' ;
         current_ball <= s16;

      elsif ( not x14 and x10 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and not x10 and x11 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_ball <= s23;

      elsif ( not x14 and not x10 and x11 and not x1 and x3 ) = '1' then
         y2 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_ball <= s3;

      elsif ( not x14 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y1 <= '1' ;
         current_ball <= s8;

      else
         y1 <= '1' ;
         current_ball <= s8;

      end if;

   end case;
   end proc_ball;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;
	current_ball <= s1;
      elsif (clk'event and clk ='1') then
        proc_ball;
      end if;
   end process;
end ARC;
