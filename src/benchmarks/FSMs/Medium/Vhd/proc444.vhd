library ieee;
use ieee.std_logic_1164.all;

entity proc444 is
   port ( clk,rst,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,
	x16,x17,x18,x19 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56,y57,y58,y59,y60,
	y61,y62,y63,y64,y65,y66,y67,y68,y69,y70,y71,y72 : out std_logic );
end proc444;

architecture ARC of proc444 is

   type states_proc444 is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,
	s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,
	s106,s107,s108,s109,s110,s111,s112,s113,s114,s115 );
   signal current_proc444 : states_proc444;

begin
   process (clk , rst)
   procedure proc_proc444 is
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
	y69  <= '0' ;	y70  <= '0' ;	y71  <= '0' ;	y72  <= '0' ;


   case current_proc444 is
   when s1 =>
      if ( x7 and x6 ) = '1' then
         y38 <= '1' ;
         current_proc444 <= s2;

      elsif ( x7 and not x6 and x5 ) = '1' then
         y34 <= '1' ;
         y35 <= '1' ;
         current_proc444 <= s3;

      elsif ( x7 and not x6 and not x5 ) = '1' then
         y50 <= '1' ;
         y59 <= '1' ;
         current_proc444 <= s4;

      else
         current_proc444 <= s1;

      end if;

   when s2 =>
      if ( x17 ) = '1' then
         y37 <= '1' ;
         current_proc444 <= s5;

      elsif ( not x17 and x16 ) = '1' then
         y43 <= '1' ;
         y46 <= '1' ;
         current_proc444 <= s6;

      else
         y64 <= '1' ;
         y65 <= '1' ;
         current_proc444 <= s7;

      end if;

   when s3 =>
         y43 <= '1' ;
         y61 <= '1' ;
         current_proc444 <= s8;

   when s4 =>
         y22 <= '1' ;
         current_proc444 <= s9;

   when s5 =>
      if ( x16 ) = '1' then
         y43 <= '1' ;
         y61 <= '1' ;
         current_proc444 <= s10;

      else
         y64 <= '1' ;
         y70 <= '1' ;
         current_proc444 <= s11;

      end if;

   when s6 =>
         y45 <= '1' ;
         current_proc444 <= s12;

   when s7 =>
         y45 <= '1' ;
         current_proc444 <= s13;

   when s8 =>
         y45 <= '1' ;
         current_proc444 <= s14;

   when s9 =>
         y50 <= '1' ;
         y58 <= '1' ;
         current_proc444 <= s15;

   when s10 =>
         y45 <= '1' ;
         current_proc444 <= s16;

   when s11 =>
         y45 <= '1' ;
         current_proc444 <= s17;

   when s12 =>
         y43 <= '1' ;
         y48 <= '1' ;
         current_proc444 <= s18;

   when s13 =>
         y64 <= '1' ;
         y66 <= '1' ;
         current_proc444 <= s19;

   when s14 =>
         y43 <= '1' ;
         y63 <= '1' ;
         current_proc444 <= s20;

   when s15 =>
         y22 <= '1' ;
         current_proc444 <= s21;

   when s16 =>
         y43 <= '1' ;
         y63 <= '1' ;
         current_proc444 <= s22;

   when s17 =>
         y64 <= '1' ;
         y72 <= '1' ;
         current_proc444 <= s23;

   when s18 =>
         y45 <= '1' ;
         current_proc444 <= s24;

   when s19 =>
         y45 <= '1' ;
         current_proc444 <= s25;

   when s20 =>
         y45 <= '1' ;
         current_proc444 <= s26;

   when s21 =>
         y50 <= '1' ;
         y57 <= '1' ;
         current_proc444 <= s27;

   when s22 =>
         y45 <= '1' ;
         current_proc444 <= s28;

   when s23 =>
         y45 <= '1' ;
         current_proc444 <= s29;

   when s24 =>
         y43 <= '1' ;
         y47 <= '1' ;
         current_proc444 <= s30;

   when s25 =>
         y64 <= '1' ;
         y68 <= '1' ;
         current_proc444 <= s31;

   when s26 =>
         y43 <= '1' ;
         y62 <= '1' ;
         current_proc444 <= s32;

   when s27 =>
         y22 <= '1' ;
         current_proc444 <= s33;

   when s28 =>
         y43 <= '1' ;
         y62 <= '1' ;
         current_proc444 <= s34;

   when s29 =>
         y64 <= '1' ;
         y71 <= '1' ;
         current_proc444 <= s35;

   when s30 =>
         y45 <= '1' ;
         current_proc444 <= s36;

   when s31 =>
         y45 <= '1' ;
         current_proc444 <= s37;

   when s32 =>
         y45 <= '1' ;
         current_proc444 <= s38;

   when s33 =>
         y50 <= '1' ;
         y56 <= '1' ;
         current_proc444 <= s39;

   when s34 =>
         y45 <= '1' ;
         current_proc444 <= s40;

   when s35 =>
         y45 <= '1' ;
         current_proc444 <= s41;

   when s36 =>
         y43 <= '1' ;
         y44 <= '1' ;
         current_proc444 <= s42;

   when s37 =>
         y64 <= '1' ;
         y67 <= '1' ;
         current_proc444 <= s42;

   when s38 =>
         y43 <= '1' ;
         y60 <= '1' ;
         current_proc444 <= s43;

   when s39 =>
         y22 <= '1' ;
         current_proc444 <= s44;

   when s40 =>
         y43 <= '1' ;
         y60 <= '1' ;
         current_proc444 <= s1;

   when s41 =>
         y64 <= '1' ;
         y69 <= '1' ;
         current_proc444 <= s1;

   when s42 =>
         y36 <= '1' ;
         current_proc444 <= s1;

   when s43 =>
         y32 <= '1' ;
         y15 <= '1' ;
         y33 <= '1' ;
         current_proc444 <= s1;

   when s44 =>
      if ( x11 and x12 and x15 and x13 and x10 ) = '1' then
         y22 <= '1' ;
         current_proc444 <= s45;

      elsif ( x11 and x12 and x15 and x13 and not x10 and x9 and x19 ) = '1' then
         y55 <= '1' ;
         current_proc444 <= s1;

      elsif ( x11 and x12 and x15 and x13 and not x10 and x9 and not x19 ) = '1' then
         current_proc444 <= s1;

      elsif ( x11 and x12 and x15 and x13 and not x10 and not x9 ) = '1' then
         current_proc444 <= s1;

      elsif ( x11 and x12 and x15 and not x13 and x14 ) = '1' then
         y15 <= '1' ;
         current_proc444 <= s46;

      elsif ( x11 and x12 and x15 and not x13 and not x14 and x10 ) = '1' then
         y3 <= '1' ;
         current_proc444 <= s47;

      elsif ( x11 and x12 and x15 and not x13 and not x14 and not x10 ) = '1' then
         current_proc444 <= s44;

      elsif ( x11 and x12 and not x15 and x13 and x9 ) = '1' then
         y22 <= '1' ;
         current_proc444 <= s45;

      elsif ( x11 and x12 and not x15 and x13 and not x9 and x10 and x19 ) = '1' then
         y55 <= '1' ;
         current_proc444 <= s1;

      elsif ( x11 and x12 and not x15 and x13 and not x9 and x10 and not x19 ) = '1' then
         current_proc444 <= s1;

      elsif ( x11 and x12 and not x15 and x13 and not x9 and not x10 ) = '1' then
         current_proc444 <= s1;

      elsif ( x11 and x12 and not x15 and not x13 and x14 ) = '1' then
         y16 <= '1' ;
         current_proc444 <= s46;

      elsif ( x11 and x12 and not x15 and not x13 and not x14 and x9 ) = '1' then
         y13 <= '1' ;
         y3 <= '1' ;
         y14 <= '1' ;
         current_proc444 <= s48;

      elsif ( x11 and x12 and not x15 and not x13 and not x14 and not x9 ) = '1' then
         current_proc444 <= s44;

      elsif ( x11 and not x12 and x14 ) = '1' then
         y3 <= '1' ;
         current_proc444 <= s47;

      elsif ( x11 and not x12 and not x14 and x3 ) = '1' then
         y50 <= '1' ;
         y51 <= '1' ;
         current_proc444 <= s49;

      elsif ( x11 and not x12 and not x14 and not x3 ) = '1' then
         y5 <= '1' ;
         current_proc444 <= s50;

      elsif ( not x11 and x12 and x8 and x3 ) = '1' then
         y50 <= '1' ;
         y51 <= '1' ;
         current_proc444 <= s49;

      elsif ( not x11 and x12 and x8 and not x3 ) = '1' then
         y5 <= '1' ;
         current_proc444 <= s50;

      elsif ( not x11 and x12 and not x8 and x3 ) = '1' then
         y50 <= '1' ;
         y51 <= '1' ;
         current_proc444 <= s49;

      elsif ( not x11 and x12 and not x8 and not x3 and x15 and x10 and x19 ) = '1' then
         y55 <= '1' ;
         current_proc444 <= s1;

      elsif ( not x11 and x12 and not x8 and not x3 and x15 and x10 and not x19 ) = '1' then
         current_proc444 <= s1;

      elsif ( not x11 and x12 and not x8 and not x3 and x15 and not x10 and x9 and x19 ) = '1' then
         y55 <= '1' ;
         current_proc444 <= s1;

      elsif ( not x11 and x12 and not x8 and not x3 and x15 and not x10 and x9 and not x19 ) = '1' then
         current_proc444 <= s1;

      elsif ( not x11 and x12 and not x8 and not x3 and x15 and not x10 and not x9 ) = '1' then
         current_proc444 <= s1;

      elsif ( not x11 and x12 and not x8 and not x3 and not x15 ) = '1' then
         y5 <= '1' ;
         current_proc444 <= s50;

      elsif ( not x11 and not x12 and x13 ) = '1' then
         y3 <= '1' ;
         current_proc444 <= s47;

      elsif ( not x11 and not x12 and not x13 and x3 ) = '1' then
         y50 <= '1' ;
         y51 <= '1' ;
         current_proc444 <= s49;

      else
         y5 <= '1' ;
         current_proc444 <= s50;

      end if;

   when s45 =>
         y22 <= '1' ;
         current_proc444 <= s46;

   when s46 =>
      if ( x10 and x19 ) = '1' then
         y55 <= '1' ;
         current_proc444 <= s1;

      elsif ( x10 and not x19 ) = '1' then
         current_proc444 <= s1;

      elsif ( not x10 and x9 and x19 ) = '1' then
         y55 <= '1' ;
         current_proc444 <= s1;

      elsif ( not x10 and x9 and not x19 ) = '1' then
         current_proc444 <= s1;

      else
         current_proc444 <= s1;

      end if;

   when s47 =>
         y26 <= '1' ;
         y39 <= '1' ;
         current_proc444 <= s51;

   when s48 =>
         y26 <= '1' ;
         y27 <= '1' ;
         current_proc444 <= s52;

   when s49 =>
         y22 <= '1' ;
         current_proc444 <= s53;

   when s50 =>
      if ( x2 ) = '1' then
         y26 <= '1' ;
         y39 <= '1' ;
         current_proc444 <= s54;

      elsif ( not x2 and x14 and x11 ) = '1' then
         y26 <= '1' ;
         y27 <= '1' ;
         current_proc444 <= s52;

      elsif ( not x2 and x14 and not x11 ) = '1' then
         y26 <= '1' ;
         y39 <= '1' ;
         current_proc444 <= s54;

      else
         y26 <= '1' ;
         y39 <= '1' ;
         current_proc444 <= s54;

      end if;

   when s51 =>
         y28 <= '1' ;
         current_proc444 <= s55;

   when s52 =>
         y28 <= '1' ;
         current_proc444 <= s56;

   when s53 =>
         y50 <= '1' ;
         y52 <= '1' ;
         current_proc444 <= s57;

   when s54 =>
         y28 <= '1' ;
         current_proc444 <= s58;

   when s55 =>
         y26 <= '1' ;
         y42 <= '1' ;
         current_proc444 <= s59;

   when s56 =>
         y26 <= '1' ;
         y31 <= '1' ;
         current_proc444 <= s60;

   when s57 =>
         y22 <= '1' ;
         current_proc444 <= s61;

   when s58 =>
         y26 <= '1' ;
         y42 <= '1' ;
         current_proc444 <= s62;

   when s59 =>
         y28 <= '1' ;
         current_proc444 <= s63;

   when s60 =>
         y28 <= '1' ;
         current_proc444 <= s64;

   when s61 =>
         y50 <= '1' ;
         y53 <= '1' ;
         current_proc444 <= s65;

   when s62 =>
         y28 <= '1' ;
         current_proc444 <= s66;

   when s63 =>
         y26 <= '1' ;
         y41 <= '1' ;
         current_proc444 <= s67;

   when s64 =>
         y26 <= '1' ;
         y30 <= '1' ;
         current_proc444 <= s68;

   when s65 =>
         y22 <= '1' ;
         current_proc444 <= s69;

   when s66 =>
         y26 <= '1' ;
         y41 <= '1' ;
         current_proc444 <= s70;

   when s67 =>
         y28 <= '1' ;
         current_proc444 <= s71;

   when s68 =>
         y28 <= '1' ;
         current_proc444 <= s72;

   when s69 =>
         y50 <= '1' ;
         y54 <= '1' ;
         current_proc444 <= s73;

   when s70 =>
         y28 <= '1' ;
         current_proc444 <= s74;

   when s71 =>
         y26 <= '1' ;
         y40 <= '1' ;
         current_proc444 <= s75;

   when s72 =>
         y26 <= '1' ;
         y29 <= '1' ;
         current_proc444 <= s46;

   when s73 =>
         y22 <= '1' ;
         current_proc444 <= s76;

   when s74 =>
         y26 <= '1' ;
         y40 <= '1' ;
         current_proc444 <= s77;

   when s75 =>
      if ( x11 and x12 ) = '1' then
         y18 <= '1' ;
         y19 <= '1' ;
         current_proc444 <= s46;

      elsif ( x11 and not x12 ) = '1' then
         y24 <= '1' ;
         current_proc444 <= s78;

      elsif ( not x11 and x13 and x14 and x15 ) = '1' then
         y21 <= '1' ;
         current_proc444 <= s79;

      elsif ( not x11 and x13 and x14 and not x15 ) = '1' then
         y20 <= '1' ;
         current_proc444 <= s79;

      elsif ( not x11 and x13 and not x14 and x15 ) = '1' then
         y12 <= '1' ;
         current_proc444 <= s79;

      elsif ( not x11 and x13 and not x14 and not x15 ) = '1' then
         y11 <= '1' ;
         current_proc444 <= s79;

      elsif ( not x11 and not x13 and x14 and x15 ) = '1' then
         y25 <= '1' ;
         current_proc444 <= s79;

      elsif ( not x11 and not x13 and x14 and not x15 ) = '1' then
         y8 <= '1' ;
         current_proc444 <= s79;

      else
         y4 <= '1' ;
         current_proc444 <= s79;

      end if;

   when s76 =>
      if ( x11 and x4 and x14 and x2 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s81;

      elsif ( x11 and x4 and x14 and not x2 and x18 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         current_proc444 <= s82;

      elsif ( x11 and x4 and x14 and not x2 and not x18 ) = '1' then
         y5 <= '1' ;
         current_proc444 <= s84;

      elsif ( x11 and x4 and not x14 ) = '1' then
         y17 <= '1' ;
         current_proc444 <= s80;

      elsif ( x11 and not x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s81;

      elsif ( x11 and not x4 and not x2 and x18 and x14 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         current_proc444 <= s82;

      elsif ( x11 and not x4 and not x2 and x18 and not x14 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s83;

      elsif ( x11 and not x4 and not x2 and not x18 ) = '1' then
         y5 <= '1' ;
         current_proc444 <= s84;

      elsif ( not x11 and x12 and x8 and x4 ) = '1' then
         y9 <= '1' ;
         current_proc444 <= s46;

      elsif ( not x11 and x12 and x8 and not x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s81;

      elsif ( not x11 and x12 and x8 and not x4 and not x2 and x18 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s83;

      elsif ( not x11 and x12 and x8 and not x4 and not x2 and not x18 ) = '1' then
         y5 <= '1' ;
         current_proc444 <= s84;

      elsif ( not x11 and x12 and not x8 and x15 and x10 and x19 ) = '1' then
         y55 <= '1' ;
         current_proc444 <= s1;

      elsif ( not x11 and x12 and not x8 and x15 and x10 and not x19 ) = '1' then
         current_proc444 <= s1;

      elsif ( not x11 and x12 and not x8 and x15 and not x10 and x9 and x19 ) = '1' then
         y55 <= '1' ;
         current_proc444 <= s1;

      elsif ( not x11 and x12 and not x8 and x15 and not x10 and x9 and not x19 ) = '1' then
         current_proc444 <= s1;

      elsif ( not x11 and x12 and not x8 and x15 and not x10 and not x9 ) = '1' then
         current_proc444 <= s1;

      elsif ( not x11 and x12 and not x8 and not x15 and x4 ) = '1' then
         y9 <= '1' ;
         current_proc444 <= s46;

      elsif ( not x11 and x12 and not x8 and not x15 and not x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s81;

      elsif ( not x11 and x12 and not x8 and not x15 and not x4 and not x2 and x18 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s83;

      elsif ( not x11 and x12 and not x8 and not x15 and not x4 and not x2 and not x18 ) = '1' then
         y5 <= '1' ;
         current_proc444 <= s84;

      elsif ( not x11 and not x12 and x4 ) = '1' then
         y3 <= '1' ;
         current_proc444 <= s47;

      elsif ( not x11 and not x12 and not x4 and x2 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s81;

      elsif ( not x11 and not x12 and not x4 and not x2 and x18 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s83;

      else
         y5 <= '1' ;
         current_proc444 <= s84;

      end if;

   when s77 =>
      if ( x11 and x2 ) = '1' then
         y6 <= '1' ;
         current_proc444 <= s85;

      elsif ( x11 and not x2 and x14 ) = '1' then
         y6 <= '1' ;
         current_proc444 <= s85;

      elsif ( x11 and not x2 and not x14 ) = '1' then
         y3 <= '1' ;
         current_proc444 <= s48;

      elsif ( not x11 and x12 ) = '1' then
         y10 <= '1' ;
         current_proc444 <= s46;

      else
         y6 <= '1' ;
         current_proc444 <= s85;

      end if;

   when s78 =>
      if ( x3 ) = '1' then
         y50 <= '1' ;
         y51 <= '1' ;
         current_proc444 <= s49;

      else
         y5 <= '1' ;
         current_proc444 <= s50;

      end if;

   when s79 =>
      if ( x1 ) = '1' then
         y2 <= '1' ;
         current_proc444 <= s80;

      else
         y1 <= '1' ;
         current_proc444 <= s80;

      end if;

   when s80 =>
         y3 <= '1' ;
         current_proc444 <= s48;

   when s81 =>
         y43 <= '1' ;
         y46 <= '1' ;
         current_proc444 <= s86;

   when s82 =>
         y43 <= '1' ;
         y61 <= '1' ;
         current_proc444 <= s87;

   when s83 =>
         y43 <= '1' ;
         y46 <= '1' ;
         current_proc444 <= s88;

   when s84 =>
         y26 <= '1' ;
         y39 <= '1' ;
         current_proc444 <= s89;

   when s85 =>
      if ( x11 and x14 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         current_proc444 <= s82;

      elsif ( x11 and not x14 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s83;

      elsif ( not x11 and x2 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s83;

      else
         y3 <= '1' ;
         current_proc444 <= s47;

      end if;

   when s86 =>
         y45 <= '1' ;
         current_proc444 <= s90;

   when s87 =>
         y45 <= '1' ;
         current_proc444 <= s91;

   when s88 =>
         y45 <= '1' ;
         current_proc444 <= s92;

   when s89 =>
         y28 <= '1' ;
         current_proc444 <= s93;

   when s90 =>
         y43 <= '1' ;
         y48 <= '1' ;
         current_proc444 <= s94;

   when s91 =>
         y43 <= '1' ;
         y63 <= '1' ;
         current_proc444 <= s95;

   when s92 =>
         y43 <= '1' ;
         y48 <= '1' ;
         current_proc444 <= s96;

   when s93 =>
         y26 <= '1' ;
         y42 <= '1' ;
         current_proc444 <= s97;

   when s94 =>
         y45 <= '1' ;
         current_proc444 <= s98;

   when s95 =>
         y45 <= '1' ;
         current_proc444 <= s99;

   when s96 =>
         y45 <= '1' ;
         current_proc444 <= s100;

   when s97 =>
         y28 <= '1' ;
         current_proc444 <= s101;

   when s98 =>
         y43 <= '1' ;
         y47 <= '1' ;
         current_proc444 <= s102;

   when s99 =>
         y43 <= '1' ;
         y62 <= '1' ;
         current_proc444 <= s103;

   when s100 =>
         y43 <= '1' ;
         y47 <= '1' ;
         current_proc444 <= s104;

   when s101 =>
         y26 <= '1' ;
         y41 <= '1' ;
         current_proc444 <= s105;

   when s102 =>
         y45 <= '1' ;
         current_proc444 <= s106;

   when s103 =>
         y45 <= '1' ;
         current_proc444 <= s107;

   when s104 =>
         y45 <= '1' ;
         current_proc444 <= s108;

   when s105 =>
         y28 <= '1' ;
         current_proc444 <= s109;

   when s106 =>
         y43 <= '1' ;
         y44 <= '1' ;
         current_proc444 <= s110;

   when s107 =>
         y43 <= '1' ;
         y60 <= '1' ;
         current_proc444 <= s46;

   when s108 =>
         y43 <= '1' ;
         y44 <= '1' ;
         current_proc444 <= s111;

   when s109 =>
         y26 <= '1' ;
         y40 <= '1' ;
         current_proc444 <= s112;

   when s110 =>
         y6 <= '1' ;
         current_proc444 <= s113;

   when s111 =>
      if ( x11 ) = '1' then
         y3 <= '1' ;
         current_proc444 <= s48;

      elsif ( not x11 and x12 ) = '1' then
         y10 <= '1' ;
         current_proc444 <= s46;

      else
         y6 <= '1' ;
         current_proc444 <= s114;

      end if;

   when s112 =>
         y49 <= '1' ;
         current_proc444 <= s115;

   when s113 =>
      if ( x18 and x11 and x14 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         current_proc444 <= s82;

      elsif ( x18 and x11 and not x14 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s83;

      elsif ( x18 and not x11 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s83;

      else
         y5 <= '1' ;
         current_proc444 <= s84;

      end if;

   when s114 =>
         y3 <= '1' ;
         current_proc444 <= s47;

   when s115 =>
      if ( x11 and x14 ) = '1' then
         y7 <= '1' ;
         y23 <= '1' ;
         current_proc444 <= s82;

      elsif ( x11 and not x14 ) = '1' then
         y7 <= '1' ;
         current_proc444 <= s83;

      else
         y7 <= '1' ;
         current_proc444 <= s83;

      end if;

   end case;
   end proc_proc444;

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
	y69  <= '0' ;	y70  <= '0' ;	y71  <= '0' ;	y72  <= '0' ;

	current_proc444 <= s1;
      elsif (clk'event and clk ='1') then
        proc_proc444;
      end if;
   end process;
end ARC;
