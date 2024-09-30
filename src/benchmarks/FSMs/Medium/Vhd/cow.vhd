library ieee;
use ieee.std_logic_1164.all;

entity cow is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
	x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,
	x46,x47,x48,x49 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24 : out std_logic );
end cow;

architecture ARC of cow is

   type states_cow is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24 );
   signal current_cow : states_cow;

begin
   process (clk , rst)
   procedure proc_cow is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;


   case current_cow is
   when s1 =>
      if ( x15 and x10 and x12 and x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_cow <= s2;

      elsif ( x15 and x10 and x12 and not x23 and x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      elsif ( x15 and x10 and x12 and not x23 and not x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( x15 and x10 and not x12 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_cow <= s5;

      elsif ( x15 and not x10 and x1 and x22 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_cow <= s6;

      elsif ( x15 and not x10 and x1 and not x22 and x2 and x3 and x11 ) = '1' then
         current_cow <= s1;

      elsif ( x15 and not x10 and x1 and not x22 and x2 and x3 and not x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( x15 and not x10 and x1 and not x22 and x2 and not x3 and x11 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( x15 and not x10 and x1 and not x22 and x2 and not x3 and x11 and not x5 ) = '1' then
         y1 <= '1' ;
         current_cow <= s9;

      elsif ( x15 and not x10 and x1 and not x22 and x2 and not x3 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      elsif ( x15 and not x10 and x1 and not x22 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_cow <= s10;

      elsif ( x15 and not x10 and not x1 and x11 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( x15 and not x10 and not x1 and x11 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( x15 and not x10 and not x1 and not x11 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( not x15 and x10 and x39 and x36 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and x10 and x39 and not x36 and x46 and x48 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_cow <= s11;

      elsif ( not x15 and x10 and x39 and not x36 and x46 and not x48 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( not x15 and x10 and x39 and not x36 and not x46 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_cow <= s10;

      elsif ( not x15 and x10 and not x39 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_cow <= s12;

      elsif ( not x15 and not x10 and x11 and x34 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      elsif ( not x15 and not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_cow <= s11;

      elsif ( not x15 and not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      elsif ( not x15 and not x10 and x11 and not x34 and x32 and not x7 and x43 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_cow <= s11;

      elsif ( not x15 and not x10 and x11 and not x34 and x32 and not x7 and x43 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and not x10 and x11 and not x34 and x32 and not x7 and not x43 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_cow <= s10;

      elsif ( not x15 and not x10 and x11 and not x34 and not x32 ) = '1' then
         y1 <= '1' ;
         current_cow <= s9;

      elsif ( not x15 and not x10 and not x11 and x12 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_cow <= s10;

      elsif ( not x15 and not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( not x15 and not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      elsif ( not x15 and not x10 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_cow <= s5;

      elsif ( not x15 and not x10 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and not x10 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and not x10 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_cow <= s10;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      end if;

   when s2 =>
      if ( x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_cow <= s14;

      elsif ( not x19 and x26 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s15;

      elsif ( not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         current_cow <= s16;

      end if;

   when s3 =>
      if ( x15 and x19 and x28 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_cow <= s16;

      elsif ( x15 and x19 and x28 and not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( x15 and x19 and x28 and not x1 and not x35 ) = '1' then
         y1 <= '1' ;
         current_cow <= s9;

      elsif ( x15 and x19 and not x28 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( x15 and not x19 ) = '1' then
         y1 <= '1' ;
         current_cow <= s9;

      elsif ( not x15 and x13 and x23 and x48 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_cow <= s11;

      elsif ( not x15 and x13 and x23 and not x48 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( not x15 and x13 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_cow <= s11;

      elsif ( not x15 and not x13 and x28 and x35 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_cow <= s11;

      elsif ( not x15 and not x13 and x28 and x35 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and not x13 and x28 and not x35 and x21 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and not x13 and x28 and not x35 and not x21 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and not x13 and not x28 and x6 and x35 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_cow <= s17;

      elsif ( not x15 and not x13 and not x28 and x6 and not x35 and x21 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and not x13 and not x28 and x6 and not x35 and not x21 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s15;

      end if;

   when s4 =>
      if ( x15 and x30 and x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_cow <= s18;

      elsif ( x15 and x30 and x16 and not x6 and x8 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_cow <= s14;

      elsif ( x15 and x30 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s15;

      elsif ( x15 and x30 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      elsif ( x15 and x30 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_cow <= s16;

      elsif ( x15 and x30 and x16 and not x6 and not x8 ) = '1' then
         current_cow <= s1;

      elsif ( x15 and x30 and not x16 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( x15 and x30 and not x16 and not x10 ) = '1' then
         current_cow <= s1;

      elsif ( x15 and not x30 and x5 and x9 ) = '1' then
         current_cow <= s1;

      elsif ( x15 and not x30 and x5 and not x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_cow <= s17;

      elsif ( x15 and not x30 and not x5 and x3 and x11 ) = '1' then
         current_cow <= s4;

      elsif ( x15 and not x30 and not x5 and x3 and not x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( x15 and not x30 and not x5 and not x3 and x11 ) = '1' then
         y1 <= '1' ;
         current_cow <= s9;

      elsif ( x15 and not x30 and not x5 and not x3 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      elsif ( not x15 and x48 and x24 and x5 and x36 ) = '1' then
         current_cow <= s4;

      elsif ( not x15 and x48 and x24 and x5 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_cow <= s11;

      elsif ( not x15 and x48 and x24 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and x48 and not x24 and x31 and x29 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_cow <= s11;

      elsif ( not x15 and x48 and not x24 and x31 and not x29 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and x48 and not x24 and not x31 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_cow <= s11;

      elsif ( not x15 and not x48 and x11 and x35 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_cow <= s11;

      elsif ( not x15 and not x48 and x11 and x35 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and not x48 and x11 and not x35 and x21 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and not x48 and x11 and not x35 and not x21 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and not x48 and not x11 and x45 and x35 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_cow <= s17;

      elsif ( not x15 and not x48 and not x11 and x45 and not x35 and x21 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and not x48 and not x11 and x45 and not x35 and not x21 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and not x48 and not x11 and not x45 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_cow <= s5;

      elsif ( not x15 and not x48 and not x11 and not x45 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      end if;

   when s5 =>
      if ( x15 and x12 and x27 and x33 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      elsif ( x15 and x12 and x27 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( x15 and x12 and x27 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( x15 and x12 and not x27 and x1 and x29 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_cow <= s12;

      elsif ( x15 and x12 and not x27 and x1 and not x29 ) = '1' then
         current_cow <= s5;

      elsif ( x15 and x12 and not x27 and not x1 ) = '1' then
         current_cow <= s5;

      elsif ( x15 and not x12 and x29 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_cow <= s14;

      elsif ( x15 and not x12 and not x29 ) = '1' then
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_cow <= s20;

      elsif ( not x15 and x17 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         current_cow <= s21;

      elsif ( not x15 and not x17 and x41 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      else
         current_cow <= s5;

      end if;

   when s6 =>
      if ( x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      else
         y11 <= '1' ;
         y23 <= '1' ;
         current_cow <= s22;

      end if;

   when s7 =>
      if ( x15 and x14 and x8 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( x15 and x14 and x8 and not x10 ) = '1' then
         current_cow <= s1;

      elsif ( x15 and x14 and not x8 and x30 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_cow <= s12;

      elsif ( x15 and x14 and not x8 and x30 and not x1 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s15;

      elsif ( x15 and x14 and not x8 and x30 and not x1 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_cow <= s22;

      elsif ( x15 and x14 and not x8 and not x30 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( x15 and not x14 and x3 and x32 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      elsif ( x15 and not x14 and x3 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( x15 and not x14 and not x3 ) = '1' then
         current_cow <= s7;

      elsif ( not x15 and x16 and x43 and x27 and x29 and x40 ) = '1' then
         y13 <= '1' ;
         current_cow <= s23;

      elsif ( not x15 and x16 and x43 and x27 and x29 and not x40 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( not x15 and x16 and x43 and x27 and not x29 and x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( not x15 and x16 and x43 and x27 and not x29 and not x33 and x41 ) = '1' then
         y1 <= '1' ;
         current_cow <= s9;

      elsif ( not x15 and x16 and x43 and x27 and not x29 and not x33 and not x41 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( not x15 and x16 and x43 and not x27 ) = '1' then
         current_cow <= s7;

      elsif ( not x15 and x16 and not x43 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and not x16 and x37 and x42 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( not x15 and not x16 and x37 and x42 and not x1 ) = '1' then
         current_cow <= s7;

      elsif ( not x15 and not x16 and x37 and not x42 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and not x16 and not x37 and x25 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and not x16 and not x37 and not x25 and x4 and x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_cow <= s14;

      elsif ( not x15 and not x16 and not x37 and not x25 and x4 and not x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      else
         current_cow <= s7;

      end if;

   when s8 =>
      if ( x15 and x24 and x26 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_cow <= s11;

      elsif ( x15 and x24 and x26 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_cow <= s24;

      elsif ( x15 and x24 and not x26 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_cow <= s22;

      elsif ( x15 and not x24 and x28 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_cow <= s5;

      elsif ( x15 and not x24 and not x28 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and x31 and x19 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s15;

      elsif ( not x15 and x31 and x19 and not x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_cow <= s22;

      elsif ( not x15 and x31 and not x19 ) = '1' then
         current_cow <= s8;

      else
         y11 <= '1' ;
         y23 <= '1' ;
         current_cow <= s22;

      end if;

   when s9 =>
      if ( x15 and x19 and x13 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_cow <= s17;

      elsif ( x15 and x19 and not x13 and x32 and x18 and x12 ) = '1' then
         current_cow <= s9;

      elsif ( x15 and x19 and not x13 and x32 and x18 and not x12 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_cow <= s22;

      elsif ( x15 and x19 and not x13 and x32 and not x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( x15 and x19 and not x13 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( x15 and not x19 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and x17 and x19 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s15;

      elsif ( not x15 and x17 and x19 and not x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_cow <= s22;

      elsif ( not x15 and x17 and not x19 ) = '1' then
         current_cow <= s9;

      elsif ( not x15 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_cow <= s10;

      elsif ( not x15 and not x17 and not x20 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      end if;

   when s10 =>
      if ( x15 and x11 and x25 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      elsif ( x15 and x11 and x25 and not x3 and x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( x15 and x11 and x25 and not x3 and not x5 ) = '1' then
         current_cow <= s10;

      elsif ( x15 and x11 and not x25 ) = '1' then
         y1 <= '1' ;
         current_cow <= s9;

      elsif ( x15 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      elsif ( not x15 and x44 and x47 ) = '1' then
         current_cow <= s10;

      elsif ( not x15 and x44 and not x47 and x40 and x48 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      elsif ( not x15 and x44 and not x47 and x40 and not x48 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( not x15 and x44 and not x47 and not x40 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( not x15 and x44 and not x47 and not x40 and not x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      end if;

   when s11 =>
      if ( x15 and x7 and x35 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_cow <= s16;

      elsif ( x15 and x7 and x35 and not x1 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( x15 and x7 and not x35 and x1 ) = '1' then
         current_cow <= s11;

      elsif ( x15 and x7 and not x35 and not x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      elsif ( x15 and not x7 ) = '1' then
         current_cow <= s11;

      elsif ( not x15 and x3 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      elsif ( not x15 and not x3 and x2 ) = '1' then
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_cow <= s20;

      elsif ( not x15 and not x3 and not x2 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      end if;

   when s12 =>
      if ( x15 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( x15 and not x5 and x34 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s15;

      elsif ( x15 and not x5 and not x34 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      elsif ( not x15 and x35 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and not x35 and x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_cow <= s5;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_cow <= s14;

      end if;

   when s13 =>
      if ( x15 and x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_cow <= s22;

      elsif ( x15 and not x10 and x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_cow <= s11;

      elsif ( x15 and not x10 and not x25 ) = '1' then
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_cow <= s20;

      elsif ( not x15 and x8 and x44 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      elsif ( not x15 and x8 and not x44 and x37 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and x8 and not x44 and not x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      elsif ( not x15 and not x8 and x48 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      elsif ( not x15 and not x8 and not x48 and x37 ) = '1' then
         current_cow <= s1;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      end if;

   when s14 =>
      if ( x15 and x2 and x8 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_cow <= s16;

      elsif ( x15 and x2 and x8 and not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( x15 and x2 and x8 and not x1 and not x35 ) = '1' then
         y1 <= '1' ;
         current_cow <= s9;

      elsif ( x15 and x2 and not x8 and x32 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_cow <= s12;

      elsif ( x15 and x2 and not x8 and x32 and not x1 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s15;

      elsif ( x15 and x2 and not x8 and x32 and not x1 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_cow <= s22;

      elsif ( x15 and x2 and not x8 and not x32 ) = '1' then
         y1 <= '1' ;
         current_cow <= s9;

      elsif ( x15 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      elsif ( not x15 and x37 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      elsif ( not x15 and x37 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      else
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      end if;

   when s15 =>
      if ( x15 and x16 and x19 and x33 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      elsif ( x15 and x16 and x19 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( x15 and x16 and x19 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( x15 and x16 and not x19 and x1 and x26 and x30 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_cow <= s12;

      elsif ( x15 and x16 and not x19 and x1 and x26 and not x30 ) = '1' then
         current_cow <= s15;

      elsif ( x15 and x16 and not x19 and x1 and not x26 and x3 ) = '1' then
         current_cow <= s15;

      elsif ( x15 and x16 and not x19 and x1 and not x26 and not x3 and x30 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_cow <= s12;

      elsif ( x15 and x16 and not x19 and x1 and not x26 and not x3 and not x30 ) = '1' then
         current_cow <= s15;

      elsif ( x15 and x16 and not x19 and not x1 ) = '1' then
         current_cow <= s15;

      elsif ( x15 and not x16 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and x28 and x41 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      elsif ( not x15 and x28 and not x41 ) = '1' then
         current_cow <= s15;

      elsif ( not x15 and not x28 and x27 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      elsif ( not x15 and not x28 and x27 and not x8 and x37 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      elsif ( not x15 and not x28 and not x27 and x49 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s15;

      end if;

   when s16 =>
      if ( x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_cow <= s16;

      elsif ( not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      else
         y1 <= '1' ;
         current_cow <= s9;

      end if;

   when s17 =>
      if ( x15 and x9 ) = '1' then
         y13 <= '1' ;
         current_cow <= s23;

      elsif ( x15 and not x9 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( x15 and not x9 and not x3 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s15;

      elsif ( not x15 and x29 and x49 ) = '1' then
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_cow <= s20;

      elsif ( not x15 and x29 and not x49 ) = '1' then
         current_cow <= s17;

      elsif ( not x15 and not x29 and x21 ) = '1' then
         current_cow <= s1;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_cow <= s7;

      end if;

   when s18 =>
      if ( x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_cow <= s18;

      elsif ( x16 and not x6 and x8 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_cow <= s14;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s15;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      elsif ( x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_cow <= s16;

      elsif ( x16 and not x6 and not x8 ) = '1' then
         current_cow <= s1;

      elsif ( not x16 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      else
         current_cow <= s1;

      end if;

   when s19 =>
      if ( x15 and x22 and x2 and x33 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      elsif ( x15 and x22 and x2 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( x15 and x22 and x2 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( x15 and x22 and not x2 ) = '1' then
         current_cow <= s1;

      elsif ( x15 and not x22 and x31 ) = '1' then
         current_cow <= s1;

      elsif ( x15 and not x22 and not x31 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( not x15 and x46 and x3 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_cow <= s12;

      elsif ( not x15 and x46 and x3 and not x23 ) = '1' then
         current_cow <= s19;

      elsif ( not x15 and x46 and not x3 ) = '1' then
         current_cow <= s1;

      elsif ( not x15 and not x46 and x2 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_cow <= s12;

      elsif ( not x15 and not x46 and x2 and not x23 ) = '1' then
         current_cow <= s19;

      else
         current_cow <= s1;

      end if;

   when s20 =>
      if ( x9 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      elsif ( not x9 and x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      end if;

   when s21 =>
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

   when s22 =>
      if ( x15 and x25 and x22 ) = '1' then
         current_cow <= s1;

      elsif ( x15 and x25 and not x22 and x6 and x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      elsif ( x15 and x25 and not x22 and x6 and not x8 ) = '1' then
         current_cow <= s1;

      elsif ( x15 and x25 and not x22 and not x6 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      elsif ( x15 and not x25 and x29 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         current_cow <= s6;

      elsif ( x15 and not x25 and not x29 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_cow <= s12;

      elsif ( not x15 and x38 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         current_cow <= s13;

      elsif ( not x15 and not x38 and x49 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_cow <= s3;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s15;

      end if;

   when s23 =>
      if ( x15 and x33 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_cow <= s19;

      elsif ( x15 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_cow <= s4;

      elsif ( x15 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_cow <= s8;

      elsif ( not x15 and x49 ) = '1' then
         y12 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         current_cow <= s20;

      else
         current_cow <= s23;

      end if;

   when s24 =>
      if ( x16 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_cow <= s18;

      elsif ( x16 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_cow <= s16;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         current_cow <= s5;

      end if;

   end case;
   end proc_cow;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;

	current_cow <= s1;
      elsif (clk'event and clk ='1') then
        proc_cow;
      end if;
   end process;
end ARC;
