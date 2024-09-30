library ieee;
use ieee.std_logic_1164.all;

entity yaron is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x30,x31,x32,x33 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y27,y28,y29,y30,y31,y35,y36,y37,y38,y39,y40,
	y41,y42,y43,y45,y46,y47,y48,y50,y51,y52,y53,y54,y55,y56,y57
	 : out std_logic );
end yaron;

architecture ARC of yaron is

   type states_yaron is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,
	s91,s92,s93,s94,s95,s96,s97,s98,s99 );
   signal current_yaron : states_yaron;

begin
   process (clk , rst)
   procedure proc_yaron is
   begin

	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y27  <= '0' ;
	y28  <= '0' ;	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;
	y35  <= '0' ;	y36  <= '0' ;	y37  <= '0' ;	y38  <= '0' ;
	y39  <= '0' ;	y40  <= '0' ;	y41  <= '0' ;	y42  <= '0' ;
	y43  <= '0' ;	y45  <= '0' ;	y46  <= '0' ;	y47  <= '0' ;
	y48  <= '0' ;	y50  <= '0' ;	y51  <= '0' ;	y52  <= '0' ;
	y53  <= '0' ;	y54  <= '0' ;	y55  <= '0' ;	y56  <= '0' ;
	y57  <= '0' ;

   case current_yaron is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_yaron <= s2;

      elsif ( x1 and not x2 and x32 and x33 ) = '1' then
         y15 <= '1' ;
         current_yaron <= s3;

      elsif ( x1 and not x2 and x32 and not x33 ) = '1' then
         y3 <= '1' ;
         y52 <= '1' ;
         current_yaron <= s4;

      elsif ( x1 and not x2 and not x32 ) = '1' then
         y3 <= '1' ;
         y52 <= '1' ;
         current_yaron <= s4;

      else
         current_yaron <= s1;

      end if;

   when s2 =>
         y3 <= '1' ;
         current_yaron <= s5;

   when s3 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_yaron <= s6;

   when s4 =>
      if ( x33 and x32 and x10 and x11 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x33 and x32 and x10 and not x11 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x33 and x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x32 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_yaron <= s8;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_yaron <= s8;

      end if;

   when s5 =>
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_yaron <= s9;

   when s6 =>
         y7 <= '1' ;
         y8 <= '1' ;
         y15 <= '1' ;
         current_yaron <= s10;

   when s7 =>
      if ( x33 and x32 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s11;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s11;

      end if;

   when s8 =>
         y3 <= '1' ;
         y53 <= '1' ;
         current_yaron <= s12;

   when s9 =>
         y3 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s13;

   when s10 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y9 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_yaron <= s14;

   when s11 =>
      if ( x33 and x32 and x10 and x11 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x33 and x32 and x10 and not x11 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x33 and x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x32 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 ) = '1' then
         y9 <= '1' ;
         current_yaron <= s15;

      else
         y9 <= '1' ;
         current_yaron <= s15;

      end if;

   when s12 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y48 <= '1' ;
         y50 <= '1' ;
         current_yaron <= s16;

   when s13 =>
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         y9 <= '1' ;
         current_yaron <= s17;

   when s14 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s18;

   when s15 =>
      if ( x33 and x32 and x10 and x11 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x33 and x32 and x10 and not x11 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x33 and x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x32 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y51 <= '1' ;
         current_yaron <= s19;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y51 <= '1' ;
         current_yaron <= s19;

      end if;

   when s16 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s20;

   when s17 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s21;

   when s18 =>
      if ( x7 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s22;

      elsif ( not x7 and x33 and x32 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s22;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and x14 and x5 and x15 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s23;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and x14 and x5 and not x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y35 <= '1' ;
         current_yaron <= s24;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and x14 and not x5 and x15 ) = '1' then
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s25;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and x14 and not x5 and not x15 ) = '1' then
         y53 <= '1' ;
         current_yaron <= s26;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and not x14 and x15 and x31 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and not x14 and x15 and x31 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and not x14 and x15 and not x31 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and not x14 and x15 and not x31 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and not x14 and x15 and not x31 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and not x14 and x15 and not x31 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and not x14 and not x15 and x16 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and not x14 and not x15 and x16 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and not x14 and not x15 and not x16 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and not x14 and not x15 and not x16 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and not x14 and not x15 and not x16 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and x13 and not x14 and not x15 and not x16 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and x15 and x14 and x8 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and x15 and x14 and x8 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and x15 and x14 and not x8 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and x15 and x14 and not x8 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and x15 and x14 and not x8 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and x15 and x14 and not x8 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and x15 and not x14 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and x15 and not x14 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and not x15 and x14 and x30 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and not x15 and x14 and x30 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and not x15 and x14 and not x30 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and not x15 and x14 and not x30 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and not x15 and x14 and not x30 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and not x15 and x14 and not x30 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x7 and x33 and not x32 and x9 and not x13 and not x15 and not x14 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s29;

      elsif ( not x7 and x33 and not x32 and not x9 ) = '1' then
         y6 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         y48 <= '1' ;
         current_yaron <= s30;

      elsif ( not x7 and not x33 and x9 and x32 and x13 and x14 and x15 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s23;

      elsif ( not x7 and not x33 and x9 and x32 and x13 and x14 and not x15 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s31;

      elsif ( not x7 and not x33 and x9 and x32 and x13 and not x14 and x15 and x16 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s32;

      elsif ( not x7 and not x33 and x9 and x32 and x13 and not x14 and x15 and not x16 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s33;

      elsif ( not x7 and not x33 and x9 and x32 and x13 and not x14 and not x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s34;

      elsif ( not x7 and not x33 and x9 and x32 and not x13 and x14 and x15 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s35;

      elsif ( not x7 and not x33 and x9 and x32 and not x13 and x14 and not x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s36;

      elsif ( not x7 and not x33 and x9 and x32 and not x13 and not x14 and x15 and x17 ) = '1' then
         current_yaron <= s1;

      elsif ( not x7 and not x33 and x9 and x32 and not x13 and not x14 and x15 and not x17 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s37;

      elsif ( not x7 and not x33 and x9 and x32 and not x13 and not x14 and not x15 and x18 ) = '1' then
         current_yaron <= s1;

      elsif ( not x7 and not x33 and x9 and x32 and not x13 and not x14 and not x15 and not x18 ) = '1' then
         current_yaron <= s18;

      elsif ( not x7 and not x33 and x9 and not x32 and x13 ) = '1' then
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y35 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s38;

      elsif ( not x7 and not x33 and x9 and not x32 and not x13 and x4 and x6 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y40 <= '1' ;
         y43 <= '1' ;
         current_yaron <= s39;

      elsif ( not x7 and not x33 and x9 and not x32 and not x13 and x4 and not x6 ) = '1' then
         y15 <= '1' ;
         current_yaron <= s3;

      elsif ( not x7 and not x33 and x9 and not x32 and not x13 and not x4 ) = '1' then
         y15 <= '1' ;
         current_yaron <= s40;

      else
         y6 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         y48 <= '1' ;
         current_yaron <= s30;

      end if;

   when s19 =>
      if ( x33 and x32 and x10 and x11 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x33 and x32 and x10 and not x11 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x33 and x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x32 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s41;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s41;

      end if;

   when s20 =>
         y4 <= '1' ;
         y5 <= '1' ;
         y6 <= '1' ;
         current_yaron <= s42;

   when s21 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_yaron <= s43;

   when s22 =>
         y6 <= '1' ;
         y47 <= '1' ;
         current_yaron <= s44;

   when s23 =>
      if ( x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x32 and not x10 ) = '1' then
         current_yaron <= s1;

      else
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s31;

      end if;

   when s24 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s45;

   when s25 =>
         y8 <= '1' ;
         y31 <= '1' ;
         current_yaron <= s46;

   when s26 =>
      if ( x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x32 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x32 and x33 ) = '1' then
         y8 <= '1' ;
         y36 <= '1' ;
         y42 <= '1' ;
         current_yaron <= s47;

      elsif ( not x32 and not x33 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x32 and not x33 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x32 and not x33 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      else
         current_yaron <= s1;

      end if;

   when s27 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s48;

   when s28 =>
      if ( x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x32 and not x10 ) = '1' then
         current_yaron <= s1;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s49;

      end if;

   when s29 =>
      if ( x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      else
         current_yaron <= s1;

      end if;

   when s30 =>
      if ( x33 and x32 and x10 and x11 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x33 and x32 and x10 and not x11 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x33 and x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x32 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s50;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s50;

      end if;

   when s31 =>
      if ( x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x32 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x32 and x33 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s32;

      elsif ( not x32 and not x33 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x32 and not x33 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x32 and not x33 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      else
         current_yaron <= s1;

      end if;

   when s32 =>
      if ( x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x32 and not x10 ) = '1' then
         current_yaron <= s1;

      else
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s33;

      end if;

   when s33 =>
      if ( x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x32 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x32 and x33 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y12 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_yaron <= s51;

      else
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y35 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s38;

      end if;

   when s34 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s52;

   when s35 =>
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s53;

   when s36 =>
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s54;

   when s37 =>
         y30 <= '1' ;
         current_yaron <= s55;

   when s38 =>
      if ( x33 and x32 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s56;

      elsif ( x33 and not x32 and x30 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s56;

      elsif ( x33 and not x32 and not x30 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x30 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x30 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x30 and not x10 ) = '1' then
         current_yaron <= s1;

      else
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s56;

      end if;

   when s39 =>
      if ( x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x32 and not x10 ) = '1' then
         current_yaron <= s1;

      else
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s57;

      end if;

   when s40 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_yaron <= s58;

   when s41 =>
      if ( x33 and x32 and x10 and x11 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x33 and x32 and x10 and not x11 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x33 and x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x32 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 ) = '1' then
         y9 <= '1' ;
         current_yaron <= s59;

      else
         y9 <= '1' ;
         current_yaron <= s59;

      end if;

   when s42 =>
         y53 <= '1' ;
         current_yaron <= s60;

   when s43 =>
         y8 <= '1' ;
         y14 <= '1' ;
         current_yaron <= s61;

   when s44 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y48 <= '1' ;
         y50 <= '1' ;
         current_yaron <= s62;

   when s45 =>
         y42 <= '1' ;
         current_yaron <= s63;

   when s46 =>
      if ( x33 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s34;

      elsif ( not x33 and x32 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s34;

      elsif ( not x33 and not x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x33 and not x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x33 and not x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      else
         current_yaron <= s1;

      end if;

   when s47 =>
      if ( x33 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y35 <= '1' ;
         current_yaron <= s24;

      elsif ( not x33 and x32 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y35 <= '1' ;
         current_yaron <= s24;

      elsif ( not x33 and not x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x33 and not x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x33 and not x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      else
         current_yaron <= s1;

      end if;

   when s48 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s36;

   when s49 =>
      if ( x32 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s29;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      end if;

   when s50 =>
      if ( x33 and x32 ) = '1' then
         y3 <= '1' ;
         y52 <= '1' ;
         current_yaron <= s4;

      elsif ( x33 and not x32 and x13 and x15 and x14 and x5 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s23;

      elsif ( x33 and not x32 and x13 and x15 and x14 and not x5 and x7 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s23;

      elsif ( x33 and not x32 and x13 and x15 and x14 and not x5 and not x7 ) = '1' then
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s25;

      elsif ( x33 and not x32 and x13 and x15 and not x14 and x31 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( x33 and not x32 and x13 and x15 and not x14 and x31 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( x33 and not x32 and x13 and x15 and not x14 and not x31 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and not x32 and x13 and x15 and not x14 and not x31 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and not x32 and x13 and x15 and not x14 and not x31 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 and x13 and x15 and not x14 and not x31 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 and x13 and not x15 and x14 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y35 <= '1' ;
         current_yaron <= s24;

      elsif ( x33 and not x32 and x13 and not x15 and x14 and not x5 ) = '1' then
         y53 <= '1' ;
         current_yaron <= s26;

      elsif ( x33 and not x32 and x13 and not x15 and not x14 and x16 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( x33 and not x32 and x13 and not x15 and not x14 and x16 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( x33 and not x32 and x13 and not x15 and not x14 and not x16 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and not x32 and x13 and not x15 and not x14 and not x16 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and not x32 and x13 and not x15 and not x14 and not x16 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 and x13 and not x15 and not x14 and not x16 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x13 and x15 and x14 and x8 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( x33 and not x32 and not x13 and x15 and x14 and x8 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( x33 and not x32 and not x13 and x15 and x14 and not x8 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x13 and x15 and x14 and not x8 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x13 and x15 and x14 and not x8 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x13 and x15 and x14 and not x8 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x13 and x15 and not x14 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( x33 and not x32 and not x13 and x15 and not x14 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( x33 and not x32 and not x13 and not x15 and x14 and x30 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( x33 and not x32 and not x13 and not x15 and x14 and x30 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( x33 and not x32 and not x13 and not x15 and x14 and not x30 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x13 and not x15 and x14 and not x30 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x13 and not x15 and x14 and not x30 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x13 and not x15 and x14 and not x30 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x13 and not x15 and not x14 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s29;

      elsif ( not x33 and x32 and x13 and x14 and x15 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s23;

      elsif ( not x33 and x32 and x13 and x14 and not x15 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s31;

      elsif ( not x33 and x32 and x13 and not x14 and x15 and x16 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s32;

      elsif ( not x33 and x32 and x13 and not x14 and x15 and not x16 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s33;

      elsif ( not x33 and x32 and x13 and not x14 and not x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s34;

      elsif ( not x33 and x32 and not x13 and x14 and x15 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s35;

      elsif ( not x33 and x32 and not x13 and x14 and not x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s36;

      elsif ( not x33 and x32 and not x13 and not x14 and x15 and x17 ) = '1' then
         current_yaron <= s1;

      elsif ( not x33 and x32 and not x13 and not x14 and x15 and not x17 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s37;

      elsif ( not x33 and x32 and not x13 and not x14 and not x15 and x18 ) = '1' then
         current_yaron <= s1;

      elsif ( not x33 and x32 and not x13 and not x14 and not x15 and not x18 ) = '1' then
         current_yaron <= s50;

      elsif ( not x33 and not x32 and x13 ) = '1' then
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y35 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s38;

      elsif ( not x33 and not x32 and not x13 and x4 and x6 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y40 <= '1' ;
         y43 <= '1' ;
         current_yaron <= s39;

      elsif ( not x33 and not x32 and not x13 and x4 and not x6 ) = '1' then
         y15 <= '1' ;
         current_yaron <= s3;

      else
         y15 <= '1' ;
         current_yaron <= s40;

      end if;

   when s51 =>
      if ( x32 ) = '1' then
         y53 <= '1' ;
         current_yaron <= s29;

      else
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y35 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s38;

      end if;

   when s52 =>
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s64;

   when s53 =>
         y53 <= '1' ;
         current_yaron <= s65;

   when s54 =>
      if ( x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x32 and not x10 ) = '1' then
         current_yaron <= s1;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_yaron <= s66;

      end if;

   when s55 =>
         y6 <= '1' ;
         y47 <= '1' ;
         current_yaron <= s67;

   when s56 =>
      if ( x32 ) = '1' then
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s25;

      elsif ( not x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      else
         current_yaron <= s1;

      end if;

   when s57 =>
      if ( x32 ) = '1' then
         y31 <= '1' ;
         y38 <= '1' ;
         current_yaron <= s29;

      elsif ( not x32 and x33 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s68;

      elsif ( not x32 and not x33 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x32 and not x33 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x32 and not x33 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      else
         current_yaron <= s1;

      end if;

   when s58 =>
         y8 <= '1' ;
         y15 <= '1' ;
         y19 <= '1' ;
         current_yaron <= s69;

   when s59 =>
      if ( x33 and x9 and x32 ) = '1' then
         y6 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         y48 <= '1' ;
         current_yaron <= s30;

      elsif ( x33 and x9 and not x32 and x13 and x15 and x14 and x5 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s23;

      elsif ( x33 and x9 and not x32 and x13 and x15 and x14 and not x5 and x7 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s23;

      elsif ( x33 and x9 and not x32 and x13 and x15 and x14 and not x5 and not x7 ) = '1' then
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s25;

      elsif ( x33 and x9 and not x32 and x13 and x15 and not x14 and x31 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( x33 and x9 and not x32 and x13 and x15 and not x14 and x31 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( x33 and x9 and not x32 and x13 and x15 and not x14 and not x31 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and x13 and x15 and not x14 and not x31 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and x13 and x15 and not x14 and not x31 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and x13 and x15 and not x14 and not x31 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and x13 and not x15 and x14 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y35 <= '1' ;
         current_yaron <= s24;

      elsif ( x33 and x9 and not x32 and x13 and not x15 and x14 and not x5 ) = '1' then
         y53 <= '1' ;
         current_yaron <= s26;

      elsif ( x33 and x9 and not x32 and x13 and not x15 and not x14 and x16 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( x33 and x9 and not x32 and x13 and not x15 and not x14 and x16 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( x33 and x9 and not x32 and x13 and not x15 and not x14 and not x16 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and x13 and not x15 and not x14 and not x16 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and x13 and not x15 and not x14 and not x16 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and x13 and not x15 and not x14 and not x16 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and not x13 and x15 and x14 and x8 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( x33 and x9 and not x32 and not x13 and x15 and x14 and x8 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( x33 and x9 and not x32 and not x13 and x15 and x14 and not x8 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and not x13 and x15 and x14 and not x8 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and not x13 and x15 and x14 and not x8 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and not x13 and x15 and x14 and not x8 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and not x13 and x15 and not x14 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( x33 and x9 and not x32 and not x13 and x15 and not x14 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( x33 and x9 and not x32 and not x13 and not x15 and x14 and x30 and x5 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( x33 and x9 and not x32 and not x13 and not x15 and x14 and x30 and not x5 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( x33 and x9 and not x32 and not x13 and not x15 and x14 and not x30 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and not x13 and not x15 and x14 and not x30 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and not x13 and not x15 and x14 and not x30 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and not x13 and not x15 and x14 and not x30 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and x9 and not x32 and not x13 and not x15 and not x14 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s29;

      elsif ( x33 and not x9 ) = '1' then
         y6 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         y48 <= '1' ;
         current_yaron <= s30;

      elsif ( not x33 and x9 and x32 and x13 and x14 and x15 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s23;

      elsif ( not x33 and x9 and x32 and x13 and x14 and not x15 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s31;

      elsif ( not x33 and x9 and x32 and x13 and not x14 and x15 and x16 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s32;

      elsif ( not x33 and x9 and x32 and x13 and not x14 and x15 and not x16 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s33;

      elsif ( not x33 and x9 and x32 and x13 and not x14 and not x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s34;

      elsif ( not x33 and x9 and x32 and not x13 and x14 and x15 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s35;

      elsif ( not x33 and x9 and x32 and not x13 and x14 and not x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s36;

      elsif ( not x33 and x9 and x32 and not x13 and not x14 and x15 and x17 ) = '1' then
         current_yaron <= s1;

      elsif ( not x33 and x9 and x32 and not x13 and not x14 and x15 and not x17 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s37;

      elsif ( not x33 and x9 and x32 and not x13 and not x14 and not x15 and x18 ) = '1' then
         current_yaron <= s1;

      elsif ( not x33 and x9 and x32 and not x13 and not x14 and not x15 and not x18 ) = '1' then
         current_yaron <= s59;

      elsif ( not x33 and x9 and not x32 and x13 ) = '1' then
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y35 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s38;

      elsif ( not x33 and x9 and not x32 and not x13 and x4 and x6 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y40 <= '1' ;
         y43 <= '1' ;
         current_yaron <= s39;

      elsif ( not x33 and x9 and not x32 and not x13 and x4 and not x6 ) = '1' then
         y15 <= '1' ;
         current_yaron <= s3;

      elsif ( not x33 and x9 and not x32 and not x13 and not x4 ) = '1' then
         y15 <= '1' ;
         current_yaron <= s40;

      else
         y6 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         y48 <= '1' ;
         current_yaron <= s30;

      end if;

   when s60 =>
         y9 <= '1' ;
         current_yaron <= s70;

   when s61 =>
      if ( x3 and x4 and x33 and x32 and x13 and x15 ) = '1' then
         y9 <= '1' ;
         current_yaron <= s15;

      elsif ( x3 and x4 and x33 and x32 and x13 and not x15 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s11;

      elsif ( x3 and x4 and x33 and x32 and not x13 and x14 and x15 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y51 <= '1' ;
         current_yaron <= s19;

      elsif ( x3 and x4 and x33 and x32 and not x13 and x14 and x15 and not x12 and x10 and x11 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x3 and x4 and x33 and x32 and not x13 and x14 and x15 and not x12 and x10 and not x11 ) = '1' then
         current_yaron <= s1;

      elsif ( x3 and x4 and x33 and x32 and not x13 and x14 and x15 and not x12 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x3 and x4 and x33 and x32 and not x13 and x14 and not x15 and x11 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s41;

      elsif ( x3 and x4 and x33 and x32 and not x13 and x14 and not x15 and not x11 and x10 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( x3 and x4 and x33 and x32 and not x13 and x14 and not x15 and not x11 and x10 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x3 and x4 and x33 and x32 and not x13 and x14 and not x15 and not x11 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( x3 and x4 and x33 and x32 and not x13 and not x14 and x15 ) = '1' then
         y9 <= '1' ;
         current_yaron <= s59;

      elsif ( x3 and x4 and x33 and x32 and not x13 and not x14 and not x15 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s50;

      elsif ( x3 and x4 and x33 and not x32 ) = '1' then
         y15 <= '1' ;
         current_yaron <= s3;

      elsif ( x3 and x4 and not x33 and x6 and x32 and x14 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_yaron <= s66;

      elsif ( x3 and x4 and not x33 and x6 and x32 and not x14 ) = '1' then
         y6 <= '1' ;
         y47 <= '1' ;
         current_yaron <= s71;

      elsif ( x3 and x4 and not x33 and x6 and not x32 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y40 <= '1' ;
         y43 <= '1' ;
         current_yaron <= s39;

      elsif ( x3 and x4 and not x33 and not x6 ) = '1' then
         y15 <= '1' ;
         current_yaron <= s3;

      elsif ( x3 and not x4 ) = '1' then
         y15 <= '1' ;
         current_yaron <= s40;

      else
         y8 <= '1' ;
         y14 <= '1' ;
         y16 <= '1' ;
         current_yaron <= s21;

      end if;

   when s62 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s72;

   when s63 =>
         y53 <= '1' ;
         current_yaron <= s73;

   when s64 =>
      if ( x33 and x32 ) = '1' then
         y53 <= '1' ;
         current_yaron <= s26;

      elsif ( x33 and not x32 and x30 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s56;

      elsif ( x33 and not x32 and not x30 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x30 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x30 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 and not x30 and not x10 ) = '1' then
         current_yaron <= s1;

      else
         y53 <= '1' ;
         current_yaron <= s26;

      end if;

   when s65 =>
      if ( x33 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y40 <= '1' ;
         y43 <= '1' ;
         current_yaron <= s39;

      elsif ( not x33 and x32 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y40 <= '1' ;
         y43 <= '1' ;
         current_yaron <= s39;

      elsif ( not x33 and not x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x33 and not x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x33 and not x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      else
         current_yaron <= s1;

      end if;

   when s66 =>
      if ( x32 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( not x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      else
         current_yaron <= s1;

      end if;

   when s67 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y12 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_yaron <= s51;

   when s68 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s74;

   when s69 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y45 <= '1' ;
         current_yaron <= s75;

   when s70 =>
         y18 <= '1' ;
         y48 <= '1' ;
         current_yaron <= s76;

   when s71 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         current_yaron <= s77;

   when s72 =>
      if ( x32 and x33 ) = '1' then
         y9 <= '1' ;
         current_yaron <= s78;

      elsif ( x32 and not x33 and x8 ) = '1' then
         y9 <= '1' ;
         current_yaron <= s78;

      elsif ( x32 and not x33 and not x8 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( not x32 and x8 ) = '1' then
         y9 <= '1' ;
         current_yaron <= s78;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      end if;

   when s73 =>
      if ( x33 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y35 <= '1' ;
         current_yaron <= s79;

      elsif ( not x33 and x32 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y35 <= '1' ;
         current_yaron <= s79;

      elsif ( not x33 and not x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x33 and not x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x33 and not x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      else
         current_yaron <= s1;

      end if;

   when s74 =>
      if ( x8 ) = '1' then
         y6 <= '1' ;
         y47 <= '1' ;
         current_yaron <= s80;

      elsif ( not x8 and x32 ) = '1' then
         y6 <= '1' ;
         y47 <= '1' ;
         current_yaron <= s80;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      end if;

   when s75 =>
         y8 <= '1' ;
         y19 <= '1' ;
         current_yaron <= s81;

   when s76 =>
         y8 <= '1' ;
         y9 <= '1' ;
         y54 <= '1' ;
         current_yaron <= s82;

   when s77 =>
         y28 <= '1' ;
         current_yaron <= s83;

   when s78 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y48 <= '1' ;
         y50 <= '1' ;
         current_yaron <= s84;

   when s79 =>
      if ( x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( x32 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x32 and x8 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s85;

      elsif ( not x32 and not x8 and x33 ) = '1' then
         y53 <= '1' ;
         current_yaron <= s65;

      else
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s85;

      end if;

   when s80 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s86;

   when s81 =>
      if ( x5 ) = '1' then
         y1 <= '1' ;
         y46 <= '1' ;
         current_yaron <= s2;

      elsif ( not x5 and x32 and x33 and x13 and x15 ) = '1' then
         y9 <= '1' ;
         current_yaron <= s15;

      elsif ( not x5 and x32 and x33 and x13 and not x15 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s11;

      elsif ( not x5 and x32 and x33 and not x13 and x14 and x15 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y51 <= '1' ;
         current_yaron <= s19;

      elsif ( not x5 and x32 and x33 and not x13 and x14 and x15 and not x12 and x10 and x11 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( not x5 and x32 and x33 and not x13 and x14 and x15 and not x12 and x10 and not x11 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and x32 and x33 and not x13 and x14 and x15 and not x12 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and x32 and x33 and not x13 and x14 and not x15 and x11 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s41;

      elsif ( not x5 and x32 and x33 and not x13 and x14 and not x15 and not x11 and x10 and x12 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      elsif ( not x5 and x32 and x33 and not x13 and x14 and not x15 and not x11 and x10 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and x32 and x33 and not x13 and x14 and not x15 and not x11 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and x32 and x33 and not x13 and not x14 and x15 ) = '1' then
         y9 <= '1' ;
         current_yaron <= s59;

      elsif ( not x5 and x32 and x33 and not x13 and not x14 and not x15 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s50;

      elsif ( not x5 and x32 and not x33 and x15 and x14 and x13 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s23;

      elsif ( not x5 and x32 and not x33 and x15 and x14 and not x13 and x7 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s85;

      elsif ( not x5 and x32 and not x33 and x15 and x14 and not x13 and not x7 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s57;

      elsif ( not x5 and x32 and not x33 and x15 and not x14 and x13 and x16 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s32;

      elsif ( not x5 and x32 and not x33 and x15 and not x14 and x13 and not x16 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s33;

      elsif ( not x5 and x32 and not x33 and x15 and not x14 and not x13 and x17 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and x32 and not x33 and x15 and not x14 and not x13 and not x17 and x7 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s87;

      elsif ( not x5 and x32 and not x33 and x15 and not x14 and not x13 and not x17 and not x7 ) = '1' then
         y30 <= '1' ;
         current_yaron <= s88;

      elsif ( not x5 and x32 and not x33 and not x15 and x14 and x13 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s31;

      elsif ( not x5 and x32 and not x33 and not x15 and x14 and not x13 and x7 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      elsif ( not x5 and x32 and not x33 and not x15 and x14 and not x13 and not x7 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s49;

      elsif ( not x5 and x32 and not x33 and not x15 and not x14 and x13 and x7 ) = '1' then
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y35 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s38;

      elsif ( not x5 and x32 and not x33 and not x15 and not x14 and x13 and not x7 ) = '1' then
         y8 <= '1' ;
         y36 <= '1' ;
         y42 <= '1' ;
         current_yaron <= s47;

      elsif ( not x5 and x32 and not x33 and not x15 and not x14 and not x13 and x18 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and x32 and not x33 and not x15 and not x14 and not x13 and not x18 and x7 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s68;

      elsif ( not x5 and x32 and not x33 and not x15 and not x14 and not x13 and not x18 and not x7 ) = '1' then
         y6 <= '1' ;
         y47 <= '1' ;
         current_yaron <= s89;

      elsif ( not x5 and not x32 and x33 and x13 and x14 and x15 and x7 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s23;

      elsif ( not x5 and not x32 and x33 and x13 and x14 and x15 and not x7 ) = '1' then
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s25;

      elsif ( not x5 and not x32 and x33 and x13 and x14 and not x15 ) = '1' then
         y53 <= '1' ;
         current_yaron <= s26;

      elsif ( not x5 and not x32 and x33 and x13 and not x14 and x15 and x31 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( not x5 and not x32 and x33 and x13 and not x14 and x15 and not x31 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and x13 and not x14 and x15 and not x31 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and x13 and not x14 and x15 and not x31 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and x13 and not x14 and x15 and not x31 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and x13 and not x14 and not x15 and x16 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( not x5 and not x32 and x33 and x13 and not x14 and not x15 and not x16 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and x13 and not x14 and not x15 and not x16 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and x13 and not x14 and not x15 and not x16 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and x13 and not x14 and not x15 and not x16 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and not x13 and x15 and x14 and x8 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( not x5 and not x32 and x33 and not x13 and x15 and x14 and not x8 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and not x13 and x15 and x14 and not x8 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and not x13 and x15 and x14 and not x8 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and not x13 and x15 and x14 and not x8 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and not x13 and x15 and not x14 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( not x5 and not x32 and x33 and not x13 and not x15 and x14 and x30 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s28;

      elsif ( not x5 and not x32 and x33 and not x13 and not x15 and x14 and not x30 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and not x13 and not x15 and x14 and not x30 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and not x13 and not x15 and x14 and not x30 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and not x13 and not x15 and x14 and not x30 and not x10 ) = '1' then
         current_yaron <= s1;

      elsif ( not x5 and not x32 and x33 and not x13 and not x15 and not x14 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         current_yaron <= s29;

      elsif ( not x5 and not x32 and not x33 and x7 and x13 and x14 ) = '1' then
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s25;

      elsif ( not x5 and not x32 and not x33 and x7 and x13 and not x14 and x15 ) = '1' then
         y8 <= '1' ;
         y36 <= '1' ;
         y42 <= '1' ;
         current_yaron <= s47;

      elsif ( not x5 and not x32 and not x33 and x7 and x13 and not x14 and not x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y35 <= '1' ;
         current_yaron <= s79;

      elsif ( not x5 and not x32 and not x33 and x7 and not x13 ) = '1' then
         y6 <= '1' ;
         y35 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_yaron <= s23;

      elsif ( not x5 and not x32 and not x33 and not x7 and x13 and x14 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s34;

      elsif ( not x5 and not x32 and not x33 and not x7 and x13 and not x14 and x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y35 <= '1' ;
         current_yaron <= s24;

      elsif ( not x5 and not x32 and not x33 and not x7 and x13 and not x14 and not x15 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y35 <= '1' ;
         current_yaron <= s90;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s32;

      end if;

   when s82 =>
         y3 <= '1' ;
         y18 <= '1' ;
         y48 <= '1' ;
         current_yaron <= s91;

   when s83 =>
         y29 <= '1' ;
         current_yaron <= s29;

   when s84 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s92;

   when s85 =>
      if ( x33 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y35 <= '1' ;
         current_yaron <= s90;

      elsif ( not x33 and x32 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y35 <= '1' ;
         current_yaron <= s90;

      elsif ( not x33 and not x32 and x10 and x11 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x33 and not x32 and x10 and not x11 and x12 ) = '1' then
         y57 <= '1' ;
         current_yaron <= s1;

      elsif ( not x33 and not x32 and x10 and not x11 and not x12 ) = '1' then
         current_yaron <= s1;

      else
         current_yaron <= s1;

      end if;

   when s86 =>
         y28 <= '1' ;
         current_yaron <= s93;

   when s87 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s94;

   when s88 =>
         y6 <= '1' ;
         y47 <= '1' ;
         current_yaron <= s95;

   when s89 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s96;

   when s90 =>
         y7 <= '1' ;
         y8 <= '1' ;
         current_yaron <= s35;

   when s91 =>
         y8 <= '1' ;
         y54 <= '1' ;
         current_yaron <= s97;

   when s92 =>
         y9 <= '1' ;
         current_yaron <= s98;

   when s93 =>
      if ( x32 ) = '1' then
         y29 <= '1' ;
         current_yaron <= s29;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_yaron <= s27;

      end if;

   when s94 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s37;

   when s95 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y12 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_yaron <= s99;

   when s96 =>
         y28 <= '1' ;
         current_yaron <= s83;

   when s97 =>
         y13 <= '1' ;
         y55 <= '1' ;
         y56 <= '1' ;
         current_yaron <= s1;

   when s98 =>
      if ( x33 and x32 ) = '1' then
         current_yaron <= s1;

      elsif ( x33 and not x32 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_yaron <= s7;

      end if;

   when s99 =>
         y8 <= '1' ;
         y31 <= '1' ;
         current_yaron <= s29;

   end case;
   end proc_yaron;

   begin
      if ( rst = '1' ) then
	y1   <= '0' ;	y2   <= '0' ;	y3   <= '0' ;	y4   <= '0' ;
	y5   <= '0' ;	y6   <= '0' ;	y7   <= '0' ;	y8   <= '0' ;
	y9   <= '0' ;	y10  <= '0' ;	y11  <= '0' ;	y12  <= '0' ;
	y13  <= '0' ;	y14  <= '0' ;	y15  <= '0' ;	y16  <= '0' ;
	y17  <= '0' ;	y18  <= '0' ;	y19  <= '0' ;	y27  <= '0' ;
	y28  <= '0' ;	y29  <= '0' ;	y30  <= '0' ;	y31  <= '0' ;
	y35  <= '0' ;	y36  <= '0' ;	y37  <= '0' ;	y38  <= '0' ;
	y39  <= '0' ;	y40  <= '0' ;	y41  <= '0' ;	y42  <= '0' ;
	y43  <= '0' ;	y45  <= '0' ;	y46  <= '0' ;	y47  <= '0' ;
	y48  <= '0' ;	y50  <= '0' ;	y51  <= '0' ;	y52  <= '0' ;
	y53  <= '0' ;	y54  <= '0' ;	y55  <= '0' ;	y56  <= '0' ;
	y57  <= '0' ;
	current_yaron <= s1;
      elsif (clk'event and clk ='1') then
        proc_yaron;
      end if;
   end process;
end ARC;
