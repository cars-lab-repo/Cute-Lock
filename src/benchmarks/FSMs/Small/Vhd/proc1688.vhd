library ieee;
use ieee.std_logic_1164.all;

entity proc1688 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38 : out std_logic );
end proc1688;

architecture ARC of proc1688 is

   type states_proc1688 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47 );
   signal current_proc1688 : states_proc1688;

begin
   process (clk , rst)
   procedure proc_proc1688 is
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
	y37  <= '0' ;	y38  <= '0' ;

   case current_proc1688 is
   when s1 =>
      if ( x6 and x5 and x20 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y8 <= '1' ;
         y14 <= '1' ;
         y29 <= '1' ;
         y31 <= '1' ;
         y35 <= '1' ;
         current_proc1688 <= s2;

      elsif ( x6 and x5 and not x20 and x19 ) = '1' then
         y8 <= '1' ;
         y14 <= '1' ;
         current_proc1688 <= s3;

      elsif ( x6 and x5 and not x20 and not x19 ) = '1' then
         y14 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s4;

      elsif ( x6 and not x5 and x4 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y13 <= '1' ;
         y18 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         y35 <= '1' ;
         current_proc1688 <= s5;

      elsif ( x6 and not x5 and not x4 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y13 <= '1' ;
         current_proc1688 <= s6;

      else
         current_proc1688 <= s1;

      end if;

   when s2 =>
      if ( x19 ) = '1' then
         y32 <= '1' ;
         y34 <= '1' ;
         current_proc1688 <= s7;

      else
         y32 <= '1' ;
         y38 <= '1' ;
         current_proc1688 <= s8;

      end if;

   when s3 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s9;

   when s4 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y13 <= '1' ;
         current_proc1688 <= s10;

   when s5 =>
         y13 <= '1' ;
         y34 <= '1' ;
         current_proc1688 <= s11;

   when s6 =>
         y19 <= '1' ;
         current_proc1688 <= s12;

   when s7 =>
         y30 <= '1' ;
         current_proc1688 <= s13;

   when s8 =>
         y30 <= '1' ;
         current_proc1688 <= s14;

   when s9 =>
         y30 <= '1' ;
         current_proc1688 <= s15;

   when s10 =>
         y30 <= '1' ;
         current_proc1688 <= s16;

   when s11 =>
         y30 <= '1' ;
         current_proc1688 <= s17;

   when s12 =>
         y4 <= '1' ;
         y7 <= '1' ;
         y13 <= '1' ;
         y35 <= '1' ;
         current_proc1688 <= s18;

   when s13 =>
         y13 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         current_proc1688 <= s1;

   when s14 =>
         y13 <= '1' ;
         y31 <= '1' ;
         y38 <= '1' ;
         current_proc1688 <= s1;

   when s15 =>
         y4 <= '1' ;
         y13 <= '1' ;
         y29 <= '1' ;
         current_proc1688 <= s19;

   when s16 =>
         y4 <= '1' ;
         y13 <= '1' ;
         y35 <= '1' ;
         current_proc1688 <= s19;

   when s17 =>
         y13 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         current_proc1688 <= s20;

   when s18 =>
         y19 <= '1' ;
         y37 <= '1' ;
         current_proc1688 <= s21;

   when s19 =>
         current_proc1688 <= s1;

   when s20 =>
         y14 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y20 <= '1' ;
         y36 <= '1' ;
         current_proc1688 <= s1;

   when s21 =>
      if ( x12 and x14 and x13 and x16 ) = '1' then
         y20 <= '1' ;
         current_proc1688 <= s22;

      elsif ( x12 and x14 and x13 and not x16 ) = '1' then
         y24 <= '1' ;
         current_proc1688 <= s22;

      elsif ( x12 and x14 and not x13 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_proc1688 <= s23;

      elsif ( x12 and not x14 and x13 and x15 and x16 ) = '1' then
         y22 <= '1' ;
         y23 <= '1' ;
         current_proc1688 <= s22;

      elsif ( x12 and not x14 and x13 and x15 and not x16 ) = '1' then
         y7 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y21 <= '1' ;
         current_proc1688 <= s22;

      elsif ( x12 and not x14 and x13 and not x15 and x16 and x11 ) = '1' then
         y19 <= '1' ;
         current_proc1688 <= s24;

      elsif ( x12 and not x14 and x13 and not x15 and x16 and not x11 and x18 and x10 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and x16 and not x11 and x18 and not x10 ) = '1' then
         current_proc1688 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and x16 and not x11 and not x18 ) = '1' then
         current_proc1688 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and not x16 and x10 ) = '1' then
         y19 <= '1' ;
         current_proc1688 <= s24;

      elsif ( x12 and not x14 and x13 and not x15 and not x16 and not x10 and x18 and x11 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and not x16 and not x10 and x18 and not x11 ) = '1' then
         current_proc1688 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and not x16 and not x10 and not x18 ) = '1' then
         current_proc1688 <= s1;

      elsif ( x12 and not x14 and not x13 and x15 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_proc1688 <= s23;

      elsif ( x12 and not x14 and not x13 and not x15 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y13 <= '1' ;
         current_proc1688 <= s25;

      elsif ( x12 and not x14 and not x13 and not x15 and not x3 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc1688 <= s26;

      elsif ( x12 and not x14 and not x13 and not x15 and not x3 and not x2 and x16 ) = '1' then
         y7 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_proc1688 <= s22;

      elsif ( x12 and not x14 and not x13 and not x15 and not x3 and not x2 and not x16 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         y15 <= '1' ;
         current_proc1688 <= s22;

      elsif ( not x12 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y7 <= '1' ;
         y13 <= '1' ;
         current_proc1688 <= s25;

      elsif ( not x12 and not x3 and x13 and x15 and x16 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         y17 <= '1' ;
         current_proc1688 <= s22;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and x9 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         y17 <= '1' ;
         current_proc1688 <= s22;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x18 and x10 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x18 and not x10 and x11 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x18 and not x10 and not x11 ) = '1' then
         current_proc1688 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and not x18 ) = '1' then
         current_proc1688 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and x8 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         y17 <= '1' ;
         current_proc1688 <= s22;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x18 and x10 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x18 and not x10 and x11 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x18 and not x10 and not x11 ) = '1' then
         current_proc1688 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and not x18 ) = '1' then
         current_proc1688 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and x7 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         y17 <= '1' ;
         current_proc1688 <= s22;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x18 and x10 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and x11 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and not x11 ) = '1' then
         current_proc1688 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and not x18 ) = '1' then
         current_proc1688 <= s1;

      elsif ( not x12 and not x3 and not x13 and x2 ) = '1' then
         y1 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_proc1688 <= s26;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_proc1688 <= s27;

      end if;

   when s22 =>
      if ( x18 and x10 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( x18 and not x10 and x11 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( x18 and not x10 and not x11 ) = '1' then
         current_proc1688 <= s1;

      else
         current_proc1688 <= s1;

      end if;

   when s23 =>
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_proc1688 <= s22;

   when s24 =>
         y19 <= '1' ;
         current_proc1688 <= s28;

   when s25 =>
         y19 <= '1' ;
         current_proc1688 <= s29;

   when s26 =>
      if ( x12 and x16 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_proc1688 <= s30;

      elsif ( x12 and not x16 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s31;

      else
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s32;

      end if;

   when s27 =>
      if ( x14 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_proc1688 <= s23;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_proc1688 <= s23;

      end if;

   when s28 =>
         y19 <= '1' ;
         current_proc1688 <= s33;

   when s29 =>
         y4 <= '1' ;
         y7 <= '1' ;
         y13 <= '1' ;
         y35 <= '1' ;
         current_proc1688 <= s34;

   when s30 =>
         y32 <= '1' ;
         y34 <= '1' ;
         current_proc1688 <= s35;

   when s31 =>
         y30 <= '1' ;
         current_proc1688 <= s36;

   when s32 =>
         y30 <= '1' ;
         current_proc1688 <= s37;

   when s33 =>
         y19 <= '1' ;
         current_proc1688 <= s38;

   when s34 =>
         y8 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_proc1688 <= s39;

   when s35 =>
         y30 <= '1' ;
         current_proc1688 <= s40;

   when s36 =>
         y4 <= '1' ;
         y13 <= '1' ;
         y29 <= '1' ;
         current_proc1688 <= s41;

   when s37 =>
         y4 <= '1' ;
         y13 <= '1' ;
         y29 <= '1' ;
         current_proc1688 <= s42;

   when s38 =>
         y20 <= '1' ;
         current_proc1688 <= s22;

   when s39 =>
      if ( x12 and x1 and x16 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s43;

      elsif ( x12 and x1 and x16 and not x2 and x17 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_proc1688 <= s30;

      elsif ( x12 and x1 and x16 and not x2 and not x17 ) = '1' then
         y1 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_proc1688 <= s44;

      elsif ( x12 and x1 and not x16 ) = '1' then
         y15 <= '1' ;
         current_proc1688 <= s22;

      elsif ( x12 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s43;

      elsif ( x12 and not x1 and not x2 and x17 and x16 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_proc1688 <= s30;

      elsif ( x12 and not x1 and not x2 and x17 and not x16 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s31;

      elsif ( x12 and not x1 and not x2 and not x17 ) = '1' then
         y1 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_proc1688 <= s44;

      elsif ( not x12 and x13 and x15 and x16 and x1 ) = '1' then
         y17 <= '1' ;
         current_proc1688 <= s22;

      elsif ( not x12 and x13 and x15 and x16 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s43;

      elsif ( not x12 and x13 and x15 and x16 and not x1 and not x2 and x17 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s32;

      elsif ( not x12 and x13 and x15 and x16 and not x1 and not x2 and not x17 ) = '1' then
         y1 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_proc1688 <= s44;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and x1 ) = '1' then
         y17 <= '1' ;
         current_proc1688 <= s22;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s43;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x1 and not x2 and x17 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s32;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x1 and not x2 and not x17 ) = '1' then
         y1 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_proc1688 <= s44;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x18 and x10 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x18 and not x10 and x11 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x18 and not x10 and not x11 ) = '1' then
         current_proc1688 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and not x18 ) = '1' then
         current_proc1688 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and x1 ) = '1' then
         y17 <= '1' ;
         current_proc1688 <= s22;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s43;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x1 and not x2 and x17 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s32;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x1 and not x2 and not x17 ) = '1' then
         y1 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_proc1688 <= s44;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x18 and x10 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x18 and not x10 and x11 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x18 and not x10 and not x11 ) = '1' then
         current_proc1688 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and not x18 ) = '1' then
         current_proc1688 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and x1 ) = '1' then
         y17 <= '1' ;
         current_proc1688 <= s22;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s43;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x1 and not x2 and x17 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s32;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x1 and not x2 and not x17 ) = '1' then
         y1 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_proc1688 <= s44;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x18 and x10 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and x11 ) = '1' then
         y33 <= '1' ;
         current_proc1688 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and not x11 ) = '1' then
         current_proc1688 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and not x18 ) = '1' then
         current_proc1688 <= s1;

      elsif ( not x12 and not x13 and x1 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_proc1688 <= s27;

      elsif ( not x12 and not x13 and not x1 and x2 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s43;

      elsif ( not x12 and not x13 and not x1 and not x2 and x17 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s32;

      else
         y1 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_proc1688 <= s44;

      end if;

   when s40 =>
         y13 <= '1' ;
         y31 <= '1' ;
         y34 <= '1' ;
         current_proc1688 <= s22;

   when s41 =>
         y15 <= '1' ;
         y18 <= '1' ;
         current_proc1688 <= s22;

   when s42 =>
      if ( x13 ) = '1' then
         y17 <= '1' ;
         y18 <= '1' ;
         current_proc1688 <= s22;

      elsif ( not x13 and x14 ) = '1' then
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_proc1688 <= s23;

      else
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_proc1688 <= s23;

      end if;

   when s43 =>
         y30 <= '1' ;
         current_proc1688 <= s45;

   when s44 =>
         y7 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_proc1688 <= s26;

   when s45 =>
         y4 <= '1' ;
         y13 <= '1' ;
         y29 <= '1' ;
         current_proc1688 <= s46;

   when s46 =>
         y8 <= '1' ;
         y18 <= '1' ;
         current_proc1688 <= s47;

   when s47 =>
      if ( x17 and x12 and x16 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         current_proc1688 <= s30;

      elsif ( x17 and x12 and not x16 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s31;

      elsif ( x17 and not x12 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         current_proc1688 <= s32;

      else
         y1 <= '1' ;
         y25 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_proc1688 <= s44;

      end if;

   end case;
   end proc_proc1688;

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
	y37  <= '0' ;	y38  <= '0' ;
	current_proc1688 <= s1;
      elsif (clk'event and clk ='1') then
        proc_proc1688;
      end if;
   end process;
end ARC;
