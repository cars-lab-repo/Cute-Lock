library ieee;
use ieee.std_logic_1164.all;

entity proc8816 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56 : out std_logic );
end proc8816;

architecture ARC of proc8816 is

   type states_proc8816 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69 );
   signal current_proc8816 : states_proc8816;

begin
   process (clk , rst)
   procedure proc_proc8816 is
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
	y41  <= '0' ;	y42  <= '0' ;	y43  <= '0' ;	y44  <= '0' ;
	y45  <= '0' ;	y46  <= '0' ;	y47  <= '0' ;	y48  <= '0' ;
	y49  <= '0' ;	y50  <= '0' ;	y51  <= '0' ;	y52  <= '0' ;
	y53  <= '0' ;	y54  <= '0' ;	y55  <= '0' ;	y56  <= '0' ;


   case current_proc8816 is
   when s1 =>
      if ( x3 and x5 and x18 and x17 ) = '1' then
         y40 <= '1' ;
         y30 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_proc8816 <= s1;

      elsif ( x3 and x5 and x18 and not x17 ) = '1' then
         y24 <= '1' ;
         y15 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         y16 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y17 <= '1' ;
         y7 <= '1' ;
         y27 <= '1' ;
         y18 <= '1' ;
         y8 <= '1' ;
         y43 <= '1' ;
         current_proc8816 <= s2;

      elsif ( x3 and x5 and not x18 and x17 ) = '1' then
         y40 <= '1' ;
         y30 <= '1' ;
         current_proc8816 <= s1;

      elsif ( x3 and x5 and not x18 and not x17 ) = '1' then
         y40 <= '1' ;
         y43 <= '1' ;
         y24 <= '1' ;
         y1 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         y2 <= '1' ;
         y6 <= '1' ;
         current_proc8816 <= s3;

      elsif ( x3 and not x5 and x6 ) = '1' then
         y40 <= '1' ;
         y41 <= '1' ;
         y38 <= '1' ;
         y29 <= '1' ;
         current_proc8816 <= s4;

      elsif ( x3 and not x5 and not x6 ) = '1' then
         y41 <= '1' ;
         y54 <= '1' ;
         current_proc8816 <= s5;

      else
         current_proc8816 <= s1;

      end if;

   when s2 =>
         y9 <= '1' ;
         y41 <= '1' ;
         y45 <= '1' ;
         current_proc8816 <= s6;

   when s3 =>
         y42 <= '1' ;
         current_proc8816 <= s7;

   when s4 =>
         y38 <= '1' ;
         y28 <= '1' ;
         y31 <= '1' ;
         y37 <= '1' ;
         y39 <= '1' ;
         current_proc8816 <= s1;

   when s5 =>
         y32 <= '1' ;
         current_proc8816 <= s8;

   when s6 =>
         y42 <= '1' ;
         current_proc8816 <= s9;

   when s7 =>
         y9 <= '1' ;
         y41 <= '1' ;
         y26 <= '1' ;
         y3 <= '1' ;
         y7 <= '1' ;
         y27 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s10;

   when s8 =>
         y41 <= '1' ;
         y53 <= '1' ;
         current_proc8816 <= s11;

   when s9 =>
         y9 <= '1' ;
         y41 <= '1' ;
         y44 <= '1' ;
         y10 <= '1' ;
         y45 <= '1' ;
         current_proc8816 <= s1;

   when s10 =>
         current_proc8816 <= s1;

   when s11 =>
         y32 <= '1' ;
         current_proc8816 <= s12;

   when s12 =>
      if ( x12 and x14 and x13 and x16 ) = '1' then
         y37 <= '1' ;
         current_proc8816 <= s13;

      elsif ( x12 and x14 and x13 and not x16 ) = '1' then
         y36 <= '1' ;
         current_proc8816 <= s13;

      elsif ( x12 and x14 and not x13 ) = '1' then
         y14 <= '1' ;
         current_proc8816 <= s14;

      elsif ( x12 and not x14 and x13 and x15 and x16 ) = '1' then
         y14 <= '1' ;
         current_proc8816 <= s14;

      elsif ( x12 and not x14 and x13 and x15 and not x16 ) = '1' then
         y14 <= '1' ;
         y15 <= '1' ;
         y1 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y2 <= '1' ;
         y6 <= '1' ;
         y17 <= '1' ;
         y3 <= '1' ;
         y7 <= '1' ;
         y18 <= '1' ;
         y4 <= '1' ;
         y8 <= '1' ;
         y33 <= '1' ;
         current_proc8816 <= s15;

      elsif ( x12 and not x14 and x13 and not x15 and x16 and x11 ) = '1' then
         y32 <= '1' ;
         current_proc8816 <= s16;

      elsif ( x12 and not x14 and x13 and not x15 and x16 and not x11 and x19 and x10 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and x16 and not x11 and x19 and not x10 ) = '1' then
         current_proc8816 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and x16 and not x11 and not x19 ) = '1' then
         current_proc8816 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and not x16 and x10 ) = '1' then
         y32 <= '1' ;
         current_proc8816 <= s16;

      elsif ( x12 and not x14 and x13 and not x15 and not x16 and not x10 and x19 and x11 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and not x16 and not x10 and x19 and not x11 ) = '1' then
         current_proc8816 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and not x16 and not x10 and not x19 ) = '1' then
         current_proc8816 <= s1;

      elsif ( x12 and not x14 and not x13 and x15 ) = '1' then
         y14 <= '1' ;
         current_proc8816 <= s14;

      elsif ( x12 and not x14 and not x13 and not x15 and x1 ) = '1' then
         y41 <= '1' ;
         y52 <= '1' ;
         y11 <= '1' ;
         current_proc8816 <= s17;

      elsif ( x12 and not x14 and not x13 and not x15 and not x1 and x16 ) = '1' then
         y14 <= '1' ;
         current_proc8816 <= s14;

      elsif ( x12 and not x14 and not x13 and not x15 and not x1 and not x16 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s18;

      elsif ( not x12 and x1 ) = '1' then
         y41 <= '1' ;
         y52 <= '1' ;
         y11 <= '1' ;
         current_proc8816 <= s17;

      elsif ( not x12 and not x1 and x13 and x15 and x16 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s18;

      elsif ( not x12 and not x1 and x13 and x15 and not x16 and x9 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s18;

      elsif ( not x12 and not x1 and x13 and x15 and not x16 and not x9 and x19 and x10 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( not x12 and not x1 and x13 and x15 and not x16 and not x9 and x19 and not x10 and x11 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( not x12 and not x1 and x13 and x15 and not x16 and not x9 and x19 and not x10 and not x11 ) = '1' then
         current_proc8816 <= s1;

      elsif ( not x12 and not x1 and x13 and x15 and not x16 and not x9 and not x19 ) = '1' then
         current_proc8816 <= s1;

      elsif ( not x12 and not x1 and x13 and not x15 and x16 and x8 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s18;

      elsif ( not x12 and not x1 and x13 and not x15 and x16 and not x8 and x19 and x10 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( not x12 and not x1 and x13 and not x15 and x16 and not x8 and x19 and not x10 and x11 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( not x12 and not x1 and x13 and not x15 and x16 and not x8 and x19 and not x10 and not x11 ) = '1' then
         current_proc8816 <= s1;

      elsif ( not x12 and not x1 and x13 and not x15 and x16 and not x8 and not x19 ) = '1' then
         current_proc8816 <= s1;

      elsif ( not x12 and not x1 and x13 and not x15 and not x16 and x7 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s18;

      elsif ( not x12 and not x1 and x13 and not x15 and not x16 and not x7 and x19 and x10 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( not x12 and not x1 and x13 and not x15 and not x16 and not x7 and x19 and not x10 and x11 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( not x12 and not x1 and x13 and not x15 and not x16 and not x7 and x19 and not x10 and not x11 ) = '1' then
         current_proc8816 <= s1;

      elsif ( not x12 and not x1 and x13 and not x15 and not x16 and not x7 and not x19 ) = '1' then
         current_proc8816 <= s1;

      else
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s18;

      end if;

   when s13 =>
      if ( x19 and x10 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( x19 and not x10 and x11 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( x19 and not x10 and not x11 ) = '1' then
         current_proc8816 <= s1;

      else
         current_proc8816 <= s1;

      end if;

   when s14 =>
      if ( x15 and x13 ) = '1' then
         y5 <= '1' ;
         current_proc8816 <= s19;

      elsif ( x15 and not x13 ) = '1' then
         y5 <= '1' ;
         current_proc8816 <= s20;

      elsif ( not x15 and x14 and x13 ) = '1' then
         y5 <= '1' ;
         current_proc8816 <= s19;

      elsif ( not x15 and x14 and not x13 ) = '1' then
         y5 <= '1' ;
         current_proc8816 <= s20;

      else
         y5 <= '1' ;
         current_proc8816 <= s19;

      end if;

   when s15 =>
         y46 <= '1' ;
         y47 <= '1' ;
         current_proc8816 <= s21;

   when s16 =>
         y32 <= '1' ;
         current_proc8816 <= s22;

   when s17 =>
         y32 <= '1' ;
         current_proc8816 <= s23;

   when s18 =>
      if ( x16 and x12 ) = '1' then
         y46 <= '1' ;
         y47 <= '1' ;
         current_proc8816 <= s21;

      elsif ( x16 and not x12 ) = '1' then
         y5 <= '1' ;
         current_proc8816 <= s24;

      else
         y5 <= '1' ;
         current_proc8816 <= s24;

      end if;

   when s19 =>
         y49 <= '1' ;
         current_proc8816 <= s25;

   when s20 =>
         y49 <= '1' ;
         current_proc8816 <= s26;

   when s21 =>
         y49 <= '1' ;
         current_proc8816 <= s27;

   when s22 =>
         y32 <= '1' ;
         current_proc8816 <= s28;

   when s23 =>
         y41 <= '1' ;
         y50 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_proc8816 <= s29;

   when s24 =>
         y49 <= '1' ;
         current_proc8816 <= s30;

   when s25 =>
         y6 <= '1' ;
         current_proc8816 <= s31;

   when s26 =>
         y6 <= '1' ;
         current_proc8816 <= s32;

   when s27 =>
         y48 <= '1' ;
         y47 <= '1' ;
         current_proc8816 <= s33;

   when s28 =>
         y32 <= '1' ;
         current_proc8816 <= s13;

   when s29 =>
         y32 <= '1' ;
         current_proc8816 <= s34;

   when s30 =>
         y6 <= '1' ;
         current_proc8816 <= s35;

   when s31 =>
         y49 <= '1' ;
         current_proc8816 <= s36;

   when s32 =>
         y49 <= '1' ;
         current_proc8816 <= s37;

   when s33 =>
         y49 <= '1' ;
         current_proc8816 <= s38;

   when s34 =>
      if ( x12 and x4 and x16 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s40;

      elsif ( x12 and x4 and x16 and not x2 and x20 ) = '1' then
         y14 <= '1' ;
         current_proc8816 <= s41;

      elsif ( x12 and x4 and x16 and not x2 and not x20 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s43;

      elsif ( x12 and x4 and not x16 ) = '1' then
         y24 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y7 <= '1' ;
         y27 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s39;

      elsif ( x12 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s40;

      elsif ( x12 and not x4 and not x2 and x20 and x16 ) = '1' then
         y14 <= '1' ;
         current_proc8816 <= s41;

      elsif ( x12 and not x4 and not x2 and x20 and not x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s42;

      elsif ( x12 and not x4 and not x2 and not x20 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s43;

      elsif ( not x12 and x13 and x15 and x16 and x4 ) = '1' then
         y28 <= '1' ;
         y31 <= '1' ;
         current_proc8816 <= s13;

      elsif ( not x12 and x13 and x15 and x16 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s40;

      elsif ( not x12 and x13 and x15 and x16 and not x4 and not x2 and x20 ) = '1' then
         y30 <= '1' ;
         y31 <= '1' ;
         current_proc8816 <= s13;

      elsif ( not x12 and x13 and x15 and x16 and not x4 and not x2 and not x20 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s43;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and x4 ) = '1' then
         y28 <= '1' ;
         y31 <= '1' ;
         current_proc8816 <= s13;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s40;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x4 and not x2 and x20 ) = '1' then
         y30 <= '1' ;
         y31 <= '1' ;
         current_proc8816 <= s13;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x4 and not x2 and not x20 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s43;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x19 and x10 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x19 and not x10 and x11 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x19 and not x10 and not x11 ) = '1' then
         current_proc8816 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and not x19 ) = '1' then
         current_proc8816 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and x4 ) = '1' then
         y28 <= '1' ;
         y31 <= '1' ;
         current_proc8816 <= s13;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s40;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x4 and not x2 and x20 ) = '1' then
         y30 <= '1' ;
         y31 <= '1' ;
         current_proc8816 <= s13;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x4 and not x2 and not x20 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s43;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x19 and x10 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x19 and not x10 and x11 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x19 and not x10 and not x11 ) = '1' then
         current_proc8816 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and not x19 ) = '1' then
         current_proc8816 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and x4 ) = '1' then
         y28 <= '1' ;
         y31 <= '1' ;
         current_proc8816 <= s13;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s40;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x4 and not x2 and x20 ) = '1' then
         y30 <= '1' ;
         y31 <= '1' ;
         current_proc8816 <= s13;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x4 and not x2 and not x20 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s43;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x19 and x10 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x19 and not x10 and x11 ) = '1' then
         y55 <= '1' ;
         current_proc8816 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x19 and not x10 and not x11 ) = '1' then
         current_proc8816 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and not x19 ) = '1' then
         current_proc8816 <= s1;

      elsif ( not x12 and not x13 and x4 and x14 ) = '1' then
         y24 <= '1' ;
         y5 <= '1' ;
         y25 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y7 <= '1' ;
         y27 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s39;

      elsif ( not x12 and not x13 and x4 and not x14 ) = '1' then
         y14 <= '1' ;
         current_proc8816 <= s41;

      elsif ( not x12 and not x13 and not x4 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s40;

      elsif ( not x12 and not x13 and not x4 and not x2 and x20 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s42;

      else
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s43;

      end if;

   when s35 =>
         y49 <= '1' ;
         current_proc8816 <= s44;

   when s36 =>
         y7 <= '1' ;
         current_proc8816 <= s45;

   when s37 =>
         y7 <= '1' ;
         current_proc8816 <= s46;

   when s38 =>
         y46 <= '1' ;
         y23 <= '1' ;
         y47 <= '1' ;
         current_proc8816 <= s47;

   when s39 =>
      if ( x12 ) = '1' then
         y14 <= '1' ;
         current_proc8816 <= s41;

      else
         y9 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_proc8816 <= s48;

      end if;

   when s40 =>
         y11 <= '1' ;
         y13 <= '1' ;
         current_proc8816 <= s49;

   when s41 =>
      if ( x12 and x16 ) = '1' then
         y5 <= '1' ;
         current_proc8816 <= s20;

      elsif ( x12 and not x16 ) = '1' then
         y46 <= '1' ;
         y47 <= '1' ;
         current_proc8816 <= s21;

      else
         y5 <= '1' ;
         current_proc8816 <= s19;

      end if;

   when s42 =>
      if ( x12 ) = '1' then
         y14 <= '1' ;
         current_proc8816 <= s41;

      elsif ( not x12 and x14 ) = '1' then
         y9 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_proc8816 <= s48;

      else
         y11 <= '1' ;
         y13 <= '1' ;
         current_proc8816 <= s50;

      end if;

   when s43 =>
         y5 <= '1' ;
         current_proc8816 <= s51;

   when s44 =>
         y7 <= '1' ;
         current_proc8816 <= s52;

   when s45 =>
         y49 <= '1' ;
         current_proc8816 <= s53;

   when s46 =>
         y49 <= '1' ;
         current_proc8816 <= s54;

   when s47 =>
         y49 <= '1' ;
         current_proc8816 <= s55;

   when s48 =>
         y14 <= '1' ;
         y15 <= '1' ;
         y5 <= '1' ;
         y16 <= '1' ;
         y6 <= '1' ;
         y17 <= '1' ;
         y7 <= '1' ;
         y18 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s15;

   when s49 =>
      if ( x20 and x12 and x16 ) = '1' then
         y14 <= '1' ;
         current_proc8816 <= s41;

      elsif ( x20 and x12 and not x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s42;

      elsif ( x20 and not x12 and x13 ) = '1' then
         y30 <= '1' ;
         y31 <= '1' ;
         current_proc8816 <= s13;

      elsif ( x20 and not x12 and not x13 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s42;

      else
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s43;

      end if;

   when s50 =>
         y14 <= '1' ;
         current_proc8816 <= s41;

   when s51 =>
         y49 <= '1' ;
         current_proc8816 <= s56;

   when s52 =>
         y49 <= '1' ;
         current_proc8816 <= s57;

   when s53 =>
         y8 <= '1' ;
         current_proc8816 <= s58;

   when s54 =>
         y8 <= '1' ;
         current_proc8816 <= s59;

   when s55 =>
         y48 <= '1' ;
         y23 <= '1' ;
         y47 <= '1' ;
         current_proc8816 <= s13;

   when s56 =>
         y6 <= '1' ;
         current_proc8816 <= s60;

   when s57 =>
         y8 <= '1' ;
         current_proc8816 <= s61;

   when s58 =>
      if ( x12 and x13 ) = '1' then
         y34 <= '1' ;
         y35 <= '1' ;
         current_proc8816 <= s13;

      elsif ( x12 and not x13 and x2 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         current_proc8816 <= s62;

      elsif ( x12 and not x13 and not x2 ) = '1' then
         y23 <= '1' ;
         y14 <= '1' ;
         current_proc8816 <= s18;

      else
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_proc8816 <= s48;

      end if;

   when s59 =>
      if ( x15 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_proc8816 <= s48;

      elsif ( not x15 and x14 ) = '1' then
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_proc8816 <= s48;

      else
         y29 <= '1' ;
         current_proc8816 <= s13;

      end if;

   when s60 =>
         y49 <= '1' ;
         current_proc8816 <= s63;

   when s61 =>
      if ( x12 and x16 ) = '1' then
         y9 <= '1' ;
         y28 <= '1' ;
         y29 <= '1' ;
         current_proc8816 <= s13;

      elsif ( x12 and not x16 and x2 ) = '1' then
         y11 <= '1' ;
         y13 <= '1' ;
         current_proc8816 <= s64;

      elsif ( x12 and not x16 and not x2 ) = '1' then
         y14 <= '1' ;
         current_proc8816 <= s41;

      elsif ( not x12 and x13 ) = '1' then
         y31 <= '1' ;
         current_proc8816 <= s13;

      elsif ( not x12 and not x13 and x2 and x14 ) = '1' then
         y11 <= '1' ;
         y13 <= '1' ;
         current_proc8816 <= s64;

      elsif ( not x12 and not x13 and x2 and not x14 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_proc8816 <= s50;

      elsif ( not x12 and not x13 and not x2 and x14 ) = '1' then
         y9 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y21 <= '1' ;
         y22 <= '1' ;
         current_proc8816 <= s48;

      else
         y11 <= '1' ;
         y13 <= '1' ;
         current_proc8816 <= s64;

      end if;

   when s62 =>
         y5 <= '1' ;
         current_proc8816 <= s24;

   when s63 =>
         y7 <= '1' ;
         current_proc8816 <= s65;

   when s64 =>
      if ( x14 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s42;

      elsif ( not x14 and x12 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s42;

      else
         y14 <= '1' ;
         current_proc8816 <= s41;

      end if;

   when s65 =>
         y49 <= '1' ;
         current_proc8816 <= s66;

   when s66 =>
         y8 <= '1' ;
         current_proc8816 <= s67;

   when s67 =>
         y51 <= '1' ;
         y56 <= '1' ;
         current_proc8816 <= s68;

   when s68 =>
         y44 <= '1' ;
         y11 <= '1' ;
         y50 <= '1' ;
         y13 <= '1' ;
         current_proc8816 <= s69;

   when s69 =>
      if ( x12 and x16 ) = '1' then
         y14 <= '1' ;
         current_proc8816 <= s41;

      elsif ( x12 and not x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s42;

      elsif ( not x12 and x13 ) = '1' then
         y30 <= '1' ;
         y31 <= '1' ;
         current_proc8816 <= s13;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc8816 <= s42;

      end if;

   end case;
   end proc_proc8816;

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
	y41  <= '0' ;	y42  <= '0' ;	y43  <= '0' ;	y44  <= '0' ;
	y45  <= '0' ;	y46  <= '0' ;	y47  <= '0' ;	y48  <= '0' ;
	y49  <= '0' ;	y50  <= '0' ;	y51  <= '0' ;	y52  <= '0' ;
	y53  <= '0' ;	y54  <= '0' ;	y55  <= '0' ;	y56  <= '0' ;

	current_proc8816 <= s1;
      elsif (clk'event and clk ='1') then
        proc_proc8816;
      end if;
   end process;
end ARC;
