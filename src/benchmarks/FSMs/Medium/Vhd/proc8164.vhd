library ieee;
use ieee.std_logic_1164.all;

entity proc8164 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y42,y43,y44,y46,y51,
	y52,y54,y58,y59,y60,y61 : out std_logic );
end proc8164;

architecture ARC of proc8164 is

   type states_proc8164 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76 );
   signal current_proc8164 : states_proc8164;

begin
   process (clk , rst)
   procedure proc_proc8164 is
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
	y42  <= '0' ;	y43  <= '0' ;	y44  <= '0' ;	y46  <= '0' ;
	y51  <= '0' ;	y52  <= '0' ;	y54  <= '0' ;	y58  <= '0' ;
	y59  <= '0' ;	y60  <= '0' ;	y61  <= '0' ;

   case current_proc8164 is
   when s1 =>
      if ( x6 and x5 and x20 and x19 ) = '1' then
         y52 <= '1' ;
         y1 <= '1' ;
         y11 <= '1' ;
         y34 <= '1' ;
         y12 <= '1' ;
         y3 <= '1' ;
         y13 <= '1' ;
         y4 <= '1' ;
         y14 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s2;

      elsif ( x6 and x5 and x20 and not x19 ) = '1' then
         y52 <= '1' ;
         y1 <= '1' ;
         current_proc8164 <= s3;

      elsif ( x6 and x5 and not x20 and x19 ) = '1' then
         y40 <= '1' ;
         y60 <= '1' ;
         current_proc8164 <= s1;

      elsif ( x6 and x5 and not x20 and not x19 ) = '1' then
         y40 <= '1' ;
         y42 <= '1' ;
         y51 <= '1' ;
         current_proc8164 <= s1;

      elsif ( x6 and not x5 and x4 ) = '1' then
         y2 <= '1' ;
         y34 <= '1' ;
         y12 <= '1' ;
         y35 <= '1' ;
         y13 <= '1' ;
         y31 <= '1' ;
         y14 <= '1' ;
         y32 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y40 <= '1' ;
         y22 <= '1' ;
         y1 <= '1' ;
         current_proc8164 <= s4;

      elsif ( x6 and not x5 and not x4 ) = '1' then
         y40 <= '1' ;
         y22 <= '1' ;
         y46 <= '1' ;
         current_proc8164 <= s5;

      else
         current_proc8164 <= s1;

      end if;

   when s2 =>
         y36 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y11 <= '1' ;
         y58 <= '1' ;
         current_proc8164 <= s6;

   when s3 =>
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s7;

   when s4 =>
         y36 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y11 <= '1' ;
         y58 <= '1' ;
         current_proc8164 <= s8;

   when s5 =>
         y24 <= '1' ;
         current_proc8164 <= s9;

   when s6 =>
         y38 <= '1' ;
         current_proc8164 <= s10;

   when s7 =>
         y38 <= '1' ;
         current_proc8164 <= s11;

   when s8 =>
         y38 <= '1' ;
         current_proc8164 <= s12;

   when s9 =>
      if ( x12 and x14 and x13 and x16 ) = '1' then
         y30 <= '1' ;
         current_proc8164 <= s13;

      elsif ( x12 and x14 and x13 and not x16 ) = '1' then
         y29 <= '1' ;
         current_proc8164 <= s13;

      elsif ( x12 and x14 and not x13 ) = '1' then
         y10 <= '1' ;
         current_proc8164 <= s14;

      elsif ( x12 and not x14 and x15 and x13 and x16 ) = '1' then
         y10 <= '1' ;
         current_proc8164 <= s14;

      elsif ( x12 and not x14 and x15 and x13 and not x16 ) = '1' then
         y10 <= '1' ;
         y26 <= '1' ;
         y3 <= '1' ;
         y35 <= '1' ;
         y4 <= '1' ;
         y31 <= '1' ;
         y5 <= '1' ;
         y32 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s15;

      elsif ( x12 and not x14 and x15 and not x13 ) = '1' then
         y10 <= '1' ;
         current_proc8164 <= s14;

      elsif ( x12 and not x14 and not x15 and x13 and x16 and x11 ) = '1' then
         y24 <= '1' ;
         current_proc8164 <= s16;

      elsif ( x12 and not x14 and not x15 and x13 and x16 and not x11 and x18 and x10 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and x16 and not x11 and x18 and not x10 ) = '1' then
         current_proc8164 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and x16 and not x11 and not x18 ) = '1' then
         current_proc8164 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and not x16 and x10 ) = '1' then
         y24 <= '1' ;
         current_proc8164 <= s16;

      elsif ( x12 and not x14 and not x15 and x13 and not x16 and not x10 and x18 and x11 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and not x16 and not x10 and x18 and not x11 ) = '1' then
         current_proc8164 <= s1;

      elsif ( x12 and not x14 and not x15 and x13 and not x16 and not x10 and not x18 ) = '1' then
         current_proc8164 <= s1;

      elsif ( x12 and not x14 and not x15 and not x13 and x3 ) = '1' then
         y40 <= '1' ;
         y22 <= '1' ;
         y42 <= '1' ;
         y1 <= '1' ;
         current_proc8164 <= s17;

      elsif ( x12 and not x14 and not x15 and not x13 and not x3 and x16 and x1 ) = '1' then
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s18;

      elsif ( x12 and not x14 and not x15 and not x13 and not x3 and x16 and not x1 ) = '1' then
         y10 <= '1' ;
         current_proc8164 <= s14;

      elsif ( x12 and not x14 and not x15 and not x13 and not x3 and not x16 ) = '1' then
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s18;

      elsif ( not x12 and x3 ) = '1' then
         y40 <= '1' ;
         y22 <= '1' ;
         y42 <= '1' ;
         y1 <= '1' ;
         current_proc8164 <= s17;

      elsif ( not x12 and not x3 and x13 and x15 and x16 ) = '1' then
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s18;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and x9 ) = '1' then
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s18;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x18 and x10 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x18 and not x10 and x11 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x18 and not x10 and not x11 ) = '1' then
         current_proc8164 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and not x18 ) = '1' then
         current_proc8164 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and x8 ) = '1' then
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s18;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x18 and x10 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x18 and not x10 and x11 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x18 and not x10 and not x11 ) = '1' then
         current_proc8164 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and not x18 ) = '1' then
         current_proc8164 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and x7 ) = '1' then
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s18;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x18 and x10 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and x11 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and not x11 ) = '1' then
         current_proc8164 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and not x18 ) = '1' then
         current_proc8164 <= s1;

      else
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s18;

      end if;

   when s10 =>
         y26 <= '1' ;
         y2 <= '1' ;
         y58 <= '1' ;
         current_proc8164 <= s19;

   when s11 =>
         y8 <= '1' ;
         current_proc8164 <= s20;

   when s12 =>
         y26 <= '1' ;
         y2 <= '1' ;
         y58 <= '1' ;
         current_proc8164 <= s21;

   when s13 =>
      if ( x18 and x10 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( x18 and not x10 and x11 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( x18 and not x10 and not x11 ) = '1' then
         current_proc8164 <= s1;

      else
         current_proc8164 <= s1;

      end if;

   when s14 =>
         y34 <= '1' ;
         y35 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s22;

   when s15 =>
         y44 <= '1' ;
         current_proc8164 <= s23;

   when s16 =>
         y24 <= '1' ;
         current_proc8164 <= s13;

   when s17 =>
         y24 <= '1' ;
         current_proc8164 <= s24;

   when s18 =>
         y34 <= '1' ;
         y35 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s25;

   when s19 =>
         y38 <= '1' ;
         current_proc8164 <= s26;

   when s20 =>
         y38 <= '1' ;
         current_proc8164 <= s27;

   when s21 =>
         y38 <= '1' ;
         current_proc8164 <= s28;

   when s22 =>
         y33 <= '1' ;
         current_proc8164 <= s29;

   when s23 =>
         y33 <= '1' ;
         current_proc8164 <= s30;

   when s24 =>
      if ( x12 and x16 and x1 ) = '1' then
         y36 <= '1' ;
         current_proc8164 <= s31;

      elsif ( x12 and x16 and not x1 and x17 ) = '1' then
         y10 <= '1' ;
         current_proc8164 <= s32;

      elsif ( x12 and x16 and not x1 and not x17 ) = '1' then
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s34;

      elsif ( x12 and not x16 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s35;

      elsif ( x12 and not x16 and not x2 and x1 ) = '1' then
         y36 <= '1' ;
         current_proc8164 <= s31;

      elsif ( x12 and not x16 and not x2 and not x1 and x17 ) = '1' then
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s33;

      elsif ( x12 and not x16 and not x2 and not x1 and not x17 ) = '1' then
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s34;

      elsif ( not x12 and x13 and x15 and x16 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s35;

      elsif ( not x12 and x13 and x15 and x16 and not x2 and x1 ) = '1' then
         y36 <= '1' ;
         current_proc8164 <= s31;

      elsif ( not x12 and x13 and x15 and x16 and not x2 and not x1 and x17 ) = '1' then
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s33;

      elsif ( not x12 and x13 and x15 and x16 and not x2 and not x1 and not x17 ) = '1' then
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s34;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s35;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x2 and x1 ) = '1' then
         y36 <= '1' ;
         current_proc8164 <= s31;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x2 and not x1 and x17 ) = '1' then
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s33;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x2 and not x1 and not x17 ) = '1' then
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s34;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x18 and x10 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x18 and not x10 and x11 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x18 and not x10 and not x11 ) = '1' then
         current_proc8164 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and not x18 ) = '1' then
         current_proc8164 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s35;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x2 and x1 ) = '1' then
         y36 <= '1' ;
         current_proc8164 <= s31;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x2 and not x1 and x17 ) = '1' then
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s33;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x2 and not x1 and not x17 ) = '1' then
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s34;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x18 and x10 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x18 and not x10 and x11 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x18 and not x10 and not x11 ) = '1' then
         current_proc8164 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and not x18 ) = '1' then
         current_proc8164 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s35;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x2 and x1 ) = '1' then
         y36 <= '1' ;
         current_proc8164 <= s31;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x2 and not x1 and x17 ) = '1' then
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s33;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x2 and not x1 and not x17 ) = '1' then
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s34;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x18 and x10 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and x11 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and not x11 ) = '1' then
         current_proc8164 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and not x18 ) = '1' then
         current_proc8164 <= s1;

      elsif ( not x12 and not x13 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s35;

      elsif ( not x12 and not x13 and not x2 and x1 ) = '1' then
         y36 <= '1' ;
         current_proc8164 <= s31;

      elsif ( not x12 and not x13 and not x2 and not x1 and x17 and x16 ) = '1' then
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s33;

      elsif ( not x12 and not x13 and not x2 and not x1 and x17 and not x16 ) = '1' then
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s33;

      else
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s34;

      end if;

   when s25 =>
         y33 <= '1' ;
         current_proc8164 <= s36;

   when s26 =>
         y26 <= '1' ;
         y34 <= '1' ;
         y58 <= '1' ;
         current_proc8164 <= s37;

   when s27 =>
         y7 <= '1' ;
         current_proc8164 <= s38;

   when s28 =>
         y26 <= '1' ;
         y34 <= '1' ;
         y58 <= '1' ;
         current_proc8164 <= s39;

   when s29 =>
         y31 <= '1' ;
         y32 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_proc8164 <= s40;

   when s30 =>
         y43 <= '1' ;
         y44 <= '1' ;
         current_proc8164 <= s41;

   when s31 =>
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s42;

   when s32 =>
      if ( x16 ) = '1' then
         y34 <= '1' ;
         y35 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s43;

      else
         y44 <= '1' ;
         current_proc8164 <= s23;

      end if;

   when s33 =>
         y38 <= '1' ;
         current_proc8164 <= s44;

   when s34 =>
         y34 <= '1' ;
         y35 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s45;

   when s35 =>
      if ( x12 ) = '1' then
         y10 <= '1' ;
         current_proc8164 <= s32;

      elsif ( not x12 and x13 ) = '1' then
         y22 <= '1' ;
         y23 <= '1' ;
         current_proc8164 <= s13;

      elsif ( not x12 and not x13 and x14 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y16 <= '1' ;
         current_proc8164 <= s46;

      else
         y1 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s47;

      end if;

   when s36 =>
         y31 <= '1' ;
         y32 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_proc8164 <= s48;

   when s37 =>
         y38 <= '1' ;
         current_proc8164 <= s49;

   when s38 =>
         y38 <= '1' ;
         current_proc8164 <= s50;

   when s39 =>
         y38 <= '1' ;
         current_proc8164 <= s51;

   when s40 =>
      if ( x13 ) = '1' then
         y27 <= '1' ;
         y28 <= '1' ;
         current_proc8164 <= s13;

      elsif ( not x13 and x15 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_proc8164 <= s46;

      elsif ( not x13 and not x15 and x14 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_proc8164 <= s46;

      else
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s15;

      end if;

   when s41 =>
      if ( x13 and x12 ) = '1' then
         y25 <= '1' ;
         current_proc8164 <= s13;

      elsif ( x13 and not x12 and x18 and x10 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( x13 and not x12 and x18 and not x10 and x11 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( x13 and not x12 and x18 and not x10 and not x11 ) = '1' then
         current_proc8164 <= s1;

      elsif ( x13 and not x12 and not x18 ) = '1' then
         current_proc8164 <= s1;

      elsif ( not x13 and x18 and x10 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x13 and x18 and not x10 and x11 ) = '1' then
         y61 <= '1' ;
         current_proc8164 <= s1;

      elsif ( not x13 and x18 and not x10 and not x11 ) = '1' then
         current_proc8164 <= s1;

      else
         current_proc8164 <= s1;

      end if;

   when s42 =>
         y38 <= '1' ;
         current_proc8164 <= s52;

   when s43 =>
         y33 <= '1' ;
         current_proc8164 <= s53;

   when s44 =>
         y8 <= '1' ;
         current_proc8164 <= s54;

   when s45 =>
         y33 <= '1' ;
         current_proc8164 <= s55;

   when s46 =>
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s15;

   when s47 =>
         y34 <= '1' ;
         y35 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s43;

   when s48 =>
      if ( x12 and x1 ) = '1' then
         y1 <= '1' ;
         current_proc8164 <= s56;

      elsif ( x12 and not x1 and x16 ) = '1' then
         y1 <= '1' ;
         current_proc8164 <= s56;

      elsif ( x12 and not x1 and not x16 ) = '1' then
         y10 <= '1' ;
         current_proc8164 <= s32;

      elsif ( not x12 and x13 ) = '1' then
         y22 <= '1' ;
         y23 <= '1' ;
         current_proc8164 <= s13;

      elsif ( not x12 and not x13 and x1 ) = '1' then
         y1 <= '1' ;
         current_proc8164 <= s56;

      elsif ( not x12 and not x13 and not x1 and x14 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         y22 <= '1' ;
         y16 <= '1' ;
         current_proc8164 <= s46;

      else
         y1 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s47;

      end if;

   when s49 =>
         y11 <= '1' ;
         y2 <= '1' ;
         y58 <= '1' ;
         current_proc8164 <= s1;

   when s50 =>
         y6 <= '1' ;
         current_proc8164 <= s57;

   when s51 =>
         y11 <= '1' ;
         y2 <= '1' ;
         y58 <= '1' ;
         current_proc8164 <= s58;

   when s52 =>
         y8 <= '1' ;
         current_proc8164 <= s59;

   when s53 =>
         y31 <= '1' ;
         y32 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_proc8164 <= s60;

   when s54 =>
         y38 <= '1' ;
         current_proc8164 <= s61;

   when s55 =>
         y31 <= '1' ;
         y32 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_proc8164 <= s62;

   when s56 =>
      if ( x16 and x12 ) = '1' then
         y10 <= '1' ;
         current_proc8164 <= s32;

      elsif ( x16 and not x12 ) = '1' then
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s33;

      else
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s33;

      end if;

   when s57 =>
         y51 <= '1' ;
         current_proc8164 <= s1;

   when s58 =>
         y30 <= '1' ;
         y15 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         y39 <= '1' ;
         current_proc8164 <= s1;

   when s59 =>
         y38 <= '1' ;
         current_proc8164 <= s63;

   when s60 =>
      if ( x12 ) = '1' then
         y36 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y11 <= '1' ;
         y58 <= '1' ;
         current_proc8164 <= s64;

      else
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_proc8164 <= s46;

      end if;

   when s61 =>
         y7 <= '1' ;
         current_proc8164 <= s65;

   when s62 =>
         y59 <= '1' ;
         y54 <= '1' ;
         current_proc8164 <= s66;

   when s63 =>
         y7 <= '1' ;
         current_proc8164 <= s67;

   when s64 =>
         y38 <= '1' ;
         current_proc8164 <= s68;

   when s65 =>
         y38 <= '1' ;
         current_proc8164 <= s69;

   when s66 =>
         y37 <= '1' ;
         y1 <= '1' ;
         current_proc8164 <= s56;

   when s67 =>
         y38 <= '1' ;
         current_proc8164 <= s70;

   when s68 =>
         y26 <= '1' ;
         y2 <= '1' ;
         y58 <= '1' ;
         current_proc8164 <= s71;

   when s69 =>
         y6 <= '1' ;
         current_proc8164 <= s35;

   when s70 =>
         y6 <= '1' ;
         current_proc8164 <= s72;

   when s71 =>
         y38 <= '1' ;
         current_proc8164 <= s73;

   when s72 =>
         y1 <= '1' ;
         current_proc8164 <= s74;

   when s73 =>
         y26 <= '1' ;
         y34 <= '1' ;
         y58 <= '1' ;
         current_proc8164 <= s75;

   when s74 =>
      if ( x17 and x16 and x12 ) = '1' then
         y10 <= '1' ;
         current_proc8164 <= s32;

      elsif ( x17 and x16 and not x12 ) = '1' then
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s33;

      elsif ( x17 and not x16 ) = '1' then
         y36 <= '1' ;
         y9 <= '1' ;
         current_proc8164 <= s33;

      else
         y21 <= '1' ;
         y10 <= '1' ;
         current_proc8164 <= s34;

      end if;

   when s75 =>
         y38 <= '1' ;
         current_proc8164 <= s76;

   when s76 =>
         y11 <= '1' ;
         y2 <= '1' ;
         y58 <= '1' ;
         current_proc8164 <= s13;

   end case;
   end proc_proc8164;

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
	y42  <= '0' ;	y43  <= '0' ;	y44  <= '0' ;	y46  <= '0' ;
	y51  <= '0' ;	y52  <= '0' ;	y54  <= '0' ;	y58  <= '0' ;
	y59  <= '0' ;	y60  <= '0' ;	y61  <= '0' ;
	current_proc8164 <= s1;
      elsif (clk'event and clk ='1') then
        proc_proc8164;
      end if;
   end process;
end ARC;
