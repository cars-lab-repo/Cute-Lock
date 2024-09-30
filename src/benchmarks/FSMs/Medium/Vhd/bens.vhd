library ieee;
use ieee.std_logic_1164.all;

entity bens is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19,x20,x21 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56 : out std_logic );
end bens;

architecture ARC of bens is

   type states_bens is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,
	s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,
	s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,
	s121,s122,s123,s124,s125,s126 );
   signal current_bens : states_bens;

begin
   process (clk , rst)
   procedure proc_bens is
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


   case current_bens is
   when s1 =>
      if ( x1 and x2 ) = '1' then
         y10 <= '1' ;
         current_bens <= s2;

      elsif ( x1 and not x2 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_bens <= s3;

      else
         current_bens <= s1;

      end if;

   when s2 =>
         y3 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y17 <= '1' ;
         current_bens <= s4;

   when s3 =>
         y14 <= '1' ;
         current_bens <= s5;

   when s4 =>
         y14 <= '1' ;
         y22 <= '1' ;
         current_bens <= s6;

   when s5 =>
         y3 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_bens <= s7;

   when s6 =>
         y3 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y17 <= '1' ;
         current_bens <= s8;

   when s7 =>
         y14 <= '1' ;
         y15 <= '1' ;
         current_bens <= s9;

   when s8 =>
         y22 <= '1' ;
         current_bens <= s10;

   when s9 =>
         y3 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         current_bens <= s11;

   when s10 =>
         y7 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_bens <= s12;

   when s11 =>
      if ( x3 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_bens <= s13;

      else
         y6 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         y13 <= '1' ;
         current_bens <= s14;

      end if;

   when s12 =>
      if ( x21 and x20 ) = '1' then
         y22 <= '1' ;
         current_bens <= s16;

      elsif ( x21 and not x20 ) = '1' then
         y22 <= '1' ;
         current_bens <= s15;

      else
         y22 <= '1' ;
         current_bens <= s16;

      end if;

   when s13 =>
         y20 <= '1' ;
         current_bens <= s17;

   when s14 =>
      if ( x20 and x21 ) = '1' then
         y20 <= '1' ;
         current_bens <= s18;

      elsif ( x20 and not x21 and x4 and x6 and x14 ) = '1' then
         y20 <= '1' ;
         current_bens <= s18;

      elsif ( x20 and not x21 and x4 and x6 and not x14 ) = '1' then
         y6 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         current_bens <= s19;

      elsif ( x20 and not x21 and x4 and not x6 ) = '1' then
         y20 <= '1' ;
         current_bens <= s20;

      elsif ( x20 and not x21 and not x4 ) = '1' then
         y20 <= '1' ;
         current_bens <= s21;

      elsif ( not x20 and x4 and x6 and x13 and x21 and x15 and x14 ) = '1' then
         y13 <= '1' ;
         current_bens <= s22;

      elsif ( not x20 and x4 and x6 and x13 and x21 and x15 and not x14 and x17 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x20 and x4 and x6 and x13 and x21 and x15 and not x14 and x17 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x20 and x4 and x6 and x13 and x21 and x15 and not x14 and not x17 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and x13 and x21 and x15 and not x14 and not x17 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and x13 and x21 and x15 and not x14 and not x17 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and x13 and x21 and x15 and not x14 and not x17 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and x13 and x21 and not x15 and x14 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x20 and x4 and x6 and x13 and x21 and not x15 and x14 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x20 and x4 and x6 and x13 and x21 and not x15 and not x14 and x9 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x20 and x4 and x6 and x13 and x21 and not x15 and not x14 and x9 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x20 and x4 and x6 and x13 and x21 and not x15 and not x14 and not x9 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and x13 and x21 and not x15 and not x14 and not x9 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and x13 and x21 and not x15 and not x14 and not x9 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and x13 and x21 and not x15 and not x14 and not x9 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and x13 and not x21 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_bens <= s25;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and x15 and x14 and x18 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and x15 and x14 and x18 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and x15 and x14 and not x18 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and x15 and x14 and not x18 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and x15 and x14 and not x18 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and x15 and x14 and not x18 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and x15 and not x14 and x5 ) = '1' then
         y14 <= '1' ;
         current_bens <= s26;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and x15 and not x14 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s27;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and not x15 and x14 and x19 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and not x15 and x14 and x19 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and not x15 and x14 and not x19 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and not x15 and x14 and not x19 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and not x15 and x14 and not x19 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and not x15 and x14 and not x19 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and not x15 and not x14 and x7 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s28;

      elsif ( not x20 and x4 and x6 and not x13 and x21 and not x15 and not x14 and not x7 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s29;

      elsif ( not x20 and x4 and x6 and not x13 and not x21 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and not x13 and not x21 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and not x13 and not x21 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x4 and x6 and not x13 and not x21 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x4 and not x6 ) = '1' then
         y20 <= '1' ;
         current_bens <= s18;

      else
         y20 <= '1' ;
         current_bens <= s20;

      end if;

   when s15 =>
         y28 <= '1' ;
         current_bens <= s30;

   when s16 =>
      if ( x21 and x20 ) = '1' then
         y28 <= '1' ;
         current_bens <= s30;

      elsif ( x21 and not x20 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_bens <= s31;

      else
         y28 <= '1' ;
         current_bens <= s30;

      end if;

   when s17 =>
         y13 <= '1' ;
         y16 <= '1' ;
         current_bens <= s3;

   when s18 =>
      if ( x20 and x21 ) = '1' then
         y6 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_bens <= s32;

      elsif ( x20 and not x21 ) = '1' then
         y6 <= '1' ;
         y42 <= '1' ;
         y43 <= '1' ;
         current_bens <= s33;

      else
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_bens <= s34;

      end if;

   when s19 =>
         y6 <= '1' ;
         y11 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         y45 <= '1' ;
         current_bens <= s35;

   when s20 =>
      if ( x20 ) = '1' then
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_bens <= s34;

      else
         y6 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_bens <= s32;

      end if;

   when s21 =>
         y6 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_bens <= s32;

   when s22 =>
      if ( x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s23 =>
      if ( x20 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s36;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_bens <= s37;

      end if;

   when s24 =>
         y4 <= '1' ;
         y6 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s38;

   when s25 =>
      if ( x20 and x21 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x20 and x21 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x20 and x21 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( x20 and x21 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( x20 and not x21 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y38 <= '1' ;
         current_bens <= s39;

      elsif ( not x20 and x21 ) = '1' then
         y22 <= '1' ;
         current_bens <= s40;

      elsif ( not x20 and not x21 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and not x21 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and not x21 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s26 =>
         y6 <= '1' ;
         y17 <= '1' ;
         y34 <= '1' ;
         current_bens <= s41;

   when s27 =>
         y4 <= '1' ;
         y6 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s42;

   when s28 =>
      if ( x21 and x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s38;

      elsif ( x21 and not x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s43;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s38;

      end if;

   when s29 =>
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s44;

   when s30 =>
      if ( x9 and x21 and x20 ) = '1' then
         y15 <= '1' ;
         current_bens <= s45;

      elsif ( x9 and x21 and not x20 ) = '1' then
         y15 <= '1' ;
         current_bens <= s46;

      elsif ( x9 and not x21 and x20 ) = '1' then
         y15 <= '1' ;
         current_bens <= s47;

      elsif ( x9 and not x21 and not x20 ) = '1' then
         y15 <= '1' ;
         current_bens <= s48;

      else
         y7 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_bens <= s49;

      end if;

   when s31 =>
      if ( x17 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y38 <= '1' ;
         current_bens <= s50;

      elsif ( not x17 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x17 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x17 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s32 =>
         y20 <= '1' ;
         y21 <= '1' ;
         current_bens <= s51;

   when s33 =>
         y4 <= '1' ;
         y6 <= '1' ;
         y20 <= '1' ;
         y40 <= '1' ;
         y42 <= '1' ;
         current_bens <= s52;

   when s34 =>
         y15 <= '1' ;
         y20 <= '1' ;
         current_bens <= s53;

   when s35 =>
         y11 <= '1' ;
         y41 <= '1' ;
         y45 <= '1' ;
         y51 <= '1' ;
         current_bens <= s54;

   when s36 =>
      if ( x20 ) = '1' then
         y6 <= '1' ;
         y11 <= '1' ;
         y42 <= '1' ;
         y45 <= '1' ;
         current_bens <= s22;

      else
         y22 <= '1' ;
         current_bens <= s55;

      end if;

   when s37 =>
         y14 <= '1' ;
         y15 <= '1' ;
         current_bens <= s56;

   when s38 =>
      if ( x20 and x21 ) = '1' then
         y6 <= '1' ;
         y17 <= '1' ;
         y34 <= '1' ;
         current_bens <= s41;

      elsif ( x20 and not x21 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s57;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s58;

      end if;

   when s39 =>
         y54 <= '1' ;
         current_bens <= s59;

   when s40 =>
         y28 <= '1' ;
         current_bens <= s60;

   when s41 =>
      if ( x21 and x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s44;

      elsif ( x21 and not x20 ) = '1' then
         y28 <= '1' ;
         current_bens <= s61;

      elsif ( not x21 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x21 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x21 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s42 =>
         y4 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s62;

   when s43 =>
         y4 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s63;

   when s44 =>
      if ( x21 ) = '1' then
         y6 <= '1' ;
         y17 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_bens <= s64;

      elsif ( not x21 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x21 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x21 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s45 =>
         y28 <= '1' ;
         current_bens <= s65;

   when s46 =>
         y28 <= '1' ;
         current_bens <= s66;

   when s47 =>
         y28 <= '1' ;
         current_bens <= s67;

   when s48 =>
      if ( x20 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y45 <= '1' ;
         y49 <= '1' ;
         current_bens <= s68;

      elsif ( not x20 and x21 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_bens <= s69;

      else
         y28 <= '1' ;
         current_bens <= s70;

      end if;

   when s49 =>
      if ( x21 and x20 ) = '1' then
         y15 <= '1' ;
         current_bens <= s71;

      elsif ( x21 and not x20 ) = '1' then
         y15 <= '1' ;
         current_bens <= s72;

      elsif ( not x21 and x20 ) = '1' then
         y15 <= '1' ;
         current_bens <= s73;

      else
         y15 <= '1' ;
         current_bens <= s71;

      end if;

   when s50 =>
      if ( x20 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_bens <= s25;

      elsif ( not x20 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s51 =>
         y6 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         current_bens <= s74;

   when s52 =>
         y6 <= '1' ;
         y42 <= '1' ;
         y43 <= '1' ;
         current_bens <= s22;

   when s53 =>
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y18 <= '1' ;
         current_bens <= s75;

   when s54 =>
      if ( x16 ) = '1' then
         y6 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         y50 <= '1' ;
         current_bens <= s22;

      elsif ( not x16 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x16 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x16 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s55 =>
         y22 <= '1' ;
         current_bens <= s76;

   when s56 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_bens <= s77;

   when s57 =>
      if ( x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s78;

      else
         y6 <= '1' ;
         y9 <= '1' ;
         y25 <= '1' ;
         y56 <= '1' ;
         current_bens <= s79;

      end if;

   when s58 =>
      if ( x20 and x14 and x15 ) = '1' then
         y6 <= '1' ;
         y11 <= '1' ;
         y26 <= '1' ;
         y45 <= '1' ;
         current_bens <= s80;

      elsif ( x20 and x14 and not x15 ) = '1' then
         y6 <= '1' ;
         y11 <= '1' ;
         y42 <= '1' ;
         y45 <= '1' ;
         current_bens <= s81;

      elsif ( x20 and not x14 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y44 <= '1' ;
         y45 <= '1' ;
         y49 <= '1' ;
         current_bens <= s82;

      elsif ( not x20 and x21 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s83;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s78;

      end if;

   when s59 =>
      if ( x21 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x21 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x21 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( x21 and not x10 ) = '1' then
         current_bens <= s1;

      else
         y13 <= '1' ;
         current_bens <= s84;

      end if;

   when s60 =>
      if ( x9 ) = '1' then
         y15 <= '1' ;
         current_bens <= s85;

      elsif ( not x9 and x20 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y45 <= '1' ;
         y49 <= '1' ;
         current_bens <= s68;

      else
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_bens <= s69;

      end if;

   when s61 =>
      if ( x20 ) = '1' then
         y15 <= '1' ;
         current_bens <= s71;

      elsif ( not x20 and x9 ) = '1' then
         y15 <= '1' ;
         current_bens <= s47;

      else
         y14 <= '1' ;
         current_bens <= s86;

      end if;

   when s62 =>
         y4 <= '1' ;
         y6 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s87;

   when s63 =>
         y4 <= '1' ;
         y6 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s78;

   when s64 =>
      if ( x21 and x20 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x21 and x20 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x21 and x20 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( x21 and x20 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( x21 and not x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s88;

      elsif ( not x21 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x21 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x21 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s65 =>
      if ( x21 and x20 ) = '1' then
         y15 <= '1' ;
         current_bens <= s89;

      elsif ( x21 and not x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s90;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s90;

      end if;

   when s66 =>
         y15 <= '1' ;
         current_bens <= s91;

   when s67 =>
         y15 <= '1' ;
         current_bens <= s92;

   when s68 =>
      if ( x16 ) = '1' then
         y6 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         y50 <= '1' ;
         current_bens <= s22;

      elsif ( not x16 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x16 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x16 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s69 =>
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s93;

   when s70 =>
      if ( x9 ) = '1' then
         y15 <= '1' ;
         current_bens <= s89;

      elsif ( not x9 and x20 ) = '1' then
         y54 <= '1' ;
         current_bens <= s94;

      elsif ( not x9 and not x20 and x21 ) = '1' then
         y22 <= '1' ;
         current_bens <= s16;

      else
         y15 <= '1' ;
         current_bens <= s89;

      end if;

   when s71 =>
      if ( x21 and x20 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_bens <= s37;

      elsif ( x21 and not x20 ) = '1' then
         y22 <= '1' ;
         current_bens <= s16;

      elsif ( not x21 and x20 ) = '1' then
         y54 <= '1' ;
         current_bens <= s94;

      else
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_bens <= s37;

      end if;

   when s72 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_bens <= s95;

   when s73 =>
      if ( x20 ) = '1' then
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_bens <= s37;

      else
         y28 <= '1' ;
         current_bens <= s96;

      end if;

   when s74 =>
      if ( x5 ) = '1' then
         y52 <= '1' ;
         y53 <= '1' ;
         current_bens <= s3;

      elsif ( not x5 and x21 and x14 and x15 and x13 and x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s38;

      elsif ( not x5 and x21 and x14 and x15 and x13 and not x20 ) = '1' then
         y13 <= '1' ;
         current_bens <= s22;

      elsif ( not x5 and x21 and x14 and x15 and not x13 and x20 ) = '1' then
         y54 <= '1' ;
         current_bens <= s59;

      elsif ( not x5 and x21 and x14 and x15 and not x13 and not x20 and x18 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x5 and x21 and x14 and x15 and not x13 and not x20 and not x18 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x5 and x21 and x14 and x15 and not x13 and not x20 and not x18 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x5 and x21 and x14 and x15 and not x13 and not x20 and not x18 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and x14 and x15 and not x13 and not x20 and not x18 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and x14 and not x15 and x13 and x20 ) = '1' then
         y22 <= '1' ;
         current_bens <= s97;

      elsif ( not x5 and x21 and x14 and not x15 and x13 and not x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x5 and x21 and x14 and not x15 and not x13 and x20 ) = '1' then
         y29 <= '1' ;
         current_bens <= s98;

      elsif ( not x5 and x21 and x14 and not x15 and not x13 and not x20 and x19 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x5 and x21 and x14 and not x15 and not x13 and not x20 and not x19 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x5 and x21 and x14 and not x15 and not x13 and not x20 and not x19 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x5 and x21 and x14 and not x15 and not x13 and not x20 and not x19 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and x14 and not x15 and not x13 and not x20 and not x19 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and x20 and x13 and x15 and x11 ) = '1' then
         y13 <= '1' ;
         current_bens <= s22;

      elsif ( not x5 and x21 and not x14 and x20 and x13 and x15 and not x11 and x10 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and x20 and x13 and x15 and not x11 and x10 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and x20 and x13 and x15 and not x11 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and x20 and x13 and not x15 and x12 ) = '1' then
         y13 <= '1' ;
         current_bens <= s84;

      elsif ( not x5 and x21 and not x14 and x20 and x13 and not x15 and not x12 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and x20 and x13 and not x15 and not x12 and x10 and not x11 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and x20 and x13 and not x15 and not x12 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and x20 and not x13 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and x20 and not x13 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and x20 and not x13 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and x20 and not x13 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and not x20 and x13 and x15 and x17 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x5 and x21 and not x14 and not x20 and x13 and x15 and not x17 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and not x20 and x13 and x15 and not x17 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and not x20 and x13 and x15 and not x17 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and not x20 and x13 and x15 and not x17 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and not x20 and x13 and not x15 and x9 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x5 and x21 and not x14 and not x20 and x13 and not x15 and not x9 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and not x20 and x13 and not x15 and not x9 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and not x20 and x13 and not x15 and not x9 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and not x20 and x13 and not x15 and not x9 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x5 and x21 and not x14 and not x20 and not x13 and x15 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s27;

      elsif ( not x5 and x21 and not x14 and not x20 and not x13 and not x15 and x7 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s28;

      elsif ( not x5 and x21 and not x14 and not x20 and not x13 and not x15 and not x7 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s29;

      elsif ( not x5 and not x21 and x7 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s28;

      elsif ( not x5 and not x21 and not x7 and x13 and x20 and x14 and x15 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s44;

      elsif ( not x5 and not x21 and not x7 and x13 and x20 and x14 and not x15 ) = '1' then
         y6 <= '1' ;
         y17 <= '1' ;
         y34 <= '1' ;
         current_bens <= s41;

      elsif ( not x5 and not x21 and not x7 and x13 and x20 and not x14 and x15 ) = '1' then
         y6 <= '1' ;
         y17 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_bens <= s64;

      elsif ( not x5 and not x21 and not x7 and x13 and x20 and not x14 and not x15 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s99;

      elsif ( not x5 and not x21 and not x7 and x13 and not x20 ) = '1' then
         y6 <= '1' ;
         y17 <= '1' ;
         y34 <= '1' ;
         current_bens <= s41;

      elsif ( not x5 and not x21 and not x7 and not x13 and x14 and x20 and x15 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s93;

      elsif ( not x5 and not x21 and not x7 and not x13 and x14 and x20 and not x15 ) = '1' then
         y54 <= '1' ;
         current_bens <= s100;

      elsif ( not x5 and not x21 and not x7 and not x13 and x14 and not x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y32 <= '1' ;
         y33 <= '1' ;
         current_bens <= s44;

      elsif ( not x5 and not x21 and not x7 and not x13 and not x14 and x20 and x15 ) = '1' then
         y6 <= '1' ;
         y17 <= '1' ;
         y46 <= '1' ;
         y47 <= '1' ;
         current_bens <= s101;

      elsif ( not x5 and not x21 and not x7 and not x13 and not x14 and x20 and not x15 ) = '1' then
         y7 <= '1' ;
         y39 <= '1' ;
         y44 <= '1' ;
         y49 <= '1' ;
         current_bens <= s102;

      else
         y6 <= '1' ;
         y17 <= '1' ;
         y34 <= '1' ;
         y35 <= '1' ;
         current_bens <= s64;

      end if;

   when s75 =>
      if ( x7 ) = '1' then
         y6 <= '1' ;
         y8 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_bens <= s103;

      elsif ( not x7 and x8 and x20 and x14 and x15 ) = '1' then
         y6 <= '1' ;
         y11 <= '1' ;
         y26 <= '1' ;
         y45 <= '1' ;
         current_bens <= s80;

      elsif ( not x7 and x8 and x20 and x14 and not x15 ) = '1' then
         y6 <= '1' ;
         y11 <= '1' ;
         y42 <= '1' ;
         y45 <= '1' ;
         current_bens <= s81;

      elsif ( not x7 and x8 and x20 and not x14 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y44 <= '1' ;
         y45 <= '1' ;
         y49 <= '1' ;
         current_bens <= s82;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and x15 and x14 ) = '1' then
         y13 <= '1' ;
         current_bens <= s22;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and x15 and not x14 and x17 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and x15 and not x14 and x17 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and x15 and not x14 and not x17 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and x15 and not x14 and not x17 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and x15 and not x14 and not x17 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and x15 and not x14 and not x17 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and not x15 and x14 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and not x15 and x14 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and not x15 and not x14 and x9 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and not x15 and not x14 and x9 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and not x15 and not x14 and not x9 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and not x15 and not x14 and not x9 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and not x15 and not x14 and not x9 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and x13 and not x15 and not x14 and not x9 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and x14 and x15 and x18 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and x14 and x15 and x18 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and x14 and x15 and not x18 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and x14 and x15 and not x18 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and x14 and x15 and not x18 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and x14 and x15 and not x18 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and x14 and not x15 and x19 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and x14 and not x15 and x19 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and x14 and not x15 and not x19 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and x14 and not x15 and not x19 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and x14 and not x15 and not x19 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and x14 and not x15 and not x19 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and not x14 and x15 and x5 ) = '1' then
         y14 <= '1' ;
         current_bens <= s26;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and not x14 and x15 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s27;

      elsif ( not x7 and x8 and not x20 and x21 and not x13 and not x14 and not x15 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s29;

      elsif ( not x7 and x8 and not x20 and not x21 and x13 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s99;

      elsif ( not x7 and x8 and not x20 and not x21 and not x13 and x14 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y38 <= '1' ;
         current_bens <= s50;

      elsif ( not x7 and x8 and not x20 and not x21 and not x13 and not x14 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and not x21 and not x13 and not x14 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and not x21 and not x13 and not x14 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x7 and x8 and not x20 and not x21 and not x13 and not x14 and not x10 ) = '1' then
         current_bens <= s1;

      else
         y6 <= '1' ;
         y9 <= '1' ;
         y25 <= '1' ;
         y56 <= '1' ;
         current_bens <= s104;

      end if;

   when s76 =>
         y7 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_bens <= s80;

   when s77 =>
      if ( x21 and x20 ) = '1' then
         y13 <= '1' ;
         y29 <= '1' ;
         y30 <= '1' ;
         current_bens <= s1;

      elsif ( x21 and not x20 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x21 and not x20 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x21 and not x20 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( x21 and not x20 and not x10 ) = '1' then
         current_bens <= s1;

      else
         y13 <= '1' ;
         y29 <= '1' ;
         y30 <= '1' ;
         current_bens <= s1;

      end if;

   when s78 =>
      if ( x20 and x14 and x15 ) = '1' then
         y6 <= '1' ;
         y11 <= '1' ;
         y26 <= '1' ;
         y45 <= '1' ;
         current_bens <= s80;

      elsif ( x20 and x14 and not x15 ) = '1' then
         y6 <= '1' ;
         y11 <= '1' ;
         y42 <= '1' ;
         y45 <= '1' ;
         current_bens <= s81;

      elsif ( x20 and not x14 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y44 <= '1' ;
         y45 <= '1' ;
         y49 <= '1' ;
         current_bens <= s82;

      elsif ( not x20 and x21 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         y38 <= '1' ;
         current_bens <= s25;

      elsif ( not x20 and not x21 and x13 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s99;

      elsif ( not x20 and not x21 and not x13 and x14 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y38 <= '1' ;
         current_bens <= s50;

      elsif ( not x20 and not x21 and not x13 and not x14 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and not x21 and not x13 and not x14 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and not x21 and not x13 and not x14 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s79 =>
      if ( x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s58;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s105;

      end if;

   when s80 =>
         y28 <= '1' ;
         current_bens <= s70;

   when s81 =>
         y28 <= '1' ;
         current_bens <= s106;

   when s82 =>
         y11 <= '1' ;
         y41 <= '1' ;
         y45 <= '1' ;
         y51 <= '1' ;
         current_bens <= s40;

   when s83 =>
         y15 <= '1' ;
         current_bens <= s23;

   when s84 =>
      if ( x21 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x21 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x21 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( x21 and not x10 ) = '1' then
         current_bens <= s1;

      else
         y29 <= '1' ;
         current_bens <= s98;

      end if;

   when s85 =>
         y28 <= '1' ;
         current_bens <= s107;

   when s86 =>
         y6 <= '1' ;
         y17 <= '1' ;
         y34 <= '1' ;
         current_bens <= s81;

   when s87 =>
         y14 <= '1' ;
         current_bens <= s26;

   when s88 =>
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s99;

   when s89 =>
      if ( x21 and x20 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_bens <= s49;

      elsif ( x21 and not x20 ) = '1' then
         y28 <= '1' ;
         current_bens <= s108;

      elsif ( not x21 and x20 ) = '1' then
         y28 <= '1' ;
         current_bens <= s61;

      else
         y7 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_bens <= s49;

      end if;

   when s90 =>
         y6 <= '1' ;
         y9 <= '1' ;
         y25 <= '1' ;
         y56 <= '1' ;
         current_bens <= s79;

   when s91 =>
         y7 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_bens <= s49;

   when s92 =>
      if ( x20 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         y24 <= '1' ;
         current_bens <= s49;

      else
         y14 <= '1' ;
         current_bens <= s86;

      end if;

   when s93 =>
      if ( x20 ) = '1' then
         y6 <= '1' ;
         y41 <= '1' ;
         y43 <= '1' ;
         y44 <= '1' ;
         current_bens <= s109;

      elsif ( not x20 and x9 ) = '1' then
         y22 <= '1' ;
         current_bens <= s110;

      else
         y22 <= '1' ;
         current_bens <= s76;

      end if;

   when s94 =>
         y6 <= '1' ;
         y11 <= '1' ;
         y26 <= '1' ;
         y45 <= '1' ;
         current_bens <= s22;

   when s95 =>
         y14 <= '1' ;
         y15 <= '1' ;
         current_bens <= s111;

   when s96 =>
      if ( x20 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      else
         y15 <= '1' ;
         current_bens <= s112;

      end if;

   when s97 =>
      if ( x20 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s99;

      else
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s113;

      end if;

   when s98 =>
      if ( x21 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x21 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x21 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( x21 and not x10 ) = '1' then
         current_bens <= s1;

      else
         y13 <= '1' ;
         current_bens <= s114;

      end if;

   when s99 =>
      if ( x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y38 <= '1' ;
         current_bens <= s50;

      elsif ( not x20 and x21 and x9 ) = '1' then
         y22 <= '1' ;
         current_bens <= s97;

      elsif ( not x20 and x21 and not x9 and x17 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y38 <= '1' ;
         current_bens <= s50;

      elsif ( not x20 and x21 and not x9 and not x17 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x21 and not x9 and not x17 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x21 and not x9 and not x17 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x21 and not x9 and not x17 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and not x21 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and not x21 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and not x21 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s100 =>
         y13 <= '1' ;
         current_bens <= s115;

   when s101 =>
         y55 <= '1' ;
         current_bens <= s116;

   when s102 =>
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         y44 <= '1' ;
         current_bens <= s117;

   when s103 =>
      if ( x8 and x20 and x14 and x15 ) = '1' then
         y6 <= '1' ;
         y11 <= '1' ;
         y26 <= '1' ;
         y45 <= '1' ;
         current_bens <= s80;

      elsif ( x8 and x20 and x14 and not x15 ) = '1' then
         y6 <= '1' ;
         y11 <= '1' ;
         y42 <= '1' ;
         y45 <= '1' ;
         current_bens <= s81;

      elsif ( x8 and x20 and not x14 ) = '1' then
         y7 <= '1' ;
         y11 <= '1' ;
         y44 <= '1' ;
         y45 <= '1' ;
         y49 <= '1' ;
         current_bens <= s82;

      elsif ( x8 and not x20 and x13 and x21 and x15 and x14 ) = '1' then
         y13 <= '1' ;
         current_bens <= s22;

      elsif ( x8 and not x20 and x13 and x21 and x15 and not x14 and x17 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( x8 and not x20 and x13 and x21 and x15 and not x14 and x17 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( x8 and not x20 and x13 and x21 and x15 and not x14 and not x17 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x8 and not x20 and x13 and x21 and x15 and not x14 and not x17 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x8 and not x20 and x13 and x21 and x15 and not x14 and not x17 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( x8 and not x20 and x13 and x21 and x15 and not x14 and not x17 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( x8 and not x20 and x13 and x21 and not x15 and x14 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( x8 and not x20 and x13 and x21 and not x15 and x14 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( x8 and not x20 and x13 and x21 and not x15 and not x14 and x9 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( x8 and not x20 and x13 and x21 and not x15 and not x14 and x9 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( x8 and not x20 and x13 and x21 and not x15 and not x14 and not x9 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x8 and not x20 and x13 and x21 and not x15 and not x14 and not x9 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x8 and not x20 and x13 and x21 and not x15 and not x14 and not x9 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( x8 and not x20 and x13 and x21 and not x15 and not x14 and not x9 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( x8 and not x20 and x13 and not x21 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s99;

      elsif ( x8 and not x20 and not x13 and x14 and x21 and x15 and x18 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( x8 and not x20 and not x13 and x14 and x21 and x15 and x18 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( x8 and not x20 and not x13 and x14 and x21 and x15 and not x18 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x8 and not x20 and not x13 and x14 and x21 and x15 and not x18 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x8 and not x20 and not x13 and x14 and x21 and x15 and not x18 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( x8 and not x20 and not x13 and x14 and x21 and x15 and not x18 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( x8 and not x20 and not x13 and x14 and x21 and not x15 and x19 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( x8 and not x20 and not x13 and x14 and x21 and not x15 and x19 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( x8 and not x20 and not x13 and x14 and x21 and not x15 and not x19 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x8 and not x20 and not x13 and x14 and x21 and not x15 and not x19 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x8 and not x20 and not x13 and x14 and x21 and not x15 and not x19 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( x8 and not x20 and not x13 and x14 and x21 and not x15 and not x19 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( x8 and not x20 and not x13 and x14 and not x21 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y38 <= '1' ;
         current_bens <= s50;

      elsif ( x8 and not x20 and not x13 and not x14 and x21 and x15 and x5 ) = '1' then
         y14 <= '1' ;
         current_bens <= s26;

      elsif ( x8 and not x20 and not x13 and not x14 and x21 and x15 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s27;

      elsif ( x8 and not x20 and not x13 and not x14 and x21 and not x15 and x7 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s28;

      elsif ( x8 and not x20 and not x13 and not x14 and x21 and not x15 and not x7 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s29;

      elsif ( x8 and not x20 and not x13 and not x14 and not x21 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x8 and not x20 and not x13 and not x14 and not x21 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( x8 and not x20 and not x13 and not x14 and not x21 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( x8 and not x20 and not x13 and not x14 and not x21 and not x10 ) = '1' then
         current_bens <= s1;

      else
         y6 <= '1' ;
         y9 <= '1' ;
         y25 <= '1' ;
         y56 <= '1' ;
         current_bens <= s104;

      end if;

   when s104 =>
      if ( x9 ) = '1' then
         y15 <= '1' ;
         current_bens <= s45;

      elsif ( not x9 and x20 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s105;

      else
         y4 <= '1' ;
         y6 <= '1' ;
         y15 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s57;

      end if;

   when s105 =>
      if ( x20 ) = '1' then
         y6 <= '1' ;
         y9 <= '1' ;
         y25 <= '1' ;
         y56 <= '1' ;
         current_bens <= s79;

      elsif ( not x20 and x13 and x21 and x15 and x14 ) = '1' then
         y13 <= '1' ;
         current_bens <= s22;

      elsif ( not x20 and x13 and x21 and x15 and not x14 and x17 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x20 and x13 and x21 and x15 and not x14 and x17 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x20 and x13 and x21 and x15 and not x14 and not x17 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x13 and x21 and x15 and not x14 and not x17 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x13 and x21 and x15 and not x14 and not x17 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x13 and x21 and x15 and not x14 and not x17 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x13 and x21 and not x15 and x14 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x20 and x13 and x21 and not x15 and x14 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x20 and x13 and x21 and not x15 and not x14 and x9 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x20 and x13 and x21 and not x15 and not x14 and x9 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x20 and x13 and x21 and not x15 and not x14 and not x9 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x13 and x21 and not x15 and not x14 and not x9 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and x13 and x21 and not x15 and not x14 and not x9 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x13 and x21 and not x15 and not x14 and not x9 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and x13 and not x21 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s99;

      elsif ( not x20 and not x13 and x14 and x21 and x15 and x18 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x20 and not x13 and x14 and x21 and x15 and x18 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x20 and not x13 and x14 and x21 and x15 and not x18 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and not x13 and x14 and x21 and x15 and not x18 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and not x13 and x14 and x21 and x15 and not x18 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and not x13 and x14 and x21 and x15 and not x18 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and not x13 and x14 and x21 and not x15 and x19 and x5 ) = '1' then
         y15 <= '1' ;
         current_bens <= s23;

      elsif ( not x20 and not x13 and x14 and x21 and not x15 and x19 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s24;

      elsif ( not x20 and not x13 and x14 and x21 and not x15 and not x19 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and not x13 and x14 and x21 and not x15 and not x19 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and not x13 and x14 and x21 and not x15 and not x19 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and not x13 and x14 and x21 and not x15 and not x19 and not x10 ) = '1' then
         current_bens <= s1;

      elsif ( not x20 and not x13 and x14 and not x21 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y22 <= '1' ;
         y38 <= '1' ;
         current_bens <= s50;

      elsif ( not x20 and not x13 and not x14 and x21 and x15 and x5 ) = '1' then
         y14 <= '1' ;
         current_bens <= s26;

      elsif ( not x20 and not x13 and not x14 and x21 and x15 and not x5 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s27;

      elsif ( not x20 and not x13 and not x14 and x21 and not x15 and x7 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s28;

      elsif ( not x20 and not x13 and not x14 and x21 and not x15 and not x7 ) = '1' then
         y4 <= '1' ;
         y6 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_bens <= s29;

      elsif ( not x20 and not x13 and not x14 and not x21 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and not x13 and not x14 and not x21 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x20 and not x13 and not x14 and not x21 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s106 =>
      if ( x20 and x9 ) = '1' then
         y15 <= '1' ;
         current_bens <= s112;

      elsif ( x20 and not x9 ) = '1' then
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s36;

      elsif ( not x20 and x9 ) = '1' then
         y15 <= '1' ;
         current_bens <= s73;

      else
         y15 <= '1' ;
         current_bens <= s23;

      end if;

   when s107 =>
         y15 <= '1' ;
         current_bens <= s48;

   when s108 =>
         y15 <= '1' ;
         current_bens <= s71;

   when s109 =>
         y29 <= '1' ;
         current_bens <= s118;

   when s110 =>
         y6 <= '1' ;
         y36 <= '1' ;
         y37 <= '1' ;
         current_bens <= s36;

   when s111 =>
         y5 <= '1' ;
         y6 <= '1' ;
         y7 <= '1' ;
         y9 <= '1' ;
         current_bens <= s119;

   when s112 =>
      if ( x20 ) = '1' then
         y28 <= '1' ;
         current_bens <= s96;

      else
         y15 <= '1' ;
         current_bens <= s23;

      end if;

   when s113 =>
         y22 <= '1' ;
         current_bens <= s31;

   when s114 =>
         y47 <= '1' ;
         y48 <= '1' ;
         current_bens <= s120;

   when s115 =>
         y29 <= '1' ;
         current_bens <= s121;

   when s116 =>
         y6 <= '1' ;
         y17 <= '1' ;
         y22 <= '1' ;
         y46 <= '1' ;
         y47 <= '1' ;
         current_bens <= s122;

   when s117 =>
         y7 <= '1' ;
         y39 <= '1' ;
         y49 <= '1' ;
         current_bens <= s123;

   when s118 =>
         y6 <= '1' ;
         y41 <= '1' ;
         y43 <= '1' ;
         y44 <= '1' ;
         current_bens <= s22;

   when s119 =>
         y13 <= '1' ;
         y29 <= '1' ;
         y30 <= '1' ;
         current_bens <= s1;

   when s120 =>
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y39 <= '1' ;
         current_bens <= s124;

   when s121 =>
         y13 <= '1' ;
         current_bens <= s22;

   when s122 =>
         y55 <= '1' ;
         current_bens <= s125;

   when s123 =>
      if ( x16 ) = '1' then
         y6 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         y50 <= '1' ;
         current_bens <= s22;

      elsif ( not x16 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x16 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x16 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s124 =>
         y6 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         y41 <= '1' ;
         y42 <= '1' ;
         current_bens <= s126;

   when s125 =>
      if ( x16 ) = '1' then
         y47 <= '1' ;
         y48 <= '1' ;
         current_bens <= s22;

      elsif ( not x16 and x10 and x11 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x16 and x10 and not x11 and x12 ) = '1' then
         y31 <= '1' ;
         current_bens <= s1;

      elsif ( not x16 and x10 and not x11 and not x12 ) = '1' then
         current_bens <= s1;

      else
         current_bens <= s1;

      end if;

   when s126 =>
         y6 <= '1' ;
         y7 <= '1' ;
         y8 <= '1' ;
         y39 <= '1' ;
         current_bens <= s22;

   end case;
   end proc_bens;

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

	current_bens <= s1;
      elsif (clk'event and clk ='1') then
        proc_bens;
      end if;
   end process;
end ARC;
