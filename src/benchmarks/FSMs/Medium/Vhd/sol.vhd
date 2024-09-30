library ieee;
use ieee.std_logic_1164.all;

entity sol is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21,x22,x23 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56,y57,y58,y59,y60,
	y61,y62,y63,y64,y65,y66,y67,y68 : out std_logic );
end sol;

architecture ARC of sol is

   type states_sol is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70 );
   signal current_sol : states_sol;

begin
   process (clk , rst)
   procedure proc_sol is
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
	y57  <= '0' ;	y58  <= '0' ;	y59  <= '0' ;	y60  <= '0' ;
	y61  <= '0' ;	y62  <= '0' ;	y63  <= '0' ;	y64  <= '0' ;
	y65  <= '0' ;	y66  <= '0' ;	y67  <= '0' ;	y68  <= '0' ;


   case current_sol is
   when s1 =>
      if ( x18 and x14 and x22 and x23 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_sol <= s2;

      elsif ( x18 and x14 and x22 and not x23 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_sol <= s3;

      elsif ( x18 and x14 and not x22 and x23 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_sol <= s3;

      elsif ( x18 and x14 and not x22 and not x23 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_sol <= s2;

      elsif ( x18 and not x14 ) = '1' then
         y1 <= '1' ;
         current_sol <= s4;

      else
         current_sol <= s1;

      end if;

   when s2 =>
      if ( x22 and x23 ) = '1' then
         y6 <= '1' ;
         current_sol <= s5;

      elsif ( x22 and not x23 and x16 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and not x23 and x16 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and not x23 and x16 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x22 and not x23 and x16 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and not x23 and x16 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x22 and not x23 and not x16 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y23 <= '1' ;
         current_sol <= s6;

      elsif ( not x22 and x23 and x16 ) = '1' then
         y50 <= '1' ;
         current_sol <= s7;

      elsif ( not x22 and x23 and not x16 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y23 <= '1' ;
         current_sol <= s6;

      else
         y6 <= '1' ;
         current_sol <= s5;

      end if;

   when s3 =>
      if ( x22 ) = '1' then
         y6 <= '1' ;
         current_sol <= s8;

      else
         y6 <= '1' ;
         current_sol <= s9;

      end if;

   when s4 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         current_sol <= s10;

   when s5 =>
      if ( x22 and x23 and x16 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s11;

      elsif ( x22 and x23 and not x16 ) = '1' then
         y3 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_sol <= s12;

      elsif ( x22 and not x23 and x16 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and not x23 and x16 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and not x23 and x16 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x22 and not x23 and x16 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and not x23 and x16 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x22 and not x23 and not x16 ) = '1' then
         y3 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_sol <= s13;

      elsif ( not x22 and x23 and x16 and x7 and x8 and x9 and x10 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_sol <= s2;

      elsif ( not x22 and x23 and x16 and x7 and x8 and x9 and not x10 ) = '1' then
         y6 <= '1' ;
         current_sol <= s14;

      elsif ( not x22 and x23 and x16 and x7 and x8 and not x9 and x10 and x13 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x23 and x16 and x7 and x8 and not x9 and x10 and not x13 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and x8 and not x9 and x10 and not x13 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and x8 and not x9 and x10 and not x13 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and x8 and not x9 and x10 and not x13 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and x8 and not x9 and x10 and not x13 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and x8 and not x9 and not x10 and x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x23 and x16 and x7 and x8 and not x9 and not x10 and not x1 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and x8 and not x9 and not x10 and not x1 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and x8 and not x9 and not x10 and not x1 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and x8 and not x9 and not x10 and not x1 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and x8 and not x9 and not x10 and not x1 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and not x9 and x10 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and not x9 and x10 and not x3 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and not x9 and x10 and not x3 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and not x9 and x10 and not x3 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and not x9 and x10 and not x3 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and not x9 and x10 and not x3 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and not x9 and not x10 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and not x9 and not x10 and not x15 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and not x9 and not x10 and not x15 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and not x9 and not x10 and not x15 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and not x9 and not x10 and not x15 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and x7 and not x8 and not x9 and not x10 and not x15 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x23 and x16 and not x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_sol <= s16;

      elsif ( not x22 and x23 and not x16 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y23 <= '1' ;
         current_sol <= s17;

      elsif ( not x22 and not x23 and x16 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s11;

      else
         y3 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_sol <= s12;

      end if;

   when s6 =>
      if ( x22 ) = '1' then
         y10 <= '1' ;
         current_sol <= s18;

      else
         y10 <= '1' ;
         current_sol <= s19;

      end if;

   when s7 =>
      if ( x2 ) = '1' then
         y19 <= '1' ;
         current_sol <= s20;

      elsif ( not x2 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x2 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x2 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x2 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      else
         current_sol <= s1;

      end if;

   when s8 =>
      if ( x16 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s11;

      else
         y3 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_sol <= s12;

      end if;

   when s9 =>
      if ( x22 and x16 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y36 <= '1' ;
         current_sol <= s21;

      elsif ( x22 and x16 and not x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_sol <= s16;

      elsif ( x22 and not x16 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y23 <= '1' ;
         current_sol <= s17;

      elsif ( not x22 and x16 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s11;

      else
         y3 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_sol <= s12;

      end if;

   when s10 =>
         y6 <= '1' ;
         current_sol <= s22;

   when s11 =>
      if ( x23 ) = '1' then
         y19 <= '1' ;
         current_sol <= s23;

      else
         y19 <= '1' ;
         current_sol <= s24;

      end if;

   when s12 =>
         y10 <= '1' ;
         current_sol <= s25;

   when s13 =>
         y10 <= '1' ;
         current_sol <= s26;

   when s14 =>
      if ( x22 and x16 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and x16 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and x16 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x22 and x16 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and x16 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x22 and not x16 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y65 <= '1' ;
         y66 <= '1' ;
         current_sol <= s27;

      elsif ( not x22 and x23 and x16 ) = '1' then
         y3 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x23 and not x16 ) = '1' then
         y3 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_sol <= s13;

      elsif ( not x22 and not x23 and x16 and x7 and x8 and x9 and x10 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y46 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and not x23 and x16 and x7 and x8 and x9 and not x10 ) = '1' then
         y47 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and not x23 and x16 and x7 and x8 and not x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y42 <= '1' ;
         y43 <= '1' ;
         current_sol <= s28;

      elsif ( not x22 and not x23 and x16 and x7 and not x8 and x9 and x10 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and not x23 and x16 and x7 and not x8 and x9 and not x10 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y39 <= '1' ;
         y41 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and not x23 and x16 and x7 and not x8 and not x9 ) = '1' then
         y5 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y41 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and not x23 and x16 and not x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_sol <= s16;

      else
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y23 <= '1' ;
         current_sol <= s17;

      end if;

   when s15 =>
      if ( x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      else
         current_sol <= s1;

      end if;

   when s16 =>
      if ( x22 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y36 <= '1' ;
         current_sol <= s21;

      elsif ( not x22 and x8 and x9 and x10 and x23 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_sol <= s2;

      elsif ( not x22 and x8 and x9 and x10 and not x23 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y46 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x8 and x9 and not x10 and x23 ) = '1' then
         y6 <= '1' ;
         current_sol <= s14;

      elsif ( not x22 and x8 and x9 and not x10 and not x23 ) = '1' then
         y47 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x8 and not x9 and x23 and x10 and x13 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x8 and not x9 and x23 and x10 and not x13 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x8 and not x9 and x23 and x10 and not x13 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x8 and not x9 and x23 and x10 and not x13 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x8 and not x9 and x23 and x10 and not x13 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x8 and not x9 and x23 and x10 and not x13 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x8 and not x9 and x23 and not x10 and x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x8 and not x9 and x23 and not x10 and not x1 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x8 and not x9 and x23 and not x10 and not x1 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x8 and not x9 and x23 and not x10 and not x1 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x8 and not x9 and x23 and not x10 and not x1 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x8 and not x9 and x23 and not x10 and not x1 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x8 and not x9 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y42 <= '1' ;
         y43 <= '1' ;
         current_sol <= s28;

      elsif ( not x22 and not x8 and x9 and x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and not x8 and x9 and not x23 and x10 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and not x8 and x9 and not x23 and not x10 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y39 <= '1' ;
         y41 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and not x8 and not x9 and x23 and x10 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and not x8 and not x9 and x23 and x10 and not x3 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and not x8 and not x9 and x23 and x10 and not x3 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and not x8 and not x9 and x23 and x10 and not x3 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and not x8 and not x9 and x23 and x10 and not x3 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and not x8 and not x9 and x23 and x10 and not x3 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and not x8 and not x9 and x23 and not x10 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and not x8 and not x9 and x23 and not x10 and not x15 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and not x8 and not x9 and x23 and not x10 and not x15 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and not x8 and not x9 and x23 and not x10 and not x15 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and not x8 and not x9 and x23 and not x10 and not x15 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and not x8 and not x9 and x23 and not x10 and not x15 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      else
         y5 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y41 <= '1' ;
         current_sol <= s15;

      end if;

   when s17 =>
      if ( x22 ) = '1' then
         y10 <= '1' ;
         current_sol <= s29;

      elsif ( not x22 and x23 ) = '1' then
         y10 <= '1' ;
         current_sol <= s30;

      else
         y10 <= '1' ;
         current_sol <= s26;

      end if;

   when s18 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y26 <= '1' ;
         current_sol <= s31;

   when s19 =>
      if ( x22 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y38 <= '1' ;
         current_sol <= s32;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y26 <= '1' ;
         current_sol <= s31;

      end if;

   when s20 =>
      if ( x23 and x22 and x19 and x8 and x9 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and x22 and x19 and x8 and x9 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and x22 and x19 and x8 and x9 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x23 and x22 and x19 and x8 and x9 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and x22 and x19 and x8 and x9 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x23 and x22 and x19 and x8 and not x9 and x10 ) = '1' then
         y33 <= '1' ;
         y54 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and x22 and x19 and x8 and not x9 and not x10 ) = '1' then
         y37 <= '1' ;
         y55 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and x22 and x19 and not x8 and x9 and x4 and x10 and x5 ) = '1' then
         y19 <= '1' ;
         current_sol <= s24;

      elsif ( x23 and x22 and x19 and not x8 and x9 and x4 and x10 and not x5 and x6 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and x22 and x19 and not x8 and x9 and x4 and x10 and not x5 and not x6 ) = '1' then
         current_sol <= s1;

      elsif ( x23 and x22 and x19 and not x8 and x9 and x4 and not x10 ) = '1' then
         y19 <= '1' ;
         current_sol <= s24;

      elsif ( x23 and x22 and x19 and not x8 and x9 and not x4 and x5 and x10 ) = '1' then
         y19 <= '1' ;
         current_sol <= s24;

      elsif ( x23 and x22 and x19 and not x8 and x9 and not x4 and x5 and not x10 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and x22 and x19 and not x8 and x9 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x23 and x22 and x19 and not x8 and not x9 and x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y51 <= '1' ;
         y56 <= '1' ;
         current_sol <= s15;

      elsif ( x23 and x22 and x19 and not x8 and not x9 and not x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y23 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         current_sol <= s15;

      elsif ( x23 and x22 and not x19 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y20 <= '1' ;
         current_sol <= s33;

      elsif ( x23 and not x22 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and not x22 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and not x22 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x23 and not x22 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and not x22 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x23 and x19 and x20 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y36 <= '1' ;
         current_sol <= s16;

      elsif ( not x23 and x19 and not x20 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_sol <= s34;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y20 <= '1' ;
         current_sol <= s33;

      end if;

   when s21 =>
      if ( x8 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y23 <= '1' ;
         y38 <= '1' ;
         current_sol <= s35;

      elsif ( not x8 and x9 and x10 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_sol <= s36;

      elsif ( not x8 and x9 and not x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y36 <= '1' ;
         current_sol <= s37;

      elsif ( not x8 and not x9 and x10 ) = '1' then
         y58 <= '1' ;
         current_sol <= s38;

      else
         y56 <= '1' ;
         current_sol <= s39;

      end if;

   when s22 =>
      if ( x16 and x22 ) = '1' then
         y19 <= '1' ;
         current_sol <= s20;

      elsif ( x16 and not x22 and x23 ) = '1' then
         y19 <= '1' ;
         current_sol <= s24;

      elsif ( x16 and not x22 and not x23 ) = '1' then
         y19 <= '1' ;
         current_sol <= s20;

      else
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         current_sol <= s40;

      end if;

   when s23 =>
         y32 <= '1' ;
         y33 <= '1' ;
         current_sol <= s1;

   when s24 =>
      if ( x23 and x22 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and x22 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and x22 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x23 and x22 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x23 and x22 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x23 and not x22 and x19 and x20 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y36 <= '1' ;
         current_sol <= s16;

      elsif ( x23 and not x22 and x19 and not x20 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_sol <= s34;

      elsif ( x23 and not x22 and not x19 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y20 <= '1' ;
         current_sol <= s33;

      else
         y32 <= '1' ;
         y33 <= '1' ;
         current_sol <= s1;

      end if;

   when s25 =>
      if ( x22 and x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y26 <= '1' ;
         current_sol <= s41;

      elsif ( x22 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y26 <= '1' ;
         current_sol <= s42;

      elsif ( not x22 and x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y26 <= '1' ;
         current_sol <= s42;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y26 <= '1' ;
         current_sol <= s41;

      end if;

   when s26 =>
      if ( x22 and x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_sol <= s43;

      elsif ( x22 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y26 <= '1' ;
         current_sol <= s41;

      elsif ( not x22 and x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y26 <= '1' ;
         current_sol <= s41;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y26 <= '1' ;
         current_sol <= s42;

      end if;

   when s27 =>
         y10 <= '1' ;
         current_sol <= s30;

   when s28 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y44 <= '1' ;
         y45 <= '1' ;
         current_sol <= s15;

   when s29 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y26 <= '1' ;
         current_sol <= s44;

   when s30 =>
      if ( x22 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y38 <= '1' ;
         current_sol <= s45;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y26 <= '1' ;
         current_sol <= s44;

      end if;

   when s31 =>
      if ( x22 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s46;

      elsif ( x22 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s47;

      elsif ( not x22 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s48;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s49;

      end if;

   when s32 =>
      if ( x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y29 <= '1' ;
         y36 <= '1' ;
         current_sol <= s50;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s49;

      end if;

   when s33 =>
      if ( x11 ) = '1' then
         y21 <= '1' ;
         current_sol <= s4;

      elsif ( not x11 and x23 and x22 and x8 and x9 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x11 and x23 and x22 and x8 and x9 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x11 and x23 and x22 and x8 and x9 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x11 and x23 and x22 and x8 and x9 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x11 and x23 and x22 and x8 and x9 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x11 and x23 and x22 and x8 and not x9 and x10 ) = '1' then
         y33 <= '1' ;
         y54 <= '1' ;
         current_sol <= s1;

      elsif ( not x11 and x23 and x22 and x8 and not x9 and not x10 ) = '1' then
         y37 <= '1' ;
         y55 <= '1' ;
         current_sol <= s1;

      elsif ( not x11 and x23 and x22 and not x8 and x10 and x9 and x5 ) = '1' then
         y19 <= '1' ;
         current_sol <= s24;

      elsif ( not x11 and x23 and x22 and not x8 and x10 and x9 and not x5 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x11 and x23 and x22 and not x8 and x10 and x9 and not x5 and x6 and not x4 ) = '1' then
         current_sol <= s1;

      elsif ( not x11 and x23 and x22 and not x8 and x10 and x9 and not x5 and not x6 ) = '1' then
         current_sol <= s1;

      elsif ( not x11 and x23 and x22 and not x8 and x10 and not x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y51 <= '1' ;
         y56 <= '1' ;
         current_sol <= s15;

      elsif ( not x11 and x23 and x22 and not x8 and not x10 and x9 and x4 ) = '1' then
         y19 <= '1' ;
         current_sol <= s24;

      elsif ( not x11 and x23 and x22 and not x8 and not x10 and x9 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x11 and x23 and x22 and not x8 and not x10 and x9 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x11 and x23 and x22 and not x8 and not x10 and not x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y23 <= '1' ;
         y52 <= '1' ;
         y53 <= '1' ;
         current_sol <= s15;

      elsif ( not x11 and x23 and not x22 and x21 ) = '1' then
         y49 <= '1' ;
         current_sol <= s15;

      elsif ( not x11 and x23 and not x22 and not x21 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y48 <= '1' ;
         current_sol <= s51;

      elsif ( not x11 and not x23 and x8 and x9 and x10 and x22 ) = '1' then
         y62 <= '1' ;
         current_sol <= s15;

      elsif ( not x11 and not x23 and x8 and x9 and x10 and not x22 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y46 <= '1' ;
         current_sol <= s15;

      elsif ( not x11 and not x23 and x8 and x9 and not x10 and x22 ) = '1' then
         y61 <= '1' ;
         current_sol <= s15;

      elsif ( not x11 and not x23 and x8 and x9 and not x10 and not x22 ) = '1' then
         y47 <= '1' ;
         current_sol <= s15;

      elsif ( not x11 and not x23 and x8 and not x9 and x22 and x10 ) = '1' then
         y60 <= '1' ;
         current_sol <= s15;

      elsif ( not x11 and not x23 and x8 and not x9 and x22 and not x10 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y23 <= '1' ;
         y38 <= '1' ;
         current_sol <= s52;

      elsif ( not x11 and not x23 and x8 and not x9 and not x22 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y42 <= '1' ;
         y43 <= '1' ;
         current_sol <= s28;

      elsif ( not x11 and not x23 and not x8 and x9 and x10 and x22 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y38 <= '1' ;
         y63 <= '1' ;
         current_sol <= s15;

      elsif ( not x11 and not x23 and not x8 and x9 and x10 and not x22 ) = '1' then
         y5 <= '1' ;
         y34 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         current_sol <= s15;

      elsif ( not x11 and not x23 and not x8 and x9 and not x10 and x22 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y36 <= '1' ;
         y64 <= '1' ;
         current_sol <= s15;

      elsif ( not x11 and not x23 and not x8 and x9 and not x10 and not x22 ) = '1' then
         y5 <= '1' ;
         y34 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y39 <= '1' ;
         current_sol <= s15;

      elsif ( not x11 and not x23 and not x8 and not x9 and x22 and x10 ) = '1' then
         y58 <= '1' ;
         current_sol <= s38;

      elsif ( not x11 and not x23 and not x8 and not x9 and x22 and not x10 ) = '1' then
         y56 <= '1' ;
         current_sol <= s39;

      else
         y5 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         current_sol <= s15;

      end if;

   when s34 =>
      if ( x12 and x22 ) = '1' then
         y6 <= '1' ;
         current_sol <= s9;

      elsif ( x12 and not x22 and x23 ) = '1' then
         y6 <= '1' ;
         current_sol <= s5;

      elsif ( x12 and not x22 and not x23 ) = '1' then
         y6 <= '1' ;
         current_sol <= s14;

      elsif ( not x12 and x7 and x22 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y36 <= '1' ;
         current_sol <= s21;

      elsif ( not x12 and x7 and not x22 and x8 and x9 and x10 and x23 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_sol <= s2;

      elsif ( not x12 and x7 and not x22 and x8 and x9 and x10 and not x23 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y46 <= '1' ;
         current_sol <= s15;

      elsif ( not x12 and x7 and not x22 and x8 and x9 and not x10 and x23 ) = '1' then
         y6 <= '1' ;
         current_sol <= s14;

      elsif ( not x12 and x7 and not x22 and x8 and x9 and not x10 and not x23 ) = '1' then
         y47 <= '1' ;
         current_sol <= s15;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and x23 and x10 and x13 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and x23 and x10 and not x13 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and x23 and x10 and not x13 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and x23 and x10 and not x13 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and x23 and x10 and not x13 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and x23 and x10 and not x13 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and x23 and not x10 and x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and x23 and not x10 and not x1 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and x23 and not x10 and not x1 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and x23 and not x10 and not x1 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and x23 and not x10 and not x1 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and x23 and not x10 and not x1 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and x8 and not x9 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y42 <= '1' ;
         y43 <= '1' ;
         current_sol <= s28;

      elsif ( not x12 and x7 and not x22 and not x8 and x9 and x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x12 and x7 and not x22 and not x8 and x9 and not x23 and x10 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         current_sol <= s15;

      elsif ( not x12 and x7 and not x22 and not x8 and x9 and not x23 and not x10 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y39 <= '1' ;
         y41 <= '1' ;
         current_sol <= s15;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and x23 and x10 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and x23 and x10 and not x3 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and x23 and x10 and not x3 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and x23 and x10 and not x3 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and x23 and x10 and not x3 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and x23 and x10 and not x3 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and x23 and not x10 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and x23 and not x10 and not x15 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and x23 and not x10 and not x15 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and x23 and not x10 and not x15 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and x23 and not x10 and not x15 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and x23 and not x10 and not x15 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x12 and x7 and not x22 and not x8 and not x9 and not x23 ) = '1' then
         y5 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y41 <= '1' ;
         current_sol <= s15;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_sol <= s16;

      end if;

   when s35 =>
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_sol <= s53;

   when s36 =>
         y6 <= '1' ;
         current_sol <= s14;

   when s37 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_sol <= s2;

   when s38 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y36 <= '1' ;
         y59 <= '1' ;
         current_sol <= s15;

   when s39 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y38 <= '1' ;
         y57 <= '1' ;
         current_sol <= s15;

   when s40 =>
      if ( x22 and x23 ) = '1' then
         y10 <= '1' ;
         current_sol <= s26;

      elsif ( x22 and not x23 ) = '1' then
         y10 <= '1' ;
         current_sol <= s54;

      else
         y10 <= '1' ;
         current_sol <= s54;

      end if;

   when s41 =>
      if ( x22 and x23 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s8;

      elsif ( x22 and x23 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s55;

      elsif ( x22 and not x23 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s56;

      elsif ( x22 and not x23 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s55;

      elsif ( not x22 and x23 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s56;

      elsif ( not x22 and x23 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s55;

      elsif ( not x22 and not x23 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s8;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s49;

      end if;

   when s42 =>
      if ( x22 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s8;

      elsif ( x22 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s57;

      elsif ( not x22 and x23 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s8;

      elsif ( not x22 and x23 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s58;

      elsif ( not x22 and not x23 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s46;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s55;

      end if;

   when s43 =>
      if ( x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         y18 <= '1' ;
         y29 <= '1' ;
         current_sol <= s22;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s59;

      end if;

   when s44 =>
      if ( x22 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s48;

      elsif ( x22 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s58;

      elsif ( not x22 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s46;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s47;

      end if;

   when s45 =>
      if ( x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y36 <= '1' ;
         current_sol <= s60;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s61;

      end if;

   when s46 =>
      if ( x22 and x16 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and x16 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and x16 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x22 and x16 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and x16 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x22 and not x16 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y23 <= '1' ;
         current_sol <= s6;

      elsif ( not x22 and x16 and x7 and x8 and x9 and x10 and x23 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_sol <= s2;

      elsif ( not x22 and x16 and x7 and x8 and x9 and x10 and not x23 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y46 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x16 and x7 and x8 and x9 and not x10 and x23 ) = '1' then
         y6 <= '1' ;
         current_sol <= s14;

      elsif ( not x22 and x16 and x7 and x8 and x9 and not x10 and not x23 ) = '1' then
         y47 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and x23 and x10 and x13 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and x23 and x10 and not x13 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and x23 and x10 and not x13 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and x23 and x10 and not x13 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and x23 and x10 and not x13 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and x23 and x10 and not x13 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and x23 and not x10 and x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and x23 and not x10 and not x1 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and x23 and not x10 and not x1 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and x23 and not x10 and not x1 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and x23 and not x10 and not x1 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and x23 and not x10 and not x1 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and x8 and not x9 and not x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y42 <= '1' ;
         y43 <= '1' ;
         current_sol <= s28;

      elsif ( not x22 and x16 and x7 and not x8 and x9 and x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x16 and x7 and not x8 and x9 and not x23 and x10 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x16 and x7 and not x8 and x9 and not x23 and not x10 ) = '1' then
         y5 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y39 <= '1' ;
         y41 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and x23 and x10 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and x23 and x10 and not x3 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and x23 and x10 and not x3 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and x23 and x10 and not x3 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and x23 and x10 and not x3 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and x23 and x10 and not x3 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and x23 and not x10 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and x23 and not x10 and not x15 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and x23 and not x10 and not x15 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and x23 and not x10 and not x15 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and x23 and not x10 and not x15 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and x23 and not x10 and not x15 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x22 and x16 and x7 and not x8 and not x9 and not x23 ) = '1' then
         y5 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         y38 <= '1' ;
         y41 <= '1' ;
         current_sol <= s15;

      elsif ( not x22 and x16 and not x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_sol <= s16;

      else
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y23 <= '1' ;
         current_sol <= s17;

      end if;

   when s47 =>
         y16 <= '1' ;
         y17 <= '1' ;
         current_sol <= s62;

   when s48 =>
      if ( x22 and x16 and x7 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y36 <= '1' ;
         current_sol <= s21;

      elsif ( x22 and x16 and not x7 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_sol <= s16;

      elsif ( x22 and not x16 ) = '1' then
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y23 <= '1' ;
         current_sol <= s17;

      elsif ( not x22 and x16 ) = '1' then
         y50 <= '1' ;
         current_sol <= s7;

      else
         y5 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y23 <= '1' ;
         current_sol <= s6;

      end if;

   when s49 =>
      if ( x22 ) = '1' then
         y16 <= '1' ;
         y17 <= '1' ;
         current_sol <= s63;

      elsif ( not x22 and x23 ) = '1' then
         y16 <= '1' ;
         y17 <= '1' ;
         current_sol <= s63;

      else
         y17 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_sol <= s41;

      end if;

   when s50 =>
      if ( x16 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         current_sol <= s64;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y67 <= '1' ;
         y68 <= '1' ;
         current_sol <= s65;

      end if;

   when s51 =>
      if ( x8 and x9 and x10 ) = '1' then
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_sol <= s2;

      elsif ( x8 and x9 and not x10 ) = '1' then
         y6 <= '1' ;
         current_sol <= s14;

      elsif ( x8 and not x9 and x10 and x13 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( x8 and not x9 and x10 and not x13 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x8 and not x9 and x10 and not x13 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x8 and not x9 and x10 and not x13 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x8 and not x9 and x10 and not x13 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x8 and not x9 and x10 and not x13 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x8 and not x9 and not x10 and x1 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( x8 and not x9 and not x10 and not x1 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x8 and not x9 and not x10 and not x1 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x8 and not x9 and not x10 and not x1 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x8 and not x9 and not x10 and not x1 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x8 and not x9 and not x10 and not x1 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x8 and x9 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x8 and not x9 and x10 and x3 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x8 and not x9 and x10 and not x3 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x8 and not x9 and x10 and not x3 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x8 and not x9 and x10 and not x3 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x8 and not x9 and x10 and not x3 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x8 and not x9 and x10 and not x3 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x8 and not x9 and not x10 and x15 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      elsif ( not x8 and not x9 and not x10 and not x15 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x8 and not x9 and not x10 and not x15 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( not x8 and not x9 and not x10 and not x15 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( not x8 and not x9 and not x10 and not x15 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      else
         current_sol <= s1;

      end if;

   when s52 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y36 <= '1' ;
         y64 <= '1' ;
         current_sol <= s66;

   when s53 =>
         y2 <= '1' ;
         y3 <= '1' ;
         y5 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         current_sol <= s50;

   when s54 =>
      if ( x22 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_sol <= s67;

      elsif ( not x22 and x23 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_sol <= s43;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_sol <= s67;

      end if;

   when s55 =>
      if ( x22 ) = '1' then
         y17 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_sol <= s41;

      elsif ( not x22 and x23 ) = '1' then
         y17 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_sol <= s41;

      else
         y16 <= '1' ;
         y17 <= '1' ;
         current_sol <= s63;

      end if;

   when s56 =>
      if ( x22 and x16 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and x16 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and x16 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x22 and x16 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x22 and x16 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x22 and not x16 ) = '1' then
         y3 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_sol <= s13;

      elsif ( not x22 and x16 ) = '1' then
         y3 <= '1' ;
         y30 <= '1' ;
         y31 <= '1' ;
         current_sol <= s15;

      else
         y3 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_sol <= s13;

      end if;

   when s57 =>
         y17 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_sol <= s68;

   when s58 =>
      if ( x22 ) = '1' then
         y16 <= '1' ;
         y17 <= '1' ;
         current_sol <= s69;

      else
         y17 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_sol <= s68;

      end if;

   when s59 =>
         y16 <= '1' ;
         y17 <= '1' ;
         current_sol <= s70;

   when s60 =>
      if ( x16 and x6 and x4 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x16 and x6 and not x4 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x16 and x6 and not x4 and not x5 ) = '1' then
         current_sol <= s1;

      elsif ( x16 and not x6 and x5 ) = '1' then
         y37 <= '1' ;
         current_sol <= s1;

      elsif ( x16 and not x6 and not x5 ) = '1' then
         current_sol <= s1;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y65 <= '1' ;
         y66 <= '1' ;
         current_sol <= s27;

      end if;

   when s61 =>
         y17 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_sol <= s45;

   when s62 =>
      if ( x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s46;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s47;

      end if;

   when s63 =>
      if ( x22 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y29 <= '1' ;
         y36 <= '1' ;
         current_sol <= s50;

      elsif ( x22 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s49;

      elsif ( not x22 and x23 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s48;

      elsif ( not x22 and x23 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s49;

      elsif ( not x22 and not x23 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s46;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s55;

      end if;

   when s64 =>
         y6 <= '1' ;
         current_sol <= s5;

   when s65 =>
         y10 <= '1' ;
         current_sol <= s19;

   when s66 =>
         y3 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y63 <= '1' ;
         current_sol <= s15;

   when s67 =>
      if ( x22 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         y18 <= '1' ;
         y29 <= '1' ;
         current_sol <= s22;

      elsif ( x22 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s59;

      elsif ( not x22 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s59;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         y18 <= '1' ;
         y29 <= '1' ;
         current_sol <= s22;

      end if;

   when s68 =>
      if ( x22 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s8;

      elsif ( x22 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s57;

      elsif ( not x22 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s8;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s58;

      end if;

   when s69 =>
      if ( x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y18 <= '1' ;
         y23 <= '1' ;
         y29 <= '1' ;
         current_sol <= s48;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s58;

      end if;

   when s70 =>
      if ( x23 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         y18 <= '1' ;
         y29 <= '1' ;
         current_sol <= s22;

      elsif ( x23 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s59;

      elsif ( not x23 and x22 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         y18 <= '1' ;
         y29 <= '1' ;
         current_sol <= s22;

      elsif ( not x23 and x22 and not x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s59;

      elsif ( not x23 and not x22 and x17 ) = '1' then
         y3 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_sol <= s59;

      else
         y3 <= '1' ;
         y5 <= '1' ;
         y9 <= '1' ;
         y18 <= '1' ;
         y29 <= '1' ;
         current_sol <= s22;

      end if;

   end case;
   end proc_sol;

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
	y57  <= '0' ;	y58  <= '0' ;	y59  <= '0' ;	y60  <= '0' ;
	y61  <= '0' ;	y62  <= '0' ;	y63  <= '0' ;	y64  <= '0' ;
	y65  <= '0' ;	y66  <= '0' ;	y67  <= '0' ;	y68  <= '0' ;

	current_sol <= s1;
      elsif (clk'event and clk ='1') then
        proc_sol;
      end if;
   end process;
end ARC;
