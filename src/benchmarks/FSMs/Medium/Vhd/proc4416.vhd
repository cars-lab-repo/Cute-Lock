library ieee;
use ieee.std_logic_1164.all;

entity proc4416 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56,y57,y58,y59,y60,
	y61,y62,y63 : out std_logic );
end proc4416;

architecture ARC of proc4416 is

   type states_proc4416 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89 );
   signal current_proc4416 : states_proc4416;

begin
   process (clk , rst)
   procedure proc_proc4416 is
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
	y61  <= '0' ;	y62  <= '0' ;	y63  <= '0' ;

   case current_proc4416 is
   when s1 =>
      if ( x6 and x5 and x20 and x19 ) = '1' then
         y29 <= '1' ;
         y30 <= '1' ;
         y35 <= '1' ;
         y52 <= '1' ;
         current_proc4416 <= s1;

      elsif ( x6 and x5 and x20 and not x19 ) = '1' then
         y36 <= '1' ;
         y52 <= '1' ;
         current_proc4416 <= s1;

      elsif ( x6 and x5 and not x20 and x19 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y20 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         y59 <= '1' ;
         current_proc4416 <= s2;

      elsif ( x6 and x5 and not x20 and not x19 ) = '1' then
         y3 <= '1' ;
         y45 <= '1' ;
         y52 <= '1' ;
         y62 <= '1' ;
         current_proc4416 <= s3;

      elsif ( x6 and not x5 and x4 ) = '1' then
         y19 <= '1' ;
         y29 <= '1' ;
         y30 <= '1' ;
         y35 <= '1' ;
         y52 <= '1' ;
         current_proc4416 <= s4;

      elsif ( x6 and not x5 and not x4 ) = '1' then
         y51 <= '1' ;
         y52 <= '1' ;
         y57 <= '1' ;
         current_proc4416 <= s5;

      else
         current_proc4416 <= s1;

      end if;

   when s2 =>
         y21 <= '1' ;
         y45 <= '1' ;
         y52 <= '1' ;
         y60 <= '1' ;
         y62 <= '1' ;
         current_proc4416 <= s6;

   when s3 =>
         y61 <= '1' ;
         current_proc4416 <= s7;

   when s4 =>
         y35 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y42 <= '1' ;
         y58 <= '1' ;
         current_proc4416 <= s1;

   when s5 =>
         y38 <= '1' ;
         current_proc4416 <= s8;

   when s6 =>
         y61 <= '1' ;
         current_proc4416 <= s9;

   when s7 =>
         y4 <= '1' ;
         y9 <= '1' ;
         y51 <= '1' ;
         current_proc4416 <= s10;

   when s8 =>
         y51 <= '1' ;
         y52 <= '1' ;
         y56 <= '1' ;
         current_proc4416 <= s11;

   when s9 =>
         y2 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         y51 <= '1' ;
         y60 <= '1' ;
         current_proc4416 <= s12;

   when s10 =>
         y61 <= '1' ;
         current_proc4416 <= s13;

   when s11 =>
         y38 <= '1' ;
         current_proc4416 <= s14;

   when s12 =>
         y61 <= '1' ;
         current_proc4416 <= s15;

   when s13 =>
         y5 <= '1' ;
         y11 <= '1' ;
         y51 <= '1' ;
         current_proc4416 <= s16;

   when s14 =>
         y51 <= '1' ;
         y52 <= '1' ;
         y55 <= '1' ;
         current_proc4416 <= s17;

   when s15 =>
         y1 <= '1' ;
         y51 <= '1' ;
         y60 <= '1' ;
         current_proc4416 <= s18;

   when s16 =>
         y61 <= '1' ;
         current_proc4416 <= s19;

   when s17 =>
         y38 <= '1' ;
         current_proc4416 <= s20;

   when s18 =>
         y61 <= '1' ;
         current_proc4416 <= s21;

   when s19 =>
         y6 <= '1' ;
         y13 <= '1' ;
         y51 <= '1' ;
         current_proc4416 <= s22;

   when s20 =>
         y51 <= '1' ;
         y52 <= '1' ;
         y54 <= '1' ;
         current_proc4416 <= s23;

   when s21 =>
         y1 <= '1' ;
         y21 <= '1' ;
         y51 <= '1' ;
         y60 <= '1' ;
         current_proc4416 <= s1;

   when s22 =>
         y29 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_proc4416 <= s1;

   when s23 =>
         y38 <= '1' ;
         current_proc4416 <= s24;

   when s24 =>
      if ( x12 and x14 and x13 and x16 ) = '1' then
         y42 <= '1' ;
         current_proc4416 <= s25;

      elsif ( x12 and x14 and x13 and not x16 ) = '1' then
         y41 <= '1' ;
         current_proc4416 <= s25;

      elsif ( x12 and x14 and not x13 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s26;

      elsif ( x12 and not x14 and x13 and x15 and x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s26;

      elsif ( x12 and not x14 and x13 and x15 and not x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y20 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         y39 <= '1' ;
         current_proc4416 <= s27;

      elsif ( x12 and not x14 and x13 and not x15 and x16 and x11 ) = '1' then
         y38 <= '1' ;
         current_proc4416 <= s28;

      elsif ( x12 and not x14 and x13 and not x15 and x16 and not x11 and x18 and x10 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and x16 and not x11 and x18 and not x10 ) = '1' then
         current_proc4416 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and x16 and not x11 and not x18 ) = '1' then
         current_proc4416 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and not x16 and x10 ) = '1' then
         y38 <= '1' ;
         current_proc4416 <= s28;

      elsif ( x12 and not x14 and x13 and not x15 and not x16 and not x10 and x18 and x11 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and not x16 and not x10 and x18 and not x11 ) = '1' then
         current_proc4416 <= s1;

      elsif ( x12 and not x14 and x13 and not x15 and not x16 and not x10 and not x18 ) = '1' then
         current_proc4416 <= s1;

      elsif ( x12 and not x14 and not x13 and x15 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s26;

      elsif ( x12 and not x14 and not x13 and not x15 and x3 ) = '1' then
         y15 <= '1' ;
         y45 <= '1' ;
         y51 <= '1' ;
         y52 <= '1' ;
         current_proc4416 <= s29;

      elsif ( x12 and not x14 and not x13 and not x15 and not x3 and x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s26;

      elsif ( x12 and not x14 and not x13 and not x15 and not x3 and not x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s30;

      elsif ( not x12 and x3 ) = '1' then
         y15 <= '1' ;
         y45 <= '1' ;
         y51 <= '1' ;
         y52 <= '1' ;
         current_proc4416 <= s29;

      elsif ( not x12 and not x3 and x13 and x15 and x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s30;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and x9 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s30;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x18 and x10 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x18 and not x10 and x11 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and x18 and not x10 and not x11 ) = '1' then
         current_proc4416 <= s1;

      elsif ( not x12 and not x3 and x13 and x15 and not x16 and not x9 and not x18 ) = '1' then
         current_proc4416 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and x8 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s30;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x18 and x10 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x18 and not x10 and x11 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and x18 and not x10 and not x11 ) = '1' then
         current_proc4416 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and x16 and not x8 and not x18 ) = '1' then
         current_proc4416 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and x7 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s30;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x18 and x10 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and x11 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and not x11 ) = '1' then
         current_proc4416 <= s1;

      elsif ( not x12 and not x3 and x13 and not x15 and not x16 and not x7 and not x18 ) = '1' then
         current_proc4416 <= s1;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s30;

      end if;

   when s25 =>
      if ( x18 and x10 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( x18 and not x10 and x11 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( x18 and not x10 and not x11 ) = '1' then
         current_proc4416 <= s1;

      else
         current_proc4416 <= s1;

      end if;

   when s26 =>
      if ( x15 and x13 ) = '1' then
         y3 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s31;

      elsif ( x15 and not x13 ) = '1' then
         y3 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s32;

      elsif ( not x15 and x14 and x13 ) = '1' then
         y3 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s31;

      elsif ( not x15 and x14 and not x13 ) = '1' then
         y3 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s32;

      else
         y3 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s31;

      end if;

   when s27 =>
         y21 <= '1' ;
         y43 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s33;

   when s28 =>
         y38 <= '1' ;
         current_proc4416 <= s34;

   when s29 =>
         y38 <= '1' ;
         current_proc4416 <= s35;

   when s30 =>
      if ( x16 and x12 ) = '1' then
         y21 <= '1' ;
         y43 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s33;

      elsif ( x16 and not x12 ) = '1' then
         y3 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s36;

      else
         y3 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s36;

      end if;

   when s31 =>
         y44 <= '1' ;
         current_proc4416 <= s37;

   when s32 =>
         y44 <= '1' ;
         current_proc4416 <= s38;

   when s33 =>
         y44 <= '1' ;
         current_proc4416 <= s39;

   when s34 =>
         y38 <= '1' ;
         current_proc4416 <= s40;

   when s35 =>
         y9 <= '1' ;
         y16 <= '1' ;
         y51 <= '1' ;
         y52 <= '1' ;
         current_proc4416 <= s41;

   when s36 =>
         y44 <= '1' ;
         current_proc4416 <= s42;

   when s37 =>
         y4 <= '1' ;
         y50 <= '1' ;
         current_proc4416 <= s43;

   when s38 =>
         y4 <= '1' ;
         y50 <= '1' ;
         current_proc4416 <= s44;

   when s39 =>
         y2 <= '1' ;
         y21 <= '1' ;
         y43 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s45;

   when s40 =>
         y38 <= '1' ;
         current_proc4416 <= s46;

   when s41 =>
         y38 <= '1' ;
         current_proc4416 <= s47;

   when s42 =>
         y4 <= '1' ;
         y50 <= '1' ;
         current_proc4416 <= s48;

   when s43 =>
         y44 <= '1' ;
         current_proc4416 <= s49;

   when s44 =>
         y44 <= '1' ;
         current_proc4416 <= s50;

   when s45 =>
         y44 <= '1' ;
         current_proc4416 <= s51;

   when s46 =>
         y38 <= '1' ;
         current_proc4416 <= s52;

   when s47 =>
         y11 <= '1' ;
         y17 <= '1' ;
         y51 <= '1' ;
         y52 <= '1' ;
         current_proc4416 <= s53;

   when s48 =>
         y44 <= '1' ;
         current_proc4416 <= s54;

   when s49 =>
         y5 <= '1' ;
         y49 <= '1' ;
         current_proc4416 <= s55;

   when s50 =>
         y5 <= '1' ;
         y49 <= '1' ;
         current_proc4416 <= s56;

   when s51 =>
         y1 <= '1' ;
         y43 <= '1' ;
         current_proc4416 <= s57;

   when s52 =>
         y38 <= '1' ;
         current_proc4416 <= s58;

   when s53 =>
         y38 <= '1' ;
         current_proc4416 <= s59;

   when s54 =>
         y5 <= '1' ;
         y49 <= '1' ;
         current_proc4416 <= s60;

   when s55 =>
         y44 <= '1' ;
         current_proc4416 <= s61;

   when s56 =>
         y44 <= '1' ;
         current_proc4416 <= s62;

   when s57 =>
         y44 <= '1' ;
         current_proc4416 <= s63;

   when s58 =>
         y38 <= '1' ;
         current_proc4416 <= s64;

   when s59 =>
         y13 <= '1' ;
         y18 <= '1' ;
         y51 <= '1' ;
         y52 <= '1' ;
         current_proc4416 <= s65;

   when s60 =>
         y44 <= '1' ;
         current_proc4416 <= s66;

   when s61 =>
         y6 <= '1' ;
         y48 <= '1' ;
         current_proc4416 <= s67;

   when s62 =>
         y6 <= '1' ;
         y48 <= '1' ;
         current_proc4416 <= s68;

   when s63 =>
         y1 <= '1' ;
         y21 <= '1' ;
         y43 <= '1' ;
         current_proc4416 <= s25;

   when s64 =>
         y38 <= '1' ;
         current_proc4416 <= s25;

   when s65 =>
         y38 <= '1' ;
         current_proc4416 <= s69;

   when s66 =>
         y6 <= '1' ;
         y48 <= '1' ;
         current_proc4416 <= s70;

   when s67 =>
      if ( x12 and x13 ) = '1' then
         y40 <= '1' ;
         y63 <= '1' ;
         current_proc4416 <= s25;

      elsif ( x12 and not x13 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         y31 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         y34 <= '1' ;
         current_proc4416 <= s71;

      elsif ( x12 and not x13 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s30;

      else
         y19 <= '1' ;
         y22 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_proc4416 <= s72;

      end if;

   when s68 =>
      if ( x15 ) = '1' then
         y22 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_proc4416 <= s72;

      elsif ( not x15 and x14 ) = '1' then
         y22 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_proc4416 <= s72;

      else
         y19 <= '1' ;
         y29 <= '1' ;
         y30 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         current_proc4416 <= s25;

      end if;

   when s69 =>
      if ( x12 and x1 and x16 and x2 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y46 <= '1' ;
         current_proc4416 <= s74;

      elsif ( x12 and x1 and x16 and not x2 and x17 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s75;

      elsif ( x12 and x1 and x16 and not x2 and not x17 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s77;

      elsif ( x12 and x1 and not x16 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_proc4416 <= s73;

      elsif ( x12 and not x1 and x2 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y46 <= '1' ;
         current_proc4416 <= s74;

      elsif ( x12 and not x1 and not x2 and x17 and x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s75;

      elsif ( x12 and not x1 and not x2 and x17 and not x16 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_proc4416 <= s76;

      elsif ( x12 and not x1 and not x2 and not x17 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s77;

      elsif ( not x12 and x13 and x15 and x16 and x1 ) = '1' then
         y37 <= '1' ;
         current_proc4416 <= s25;

      elsif ( not x12 and x13 and x15 and x16 and not x1 and x2 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y46 <= '1' ;
         current_proc4416 <= s74;

      elsif ( not x12 and x13 and x15 and x16 and not x1 and not x2 and x17 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_proc4416 <= s25;

      elsif ( not x12 and x13 and x15 and x16 and not x1 and not x2 and not x17 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s77;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and x1 ) = '1' then
         y37 <= '1' ;
         current_proc4416 <= s25;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x1 and x2 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y46 <= '1' ;
         current_proc4416 <= s74;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x1 and not x2 and x17 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_proc4416 <= s25;

      elsif ( not x12 and x13 and x15 and not x16 and x9 and not x1 and not x2 and not x17 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s77;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x18 and x10 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x18 and not x10 and x11 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and x18 and not x10 and not x11 ) = '1' then
         current_proc4416 <= s1;

      elsif ( not x12 and x13 and x15 and not x16 and not x9 and not x18 ) = '1' then
         current_proc4416 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and x1 ) = '1' then
         y37 <= '1' ;
         current_proc4416 <= s25;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x1 and x2 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y46 <= '1' ;
         current_proc4416 <= s74;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x1 and not x2 and x17 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_proc4416 <= s25;

      elsif ( not x12 and x13 and not x15 and x16 and x8 and not x1 and not x2 and not x17 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s77;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x18 and x10 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x18 and not x10 and x11 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and x18 and not x10 and not x11 ) = '1' then
         current_proc4416 <= s1;

      elsif ( not x12 and x13 and not x15 and x16 and not x8 and not x18 ) = '1' then
         current_proc4416 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and x1 ) = '1' then
         y37 <= '1' ;
         current_proc4416 <= s25;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x1 and x2 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y46 <= '1' ;
         current_proc4416 <= s74;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x1 and not x2 and x17 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_proc4416 <= s25;

      elsif ( not x12 and x13 and not x15 and not x16 and x7 and not x1 and not x2 and not x17 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s77;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x18 and x10 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and x11 ) = '1' then
         y53 <= '1' ;
         current_proc4416 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and x18 and not x10 and not x11 ) = '1' then
         current_proc4416 <= s1;

      elsif ( not x12 and x13 and not x15 and not x16 and not x7 and not x18 ) = '1' then
         current_proc4416 <= s1;

      elsif ( not x12 and not x13 and x1 and x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y8 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         current_proc4416 <= s73;

      elsif ( not x12 and not x13 and x1 and not x14 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s75;

      elsif ( not x12 and not x13 and not x1 and x2 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y46 <= '1' ;
         current_proc4416 <= s74;

      elsif ( not x12 and not x13 and not x1 and not x2 and x17 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_proc4416 <= s76;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s77;

      end if;

   when s70 =>
      if ( x12 and x16 ) = '1' then
         y29 <= '1' ;
         y30 <= '1' ;
         current_proc4416 <= s25;

      elsif ( x12 and not x16 and x2 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_proc4416 <= s78;

      elsif ( x12 and not x16 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s75;

      elsif ( not x12 and x13 ) = '1' then
         y29 <= '1' ;
         y35 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_proc4416 <= s25;

      elsif ( not x12 and not x13 and x2 and x14 ) = '1' then
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_proc4416 <= s78;

      elsif ( not x12 and not x13 and x2 and not x14 ) = '1' then
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s79;

      elsif ( not x12 and not x13 and not x2 and x14 ) = '1' then
         y22 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_proc4416 <= s72;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_proc4416 <= s78;

      end if;

   when s71 =>
         y3 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s36;

   when s72 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s27;

   when s73 =>
      if ( x12 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s75;

      else
         y22 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_proc4416 <= s72;

      end if;

   when s74 =>
         y2 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s80;

   when s75 =>
      if ( x12 and x16 ) = '1' then
         y3 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s32;

      elsif ( x12 and not x16 ) = '1' then
         y21 <= '1' ;
         y43 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s33;

      else
         y3 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s31;

      end if;

   when s76 =>
      if ( x12 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s75;

      elsif ( not x12 and x14 ) = '1' then
         y22 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         current_proc4416 <= s72;

      else
         y8 <= '1' ;
         y9 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_proc4416 <= s79;

      end if;

   when s77 =>
         y3 <= '1' ;
         y21 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s81;

   when s78 =>
      if ( x14 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_proc4416 <= s76;

      elsif ( not x14 and x12 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_proc4416 <= s76;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s75;

      end if;

   when s79 =>
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s75;

   when s80 =>
      if ( x17 and x12 and x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s75;

      elsif ( x17 and x12 and not x16 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_proc4416 <= s76;

      elsif ( x17 and not x12 and x13 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_proc4416 <= s25;

      elsif ( x17 and not x12 and not x13 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_proc4416 <= s76;

      else
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         y21 <= '1' ;
         current_proc4416 <= s77;

      end if;

   when s81 =>
         y44 <= '1' ;
         current_proc4416 <= s82;

   when s82 =>
         y4 <= '1' ;
         y50 <= '1' ;
         current_proc4416 <= s83;

   when s83 =>
         y44 <= '1' ;
         current_proc4416 <= s84;

   when s84 =>
         y5 <= '1' ;
         y49 <= '1' ;
         current_proc4416 <= s85;

   when s85 =>
         y44 <= '1' ;
         current_proc4416 <= s86;

   when s86 =>
         y6 <= '1' ;
         y48 <= '1' ;
         current_proc4416 <= s87;

   when s87 =>
         y29 <= '1' ;
         y36 <= '1' ;
         y46 <= '1' ;
         y47 <= '1' ;
         current_proc4416 <= s88;

   when s88 =>
         y2 <= '1' ;
         y9 <= '1' ;
         y11 <= '1' ;
         y13 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y28 <= '1' ;
         y45 <= '1' ;
         current_proc4416 <= s89;

   when s89 =>
      if ( x12 and x16 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y7 <= '1' ;
         current_proc4416 <= s75;

      elsif ( x12 and not x16 ) = '1' then
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_proc4416 <= s76;

      elsif ( not x12 and x13 ) = '1' then
         y19 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_proc4416 <= s25;

      else
         y3 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y12 <= '1' ;
         y14 <= '1' ;
         y19 <= '1' ;
         y20 <= '1' ;
         current_proc4416 <= s76;

      end if;

   end case;
   end proc_proc4416;

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
	y61  <= '0' ;	y62  <= '0' ;	y63  <= '0' ;
	current_proc4416 <= s1;
      elsif (clk'event and clk ='1') then
        proc_proc4416;
      end if;
   end process;
end ARC;
