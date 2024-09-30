library ieee;
use ieee.std_logic_1164.all;

entity tiger is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,
	x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,
	x46,x47,x48,x49,x50,x51 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31 : out std_logic );
end tiger;

architecture ARC of tiger is

   type states_tiger is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,
	s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,
	s106,s107,s108,s109,s110,s111 );
   signal current_tiger : states_tiger;

begin
   process (clk , rst)
   procedure proc_tiger is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y23  <= '0' ;	y24  <= '0' ;
	y25  <= '0' ;	y26  <= '0' ;	y27  <= '0' ;	y28  <= '0' ;
	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;

   case current_tiger is
   when s1 =>
      if ( x15 and x16 and x5 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      elsif ( x15 and x16 and not x5 and x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s3;

      elsif ( x15 and x16 and not x5 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s4;

      elsif ( x15 and not x16 and x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( x15 and not x16 and not x1 ) = '1' then
         current_tiger <= s1;

      elsif ( not x15 and x16 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( not x15 and not x16 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s6;

      else
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      end if;

   when s2 =>
      if ( x15 and x16 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s7;

      elsif ( x15 and not x16 and x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s8;

      elsif ( x15 and not x16 and not x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s4;

      elsif ( not x15 and x16 and x4 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s7;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s9;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s8;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s7;

      end if;

   when s3 =>
      if ( x15 and x16 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( x15 and x16 and not x5 and x6 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( x15 and x16 and not x5 and not x6 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( x15 and not x16 and x6 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s11;

      elsif ( x15 and not x16 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s12;

      elsif ( not x15 and x16 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s11;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s14;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      end if;

   when s4 =>
      if ( x15 and x16 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s8;

      elsif ( x15 and not x16 and x12 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s7;

      elsif ( x15 and not x16 and not x12 ) = '1' then
         current_tiger <= s4;

      elsif ( not x15 and x16 and x4 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s9;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s8;

      elsif ( not x15 and not x16 and x14 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s8;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      end if;

   when s5 =>
      if ( x15 and x16 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s6;

      elsif ( x15 and x16 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( x15 and not x16 and x2 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      elsif ( x15 and not x16 and x2 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s3;

      elsif ( x15 and not x16 and x2 and not x3 and not x4 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s6;

      elsif ( x15 and not x16 and x2 and not x3 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( x15 and not x16 and not x2 ) = '1' then
         current_tiger <= s5;

      elsif ( not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s16;

      elsif ( not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s3;

      elsif ( not x15 and x16 and x4 and not x5 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s7;

      elsif ( not x15 and x16 and x4 and not x5 and not x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      elsif ( not x15 and x16 and not x4 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s6;

      elsif ( not x15 and x16 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s16;

      end if;

   when s6 =>
      if ( x15 and x16 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s16;

      elsif ( x15 and not x16 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( x15 and not x16 and not x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s16;

      elsif ( not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s16;

      elsif ( not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s3;

      elsif ( not x15 and x16 and x4 and not x5 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s7;

      elsif ( not x15 and x16 and x4 and not x5 and not x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      elsif ( not x15 and x16 and not x4 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s7;

      elsif ( not x15 and x16 and not x4 and not x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s16;

      end if;

   when s7 =>
      if ( x15 and x16 and x5 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( x15 and x16 and not x5 ) = '1' then
         y21 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s9;

      elsif ( x15 and not x16 and x13 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( x15 and not x16 and x13 and not x11 and x6 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s3;

      elsif ( x15 and not x16 and x13 and not x11 and x6 and not x4 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s6;

      elsif ( x15 and not x16 and x13 and not x11 and x6 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( x15 and not x16 and x13 and not x11 and not x6 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( x15 and not x16 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s16;

      elsif ( x15 and not x16 and not x13 and x14 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      elsif ( x15 and not x16 and not x13 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and x6 and x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and x6 and not x2 ) = '1' then
         current_tiger <= s7;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and not x6 and not x8 ) = '1' then
         current_tiger <= s7;

      elsif ( not x15 and x16 and x4 and x5 and x2 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s4;

      elsif ( not x15 and x16 and x4 and x5 and not x2 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s17;

      elsif ( not x15 and x16 and x4 and x5 and not x2 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s4;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s4;

      else
         y11 <= '1' ;
         current_tiger <= s18;

      end if;

   when s8 =>
      if ( x15 and x16 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s3;

      elsif ( x15 and x16 and not x5 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( x15 and not x16 and x12 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s7;

      elsif ( x15 and not x16 and not x12 ) = '1' then
         current_tiger <= s8;

      elsif ( not x15 and x16 and x4 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s18;

      elsif ( not x15 and x16 and not x4 and x2 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      elsif ( not x15 and x16 and not x4 and not x2 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s7;

      elsif ( not x15 and x16 and not x4 and not x2 and not x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      else
         y21 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s9;

      end if;

   when s9 =>
      if ( x15 ) = '1' then
         y2 <= '1' ;
         y15 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s19;

      elsif ( not x15 and x16 and x2 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( not x15 and x16 and not x2 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s7;

      elsif ( not x15 and x16 and not x2 and not x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      else
         y2 <= '1' ;
         y15 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s19;

      end if;

   when s10 =>
      if ( x15 and x16 and x5 and x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      elsif ( x15 and x16 and x5 and not x1 and x2 and x3 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s17;

      elsif ( x15 and x16 and x5 and not x1 and x2 and x3 and not x4 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s18;

      elsif ( x15 and x16 and x5 and not x1 and x2 and not x3 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s18;

      elsif ( x15 and x16 and x5 and not x1 and not x2 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s18;

      elsif ( x15 and x16 and not x5 and x6 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s18;

      elsif ( x15 and x16 and not x5 and not x6 and x1 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( x15 and x16 and not x5 and not x6 and not x1 and x2 and x3 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s17;

      elsif ( x15 and x16 and not x5 and not x6 and not x1 and x2 and x3 and not x4 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      elsif ( x15 and x16 and not x5 and not x6 and not x1 and x2 and not x3 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s18;

      elsif ( x15 and x16 and not x5 and not x6 and not x1 and not x2 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s18;

      elsif ( x15 and not x16 and x6 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s11;

      elsif ( x15 and not x16 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s12;

      elsif ( not x15 and x16 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s7;

      else
         y11 <= '1' ;
         current_tiger <= s18;

      end if;

   when s11 =>
      if ( x15 and x16 and x1 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( x15 and x16 and not x1 and x5 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s4;

      elsif ( x15 and x16 and not x1 and not x5 and x6 and x2 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( x15 and x16 and not x1 and not x5 and x6 and x2 and not x3 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s18;

      elsif ( x15 and x16 and not x1 and not x5 and x6 and not x2 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s18;

      elsif ( x15 and x16 and not x1 and not x5 and not x6 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s20;

      elsif ( x15 and not x16 and x7 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s20;

      elsif ( x15 and not x16 and not x7 and x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s20;

      elsif ( x15 and not x16 and not x7 and not x9 and x10 and x6 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s11;

      elsif ( x15 and not x16 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s12;

      elsif ( x15 and not x16 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( x15 and not x16 and not x7 and not x9 and not x10 and not x11 ) = '1' then
         current_tiger <= s11;

      elsif ( not x15 and x16 and x4 and x5 and x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( not x15 and x16 and x4 and x5 and not x2 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s6;

      elsif ( not x15 and x16 and x4 and x5 and not x2 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( not x15 and not x16 and x3 and x2 and x11 ) = '1' then
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s21;

      elsif ( not x15 and not x16 and x3 and x2 and not x11 and x4 and x12 and x13 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s17;

      elsif ( not x15 and not x16 and x3 and x2 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_tiger <= s11;

      elsif ( not x15 and not x16 and x3 and x2 and not x11 and x4 and not x12 ) = '1' then
         current_tiger <= s11;

      elsif ( not x15 and not x16 and x3 and x2 and not x11 and not x4 ) = '1' then
         current_tiger <= s11;

      elsif ( not x15 and not x16 and x3 and not x2 ) = '1' then
         current_tiger <= s11;

      elsif ( not x15 and not x16 and not x3 and x2 and x4 and x11 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s23;

      elsif ( not x15 and not x16 and not x3 and x2 and x4 and not x11 and x12 and x13 and x14 ) = '1' then
         y13 <= '1' ;
         current_tiger <= s22;

      elsif ( not x15 and not x16 and not x3 and x2 and x4 and not x11 and x12 and x13 and not x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      elsif ( not x15 and not x16 and not x3 and x2 and x4 and not x11 and x12 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s4;

      elsif ( not x15 and not x16 and not x3 and x2 and x4 and not x11 and not x12 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and x5 and x6 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and x5 and not x6 and x7 and x8 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and x5 and not x6 and x7 and not x8 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and x5 and not x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and x5 and not x6 and not x7 and not x8 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and not x5 and x6 and x7 and x9 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and not x5 and x6 and x7 and not x9 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and not x5 and x6 and not x7 and x9 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and not x5 and x6 and not x7 and not x9 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and not x5 and not x6 and x7 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and not x5 and not x6 and x7 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and not x5 and not x6 and not x7 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( not x15 and not x16 and not x3 and x2 and not x4 and not x5 and not x6 and not x7 and not x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      else
         current_tiger <= s11;

      end if;

   when s12 =>
      if ( x15 and x16 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s11;

      elsif ( x15 and not x16 and x8 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s20;

      elsif ( x15 and not x16 and not x8 and x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s20;

      elsif ( x15 and not x16 and not x8 and not x9 and x10 and x6 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s11;

      elsif ( x15 and not x16 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s12;

      elsif ( x15 and not x16 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( x15 and not x16 and not x8 and not x9 and not x10 and not x11 ) = '1' then
         current_tiger <= s12;

      else
         y1 <= '1' ;
         current_tiger <= s11;

      end if;

   when s13 =>
      if ( x15 and x16 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s6;

      elsif ( x15 and x16 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( x15 and not x16 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s18;

      elsif ( not x15 and x16 and x4 and x5 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s17;

      elsif ( not x15 and x16 and x4 and x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( not x15 and x16 and x4 and not x5 and x2 and x3 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s14;

      elsif ( not x15 and x16 and x4 and not x5 and x2 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( not x15 and x16 and x4 and not x5 and not x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s16;

      elsif ( not x15 and x16 and not x4 and x2 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s3;

      elsif ( not x15 and x16 and not x4 and x2 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s10;

      elsif ( not x15 and x16 and not x4 and not x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s16;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s3;

      end if;

   when s14 =>
      if ( x15 and x16 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s18;

      elsif ( x15 and not x16 and x13 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s3;

      elsif ( x15 and not x16 and x13 and not x4 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s6;

      elsif ( x15 and not x16 and x13 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( x15 and not x16 and not x13 and x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      elsif ( x15 and not x16 and not x13 and not x14 and x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      elsif ( x15 and not x16 and not x13 and not x14 and not x9 and not x7 and not x8 ) = '1' then
         current_tiger <= s14;

      elsif ( not x15 and x16 and x4 ) = '1' then
         y13 <= '1' ;
         current_tiger <= s22;

      elsif ( not x15 and x16 and not x4 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s6;

      elsif ( not x15 and x16 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      else
         y11 <= '1' ;
         current_tiger <= s18;

      end if;

   when s15 =>
      if ( x15 and x16 and x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s8;

      elsif ( x15 and x16 and not x5 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s14;

      elsif ( x15 and not x16 and x12 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s14;

      elsif ( x15 and not x16 and not x12 ) = '1' then
         current_tiger <= s15;

      elsif ( not x15 and x16 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s17;

      elsif ( not x15 and not x16 and x13 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s20;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s14;

      end if;

   when s16 =>
      if ( x15 and x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s12;

      elsif ( x15 and not x16 and x2 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      elsif ( x15 and not x16 and x2 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s3;

      elsif ( x15 and not x16 and x2 and not x3 and not x4 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s6;

      elsif ( x15 and not x16 and x2 and not x3 and not x4 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      elsif ( x15 and not x16 and not x2 ) = '1' then
         current_tiger <= s16;

      elsif ( not x15 and x16 and x4 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s12;

      elsif ( not x15 and x16 and x4 and not x5 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s12;

      elsif ( not x15 and x16 and x4 and not x5 and not x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s3;

      elsif ( not x15 and x16 and not x4 and x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s12;

      elsif ( not x15 and x16 and not x4 and not x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s17;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s12;

      end if;

   when s17 =>
      if ( x15 and x16 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s18;

      elsif ( x15 and not x16 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      elsif ( not x15 and x16 and x4 and x5 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      elsif ( not x15 and x16 and x4 and not x5 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s20;

      elsif ( not x15 and x16 and not x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( not x15 and not x16 and x12 and x13 and x3 ) = '1' then
         y13 <= '1' ;
         current_tiger <= s22;

      elsif ( not x15 and not x16 and x12 and x13 and not x3 and x14 ) = '1' then
         y13 <= '1' ;
         current_tiger <= s22;

      elsif ( not x15 and not x16 and x12 and x13 and not x3 and not x14 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      elsif ( not x15 and not x16 and x12 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s4;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s2;

      end if;

   when s18 =>
      if ( x40 and x10 and x39 and x36 ) = '1' then
         current_tiger <= s18;

      elsif ( x40 and x10 and x39 and not x36 and x46 and x51 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      elsif ( x40 and x10 and x39 and not x36 and x46 and not x51 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( x40 and x10 and x39 and not x36 and not x46 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s26;

      elsif ( x40 and x10 and not x39 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s27;

      elsif ( x40 and not x10 and x11 and x34 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      elsif ( x40 and not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      elsif ( x40 and not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      elsif ( x40 and not x10 and x11 and not x34 and x32 and not x7 and x45 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      elsif ( x40 and not x10 and x11 and not x34 and x32 and not x7 and x45 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and not x10 and x11 and not x34 and x32 and not x7 and not x45 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s26;

      elsif ( x40 and not x10 and x11 and not x34 and not x32 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s30;

      elsif ( x40 and not x10 and not x11 and x12 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s26;

      elsif ( x40 and not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( x40 and not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( x40 and not x10 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s33;

      elsif ( x40 and not x10 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and not x10 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and not x10 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s26;

      elsif ( x40 and not x10 and not x11 and not x12 and not x13 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and x10 and x11 and x1 and x2 and x3 and x4 ) = '1' then
         current_tiger <= s18;

      elsif ( not x40 and x10 and x11 and x1 and x2 and x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( not x40 and x10 and x11 and x1 and x2 and not x3 and x4 and x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and x10 and x11 and x1 and x2 and not x3 and x4 and not x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s30;

      elsif ( not x40 and x10 and x11 and x1 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( not x40 and x10 and x11 and x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s26;

      elsif ( not x40 and x10 and x11 and not x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( not x40 and x10 and not x11 and x12 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s26;

      elsif ( not x40 and x10 and not x11 and not x12 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s33;

      elsif ( not x40 and not x10 and x1 and x11 ) = '1' then
         y16 <= '1' ;
         y25 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s34;

      elsif ( not x40 and not x10 and x1 and not x11 and x12 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( not x40 and not x10 and x1 and not x11 and not x12 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s35;

      elsif ( not x40 and not x10 and not x1 and x11 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( not x40 and not x10 and not x1 and x11 and not x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( not x40 and not x10 and not x1 and not x11 and x12 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( not x40 and not x10 and not x1 and not x11 and x12 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( not x40 and not x10 and not x1 and not x11 and not x12 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( not x40 and not x10 and not x1 and not x11 and not x12 and not x2 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      end if;

   when s19 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      elsif ( not x15 and x14 and x13 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_tiger <= s36;

      elsif ( not x15 and x14 and not x13 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s7;

      else
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s20;

      end if;

   when s20 =>
      if ( x15 and x16 ) = '1' then
         y13 <= '1' ;
         current_tiger <= s22;

      elsif ( x15 and not x16 and x11 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s13;

      elsif ( x15 and not x16 and not x11 and x10 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s17;

      elsif ( x15 and not x16 and not x11 and not x10 ) = '1' then
         current_tiger <= s20;

      elsif ( not x15 and x16 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s15;

      elsif ( not x15 and x16 and not x3 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s8;

      else
         y11 <= '1' ;
         current_tiger <= s18;

      end if;

   when s21 =>
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s23;

   when s22 =>
      if ( x15 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s3;

      elsif ( not x15 and x16 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s6;

      elsif ( not x15 and x16 and not x1 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s5;

      else
         y21 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s9;

      end if;

   when s23 =>
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_tiger <= s36;

   when s24 =>
      if ( x40 and x35 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x40 and not x35 and x13 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s33;

      elsif ( x40 and not x35 and not x13 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s38;

      elsif ( not x40 and x10 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( not x40 and not x10 and x11 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s33;

      elsif ( not x40 and not x10 and not x11 and x7 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      end if;

   when s25 =>
      if ( x40 and x50 and x19 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      elsif ( x40 and x50 and x19 and not x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      elsif ( x40 and x50 and not x19 ) = '1' then
         current_tiger <= s25;

      elsif ( x40 and not x50 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      elsif ( not x40 and x10 and x11 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( not x40 and x10 and not x11 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      elsif ( not x40 and not x10 and x11 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      elsif ( not x40 and not x10 and x11 and not x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s42;

      elsif ( not x40 and not x10 and not x11 and x12 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s33;

      elsif ( not x40 and not x10 and not x11 and not x12 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s35;

      elsif ( not x40 and not x10 and not x11 and not x12 and not x1 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      end if;

   when s26 =>
      if ( x40 and x48 and x47 ) = '1' then
         current_tiger <= s26;

      elsif ( x40 and x48 and not x47 and x42 and x51 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( x40 and x48 and not x47 and x42 and not x51 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( x40 and x48 and not x47 and not x42 and x34 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( x40 and x48 and not x47 and not x42 and not x34 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( x40 and not x48 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( not x40 and x11 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( not x40 and not x11 and x1 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( not x40 and not x11 and x1 and not x2 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( not x40 and not x11 and x1 and not x2 and not x3 ) = '1' then
         current_tiger <= s26;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s30;

      end if;

   when s27 =>
      if ( x28 and x43 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      elsif ( x28 and not x43 ) = '1' then
         current_tiger <= s27;

      elsif ( not x28 and x27 and x8 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      elsif ( not x28 and x27 and not x8 and x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( not x28 and x27 and not x8 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      else
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      end if;

   when s28 =>
      if ( x50 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      else
         current_tiger <= s28;

      end if;

   when s29 =>
      if ( x40 and x16 and x45 and x27 and x29 and x42 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s43;

      elsif ( x40 and x16 and x45 and x27 and x29 and not x42 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( x40 and x16 and x45 and x27 and not x29 and x33 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( x40 and x16 and x45 and x27 and not x29 and not x33 and x43 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s30;

      elsif ( x40 and x16 and x45 and x27 and not x29 and not x33 and not x43 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( x40 and x16 and x45 and not x27 ) = '1' then
         current_tiger <= s29;

      elsif ( x40 and x16 and not x45 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x40 and not x16 and x37 and x44 and x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( x40 and not x16 and x37 and x44 and not x1 ) = '1' then
         current_tiger <= s29;

      elsif ( x40 and not x16 and x37 and not x44 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x40 and not x16 and not x37 and x25 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x40 and not x16 and not x37 and not x25 and x4 and x5 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s38;

      elsif ( x40 and not x16 and not x37 and not x25 and x4 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( x40 and not x16 and not x37 and not x25 and not x4 ) = '1' then
         current_tiger <= s29;

      elsif ( not x40 and x10 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and x10 and not x11 and x12 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and x10 and not x11 and x12 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( not x40 and x10 and not x11 and not x12 and x1 and x3 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s27;

      elsif ( not x40 and x10 and not x11 and not x12 and x1 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      elsif ( not x40 and x10 and not x11 and not x12 and x1 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      elsif ( not x40 and x10 and not x11 and not x12 and not x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and not x10 and x12 and x2 and x4 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      elsif ( not x40 and not x10 and x12 and x2 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      elsif ( not x40 and not x10 and x12 and not x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and not x10 and not x12 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s44;

      elsif ( not x40 and not x10 and not x12 and not x9 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      end if;

   when s30 =>
      if ( x40 and x17 and x19 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      elsif ( x40 and x17 and x19 and not x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      elsif ( x40 and x17 and not x19 ) = '1' then
         current_tiger <= s30;

      elsif ( x40 and not x17 and x20 ) = '1' then
         y1 <= '1' ;
         y3 <= '1' ;
         current_tiger <= s26;

      elsif ( x40 and not x17 and not x20 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( x40 and not x17 and not x20 and not x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( not x40 and x10 and x11 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( not x40 and x10 and not x11 and x12 and x4 and x1 ) = '1' then
         current_tiger <= s30;

      elsif ( not x40 and x10 and not x11 and x12 and x4 and not x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      elsif ( not x40 and x10 and not x11 and x12 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( not x40 and x10 and not x11 and not x12 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and not x10 and x11 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s45;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      end if;

   when s31 =>
      if ( x40 and x51 and x24 and x5 and x36 ) = '1' then
         current_tiger <= s31;

      elsif ( x40 and x51 and x24 and x5 and not x36 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      elsif ( x40 and x51 and x24 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and x51 and not x24 and x31 and x29 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      elsif ( x40 and x51 and not x24 and x31 and not x29 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and x51 and not x24 and not x31 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      elsif ( x40 and not x51 and x11 and x35 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      elsif ( x40 and not x51 and x11 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and not x51 and x11 and not x35 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x40 and not x51 and x11 and not x35 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and not x51 and not x11 and x49 and x35 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s45;

      elsif ( x40 and not x51 and not x11 and x49 and not x35 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x40 and not x51 and not x11 and x49 and not x35 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and not x51 and not x11 and not x49 and x3 and x6 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s33;

      elsif ( x40 and not x51 and not x11 and not x49 and x3 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and not x51 and not x11 and not x49 and not x3 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( not x40 and x10 and x11 and x3 and x4 ) = '1' then
         current_tiger <= s31;

      elsif ( not x40 and x10 and x11 and x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( not x40 and x10 and x11 and not x3 and x4 and x5 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and x10 and x11 and not x3 and x4 and not x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s30;

      elsif ( not x40 and x10 and x11 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( not x40 and x10 and not x11 and x2 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and x10 and not x11 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( not x40 and not x10 and x11 and x6 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s27;

      elsif ( not x40 and not x10 and x11 and not x6 and x8 and x4 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s38;

      elsif ( not x40 and not x10 and x11 and not x6 and x8 and not x4 and x1 and x3 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      elsif ( not x40 and not x10 and x11 and not x6 and x8 and not x4 and x1 and not x3 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      elsif ( not x40 and not x10 and x11 and not x6 and x8 and not x4 and not x1 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      elsif ( not x40 and not x10 and x11 and not x6 and not x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( not x40 and not x10 and not x11 and x12 and x9 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( not x40 and not x10 and not x11 and x12 and not x9 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s45;

      elsif ( not x40 and not x10 and not x11 and not x12 and x6 ) = '1' then
         y6 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s46;

      elsif ( not x40 and not x10 and not x11 and not x12 and not x6 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      end if;

   when s32 =>
      if ( x40 and x13 and x23 and x51 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      elsif ( x40 and x13 and x23 and not x51 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( x40 and x13 and not x23 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      elsif ( x40 and not x13 and x28 and x35 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      elsif ( x40 and not x13 and x28 and x35 and not x5 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and not x13 and x28 and not x35 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x40 and not x13 and x28 and not x35 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and not x13 and not x28 and x6 and x35 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s45;

      elsif ( x40 and not x13 and not x28 and x6 and not x35 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x40 and not x13 and not x28 and x6 and not x35 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x40 and not x13 and not x28 and not x6 and not x39 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      elsif ( not x40 and x10 and x11 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s30;

      elsif ( not x40 and x10 and not x11 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( not x40 and not x10 and x11 and x1 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s47;

      elsif ( not x40 and not x10 and x11 and not x1 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s30;

      elsif ( not x40 and not x10 and not x11 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      else
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      end if;

   when s33 =>
      if ( x40 and x8 and x48 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      elsif ( x40 and x8 and not x48 and x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x40 and x8 and not x48 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      elsif ( x40 and not x8 and x51 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      elsif ( x40 and not x8 and not x51 and x37 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x40 and not x8 and not x51 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      elsif ( not x40 and x10 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      elsif ( not x40 and not x10 and x11 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s33;

      elsif ( not x40 and not x10 and not x11 and x12 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      elsif ( not x40 and not x10 and not x11 and x12 and not x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s42;

      else
         y13 <= '1' ;
         y17 <= '1' ;
         y21 <= '1' ;
         current_tiger <= s48;

      end if;

   when s34 =>
      if ( x7 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s35;

      else
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      end if;

   when s35 =>
      if ( x40 and x29 and x50 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s42;

      elsif ( x40 and x29 and not x50 ) = '1' then
         current_tiger <= s35;

      elsif ( x40 and not x29 and x41 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x40 and not x29 and not x41 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( not x40 and x11 and x6 and x9 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s27;

      elsif ( not x40 and x11 and x6 and not x9 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s47;

      elsif ( not x40 and x11 and not x6 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s33;

      elsif ( not x40 and not x11 and x8 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      else
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s38;

      end if;

   when s36 =>
         y11 <= '1' ;
         current_tiger <= s18;

   when s37 =>
      if ( x40 and x10 and x12 and x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_tiger <= s49;

      elsif ( x40 and x10 and x12 and not x23 and x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      elsif ( x40 and x10 and x12 and not x23 and not x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( x40 and x10 and not x12 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s52;

      elsif ( x40 and not x10 and x1 and x22 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s53;

      elsif ( x40 and not x10 and x1 and not x22 and x2 and x3 and x11 ) = '1' then
         current_tiger <= s37;

      elsif ( x40 and not x10 and x1 and not x22 and x2 and x3 and not x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( x40 and not x10 and x1 and not x22 and x2 and not x3 and x11 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( x40 and not x10 and x1 and not x22 and x2 and not x3 and x11 and not x5 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s56;

      elsif ( x40 and not x10 and x1 and not x22 and x2 and not x3 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      elsif ( x40 and not x10 and x1 and not x22 and not x2 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s57;

      elsif ( x40 and not x10 and not x1 and x11 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( x40 and not x10 and not x1 and x11 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( x40 and not x10 and not x1 and not x11 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( not x40 and x10 and x39 and x36 ) = '1' then
         current_tiger <= s37;

      elsif ( not x40 and x10 and x39 and not x36 and x46 and x51 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s58;

      elsif ( not x40 and x10 and x39 and not x36 and x46 and not x51 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( not x40 and x10 and x39 and not x36 and not x46 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s57;

      elsif ( not x40 and x10 and not x39 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s59;

      elsif ( not x40 and not x10 and x11 and x34 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      elsif ( not x40 and not x10 and x11 and x34 and not x8 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s58;

      elsif ( not x40 and not x10 and x11 and x34 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and not x10 and x11 and not x34 and x32 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      elsif ( not x40 and not x10 and x11 and not x34 and x32 and not x7 and x45 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s58;

      elsif ( not x40 and not x10 and x11 and not x34 and x32 and not x7 and x45 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and not x10 and x11 and not x34 and x32 and not x7 and not x45 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s57;

      elsif ( not x40 and not x10 and x11 and not x34 and not x32 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s56;

      elsif ( not x40 and not x10 and not x11 and x12 and x20 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s57;

      elsif ( not x40 and not x10 and not x11 and x12 and not x20 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( not x40 and not x10 and not x11 and x12 and not x20 and not x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      elsif ( not x40 and not x10 and not x11 and not x12 and x13 and x1 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s52;

      elsif ( not x40 and not x10 and not x11 and not x12 and x13 and x1 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and not x10 and not x11 and not x12 and x13 and x1 and not x3 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and not x10 and not x11 and not x12 and x13 and not x1 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s57;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      end if;

   when s38 =>
      if ( x40 and x46 and x3 and x23 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s27;

      elsif ( x40 and x46 and x3 and not x23 ) = '1' then
         current_tiger <= s38;

      elsif ( x40 and x46 and not x3 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x40 and not x46 and x2 and x23 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s27;

      elsif ( x40 and not x46 and x2 and not x23 ) = '1' then
         current_tiger <= s38;

      elsif ( x40 and not x46 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( not x40 and x10 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( not x40 and not x10 and x11 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      elsif ( not x40 and not x10 and x11 and not x5 and x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( not x40 and not x10 and x11 and not x5 and not x6 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and not x10 and not x11 and x1 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      end if;

   when s39 =>
      if ( x38 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      else
         current_tiger <= s39;

      end if;

   when s40 =>
      if ( x10 and x6 and x7 and x2 and x3 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s27;

      elsif ( x10 and x6 and x7 and x2 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      elsif ( x10 and x6 and x7 and x2 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      elsif ( x10 and x6 and x7 and not x2 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x10 and x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and x3 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s27;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      elsif ( x10 and x6 and not x7 and not x8 and x2 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      elsif ( x10 and x6 and not x7 and not x8 and not x2 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( x10 and not x6 and x2 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      elsif ( x10 and not x6 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( not x10 and x11 and x5 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      elsif ( not x10 and x11 and not x5 and x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( not x10 and x11 and not x5 and not x6 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      end if;

   when s41 =>
      if ( x10 and x12 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x10 and not x12 and x1 and x2 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      elsif ( x10 and not x12 and x1 and not x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      elsif ( x10 and not x12 and not x1 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      elsif ( not x10 and x11 and x1 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s47;

      elsif ( not x10 and x11 and not x1 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x10 and x11 and not x1 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s30;

      elsif ( not x10 and not x11 and x12 and x3 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( not x10 and not x11 and x12 and not x3 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s27;

      elsif ( not x10 and not x11 and not x12 and x6 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s37;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      end if;

   when s42 =>
      if ( x40 and x17 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s38;

      elsif ( x40 and not x17 and x43 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      elsif ( x40 and not x17 and not x43 ) = '1' then
         current_tiger <= s42;

      elsif ( not x40 and x6 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s38;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s42;

      end if;

   when s43 =>
      if ( x40 and x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      elsif ( x40 and not x3 and x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s42;

      elsif ( x40 and not x3 and not x2 and x28 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( x40 and not x3 and not x2 and not x28 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( not x40 and x10 and x5 and x3 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s27;

      elsif ( not x40 and x10 and x5 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      elsif ( not x40 and x10 and x5 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      elsif ( not x40 and x10 and not x5 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s30;

      elsif ( not x40 and not x10 and x11 and x1 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s47;

      elsif ( not x40 and not x10 and x11 and not x1 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s30;

      else
         current_tiger <= s43;

      end if;

   when s44 =>
      if ( x40 and x50 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s42;

      elsif ( x40 and not x50 ) = '1' then
         current_tiger <= s44;

      elsif ( not x40 and x11 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s43;

      elsif ( not x40 and not x11 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s43;

      else
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      end if;

   when s45 =>
      if ( x40 and x37 and x28 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s32;

      elsif ( x40 and x37 and not x28 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s31;

      elsif ( x40 and not x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      elsif ( not x40 and x10 and x1 and x2 and x3 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s27;

      elsif ( not x40 and x10 and x1 and x2 and not x3 and x4 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      elsif ( not x40 and x10 and x1 and x2 and not x3 and not x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      elsif ( not x40 and x10 and x1 and not x2 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      elsif ( not x40 and x10 and not x1 and x2 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s43;

      elsif ( not x40 and x10 and not x1 and x2 and not x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s39;

      elsif ( not x40 and x10 and not x1 and not x2 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s24;

      else
         current_tiger <= s45;

      end if;

   when s46 =>
      if ( x3 and x5 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      elsif ( x3 and not x5 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s41;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      end if;

   when s47 =>
      if ( x8 and x1 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s35;

      elsif ( x8 and not x1 and x4 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s44;

      elsif ( x8 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s29;

      else
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      end if;

   when s48 =>
      if ( x40 and x37 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      elsif ( x40 and not x37 and x9 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s28;

      elsif ( x40 and not x37 and not x9 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s40;

      elsif ( not x40 and x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and not x10 and x11 and x1 ) = '1' then
         y3 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s47;

      elsif ( not x40 and not x10 and x11 and not x1 and x3 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s25;

      elsif ( not x40 and not x10 and x11 and not x1 and not x3 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s30;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s30;

      end if;

   when s49 =>
      if ( x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s61;

      elsif ( not x19 and x26 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s62;

      elsif ( not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      else
         y7 <= '1' ;
         y11 <= '1' ;
         current_tiger <= s63;

      end if;

   when s50 =>
      if ( x40 and x19 and x28 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s63;

      elsif ( x40 and x19 and x28 and not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( x40 and x19 and x28 and not x1 and not x35 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s56;

      elsif ( x40 and x19 and not x28 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( x40 and not x19 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s56;

      elsif ( not x40 and x13 and x23 and x51 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s58;

      elsif ( not x40 and x13 and x23 and not x51 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( not x40 and x13 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s58;

      elsif ( not x40 and not x13 and x28 and x35 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s58;

      elsif ( not x40 and not x13 and x28 and x35 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and not x13 and x28 and not x35 and x41 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and not x13 and x28 and not x35 and not x41 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and not x13 and not x28 and x6 and x35 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s65;

      elsif ( not x40 and not x13 and not x28 and x6 and not x35 and x41 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and not x13 and not x28 and x6 and not x35 and not x41 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and not x13 and not x28 and not x6 and x39 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s62;

      end if;

   when s51 =>
      if ( x40 and x30 and x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s66;

      elsif ( x40 and x30 and x16 and not x6 and x8 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s61;

      elsif ( x40 and x30 and x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s62;

      elsif ( x40 and x30 and x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      elsif ( x40 and x30 and x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_tiger <= s63;

      elsif ( x40 and x30 and x16 and not x6 and not x8 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( x40 and x30 and not x16 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( x40 and x30 and not x16 and not x10 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( x40 and not x30 and x5 and x9 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( x40 and not x30 and x5 and not x9 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s65;

      elsif ( x40 and not x30 and not x5 and x3 and x11 ) = '1' then
         current_tiger <= s51;

      elsif ( x40 and not x30 and not x5 and x3 and not x11 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( x40 and not x30 and not x5 and not x3 and x11 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s56;

      elsif ( x40 and not x30 and not x5 and not x3 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      elsif ( not x40 and x51 and x24 and x5 and x36 ) = '1' then
         current_tiger <= s51;

      elsif ( not x40 and x51 and x24 and x5 and not x36 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s58;

      elsif ( not x40 and x51 and x24 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and x51 and not x24 and x31 and x29 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s58;

      elsif ( not x40 and x51 and not x24 and x31 and not x29 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and x51 and not x24 and not x31 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s58;

      elsif ( not x40 and not x51 and x11 and x35 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s58;

      elsif ( not x40 and not x51 and x11 and x35 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and not x51 and x11 and not x35 and x41 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and not x51 and x11 and not x35 and not x41 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and not x51 and not x11 and x49 and x35 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s65;

      elsif ( not x40 and not x51 and not x11 and x49 and not x35 and x41 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and not x51 and not x11 and x49 and not x35 and not x41 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and not x51 and not x11 and not x49 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s52;

      elsif ( not x40 and not x51 and not x11 and not x49 and x3 and not x6 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      end if;

   when s52 =>
      if ( x40 and x12 and x27 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      elsif ( x40 and x12 and x27 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( x40 and x12 and x27 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( x40 and x12 and not x27 and x1 and x29 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s59;

      elsif ( x40 and x12 and not x27 and x1 and not x29 ) = '1' then
         current_tiger <= s52;

      elsif ( x40 and x12 and not x27 and not x1 and x29 ) = '1' then
         current_tiger <= s52;

      elsif ( x40 and x12 and not x27 and not x1 and not x29 ) = '1' then
         current_tiger <= s52;

      elsif ( x40 and not x12 and x29 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s61;

      elsif ( x40 and not x12 and not x29 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s69;

      elsif ( not x40 and x17 ) = '1' then
         y7 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s70;

      elsif ( not x40 and not x17 and x43 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      else
         current_tiger <= s52;

      end if;

   when s53 =>
      if ( x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s68;

      end if;

   when s54 =>
      if ( x40 and x14 and x8 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( x40 and x14 and x8 and not x10 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( x40 and x14 and not x8 and x30 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s59;

      elsif ( x40 and x14 and not x8 and x30 and not x1 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s62;

      elsif ( x40 and x14 and not x8 and x30 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s68;

      elsif ( x40 and x14 and not x8 and not x30 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( x40 and not x14 and x3 and x32 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      elsif ( x40 and not x14 and x3 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( x40 and not x14 and not x3 ) = '1' then
         current_tiger <= s54;

      elsif ( not x40 and x16 and x45 and x27 and x29 and x42 ) = '1' then
         y13 <= '1' ;
         current_tiger <= s71;

      elsif ( not x40 and x16 and x45 and x27 and x29 and not x42 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( not x40 and x16 and x45 and x27 and not x29 and x33 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( not x40 and x16 and x45 and x27 and not x29 and not x33 and x43 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s56;

      elsif ( not x40 and x16 and x45 and x27 and not x29 and not x33 and not x43 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( not x40 and x16 and x45 and not x27 ) = '1' then
         current_tiger <= s54;

      elsif ( not x40 and x16 and not x45 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and not x16 and x37 and x44 and x1 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( not x40 and not x16 and x37 and x44 and not x1 ) = '1' then
         current_tiger <= s54;

      elsif ( not x40 and not x16 and x37 and not x44 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and not x16 and not x37 and x25 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and not x16 and not x37 and not x25 and x4 and x5 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s61;

      elsif ( not x40 and not x16 and not x37 and not x25 and x4 and not x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      else
         current_tiger <= s54;

      end if;

   when s55 =>
      if ( x40 and x24 and x26 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s58;

      elsif ( x40 and x24 and x26 and not x7 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s72;

      elsif ( x40 and x24 and not x26 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s68;

      elsif ( x40 and not x24 and x28 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s52;

      elsif ( x40 and not x24 and not x28 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and x31 and x19 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s62;

      elsif ( not x40 and x31 and x19 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s68;

      elsif ( not x40 and x31 and not x19 ) = '1' then
         current_tiger <= s55;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s68;

      end if;

   when s56 =>
      if ( x40 and x19 and x13 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s65;

      elsif ( x40 and x19 and not x13 and x32 and x18 and x12 ) = '1' then
         current_tiger <= s56;

      elsif ( x40 and x19 and not x13 and x32 and x18 and not x12 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s68;

      elsif ( x40 and x19 and not x13 and x32 and not x18 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( x40 and x19 and not x13 and not x32 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( x40 and not x19 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and x17 and x19 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s62;

      elsif ( not x40 and x17 and x19 and not x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s68;

      elsif ( not x40 and x17 and not x19 ) = '1' then
         current_tiger <= s56;

      elsif ( not x40 and not x17 and x20 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s57;

      elsif ( not x40 and not x17 and not x20 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      end if;

   when s57 =>
      if ( x40 and x11 and x25 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      elsif ( x40 and x11 and x25 and not x3 and x5 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( x40 and x11 and x25 and not x3 and not x5 ) = '1' then
         current_tiger <= s57;

      elsif ( x40 and x11 and not x25 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s56;

      elsif ( x40 and not x11 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      elsif ( not x40 and x48 and x47 ) = '1' then
         current_tiger <= s57;

      elsif ( not x40 and x48 and not x47 and x42 and x51 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      elsif ( not x40 and x48 and not x47 and x42 and not x51 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( not x40 and x48 and not x47 and not x42 and x34 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( not x40 and x48 and not x47 and not x42 and not x34 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      else
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      end if;

   when s58 =>
      if ( x40 and x35 and x7 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s63;

      elsif ( x40 and x35 and x7 and not x1 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( x40 and x35 and not x7 ) = '1' then
         current_tiger <= s58;

      elsif ( x40 and not x35 and x7 and x1 ) = '1' then
         current_tiger <= s58;

      elsif ( x40 and not x35 and x7 and not x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      elsif ( x40 and not x35 and not x7 ) = '1' then
         current_tiger <= s58;

      elsif ( not x40 and x3 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      elsif ( not x40 and not x3 and x2 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s69;

      elsif ( not x40 and not x3 and not x2 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      end if;

   when s59 =>
      if ( x40 and x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( x40 and not x5 and x34 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s62;

      elsif ( x40 and not x5 and not x34 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      elsif ( not x40 and x35 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and not x35 and x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s52;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s61;

      end if;

   when s60 =>
      if ( x40 and x10 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s68;

      elsif ( x40 and not x10 and x25 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s58;

      elsif ( x40 and not x10 and not x25 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s69;

      elsif ( not x40 and x8 and x48 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      elsif ( not x40 and x8 and not x48 and x37 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and x8 and not x48 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      elsif ( not x40 and not x8 and x51 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      elsif ( not x40 and not x8 and not x51 and x37 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      end if;

   when s61 =>
      if ( x40 and x2 and x8 and x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s63;

      elsif ( x40 and x2 and x8 and not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( x40 and x2 and x8 and not x1 and not x35 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s56;

      elsif ( x40 and x2 and not x8 and x32 and x1 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s59;

      elsif ( x40 and x2 and not x8 and x32 and not x1 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s62;

      elsif ( x40 and x2 and not x8 and x32 and not x1 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s68;

      elsif ( x40 and x2 and not x8 and not x32 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s56;

      elsif ( x40 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      elsif ( not x40 and x37 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      elsif ( not x40 and x37 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      end if;

   when s62 =>
      if ( x40 and x16 and x19 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      elsif ( x40 and x16 and x19 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( x40 and x16 and x19 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( x40 and x16 and not x19 and x1 and x30 and x26 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s59;

      elsif ( x40 and x16 and not x19 and x1 and x30 and not x26 and x3 ) = '1' then
         current_tiger <= s62;

      elsif ( x40 and x16 and not x19 and x1 and x30 and not x26 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s59;

      elsif ( x40 and x16 and not x19 and x1 and not x30 ) = '1' then
         current_tiger <= s62;

      elsif ( x40 and x16 and not x19 and not x1 and x30 and x26 ) = '1' then
         current_tiger <= s62;

      elsif ( x40 and x16 and not x19 and not x1 and x30 and not x26 and x3 ) = '1' then
         current_tiger <= s62;

      elsif ( x40 and x16 and not x19 and not x1 and x30 and not x26 and not x3 ) = '1' then
         current_tiger <= s62;

      elsif ( x40 and x16 and not x19 and not x1 and not x30 ) = '1' then
         current_tiger <= s62;

      elsif ( x40 and not x16 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and x28 and x43 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      elsif ( not x40 and x28 and not x43 ) = '1' then
         current_tiger <= s62;

      elsif ( not x40 and not x28 and x27 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      elsif ( not x40 and not x28 and x27 and not x8 and x37 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and not x28 and x27 and not x8 and not x37 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      elsif ( not x40 and not x28 and not x27 and x50 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s62;

      end if;

   when s63 =>
      if ( x1 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s63;

      elsif ( not x1 and x35 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      else
         y1 <= '1' ;
         current_tiger <= s56;

      end if;

   when s64 =>
      if ( x1 and x15 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s73;

      elsif ( x1 and not x15 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s74;

      else
         y11 <= '1' ;
         current_tiger <= s74;

      end if;

   when s65 =>
      if ( x40 and x9 ) = '1' then
         y13 <= '1' ;
         current_tiger <= s71;

      elsif ( x40 and not x9 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( x40 and not x9 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s62;

      elsif ( not x40 and x29 and x50 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s69;

      elsif ( not x40 and x29 and not x50 ) = '1' then
         current_tiger <= s65;

      elsif ( not x40 and not x29 and x41 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s54;

      end if;

   when s66 =>
      if ( x16 and x6 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s66;

      elsif ( x16 and not x6 and x8 and x19 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s61;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s62;

      elsif ( x16 and not x6 and x8 and not x19 and x26 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      elsif ( x16 and not x6 and x8 and not x19 and not x26 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         current_tiger <= s63;

      elsif ( x16 and not x6 and not x8 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x16 and x10 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      else
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      end if;

   when s67 =>
      if ( x40 and x22 and x2 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      elsif ( x40 and x22 and x2 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( x40 and x22 and x2 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( x40 and x22 and not x2 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( x40 and not x22 and x31 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( x40 and not x22 and not x31 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( not x40 and x46 and x3 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s59;

      elsif ( not x40 and x46 and x3 and not x23 ) = '1' then
         current_tiger <= s67;

      elsif ( not x40 and x46 and not x3 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( not x40 and not x46 and x2 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s59;

      elsif ( not x40 and not x46 and x2 and not x23 ) = '1' then
         current_tiger <= s67;

      else
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      end if;

   when s68 =>
      if ( x40 and x25 and x22 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( x40 and x25 and not x22 and x6 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      elsif ( x40 and x25 and not x22 and x6 and not x8 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s64;

      elsif ( x40 and x25 and not x22 and not x6 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      elsif ( x40 and not x25 and x29 ) = '1' then
         y8 <= '1' ;
         y10 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s53;

      elsif ( x40 and not x25 and not x29 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s59;

      elsif ( not x40 and x38 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      elsif ( not x40 and not x38 and x50 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s50;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s62;

      end if;

   when s69 =>
      if ( x37 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      elsif ( not x37 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s60;

      else
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      end if;

   when s70 =>
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

   when s71 =>
      if ( x40 and x33 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s67;

      elsif ( x40 and not x33 and x13 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s51;

      elsif ( x40 and not x33 and not x13 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s55;

      elsif ( not x40 and x50 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s69;

      else
         current_tiger <= s71;

      end if;

   when s72 =>
      if ( x16 and x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s66;

      elsif ( x16 and not x9 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s63;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s52;

      end if;

   when s73 =>
      if ( x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s75;

      elsif ( not x15 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s76;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s75;

      end if;

   when s74 =>
      if ( x15 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s75;

      elsif ( not x15 and x2 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s77;

      elsif ( not x15 and x2 and not x3 and x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s78;

      elsif ( not x15 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s73;

      else
         current_tiger <= s74;

      end if;

   when s75 =>
      if ( x15 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s79;

      elsif ( not x15 and x2 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s77;

      elsif ( not x15 and x2 and not x3 and x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s78;

      elsif ( not x15 and x2 and not x3 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s73;

      else
         current_tiger <= s75;

      end if;

   when s76 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s80;

      elsif ( not x15 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s81;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s79;

      end if;

   when s77 =>
      if ( x15 and x13 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s82;

      elsif ( x15 and not x13 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s83;

      elsif ( not x15 and x12 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s83;

      else
         current_tiger <= s77;

      end if;

   when s78 =>
      if ( x15 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s76;

      elsif ( not x15 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s81;

      else
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s79;

      end if;

   when s79 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s81;

      elsif ( not x15 and x8 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s82;

      elsif ( not x15 and not x8 and x9 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s82;

      elsif ( not x15 and not x8 and not x9 and x10 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s81;

      elsif ( not x15 and not x8 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s79;

      elsif ( not x15 and not x8 and not x9 and not x10 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s84;

      else
         current_tiger <= s79;

      end if;

   when s80 =>
      if ( x26 and x1 and x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s85;

      elsif ( x26 and x1 and not x28 and x2 and x3 and x25 ) = '1' then
         current_tiger <= s80;

      elsif ( x26 and x1 and not x28 and x2 and x3 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      elsif ( x26 and x1 and not x28 and x2 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s87;

      elsif ( x26 and x1 and not x28 and x2 and not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s88;

      elsif ( x26 and x1 and not x28 and x2 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s85;

      elsif ( x26 and x1 and not x28 and not x2 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s89;

      elsif ( x26 and not x1 and x28 and x2 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      elsif ( x26 and not x1 and x28 and not x2 and x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      elsif ( x26 and not x1 and x28 and not x2 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      elsif ( x26 and not x1 and not x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      elsif ( not x26 and x27 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s89;

      elsif ( not x26 and not x27 and x28 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s85;

      elsif ( not x26 and not x27 and x28 and not x1 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      elsif ( not x26 and not x27 and x28 and not x1 and not x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      else
         y11 <= '1' ;
         current_tiger <= s89;

      end if;

   when s81 =>
      if ( x15 and x3 and x2 and x11 ) = '1' then
         y2 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s91;

      elsif ( x15 and x3 and x2 and not x11 and x4 and x12 and x13 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s92;

      elsif ( x15 and x3 and x2 and not x11 and x4 and x12 and not x13 ) = '1' then
         current_tiger <= s81;

      elsif ( x15 and x3 and x2 and not x11 and x4 and not x12 ) = '1' then
         current_tiger <= s81;

      elsif ( x15 and x3 and x2 and not x11 and not x4 ) = '1' then
         current_tiger <= s81;

      elsif ( x15 and x3 and not x2 ) = '1' then
         current_tiger <= s81;

      elsif ( x15 and not x3 and x2 and x4 and x11 ) = '1' then
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s94;

      elsif ( x15 and not x3 and x2 and x4 and not x11 and x12 and x13 and x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s93;

      elsif ( x15 and not x3 and x2 and x4 and not x11 and x12 and x13 and not x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s77;

      elsif ( x15 and not x3 and x2 and x4 and not x11 and x12 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s95;

      elsif ( x15 and not x3 and x2 and x4 and not x11 and not x12 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s96;

      elsif ( x15 and not x3 and x2 and not x4 and x5 and x6 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s84;

      elsif ( x15 and not x3 and x2 and not x4 and x5 and not x6 and x7 and x8 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s84;

      elsif ( x15 and not x3 and x2 and not x4 and x5 and not x6 and x7 and not x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s76;

      elsif ( x15 and not x3 and x2 and not x4 and x5 and not x6 and not x7 and x8 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s76;

      elsif ( x15 and not x3 and x2 and not x4 and x5 and not x6 and not x7 and not x8 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s84;

      elsif ( x15 and not x3 and x2 and not x4 and not x5 and x6 and x7 and x9 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s84;

      elsif ( x15 and not x3 and x2 and not x4 and not x5 and x6 and x7 and not x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s76;

      elsif ( x15 and not x3 and x2 and not x4 and not x5 and x6 and not x7 and x9 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s76;

      elsif ( x15 and not x3 and x2 and not x4 and not x5 and x6 and not x7 and not x9 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s84;

      elsif ( x15 and not x3 and x2 and not x4 and not x5 and not x6 and x7 and x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s84;

      elsif ( x15 and not x3 and x2 and not x4 and not x5 and not x6 and x7 and not x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s76;

      elsif ( x15 and not x3 and x2 and not x4 and not x5 and not x6 and not x7 and x10 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s76;

      elsif ( x15 and not x3 and x2 and not x4 and not x5 and not x6 and not x7 and not x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s84;

      elsif ( x15 and not x3 and not x2 ) = '1' then
         current_tiger <= s81;

      elsif ( not x15 and x7 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s82;

      elsif ( not x15 and not x7 and x9 ) = '1' then
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s82;

      elsif ( not x15 and not x7 and not x9 and x10 and x6 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         current_tiger <= s81;

      elsif ( not x15 and not x7 and not x9 and x10 and not x6 ) = '1' then
         y4 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y31 <= '1' ;
         current_tiger <= s79;

      elsif ( not x15 and not x7 and not x9 and not x10 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s84;

      else
         current_tiger <= s81;

      end if;

   when s82 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s80;

      elsif ( not x15 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s84;

      elsif ( not x15 and not x11 and x10 ) = '1' then
         y2 <= '1' ;
         y20 <= '1' ;
         y25 <= '1' ;
         current_tiger <= s92;

      else
         current_tiger <= s82;

      end if;

   when s83 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s80;

      elsif ( not x15 and x13 and x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s78;

      elsif ( not x15 and x13 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s73;

      elsif ( not x15 and not x13 and x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s77;

      elsif ( not x15 and not x13 and not x14 and x9 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s77;

      elsif ( not x15 and not x13 and not x14 and not x9 and x7 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s77;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x7 and x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s77;

      else
         current_tiger <= s83;

      end if;

   when s84 =>
      if ( x15 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s78;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s80;

      end if;

   when s85 =>
      if ( x26 and x28 and x3 and x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s97;

      elsif ( x26 and x28 and x3 and not x5 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      elsif ( x26 and x28 and not x3 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s87;

      elsif ( x26 and not x28 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s88;

      elsif ( not x26 and x27 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      elsif ( not x26 and not x27 and x5 and x28 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      elsif ( not x26 and not x27 and x5 and not x28 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s99;

      elsif ( not x26 and not x27 and x5 and not x28 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s100;

      elsif ( not x26 and not x27 and x5 and not x28 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      elsif ( not x26 and not x27 and not x5 and x28 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      else
         y1 <= '1' ;
         current_tiger <= s88;

      end if;

   when s86 =>
      if ( x26 and x28 and x9 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s88;

      elsif ( x26 and x28 and not x9 and x23 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      elsif ( x26 and x28 and not x9 and not x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      elsif ( x26 and not x28 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s87;

      elsif ( not x26 and x27 and x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s87;

      elsif ( not x26 and x27 and not x4 ) = '1' then
         current_tiger <= s1;

      elsif ( not x26 and not x27 and x28 and x2 and x24 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s97;

      elsif ( not x26 and not x27 and x28 and x2 and not x24 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      elsif ( not x26 and not x27 and x28 and not x2 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s87;

      elsif ( not x26 and not x27 and not x28 and x18 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s99;

      elsif ( not x26 and not x27 and not x28 and x18 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s100;

      elsif ( not x26 and not x27 and not x28 and x18 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s87;

      end if;

   when s87 =>
      if ( x26 and x28 and x6 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s85;

      elsif ( x26 and x28 and not x6 and x4 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      elsif ( x26 and x28 and not x6 and not x4 ) = '1' then
         current_tiger <= s1;

      elsif ( x26 and not x28 ) = '1' then
         current_tiger <= s1;

      elsif ( not x26 and x27 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      elsif ( not x26 and not x27 and x28 ) = '1' then
         y4 <= '1' ;
         y16 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y29 <= '1' ;
         current_tiger <= s101;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      end if;

   when s88 =>
      if ( x26 and x28 and x7 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s85;

      elsif ( x26 and x28 and not x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      elsif ( x26 and not x28 ) = '1' then
         current_tiger <= s1;

      elsif ( not x26 and x27 and x25 and x9 ) = '1' then
         current_tiger <= s88;

      elsif ( not x26 and x27 and x25 and not x9 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      elsif ( not x26 and x27 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s87;

      end if;

   when s89 =>
      if ( x26 and x28 and x9 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s88;

      elsif ( x26 and x28 and not x9 and x23 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      elsif ( x26 and x28 and not x9 and not x23 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      elsif ( x26 and not x28 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s85;

      elsif ( not x26 and x1 and x27 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s85;

      elsif ( not x26 and x1 and x27 and not x2 and x3 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      elsif ( not x26 and x1 and x27 and not x2 and not x3 ) = '1' then
         current_tiger <= s89;

      elsif ( not x26 and x1 and not x27 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s99;

      elsif ( not x26 and x1 and not x27 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s100;

      elsif ( not x26 and x1 and not x27 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      elsif ( not x26 and x1 and not x27 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      elsif ( not x26 and not x1 and x27 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s88;

      elsif ( not x26 and not x1 and not x27 and x2 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s85;

      else
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      end if;

   when s90 =>
      if ( x26 and x28 and x23 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s100;

      elsif ( x26 and x28 and not x23 and x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      elsif ( x26 and x28 and not x23 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      elsif ( x26 and not x28 and x3 and x25 ) = '1' then
         current_tiger <= s90;

      elsif ( x26 and not x28 and x3 and not x25 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      elsif ( x26 and not x28 and not x3 and x4 and x5 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s87;

      elsif ( x26 and not x28 and not x3 and x4 and not x5 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s88;

      elsif ( x26 and not x28 and not x3 and not x4 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s85;

      elsif ( not x26 and x27 and x4 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s87;

      elsif ( not x26 and x27 and not x4 ) = '1' then
         current_tiger <= s1;

      elsif ( not x26 and not x27 and x28 and x11 ) = '1' then
         current_tiger <= s1;

      elsif ( not x26 and not x27 and x28 and not x11 ) = '1' then
         y11 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s102;

      else
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s87;

      end if;

   when s91 =>
         y9 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s94;

   when s92 =>
      if ( x15 and x12 and x13 and x3 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s93;

      elsif ( x15 and x12 and x13 and not x3 and x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y7 <= '1' ;
         y12 <= '1' ;
         current_tiger <= s93;

      elsif ( x15 and x12 and x13 and not x3 and not x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s77;

      elsif ( x15 and x12 and not x13 ) = '1' then
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s95;

      elsif ( x15 and not x12 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s96;

      else
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s96;

      end if;

   when s93 =>
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s103;

   when s94 =>
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_tiger <= s104;

   when s95 =>
      if ( x15 and x14 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s105;

      elsif ( x15 and not x14 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s77;

      elsif ( not x15 and x12 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s106;

      else
         current_tiger <= s95;

      end if;

   when s96 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s106;

      elsif ( not x15 and x6 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s105;

      else
         y17 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s95;

      end if;

   when s97 =>
      if ( x26 ) = '1' then
         y11 <= '1' ;
         current_tiger <= s89;

      elsif ( not x26 and x28 and x5 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s107;

      elsif ( not x26 and x28 and not x5 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s108;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      end if;

   when s98 =>
      if ( x26 and x21 ) = '1' then
         current_tiger <= s1;

      elsif ( x26 and not x21 ) = '1' then
         y11 <= '1' ;
         y18 <= '1' ;
         current_tiger <= s87;

      elsif ( not x26 and x27 ) = '1' then
         current_tiger <= s1;

      elsif ( not x26 and not x27 and x28 and x3 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s85;

      elsif ( not x26 and not x27 and x28 and not x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s99;

      elsif ( not x26 and not x27 and not x28 and x19 and x24 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s109;

      elsif ( not x26 and not x27 and not x28 and x19 and not x24 ) = '1' then
         current_tiger <= s1;

      else
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s97;

      end if;

   when s99 =>
      if ( x28 and x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s100;

      elsif ( x28 and not x7 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s109;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      end if;

   when s100 =>
      if ( x26 and x8 and x1 ) = '1' then
         y9 <= '1' ;
         y13 <= '1' ;
         current_tiger <= s85;

      elsif ( x26 and x8 and not x1 and x14 ) = '1' then
         y1 <= '1' ;
         current_tiger <= s88;

      elsif ( x26 and x8 and not x1 and not x14 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      elsif ( x26 and not x8 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         current_tiger <= s97;

      elsif ( not x26 and x28 ) = '1' then
         current_tiger <= s1;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s99;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s100;

      elsif ( not x26 and not x28 and x6 and x7 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      elsif ( not x26 and not x28 and x6 and x7 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      elsif ( not x26 and not x28 and x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s109;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and x3 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         current_tiger <= s99;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and not x3 and x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s100;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and x5 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y14 <= '1' ;
         y30 <= '1' ;
         current_tiger <= s98;

      elsif ( not x26 and not x28 and x6 and not x7 and not x8 and not x5 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      elsif ( not x26 and not x28 and not x6 and x24 ) = '1' then
         y4 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_tiger <= s109;

      else
         current_tiger <= s1;

      end if;

   when s101 =>
      if ( x6 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s110;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s108;

      end if;

   when s102 =>
      if ( x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y20 <= '1' ;
         current_tiger <= s110;

      end if;

   when s103 =>
         y12 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s111;

   when s104 =>
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s80;

   when s105 =>
      if ( x15 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s103;

      elsif ( not x15 and x12 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s106;

      else
         current_tiger <= s105;

      end if;

   when s106 =>
      if ( x15 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y9 <= '1' ;
         current_tiger <= s80;

      elsif ( not x15 and x13 and x11 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y28 <= '1' ;
         current_tiger <= s84;

      elsif ( not x15 and x13 and not x11 and x6 and x4 ) = '1' then
         y11 <= '1' ;
         y23 <= '1' ;
         current_tiger <= s78;

      elsif ( not x15 and x13 and not x11 and x6 and not x4 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y27 <= '1' ;
         current_tiger <= s73;

      elsif ( not x15 and x13 and not x11 and not x6 and x5 ) = '1' then
         y15 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s76;

      elsif ( not x15 and x13 and not x11 and not x6 and not x5 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_tiger <= s75;

      elsif ( not x15 and not x13 and x14 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s96;

      elsif ( not x15 and not x13 and not x14 and x9 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s96;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and x2 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s96;

      elsif ( not x15 and not x13 and not x14 and not x9 and x6 and not x2 ) = '1' then
         current_tiger <= s106;

      elsif ( not x15 and not x13 and not x14 and not x9 and not x6 and x8 ) = '1' then
         y14 <= '1' ;
         y22 <= '1' ;
         current_tiger <= s96;

      else
         current_tiger <= s106;

      end if;

   when s107 =>
         y1 <= '1' ;
         current_tiger <= s88;

   when s108 =>
      if ( x9 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         current_tiger <= s100;

      end if;

   when s109 =>
      if ( x28 and x25 ) = '1' then
         current_tiger <= s1;

      elsif ( x28 and not x25 ) = '1' then
         y16 <= '1' ;
         y22 <= '1' ;
         y24 <= '1' ;
         current_tiger <= s90;

      else
         current_tiger <= s1;

      end if;

   when s110 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         current_tiger <= s86;

   when s111 =>
      if ( x14 and x13 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_tiger <= s104;

      elsif ( x14 and not x13 ) = '1' then
         y9 <= '1' ;
         y17 <= '1' ;
         current_tiger <= s106;

      else
         y2 <= '1' ;
         y18 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         current_tiger <= s82;

      end if;

   end case;
   end proc_tiger;

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
	current_tiger <= s1;
      elsif (clk'event and clk ='1') then
        proc_tiger;
      end if;
   end process;
end ARC;
