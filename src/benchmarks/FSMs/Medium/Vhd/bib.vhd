library ieee;
use ieee.std_logic_1164.all;

entity bib is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y25,y26,y27,y29,y30,y31,y32,y33,
	y34,y35,y36,y37,y38,y59,y60,y61,y62,y63,y64 : out std_logic );
end bib;

architecture ARC of bib is

   type states_bib is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79 );
   signal current_bib : states_bib;

begin
   process (clk , rst)
   procedure proc_bib is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y25  <= '0' ;	y26  <= '0' ;
	y27  <= '0' ;	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;
	y32  <= '0' ;	y33  <= '0' ;	y34  <= '0' ;	y35  <= '0' ;
	y36  <= '0' ;	y37  <= '0' ;	y38  <= '0' ;	y59  <= '0' ;
	y60  <= '0' ;	y61  <= '0' ;	y62  <= '0' ;	y63  <= '0' ;
	y64  <= '0' ;

   case current_bib is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y12 <= '1' ;
         y13 <= '1' ;
         current_bib <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y1 <= '1' ;
         current_bib <= s3;

      else
         current_bib <= s1;

      end if;

   when s2 =>
      if ( x21 and x20 ) = '1' then
         y15 <= '1' ;
         y59 <= '1' ;
         current_bib <= s4;

      elsif ( x21 and not x20 ) = '1' then
         y5 <= '1' ;
         current_bib <= s5;

      elsif ( not x21 and x20 ) = '1' then
         y5 <= '1' ;
         current_bib <= s5;

      else
         y5 <= '1' ;
         current_bib <= s6;

      end if;

   when s3 =>
      if ( x21 and x20 ) = '1' then
         y60 <= '1' ;
         current_bib <= s7;

      elsif ( x21 and not x20 ) = '1' then
         y2 <= '1' ;
         current_bib <= s8;

      else
         y2 <= '1' ;
         current_bib <= s8;

      end if;

   when s4 =>
         y14 <= '1' ;
         current_bib <= s9;

   when s5 =>
      if ( x21 and x20 ) = '1' then
         y6 <= '1' ;
         current_bib <= s11;

      elsif ( x21 and not x20 ) = '1' then
         y6 <= '1' ;
         current_bib <= s10;

      else
         y6 <= '1' ;
         current_bib <= s11;

      end if;

   when s6 =>
      if ( x21 ) = '1' then
         y6 <= '1' ;
         current_bib <= s12;

      else
         y6 <= '1' ;
         current_bib <= s13;

      end if;

   when s7 =>
         y61 <= '1' ;
         current_bib <= s14;

   when s8 =>
      if ( x21 and x20 ) = '1' then
         y4 <= '1' ;
         y64 <= '1' ;
         current_bib <= s15;

      elsif ( x21 and not x20 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         current_bib <= s16;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         current_bib <= s16;

      end if;

   when s9 =>
      if ( x21 and x20 ) = '1' then
         y16 <= '1' ;
         current_bib <= s22;

      elsif ( x21 and not x20 and x12 ) = '1' then
         y25 <= '1' ;
         current_bib <= s17;

      elsif ( x21 and not x20 and not x12 and x16 and x17 and x19 and x11 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and not x20 and not x12 and x16 and x17 and x19 and not x11 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and not x20 and not x12 and x16 and x17 and not x19 and x18 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and not x20 and not x12 and x16 and x17 and not x19 and not x18 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and not x20 and not x12 and x16 and not x17 and x19 and x14 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and not x20 and not x12 and x16 and not x17 and x19 and not x14 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and not x20 and not x12 and x16 and not x17 and not x19 and x13 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and not x20 and not x12 and x16 and not x17 and not x19 and not x13 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and not x20 and not x12 and not x16 and x17 and x11 ) = '1' then
         y3 <= '1' ;
         current_bib <= s20;

      elsif ( x21 and not x20 and not x12 and not x16 and x17 and not x11 ) = '1' then
         y32 <= '1' ;
         current_bib <= s21;

      elsif ( x21 and not x20 and not x12 and not x16 and not x17 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      else
         y16 <= '1' ;
         current_bib <= s22;

      end if;

   when s10 =>
         y7 <= '1' ;
         current_bib <= s23;

   when s11 =>
         y7 <= '1' ;
         current_bib <= s24;

   when s12 =>
         y7 <= '1' ;
         current_bib <= s25;

   when s13 =>
         y7 <= '1' ;
         current_bib <= s26;

   when s14 =>
      if ( x10 ) = '1' then
         y62 <= '1' ;
         current_bib <= s27;

      elsif ( not x10 and x4 and x5 and x3 and x12 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x10 and x4 and x5 and x3 and x12 and not x8 and x7 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x10 and x4 and x5 and x3 and x12 and not x8 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( not x10 and x4 and x5 and x3 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( not x10 and x4 and x5 and not x3 and x6 and x7 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( not x10 and x4 and x5 and not x3 and x6 and not x7 and x12 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x10 and x4 and x5 and not x3 and x6 and not x7 and x12 and not x8 ) = '1' then
         current_bib <= s1;

      elsif ( not x10 and x4 and x5 and not x3 and x6 and not x7 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( not x10 and x4 and x5 and not x3 and not x6 and x8 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( not x10 and x4 and x5 and not x3 and not x6 and not x8 and x12 and x7 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x10 and x4 and x5 and not x3 and not x6 and not x8 and x12 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( not x10 and x4 and x5 and not x3 and not x6 and not x8 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( not x10 and x4 and not x5 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         current_bib <= s28;

      elsif ( not x10 and x4 and not x5 and x3 and not x6 ) = '1' then
         y19 <= '1' ;
         current_bib <= s28;

      elsif ( not x10 and x4 and not x5 and not x3 and x6 ) = '1' then
         y21 <= '1' ;
         y38 <= '1' ;
         current_bib <= s29;

      elsif ( not x10 and x4 and not x5 and not x3 and not x6 ) = '1' then
         y22 <= '1' ;
         y29 <= '1' ;
         current_bib <= s29;

      else
         y10 <= '1' ;
         current_bib <= s30;

      end if;

   when s15 =>
      if ( x10 ) = '1' then
         y62 <= '1' ;
         current_bib <= s27;

      elsif ( not x10 and x11 and x4 and x5 and x3 and x12 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x10 and x11 and x4 and x5 and x3 and x12 and not x8 and x7 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x10 and x11 and x4 and x5 and x3 and x12 and not x8 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( not x10 and x11 and x4 and x5 and x3 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( not x10 and x11 and x4 and x5 and not x3 and x6 and x7 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( not x10 and x11 and x4 and x5 and not x3 and x6 and not x7 and x12 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x10 and x11 and x4 and x5 and not x3 and x6 and not x7 and x12 and not x8 ) = '1' then
         current_bib <= s1;

      elsif ( not x10 and x11 and x4 and x5 and not x3 and x6 and not x7 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( not x10 and x11 and x4 and x5 and not x3 and not x6 and x8 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( not x10 and x11 and x4 and x5 and not x3 and not x6 and not x8 and x12 and x7 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x10 and x11 and x4 and x5 and not x3 and not x6 and not x8 and x12 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( not x10 and x11 and x4 and x5 and not x3 and not x6 and not x8 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( not x10 and x11 and x4 and not x5 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         current_bib <= s28;

      elsif ( not x10 and x11 and x4 and not x5 and x3 and not x6 ) = '1' then
         y19 <= '1' ;
         current_bib <= s28;

      elsif ( not x10 and x11 and x4 and not x5 and not x3 and x6 ) = '1' then
         y21 <= '1' ;
         y38 <= '1' ;
         current_bib <= s29;

      elsif ( not x10 and x11 and x4 and not x5 and not x3 and not x6 ) = '1' then
         y22 <= '1' ;
         y29 <= '1' ;
         current_bib <= s29;

      elsif ( not x10 and x11 and not x4 ) = '1' then
         y10 <= '1' ;
         current_bib <= s30;

      else
         y62 <= '1' ;
         current_bib <= s31;

      end if;

   when s16 =>
         y5 <= '1' ;
         current_bib <= s32;

   when s17 =>
      if ( x21 and x16 and x17 and x19 and x11 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and x16 and x17 and x19 and not x11 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and x16 and x17 and not x19 and x18 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and x16 and x17 and not x19 and not x18 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and x16 and not x17 and x19 and x14 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and x16 and not x17 and x19 and not x14 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and x16 and not x17 and not x19 and x13 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and x16 and not x17 and not x19 and not x13 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and not x16 and x17 and x11 ) = '1' then
         y3 <= '1' ;
         current_bib <= s20;

      elsif ( x21 and not x16 and x17 and not x11 ) = '1' then
         y32 <= '1' ;
         current_bib <= s21;

      elsif ( x21 and not x16 and not x17 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      else
         y30 <= '1' ;
         current_bib <= s33;

      end if;

   when s18 =>
      if ( x20 and x21 and x12 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x20 and x21 and x12 and not x8 and x7 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x20 and x21 and x12 and not x8 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( x20 and x21 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( x20 and not x21 and x7 and x6 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x20 and not x21 and x7 and not x6 and x5 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x20 and not x21 and x7 and not x6 and not x5 ) = '1' then
         current_bib <= s1;

      elsif ( x20 and not x21 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( not x20 and x6 and x7 ) = '1' then
         y4 <= '1' ;
         current_bib <= s34;

      elsif ( not x20 and x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         current_bib <= s34;

      elsif ( not x20 and x6 and not x7 and not x8 ) = '1' then
         current_bib <= s1;

      else
         current_bib <= s1;

      end if;

   when s19 =>
      if ( x6 and x7 ) = '1' then
         y4 <= '1' ;
         current_bib <= s34;

      elsif ( x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         current_bib <= s34;

      elsif ( x6 and not x7 and not x8 ) = '1' then
         current_bib <= s1;

      else
         current_bib <= s1;

      end if;

   when s20 =>
         y15 <= '1' ;
         current_bib <= s35;

   when s21 =>
         y6 <= '1' ;
         current_bib <= s11;

   when s22 =>
         y4 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_bib <= s36;

   when s23 =>
         y8 <= '1' ;
         current_bib <= s37;

   when s24 =>
         y8 <= '1' ;
         current_bib <= s38;

   when s25 =>
         y8 <= '1' ;
         current_bib <= s39;

   when s26 =>
         y8 <= '1' ;
         current_bib <= s40;

   when s27 =>
         y2 <= '1' ;
         current_bib <= s8;

   when s28 =>
      if ( x12 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x12 and not x8 and x7 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x12 and not x8 and not x7 ) = '1' then
         current_bib <= s1;

      else
         current_bib <= s1;

      end if;

   when s29 =>
      if ( x21 and x12 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x21 and x12 and not x8 and x7 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x21 and x12 and not x8 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( x21 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( not x21 and x7 and x6 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x21 and x7 and not x6 and x5 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x21 and x7 and not x6 and not x5 ) = '1' then
         current_bib <= s1;

      else
         current_bib <= s1;

      end if;

   when s30 =>
      if ( x21 and x20 and x9 ) = '1' then
         y11 <= '1' ;
         current_bib <= s3;

      elsif ( x21 and x20 and not x9 and x5 and x3 and x12 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x21 and x20 and not x9 and x5 and x3 and x12 and not x8 and x7 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x21 and x20 and not x9 and x5 and x3 and x12 and not x8 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( x21 and x20 and not x9 and x5 and x3 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( x21 and x20 and not x9 and x5 and not x3 and x6 and x7 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and x20 and not x9 and x5 and not x3 and x6 and not x7 and x12 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x21 and x20 and not x9 and x5 and not x3 and x6 and not x7 and x12 and not x8 ) = '1' then
         current_bib <= s1;

      elsif ( x21 and x20 and not x9 and x5 and not x3 and x6 and not x7 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( x21 and x20 and not x9 and x5 and not x3 and not x6 and x8 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and x20 and not x9 and x5 and not x3 and not x6 and not x8 and x12 and x7 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x21 and x20 and not x9 and x5 and not x3 and not x6 and not x8 and x12 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( x21 and x20 and not x9 and x5 and not x3 and not x6 and not x8 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( x21 and x20 and not x9 and not x5 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         current_bib <= s28;

      elsif ( x21 and x20 and not x9 and not x5 and x3 and not x6 ) = '1' then
         y19 <= '1' ;
         current_bib <= s28;

      elsif ( x21 and x20 and not x9 and not x5 and not x3 and x6 ) = '1' then
         y21 <= '1' ;
         y38 <= '1' ;
         current_bib <= s29;

      elsif ( x21 and x20 and not x9 and not x5 and not x3 and not x6 ) = '1' then
         y22 <= '1' ;
         y29 <= '1' ;
         current_bib <= s29;

      elsif ( x21 and not x20 and x4 ) = '1' then
         y11 <= '1' ;
         current_bib <= s3;

      elsif ( x21 and not x20 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and not x20 and not x4 and not x5 and x15 ) = '1' then
         y26 <= '1' ;
         current_bib <= s17;

      elsif ( x21 and not x20 and not x4 and not x5 and not x15 ) = '1' then
         y35 <= '1' ;
         current_bib <= s41;

      elsif ( not x21 and x4 ) = '1' then
         y11 <= '1' ;
         current_bib <= s3;

      elsif ( not x21 and not x4 and x20 and x9 and x8 and x7 and x6 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x21 and not x4 and x20 and x9 and x8 and x7 and not x6 and x5 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x21 and not x4 and x20 and x9 and x8 and x7 and not x6 and not x5 ) = '1' then
         current_bib <= s1;

      elsif ( not x21 and not x4 and x20 and x9 and x8 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( not x21 and not x4 and x20 and x9 and not x8 and x10 ) = '1' then
         y21 <= '1' ;
         y38 <= '1' ;
         current_bib <= s29;

      elsif ( not x21 and not x4 and x20 and x9 and not x8 and not x10 ) = '1' then
         y22 <= '1' ;
         y29 <= '1' ;
         current_bib <= s29;

      elsif ( not x21 and not x4 and x20 and not x9 and x8 and x10 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         current_bib <= s42;

      elsif ( not x21 and not x4 and x20 and not x9 and x8 and not x10 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         current_bib <= s42;

      elsif ( not x21 and not x4 and x20 and not x9 and not x8 and x10 and x11 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( not x21 and not x4 and x20 and not x9 and not x8 and x10 and not x11 and x7 and x6 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x21 and not x4 and x20 and not x9 and not x8 and x10 and not x11 and x7 and not x6 and x5 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x21 and not x4 and x20 and not x9 and not x8 and x10 and not x11 and x7 and not x6 and not x5 ) = '1' then
         current_bib <= s1;

      elsif ( not x21 and not x4 and x20 and not x9 and not x8 and x10 and not x11 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( not x21 and not x4 and x20 and not x9 and not x8 and not x10 and x12 ) = '1' then
         y4 <= '1' ;
         current_bib <= s34;

      elsif ( not x21 and not x4 and x20 and not x9 and not x8 and not x10 and not x12 and x7 and x6 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x21 and not x4 and x20 and not x9 and not x8 and not x10 and not x12 and x7 and not x6 and x5 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( not x21 and not x4 and x20 and not x9 and not x8 and not x10 and not x12 and x7 and not x6 and not x5 ) = '1' then
         current_bib <= s1;

      elsif ( not x21 and not x4 and x20 and not x9 and not x8 and not x10 and not x12 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( not x21 and not x4 and not x20 and x6 ) = '1' then
         y26 <= '1' ;
         current_bib <= s17;

      else
         y30 <= '1' ;
         current_bib <= s33;

      end if;

   when s31 =>
         y63 <= '1' ;
         current_bib <= s43;

   when s32 =>
         y6 <= '1' ;
         current_bib <= s44;

   when s33 =>
         current_bib <= s45;

   when s34 =>
      if ( x20 and x7 and x6 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x20 and x7 and not x6 and x5 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x20 and x7 and not x6 and not x5 ) = '1' then
         current_bib <= s1;

      elsif ( x20 and not x7 ) = '1' then
         current_bib <= s1;

      else
         current_bib <= s1;

      end if;

   when s35 =>
         y6 <= '1' ;
         current_bib <= s46;

   when s36 =>
      if ( x21 and x20 and x12 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x21 and x20 and x12 and not x8 and x7 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x21 and x20 and x12 and not x8 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( x21 and x20 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( x21 and not x20 and x6 and x7 ) = '1' then
         y4 <= '1' ;
         current_bib <= s34;

      elsif ( x21 and not x20 and x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         current_bib <= s34;

      elsif ( x21 and not x20 and x6 and not x7 and not x8 ) = '1' then
         current_bib <= s1;

      elsif ( x21 and not x20 and not x6 ) = '1' then
         current_bib <= s1;

      else
         current_bib <= s1;

      end if;

   when s37 =>
      if ( x3 ) = '1' then
         y14 <= '1' ;
         current_bib <= s47;

      else
         y31 <= '1' ;
         current_bib <= s48;

      end if;

   when s38 =>
      if ( x20 and x3 ) = '1' then
         y14 <= '1' ;
         current_bib <= s47;

      elsif ( x20 and not x3 ) = '1' then
         y11 <= '1' ;
         current_bib <= s21;

      elsif ( not x20 and x21 and x3 ) = '1' then
         y33 <= '1' ;
         current_bib <= s49;

      elsif ( not x20 and x21 and not x3 ) = '1' then
         y31 <= '1' ;
         current_bib <= s21;

      elsif ( not x20 and not x21 and x3 ) = '1' then
         y14 <= '1' ;
         current_bib <= s9;

      else
         y31 <= '1' ;
         current_bib <= s21;

      end if;

   when s39 =>
      if ( x3 ) = '1' then
         y14 <= '1' ;
         current_bib <= s50;

      else
         y31 <= '1' ;
         current_bib <= s51;

      end if;

   when s40 =>
      if ( x21 and x3 ) = '1' then
         y14 <= '1' ;
         current_bib <= s52;

      elsif ( x21 and not x3 ) = '1' then
         y31 <= '1' ;
         current_bib <= s53;

      elsif ( not x21 and x3 ) = '1' then
         y14 <= '1' ;
         current_bib <= s47;

      else
         y31 <= '1' ;
         current_bib <= s53;

      end if;

   when s41 =>
      if ( x16 and x17 and x19 and x11 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x16 and x17 and x19 and not x11 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x16 and x17 and not x19 and x18 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x16 and x17 and not x19 and not x18 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x16 and not x17 and x19 and x14 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x16 and not x17 and x19 and not x14 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x16 and not x17 and not x19 and x13 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x16 and not x17 and not x19 and not x13 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( not x16 and x17 and x11 ) = '1' then
         y3 <= '1' ;
         current_bib <= s20;

      elsif ( not x16 and x17 and not x11 ) = '1' then
         y32 <= '1' ;
         current_bib <= s21;

      else
         y16 <= '1' ;
         current_bib <= s19;

      end if;

   when s42 =>
      if ( x7 and x6 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x7 and not x6 and x5 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x7 and not x6 and not x5 ) = '1' then
         current_bib <= s1;

      else
         current_bib <= s1;

      end if;

   when s43 =>
      if ( x11 and x10 ) = '1' then
         y62 <= '1' ;
         current_bib <= s27;

      elsif ( x11 and not x10 and x4 and x5 and x3 and x12 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x11 and not x10 and x4 and x5 and x3 and x12 and not x8 and x7 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x11 and not x10 and x4 and x5 and x3 and x12 and not x8 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( x11 and not x10 and x4 and x5 and x3 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( x11 and not x10 and x4 and x5 and not x3 and x6 and x7 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x11 and not x10 and x4 and x5 and not x3 and x6 and not x7 and x12 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x11 and not x10 and x4 and x5 and not x3 and x6 and not x7 and x12 and not x8 ) = '1' then
         current_bib <= s1;

      elsif ( x11 and not x10 and x4 and x5 and not x3 and x6 and not x7 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( x11 and not x10 and x4 and x5 and not x3 and not x6 and x8 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x11 and not x10 and x4 and x5 and not x3 and not x6 and not x8 and x12 and x7 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x11 and not x10 and x4 and x5 and not x3 and not x6 and not x8 and x12 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( x11 and not x10 and x4 and x5 and not x3 and not x6 and not x8 and not x12 ) = '1' then
         current_bib <= s1;

      elsif ( x11 and not x10 and x4 and not x5 and x3 and x6 ) = '1' then
         y17 <= '1' ;
         current_bib <= s28;

      elsif ( x11 and not x10 and x4 and not x5 and x3 and not x6 ) = '1' then
         y19 <= '1' ;
         current_bib <= s28;

      elsif ( x11 and not x10 and x4 and not x5 and not x3 and x6 ) = '1' then
         y21 <= '1' ;
         y38 <= '1' ;
         current_bib <= s29;

      elsif ( x11 and not x10 and x4 and not x5 and not x3 and not x6 ) = '1' then
         y22 <= '1' ;
         y29 <= '1' ;
         current_bib <= s29;

      elsif ( x11 and not x10 and not x4 ) = '1' then
         y10 <= '1' ;
         current_bib <= s30;

      else
         y62 <= '1' ;
         current_bib <= s31;

      end if;

   when s44 =>
         y7 <= '1' ;
         current_bib <= s54;

   when s45 =>
      if ( x7 and x9 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x7 and not x9 and x8 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x7 and not x9 and not x8 ) = '1' then
         current_bib <= s1;

      else
         current_bib <= s1;

      end if;

   when s46 =>
         y7 <= '1' ;
         current_bib <= s55;

   when s47 =>
         y15 <= '1' ;
         current_bib <= s56;

   when s48 =>
         y6 <= '1' ;
         current_bib <= s10;

   when s49 =>
         y6 <= '1' ;
         current_bib <= s57;

   when s50 =>
      if ( x21 ) = '1' then
         y14 <= '1' ;
         current_bib <= s9;

      else
         y14 <= '1' ;
         current_bib <= s52;

      end if;

   when s51 =>
         y6 <= '1' ;
         current_bib <= s12;

   when s52 =>
      if ( x21 and x9 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and not x9 and x6 and x7 ) = '1' then
         y4 <= '1' ;
         current_bib <= s34;

      elsif ( x21 and not x9 and x6 and not x7 and x8 ) = '1' then
         y4 <= '1' ;
         current_bib <= s34;

      elsif ( x21 and not x9 and x6 and not x7 and not x8 ) = '1' then
         current_bib <= s1;

      elsif ( x21 and not x9 and not x6 ) = '1' then
         current_bib <= s1;

      elsif ( not x21 and x5 ) = '1' then
         y30 <= '1' ;
         current_bib <= s33;

      else
         y25 <= '1' ;
         current_bib <= s17;

      end if;

   when s53 =>
         y6 <= '1' ;
         current_bib <= s13;

   when s54 =>
         y8 <= '1' ;
         current_bib <= s58;

   when s55 =>
         y8 <= '1' ;
         current_bib <= s59;

   when s56 =>
      if ( x21 ) = '1' then
         y5 <= '1' ;
         current_bib <= s60;

      elsif ( not x21 and x20 ) = '1' then
         y5 <= '1' ;
         current_bib <= s60;

      else
         y5 <= '1' ;
         current_bib <= s5;

      end if;

   when s57 =>
         y7 <= '1' ;
         current_bib <= s61;

   when s58 =>
      if ( x3 ) = '1' then
         y3 <= '1' ;
         current_bib <= s62;

      elsif ( not x3 and x20 ) = '1' then
         y11 <= '1' ;
         current_bib <= s32;

      elsif ( not x3 and not x20 and x21 ) = '1' then
         y31 <= '1' ;
         current_bib <= s32;

      else
         y31 <= '1' ;
         current_bib <= s32;

      end if;

   when s59 =>
      if ( x3 ) = '1' then
         y3 <= '1' ;
         current_bib <= s63;

      else
         y31 <= '1' ;
         current_bib <= s35;

      end if;

   when s60 =>
      if ( x21 and x20 ) = '1' then
         y6 <= '1' ;
         current_bib <= s57;

      elsif ( x21 and not x20 ) = '1' then
         y6 <= '1' ;
         current_bib <= s64;

      else
         y6 <= '1' ;
         current_bib <= s57;

      end if;

   when s61 =>
         y8 <= '1' ;
         current_bib <= s65;

   when s62 =>
         y4 <= '1' ;
         y9 <= '1' ;
         current_bib <= s66;

   when s63 =>
         y15 <= '1' ;
         y36 <= '1' ;
         current_bib <= s67;

   when s64 =>
         y7 <= '1' ;
         current_bib <= s68;

   when s65 =>
      if ( x20 and x3 ) = '1' then
         y14 <= '1' ;
         current_bib <= s9;

      elsif ( x20 and not x3 ) = '1' then
         y11 <= '1' ;
         current_bib <= s49;

      elsif ( not x20 and x21 and x3 ) = '1' then
         y15 <= '1' ;
         current_bib <= s69;

      elsif ( not x20 and x21 and not x3 ) = '1' then
         y31 <= '1' ;
         current_bib <= s49;

      elsif ( not x20 and not x21 and x3 ) = '1' then
         y14 <= '1' ;
         current_bib <= s50;

      else
         y31 <= '1' ;
         current_bib <= s49;

      end if;

   when s66 =>
      if ( x4 and x20 and x9 and x8 and x7 and x6 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x4 and x20 and x9 and x8 and x7 and not x6 and x5 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x4 and x20 and x9 and x8 and x7 and not x6 and not x5 ) = '1' then
         current_bib <= s1;

      elsif ( x4 and x20 and x9 and x8 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( x4 and x20 and x9 and not x8 and x10 ) = '1' then
         y21 <= '1' ;
         y38 <= '1' ;
         current_bib <= s29;

      elsif ( x4 and x20 and x9 and not x8 and not x10 ) = '1' then
         y22 <= '1' ;
         y29 <= '1' ;
         current_bib <= s29;

      elsif ( x4 and x20 and not x9 and x8 and x10 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         current_bib <= s42;

      elsif ( x4 and x20 and not x9 and x8 and not x10 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         current_bib <= s42;

      elsif ( x4 and x20 and not x9 and not x8 and x10 and x11 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x4 and x20 and not x9 and not x8 and x10 and not x11 and x7 and x6 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x4 and x20 and not x9 and not x8 and x10 and not x11 and x7 and not x6 and x5 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x4 and x20 and not x9 and not x8 and x10 and not x11 and x7 and not x6 and not x5 ) = '1' then
         current_bib <= s1;

      elsif ( x4 and x20 and not x9 and not x8 and x10 and not x11 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( x4 and x20 and not x9 and not x8 and not x10 and x12 ) = '1' then
         y4 <= '1' ;
         current_bib <= s34;

      elsif ( x4 and x20 and not x9 and not x8 and not x10 and not x12 and x7 and x6 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x4 and x20 and not x9 and not x8 and not x10 and not x12 and x7 and not x6 and x5 ) = '1' then
         y20 <= '1' ;
         current_bib <= s1;

      elsif ( x4 and x20 and not x9 and not x8 and not x10 and not x12 and x7 and not x6 and not x5 ) = '1' then
         current_bib <= s1;

      elsif ( x4 and x20 and not x9 and not x8 and not x10 and not x12 and not x7 ) = '1' then
         current_bib <= s1;

      elsif ( x4 and not x20 and x21 and x5 ) = '1' then
         y37 <= '1' ;
         current_bib <= s19;

      elsif ( x4 and not x20 and x21 and not x5 ) = '1' then
         y27 <= '1' ;
         current_bib <= s70;

      elsif ( x4 and not x20 and not x21 and x10 ) = '1' then
         current_bib <= s45;

      elsif ( x4 and not x20 and not x21 and not x10 ) = '1' then
         y27 <= '1' ;
         current_bib <= s70;

      else
         y10 <= '1' ;
         current_bib <= s30;

      end if;

   when s67 =>
         y6 <= '1' ;
         current_bib <= s71;

   when s68 =>
         y8 <= '1' ;
         current_bib <= s72;

   when s69 =>
         y33 <= '1' ;
         current_bib <= s73;

   when s70 =>
      if ( x21 and x10 ) = '1' then
         y5 <= '1' ;
         current_bib <= s6;

      elsif ( x21 and not x10 and x12 ) = '1' then
         y25 <= '1' ;
         current_bib <= s17;

      elsif ( x21 and not x10 and not x12 and x16 and x17 and x19 and x11 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and not x10 and not x12 and x16 and x17 and x19 and not x11 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and not x10 and not x12 and x16 and x17 and not x19 and x18 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and not x10 and not x12 and x16 and x17 and not x19 and not x18 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and not x10 and not x12 and x16 and not x17 and x19 and x14 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and not x10 and not x12 and x16 and not x17 and x19 and not x14 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and not x10 and not x12 and x16 and not x17 and not x19 and x13 ) = '1' then
         y4 <= '1' ;
         current_bib <= s18;

      elsif ( x21 and not x10 and not x12 and x16 and not x17 and not x19 and not x13 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( x21 and not x10 and not x12 and not x16 and x17 and x11 ) = '1' then
         y3 <= '1' ;
         current_bib <= s20;

      elsif ( x21 and not x10 and not x12 and not x16 and x17 and not x11 ) = '1' then
         y32 <= '1' ;
         current_bib <= s21;

      elsif ( x21 and not x10 and not x12 and not x16 and not x17 ) = '1' then
         y16 <= '1' ;
         current_bib <= s19;

      elsif ( not x21 and x6 ) = '1' then
         y5 <= '1' ;
         current_bib <= s60;

      elsif ( not x21 and not x6 and x5 ) = '1' then
         y30 <= '1' ;
         current_bib <= s33;

      else
         y25 <= '1' ;
         current_bib <= s17;

      end if;

   when s71 =>
         y7 <= '1' ;
         current_bib <= s74;

   when s72 =>
      if ( x3 ) = '1' then
         y14 <= '1' ;
         current_bib <= s75;

      else
         y31 <= '1' ;
         current_bib <= s76;

      end if;

   when s73 =>
         y34 <= '1' ;
         current_bib <= s77;

   when s74 =>
         y8 <= '1' ;
         current_bib <= s78;

   when s75 =>
         y16 <= '1' ;
         current_bib <= s22;

   when s76 =>
         y6 <= '1' ;
         current_bib <= s64;

   when s77 =>
         y16 <= '1' ;
         current_bib <= s19;

   when s78 =>
      if ( x3 ) = '1' then
         y33 <= '1' ;
         current_bib <= s79;

      else
         y31 <= '1' ;
         current_bib <= s67;

      end if;

   when s79 =>
         y15 <= '1' ;
         current_bib <= s53;

   end case;
   end proc_bib;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y20  <= '0' ;
	y21  <= '0' ;	y22  <= '0' ;	y25  <= '0' ;	y26  <= '0' ;
	y27  <= '0' ;	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;
	y32  <= '0' ;	y33  <= '0' ;	y34  <= '0' ;	y35  <= '0' ;
	y36  <= '0' ;	y37  <= '0' ;	y38  <= '0' ;	y59  <= '0' ;
	y60  <= '0' ;	y61  <= '0' ;	y62  <= '0' ;	y63  <= '0' ;
	y64  <= '0' ;
	current_bib <= s1;
      elsif (clk'event and clk ='1') then
        proc_bib;
      end if;
   end process;
end ARC;
