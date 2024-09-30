library ieee;
use ieee.std_logic_1164.all;

entity v110 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15
	 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18 : out std_logic );
end v110;

architecture ARC of v110 is

   type states_v110 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18 );
   signal current_v110 : states_v110;

begin
   process (clk , rst)
   procedure proc_v110 is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;

   case current_v110 is
   when s1 =>
      if ( x13 and x15 and x10 and x1 and x14 and x3 and x6 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s2;

      elsif ( x13 and x15 and x10 and x1 and x14 and x3 and not x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and x15 and x10 and x1 and x14 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and x15 and x10 and x1 and not x14 and x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_v110 <= s4;

      elsif ( x13 and x15 and x10 and x1 and not x14 and not x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and x15 and x10 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_v110 <= s11;

      elsif ( x13 and x15 and not x10 and x14 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s5;

      elsif ( x13 and x15 and not x10 and not x14 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_v110 <= s4;

      elsif ( x13 and not x15 and x11 and x14 and x8 ) = '1' then
         y16 <= '1' ;
         current_v110 <= s6;

      elsif ( x13 and not x15 and x11 and x14 and not x8 and x5 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s7;

      elsif ( x13 and not x15 and x11 and x14 and not x8 and not x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and not x15 and x11 and not x14 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_v110 <= s8;

      elsif ( x13 and not x15 and x11 and not x14 and not x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and not x15 and not x11 and x14 and x10 and x7 ) = '1' then
         y16 <= '1' ;
         current_v110 <= s6;

      elsif ( x13 and not x15 and not x11 and x14 and x10 and not x7 and x1 and x5 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s7;

      elsif ( x13 and not x15 and not x11 and x14 and x10 and not x7 and x1 and not x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and not x15 and not x11 and x14 and x10 and not x7 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_v110 <= s11;

      elsif ( x13 and not x15 and not x11 and x14 and not x10 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_v110 <= s9;

      elsif ( x13 and not x15 and not x11 and not x14 and x1 and x10 and x5 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s7;

      elsif ( x13 and not x15 and not x11 and not x14 and x1 and x10 and not x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and not x15 and not x11 and not x14 and x1 and not x10 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x13 and not x15 and not x11 and not x14 and not x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_v110 <= s11;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_v110 <= s11;

      end if;

   when s2 =>
      if ( x15 and x13 and x14 and x10 and x4 ) = '1' then
         y16 <= '1' ;
         current_v110 <= s6;

      elsif ( x15 and x13 and x14 and x10 and not x4 ) = '1' then
         current_v110 <= s2;

      elsif ( x15 and x13 and x14 and not x10 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s12;

      elsif ( x15 and x13 and not x14 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x15 and x13 and not x14 and not x3 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_v110 <= s9;

      elsif ( x15 and x13 and not x14 and not x3 and not x2 ) = '1' then
         current_v110 <= s2;

      elsif ( x15 and not x13 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x15 and not x13 and not x3 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_v110 <= s9;

      elsif ( x15 and not x13 and not x3 and not x2 ) = '1' then
         current_v110 <= s2;

      elsif ( not x15 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( not x15 and not x3 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_v110 <= s9;

      else
         current_v110 <= s2;

      end if;

   when s3 =>
      if ( x13 and x10 and x4 and x15 and x3 and x14 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s12;

      elsif ( x13 and x10 and x4 and x15 and x3 and not x14 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_v110 <= s9;

      elsif ( x13 and x10 and x4 and x15 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x13 and x10 and x4 and not x15 and x11 and x14 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x13 and x10 and x4 and not x15 and x11 and not x14 and x3 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_v110 <= s13;

      elsif ( x13 and x10 and x4 and not x15 and x11 and not x14 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x13 and x10 and x4 and not x15 and not x11 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x13 and x10 and not x4 ) = '1' then
         current_v110 <= s3;

      elsif ( x13 and not x10 and x15 and x14 ) = '1' then
         current_v110 <= s1;

      elsif ( x13 and not x10 and x15 and not x14 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s2;

      elsif ( x13 and not x10 and not x15 and x11 and x4 and x14 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x13 and not x10 and not x15 and x11 and x4 and not x14 and x3 ) = '1' then
         y1 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_v110 <= s13;

      elsif ( x13 and not x10 and not x15 and x11 and x4 and not x14 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x13 and not x10 and not x15 and x11 and not x4 ) = '1' then
         current_v110 <= s3;

      elsif ( x13 and not x10 and not x15 and not x11 ) = '1' then
         current_v110 <= s1;

      else
         y5 <= '1' ;
         current_v110 <= s2;

      end if;

   when s4 =>
      if ( x13 and x15 and x14 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s7;

      elsif ( x13 and x15 and not x14 and x10 and x2 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_v110 <= s14;

      elsif ( x13 and x15 and not x14 and x10 and x2 and not x6 ) = '1' then
         y13 <= '1' ;
         current_v110 <= s15;

      elsif ( x13 and x15 and not x14 and x10 and not x2 ) = '1' then
         current_v110 <= s4;

      elsif ( x13 and x15 and not x14 and not x10 ) = '1' then
         y13 <= '1' ;
         current_v110 <= s15;

      elsif ( x13 and not x15 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s7;

      else
         y5 <= '1' ;
         current_v110 <= s7;

      end if;

   when s5 =>
      if ( x13 and x10 ) = '1' then
         current_v110 <= s1;

      elsif ( x13 and not x10 and x15 and x14 and x1 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s2;

      elsif ( x13 and not x10 and x15 and x14 and not x1 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s12;

      elsif ( x13 and not x10 and x15 and not x14 and x2 and x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_v110 <= s11;

      elsif ( x13 and not x10 and x15 and not x14 and x2 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_v110 <= s9;

      elsif ( x13 and not x10 and x15 and not x14 and not x2 ) = '1' then
         current_v110 <= s5;

      elsif ( x13 and not x10 and not x15 and x11 ) = '1' then
         current_v110 <= s1;

      elsif ( x13 and not x10 and not x15 and not x11 and x2 and x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_v110 <= s11;

      elsif ( x13 and not x10 and not x15 and not x11 and x2 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_v110 <= s9;

      elsif ( x13 and not x10 and not x15 and not x11 and not x2 ) = '1' then
         current_v110 <= s5;

      elsif ( not x13 and x2 and x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_v110 <= s11;

      elsif ( not x13 and x2 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_v110 <= s9;

      else
         current_v110 <= s5;

      end if;

   when s6 =>
      if ( x10 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_v110 <= s16;

      elsif ( not x10 and x15 and x7 ) = '1' then
         current_v110 <= s1;

      elsif ( not x10 and x15 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_v110 <= s16;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_v110 <= s16;

      end if;

   when s7 =>
      if ( x14 and x13 and x10 and x15 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x14 and x13 and x10 and x15 and not x3 and x2 ) = '1' then
         current_v110 <= s1;

      elsif ( x14 and x13 and x10 and x15 and not x3 and not x2 ) = '1' then
         current_v110 <= s7;

      elsif ( x14 and x13 and x10 and not x15 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_v110 <= s16;

      elsif ( x14 and x13 and not x10 and x15 and x5 ) = '1' then
         y18 <= '1' ;
         current_v110 <= s17;

      elsif ( x14 and x13 and not x10 and x15 and not x5 and x1 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s18;

      elsif ( x14 and x13 and not x10 and x15 and not x5 and not x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x14 and x13 and not x10 and not x15 and x11 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_v110 <= s16;

      elsif ( x14 and x13 and not x10 and not x15 and not x11 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x14 and x13 and not x10 and not x15 and not x11 and not x3 and x2 ) = '1' then
         current_v110 <= s1;

      elsif ( x14 and x13 and not x10 and not x15 and not x11 and not x3 and not x2 ) = '1' then
         current_v110 <= s7;

      elsif ( x14 and not x13 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x14 and not x13 and not x3 and x2 ) = '1' then
         current_v110 <= s1;

      elsif ( x14 and not x13 and not x3 and not x2 ) = '1' then
         current_v110 <= s7;

      elsif ( not x14 and x9 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( not x14 and x9 and not x3 and x2 ) = '1' then
         current_v110 <= s1;

      elsif ( not x14 and x9 and not x3 and not x2 ) = '1' then
         current_v110 <= s7;

      elsif ( not x14 and not x9 and x15 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( not x14 and not x9 and x15 and not x3 and x2 ) = '1' then
         current_v110 <= s1;

      elsif ( not x14 and not x9 and x15 and not x3 and not x2 ) = '1' then
         current_v110 <= s7;

      elsif ( not x14 and not x9 and not x15 and x7 ) = '1' then
         current_v110 <= s1;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_v110 <= s16;

      end if;

   when s8 =>
      if ( x11 and x14 and x3 ) = '1' then
         current_v110 <= s1;

      elsif ( x11 and x14 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x11 and not x14 and x2 ) = '1' then
         y18 <= '1' ;
         current_v110 <= s17;

      elsif ( x11 and not x14 and not x2 ) = '1' then
         current_v110 <= s8;

      elsif ( not x11 and x3 ) = '1' then
         current_v110 <= s1;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      end if;

   when s9 =>
      if ( x10 and x13 and x14 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s12;

      elsif ( x10 and x13 and not x14 and x15 and x2 and x6 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_v110 <= s14;

      elsif ( x10 and x13 and not x14 and x15 and x2 and not x6 ) = '1' then
         y13 <= '1' ;
         current_v110 <= s15;

      elsif ( x10 and x13 and not x14 and x15 and not x2 ) = '1' then
         current_v110 <= s9;

      elsif ( x10 and x13 and not x14 and not x15 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s12;

      elsif ( x10 and not x13 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s12;

      elsif ( not x10 and x11 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s12;

      elsif ( not x10 and not x11 and x13 and x14 and x15 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s12;

      elsif ( not x10 and not x11 and x13 and x14 and not x15 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_v110 <= s11;

      elsif ( not x10 and not x11 and x13 and x14 and not x15 and not x1 and x2 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( not x10 and not x11 and x13 and x14 and not x15 and not x1 and not x2 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s18;

      elsif ( not x10 and not x11 and x13 and not x14 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s12;

      else
         y5 <= '1' ;
         current_v110 <= s12;

      end if;

   when s10 =>
      if ( x13 and x15 and x10 and x14 and x3 and x6 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s2;

      elsif ( x13 and x15 and x10 and x14 and x3 and not x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and x15 and x10 and x14 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and x15 and x10 and not x14 and x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_v110 <= s4;

      elsif ( x13 and x15 and x10 and not x14 and not x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and x15 and not x10 and x14 and x8 and x1 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s7;

      elsif ( x13 and x15 and not x10 and x14 and x8 and not x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and x15 and not x10 and x14 and not x8 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s7;

      elsif ( x13 and x15 and not x10 and not x14 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s5;

      elsif ( x13 and not x15 and x11 and x5 and x14 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s7;

      elsif ( x13 and not x15 and x11 and x5 and not x14 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_v110 <= s8;

      elsif ( x13 and not x15 and x11 and not x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and not x15 and not x11 and x10 and x5 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s7;

      elsif ( x13 and not x15 and not x11 and x10 and not x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and not x15 and not x11 and not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_v110 <= s8;

      elsif ( x13 and not x15 and not x11 and not x10 and not x1 and x3 ) = '1' then
         current_v110 <= s1;

      elsif ( x13 and not x15 and not x11 and not x10 and not x1 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      else
         y5 <= '1' ;
         current_v110 <= s5;

      end if;

   when s11 =>
      if ( x13 and x10 and x2 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s18;

      elsif ( x13 and x10 and not x2 and x15 ) = '1' then
         current_v110 <= s11;

      elsif ( x13 and x10 and not x2 and not x15 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s18;

      elsif ( x13 and not x10 and x11 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s18;

      elsif ( x13 and not x10 and not x11 and x15 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s18;

      elsif ( x13 and not x10 and not x11 and not x15 and x2 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x13 and not x10 and not x11 and not x15 and not x2 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s18;

      else
         y5 <= '1' ;
         current_v110 <= s18;

      end if;

   when s12 =>
      if ( x15 and x13 and x14 and x10 ) = '1' then
         y16 <= '1' ;
         current_v110 <= s6;

      elsif ( x15 and x13 and x14 and not x10 and x1 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s18;

      elsif ( x15 and x13 and x14 and not x10 and not x1 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x15 and x13 and not x14 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x15 and x13 and not x14 and not x3 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_v110 <= s4;

      elsif ( x15 and x13 and not x14 and not x3 and not x6 ) = '1' then
         current_v110 <= s12;

      elsif ( x15 and not x13 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x15 and not x13 and not x3 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_v110 <= s4;

      elsif ( x15 and not x13 and not x3 and not x6 ) = '1' then
         current_v110 <= s12;

      elsif ( not x15 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( not x15 and not x3 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_v110 <= s4;

      else
         current_v110 <= s12;

      end if;

   when s13 =>
      if ( x2 ) = '1' then
         y18 <= '1' ;
         current_v110 <= s17;

      else
         current_v110 <= s13;

      end if;

   when s14 =>
      if ( x10 and x4 ) = '1' then
         y16 <= '1' ;
         current_v110 <= s6;

      elsif ( x10 and not x4 ) = '1' then
         current_v110 <= s14;

      elsif ( not x10 and x5 and x6 ) = '1' then
         y16 <= '1' ;
         current_v110 <= s6;

      elsif ( not x10 and x5 and not x6 and x7 ) = '1' then
         current_v110 <= s1;

      elsif ( not x10 and x5 and not x6 and not x7 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         current_v110 <= s16;

      elsif ( not x10 and not x5 and x4 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s18;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_v110 <= s14;

      end if;

   when s15 =>
      if ( x10 ) = '1' then
         y16 <= '1' ;
         current_v110 <= s6;

      elsif ( not x10 and x4 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s18;

      else
         y7 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_v110 <= s14;

      end if;

   when s16 =>
      if ( x10 and x4 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s5;

      elsif ( x10 and not x4 ) = '1' then
         current_v110 <= s16;

      elsif ( not x10 and x15 ) = '1' then
         current_v110 <= s1;

      elsif ( not x10 and not x15 and x4 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s5;

      else
         current_v110 <= s16;

      end if;

   when s17 =>
      if ( x9 ) = '1' then
         y16 <= '1' ;
         current_v110 <= s6;

      else
         current_v110 <= s17;

      end if;

   when s18 =>
      if ( x13 and x15 and x10 and x14 and x3 and x6 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s2;

      elsif ( x13 and x15 and x10 and x14 and x3 and not x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and x15 and x10 and x14 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and x15 and x10 and not x14 and x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_v110 <= s4;

      elsif ( x13 and x15 and x10 and not x14 and not x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and x15 and not x10 and x14 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s7;

      elsif ( x13 and x15 and not x10 and not x14 ) = '1' then
         y7 <= '1' ;
         y9 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_v110 <= s14;

      elsif ( x13 and not x15 and x11 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( x13 and not x15 and x11 and not x3 and x5 and x7 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and not x15 and x11 and not x3 and x5 and not x7 ) = '1' then
         current_v110 <= s18;

      elsif ( x13 and not x15 and x11 and not x3 and not x5 and x12 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and not x15 and x11 and not x3 and not x5 and not x12 ) = '1' then
         current_v110 <= s18;

      elsif ( x13 and not x15 and not x11 and x10 and x5 ) = '1' then
         y5 <= '1' ;
         current_v110 <= s7;

      elsif ( x13 and not x15 and not x11 and x10 and not x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( x13 and not x15 and not x11 and not x10 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         current_v110 <= s8;

      elsif ( x13 and not x15 and not x11 and not x10 and not x1 and x3 ) = '1' then
         current_v110 <= s1;

      elsif ( x13 and not x15 and not x11 and not x10 and not x1 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( not x13 and x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         current_v110 <= s10;

      elsif ( not x13 and not x3 and x5 and x7 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      elsif ( not x13 and not x3 and x5 and not x7 ) = '1' then
         current_v110 <= s18;

      elsif ( not x13 and not x3 and not x5 and x12 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_v110 <= s3;

      else
         current_v110 <= s18;

      end if;

   end case;
   end proc_v110;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;
	current_v110 <= s1;
      elsif (clk'event and clk ='1') then
        proc_v110;
      end if;
   end process;
end ARC;
