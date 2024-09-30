library ieee;
use ieee.std_logic_1164.all;

entity codec is
   port ( clk,rst,x1,x2,x3,x4,x5 : in std_logic;
        y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
	y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,y30,
	y31,y32,y33,y34,y35,y36,y37,y38,y39,y40,y41,y42,y43,y44,y45,
	y46,y47,y48,y49,y50,y51,y52,y53,y54,y55,y56,y57,y58,y59,y60,
	y61,y62,y63,y64,y65,y66,y67,y68,y69,y70,y71,y72,y73,y74 : out std_logic );
end codec;

architecture ARC of codec is

   type states_codec is ( s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,
	s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30,
	s31,s32,s33,s34,s35,s36,s37,s38,s39,s40,s41,s42,s43,s44,s45,
	s46,s47,s48,s49,s50,s51,s52,s53,s54,s55,s56,s57,s58,s59,s60,
	s61,s62,s63,s64,s65,s66,s67,s68,s69,s70,s71,s72,s73,s74,s75,
	s76,s77,s78,s79,s80,s81,s82,s83,s84,s85,s86,s87,s88,s89,s90,
	s91,s92,s93,s94,s95,s96,s97,s98,s99,s100,s101,s102,s103,s104,s105,
	s106,s107,s108,s109,s110,s111,s112,s113,s114,s115,s116,s117,s118,s119,s120,
	s121,s122,s123,s124,s125,s126,s127,s128,s129,s130,s131,s132,s133,s134,s135,
	s136,s137,s138,s139,s140,s141,s142,s143 );
   signal current_codec : states_codec;

begin
   process (clk , rst)
   procedure proc_codec is
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
	y73  <= '0' ;	y74  <= '0' ;

   case current_codec is
   when s1 =>
      if ( x5 and x2 and x3 and x4 ) = '1' then
         y6 <= '1' ;
         current_codec <= s1;

      elsif ( x5 and x2 and x3 and not x4 ) = '1' then
         y3 <= '1' ;
         current_codec <= s1;

      elsif ( x5 and x2 and not x3 and x4 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         current_codec <= s1;

      elsif ( x5 and x2 and not x3 and not x4 ) = '1' then
         y4 <= '1' ;
         y5 <= '1' ;
         current_codec <= s1;

      elsif ( x5 and not x2 ) = '1' then
         y41 <= '1' ;
         current_codec <= s2;

      else
         current_codec <= s1;

      end if;

   when s2 =>
         y1 <= '1' ;
         y4 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         y39 <= '1' ;
         y40 <= '1' ;
         current_codec <= s3;

   when s3 =>
         y45 <= '1' ;
         y46 <= '1' ;
         current_codec <= s4;

   when s4 =>
         y5 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         y40 <= '1' ;
         current_codec <= s5;

   when s5 =>
         y22 <= '1' ;
         y23 <= '1' ;
         current_codec <= s6;

   when s6 =>
         y45 <= '1' ;
         y46 <= '1' ;
         current_codec <= s7;

   when s7 =>
         y5 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         y40 <= '1' ;
         current_codec <= s8;

   when s8 =>
         y21 <= '1' ;
         y37 <= '1' ;
         current_codec <= s9;

   when s9 =>
         y12 <= '1' ;
         current_codec <= s10;

   when s10 =>
         y11 <= '1' ;
         y38 <= '1' ;
         y58 <= '1' ;
         current_codec <= s11;

   when s11 =>
         y57 <= '1' ;
         current_codec <= s12;

   when s12 =>
         y9 <= '1' ;
         y17 <= '1' ;
         y19 <= '1' ;
         y48 <= '1' ;
         current_codec <= s13;

   when s13 =>
         y11 <= '1' ;
         y38 <= '1' ;
         y58 <= '1' ;
         current_codec <= s14;

   when s14 =>
         y57 <= '1' ;
         current_codec <= s15;

   when s15 =>
         y14 <= '1' ;
         y66 <= '1' ;
         y72 <= '1' ;
         current_codec <= s16;

   when s16 =>
      if ( x1 ) = '1' then
         y17 <= '1' ;
         y48 <= '1' ;
         current_codec <= s17;

      else
         y5 <= '1' ;
         y14 <= '1' ;
         y66 <= '1' ;
         y69 <= '1' ;
         y72 <= '1' ;
         current_codec <= s18;

      end if;

   when s17 =>
         y5 <= '1' ;
         y14 <= '1' ;
         y66 <= '1' ;
         y69 <= '1' ;
         y72 <= '1' ;
         current_codec <= s18;

   when s18 =>
      if ( x1 ) = '1' then
         y19 <= '1' ;
         current_codec <= s19;

      else
         y71 <= '1' ;
         current_codec <= s20;

      end if;

   when s19 =>
         y71 <= '1' ;
         current_codec <= s20;

   when s20 =>
         y22 <= '1' ;
         y55 <= '1' ;
         y58 <= '1' ;
         y66 <= '1' ;
         current_codec <= s21;

   when s21 =>
      if ( x1 ) = '1' then
         y14 <= '1' ;
         y18 <= '1' ;
         y26 <= '1' ;
         y69 <= '1' ;
         y70 <= '1' ;
         current_codec <= s22;

      else
         y9 <= '1' ;
         current_codec <= s13;

      end if;

   when s22 =>
         y16 <= '1' ;
         current_codec <= s23;

   when s23 =>
         y64 <= '1' ;
         y65 <= '1' ;
         current_codec <= s24;

   when s24 =>
         y10 <= '1' ;
         y18 <= '1' ;
         y27 <= '1' ;
         current_codec <= s25;

   when s25 =>
         y49 <= '1' ;
         current_codec <= s26;

   when s26 =>
         y4 <= '1' ;
         y66 <= '1' ;
         y70 <= '1' ;
         y73 <= '1' ;
         current_codec <= s27;

   when s27 =>
      if ( x1 ) = '1' then
         y11 <= '1' ;
         y27 <= '1' ;
         y38 <= '1' ;
         current_codec <= s28;

      else
         y64 <= '1' ;
         y65 <= '1' ;
         current_codec <= s24;

      end if;

   when s28 =>
         y56 <= '1' ;
         y66 <= '1' ;
         current_codec <= s29;

   when s29 =>
      if ( x1 ) = '1' then
         y29 <= '1' ;
         y30 <= '1' ;
         current_codec <= s30;

      else
         y56 <= '1' ;
         y66 <= '1' ;
         y67 <= '1' ;
         y68 <= '1' ;
         current_codec <= s31;

      end if;

   when s30 =>
         y8 <= '1' ;
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_codec <= s32;

   when s31 =>
      if ( x1 ) = '1' then
         y35 <= '1' ;
         y36 <= '1' ;
         current_codec <= s33;

      else
         y56 <= '1' ;
         y66 <= '1' ;
         y68 <= '1' ;
         current_codec <= s34;

      end if;

   when s32 =>
         y47 <= '1' ;
         current_codec <= s35;

   when s33 =>
         y20 <= '1' ;
         current_codec <= s9;

   when s34 =>
      if ( x1 ) = '1' then
         y31 <= '1' ;
         y32 <= '1' ;
         current_codec <= s33;

      else
         y56 <= '1' ;
         y66 <= '1' ;
         y67 <= '1' ;
         current_codec <= s36;

      end if;

   when s35 =>
         y42 <= '1' ;
         current_codec <= s37;

   when s36 =>
      if ( x1 ) = '1' then
         y33 <= '1' ;
         y34 <= '1' ;
         current_codec <= s33;

      else
         y20 <= '1' ;
         current_codec <= s9;

      end if;

   when s37 =>
         y28 <= '1' ;
         y55 <= '1' ;
         y58 <= '1' ;
         y66 <= '1' ;
         current_codec <= s38;

   when s38 =>
      if ( x1 ) = '1' then
         y22 <= '1' ;
         y23 <= '1' ;
         y28 <= '1' ;
         current_codec <= s39;

      else
         y9 <= '1' ;
         current_codec <= s32;

      end if;

   when s39 =>
         y11 <= '1' ;
         y26 <= '1' ;
         y27 <= '1' ;
         current_codec <= s40;

   when s40 =>
         y47 <= '1' ;
         current_codec <= s41;

   when s41 =>
         y42 <= '1' ;
         current_codec <= s42;

   when s42 =>
         y10 <= '1' ;
         y11 <= '1' ;
         y26 <= '1' ;
         current_codec <= s43;

   when s43 =>
         y47 <= '1' ;
         current_codec <= s44;

   when s44 =>
         y42 <= '1' ;
         current_codec <= s45;

   when s45 =>
         y21 <= '1' ;
         y37 <= '1' ;
         current_codec <= s46;

   when s46 =>
         y56 <= '1' ;
         y66 <= '1' ;
         y67 <= '1' ;
         y68 <= '1' ;
         current_codec <= s47;

   when s47 =>
      if ( x1 ) = '1' then
         y2 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y26 <= '1' ;
         current_codec <= s48;

      else
         y56 <= '1' ;
         y66 <= '1' ;
         y68 <= '1' ;
         current_codec <= s49;

      end if;

   when s48 =>
         y11 <= '1' ;
         y17 <= '1' ;
         y27 <= '1' ;
         current_codec <= s50;

   when s49 =>
      if ( x1 ) = '1' then
         y1 <= '1' ;
         y2 <= '1' ;
         y5 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y38 <= '1' ;
         current_codec <= s48;

      else
         y56 <= '1' ;
         y66 <= '1' ;
         y67 <= '1' ;
         current_codec <= s51;

      end if;

   when s50 =>
         y47 <= '1' ;
         current_codec <= s52;

   when s51 =>
      if ( x1 ) = '1' then
         y2 <= '1' ;
         y5 <= '1' ;
         y10 <= '1' ;
         y14 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y38 <= '1' ;
         current_codec <= s48;

      else
         y4 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y17 <= '1' ;
         y18 <= '1' ;
         y19 <= '1' ;
         y26 <= '1' ;
         y38 <= '1' ;
         current_codec <= s48;

      end if;

   when s52 =>
         y42 <= '1' ;
         current_codec <= s53;

   when s53 =>
         y10 <= '1' ;
         y11 <= '1' ;
         y17 <= '1' ;
         current_codec <= s54;

   when s54 =>
         y47 <= '1' ;
         current_codec <= s55;

   when s55 =>
         y42 <= '1' ;
         current_codec <= s56;

   when s56 =>
         y2 <= '1' ;
         y4 <= '1' ;
         y5 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_codec <= s57;

   when s57 =>
         y49 <= '1' ;
         current_codec <= s58;

   when s58 =>
         y59 <= '1' ;
         y60 <= '1' ;
         y61 <= '1' ;
         y62 <= '1' ;
         current_codec <= s59;

   when s59 =>
         y1 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         current_codec <= s60;

   when s60 =>
         y2 <= '1' ;
         y39 <= '1' ;
         y69 <= '1' ;
         y73 <= '1' ;
         y74 <= '1' ;
         current_codec <= s61;

   when s61 =>
         y4 <= '1' ;
         y14 <= '1' ;
         y66 <= '1' ;
         y73 <= '1' ;
         current_codec <= s62;

   when s62 =>
      if ( x1 ) = '1' then
         y12 <= '1' ;
         current_codec <= s63;

      else
         y49 <= '1' ;
         current_codec <= s58;

      end if;

   when s63 =>
         y11 <= '1' ;
         y38 <= '1' ;
         y58 <= '1' ;
         current_codec <= s64;

   when s64 =>
         y57 <= '1' ;
         current_codec <= s65;

   when s65 =>
         y17 <= '1' ;
         y48 <= '1' ;
         current_codec <= s66;

   when s66 =>
         y14 <= '1' ;
         y26 <= '1' ;
         y44 <= '1' ;
         y69 <= '1' ;
         y70 <= '1' ;
         current_codec <= s67;

   when s67 =>
         y16 <= '1' ;
         current_codec <= s68;

   when s68 =>
         y1 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y40 <= '1' ;
         y48 <= '1' ;
         y72 <= '1' ;
         y73 <= '1' ;
         current_codec <= s69;

   when s69 =>
         y59 <= '1' ;
         y61 <= '1' ;
         y62 <= '1' ;
         current_codec <= s70;

   when s70 =>
         y27 <= '1' ;
         y44 <= '1' ;
         current_codec <= s71;

   when s71 =>
         y59 <= '1' ;
         y60 <= '1' ;
         y62 <= '1' ;
         current_codec <= s72;

   when s72 =>
         y52 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         y56 <= '1' ;
         y63 <= '1' ;
         current_codec <= s73;

   when s73 =>
         y4 <= '1' ;
         y40 <= '1' ;
         y66 <= '1' ;
         y70 <= '1' ;
         current_codec <= s74;

   when s74 =>
      if ( x1 ) = '1' then
         y49 <= '1' ;
         y50 <= '1' ;
         current_codec <= s75;

      else
         y52 <= '1' ;
         y53 <= '1' ;
         current_codec <= s76;

      end if;

   when s75 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y39 <= '1' ;
         y66 <= '1' ;
         current_codec <= s77;

   when s76 =>
         y49 <= '1' ;
         y50 <= '1' ;
         current_codec <= s75;

   when s77 =>
      if ( x1 ) = '1' then
         y11 <= '1' ;
         y26 <= '1' ;
         y38 <= '1' ;
         current_codec <= s78;

      else
         y2 <= '1' ;
         y66 <= '1' ;
         y73 <= '1' ;
         current_codec <= s79;

      end if;

   when s78 =>
         y47 <= '1' ;
         current_codec <= s80;

   when s79 =>
      if ( x1 ) = '1' then
         y71 <= '1' ;
         current_codec <= s81;

      else
         y1 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y40 <= '1' ;
         y48 <= '1' ;
         y72 <= '1' ;
         y73 <= '1' ;
         current_codec <= s69;

      end if;

   when s80 =>
         y42 <= '1' ;
         current_codec <= s82;

   when s81 =>
         y22 <= '1' ;
         y55 <= '1' ;
         y58 <= '1' ;
         y66 <= '1' ;
         current_codec <= s83;

   when s82 =>
         y51 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         y55 <= '1' ;
         y56 <= '1' ;
         current_codec <= s84;

   when s83 =>
      if ( x1 ) = '1' then
         y56 <= '1' ;
         y66 <= '1' ;
         current_codec <= s85;

      else
         y9 <= '1' ;
         current_codec <= s63;

      end if;

   when s84 =>
         y2 <= '1' ;
         y66 <= '1' ;
         y73 <= '1' ;
         current_codec <= s86;

   when s85 =>
      if ( x1 and x5 ) = '1' then
         y7 <= '1' ;
         y8 <= '1' ;
         current_codec <= s87;

      elsif ( x1 and not x5 ) = '1' then
         current_codec <= s85;

      else
         y20 <= '1' ;
         current_codec <= s46;

      end if;

   when s86 =>
      if ( x1 ) = '1' then
         y71 <= '1' ;
         current_codec <= s81;

      else
         y1 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y40 <= '1' ;
         y48 <= '1' ;
         y72 <= '1' ;
         y73 <= '1' ;
         current_codec <= s69;

      end if;

   when s87 =>
         y11 <= '1' ;
         current_codec <= s88;

   when s88 =>
         y42 <= '1' ;
         current_codec <= s89;

   when s89 =>
         y1 <= '1' ;
         y66 <= '1' ;
         current_codec <= s90;

   when s90 =>
      if ( x1 ) = '1' then
         y11 <= '1' ;
         current_codec <= s91;

      else
         y11 <= '1' ;
         current_codec <= s88;

      end if;

   when s91 =>
         y42 <= '1' ;
         current_codec <= s92;

   when s92 =>
         y1 <= '1' ;
         y66 <= '1' ;
         current_codec <= s93;

   when s93 =>
      if ( x1 ) = '1' then
         y11 <= '1' ;
         current_codec <= s94;

      else
         y11 <= '1' ;
         current_codec <= s88;

      end if;

   when s94 =>
         y42 <= '1' ;
         current_codec <= s95;

   when s95 =>
         y1 <= '1' ;
         y66 <= '1' ;
         current_codec <= s96;

   when s96 =>
      if ( x1 ) = '1' then
         y11 <= '1' ;
         current_codec <= s97;

      else
         y11 <= '1' ;
         current_codec <= s88;

      end if;

   when s97 =>
         y42 <= '1' ;
         current_codec <= s98;

   when s98 =>
         y1 <= '1' ;
         y66 <= '1' ;
         current_codec <= s99;

   when s99 =>
      if ( x1 ) = '1' then
         y11 <= '1' ;
         current_codec <= s100;

      else
         y11 <= '1' ;
         current_codec <= s88;

      end if;

   when s100 =>
         y42 <= '1' ;
         current_codec <= s101;

   when s101 =>
         y24 <= '1' ;
         current_codec <= s102;

   when s102 =>
         y11 <= '1' ;
         current_codec <= s103;

   when s103 =>
         y42 <= '1' ;
         current_codec <= s104;

   when s104 =>
         y25 <= '1' ;
         current_codec <= s105;

   when s105 =>
         y45 <= '1' ;
         y46 <= '1' ;
         current_codec <= s106;

   when s106 =>
         y5 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         y40 <= '1' ;
         current_codec <= s107;

   when s107 =>
         y22 <= '1' ;
         y23 <= '1' ;
         current_codec <= s108;

   when s108 =>
         y45 <= '1' ;
         y46 <= '1' ;
         current_codec <= s109;

   when s109 =>
         y5 <= '1' ;
         y24 <= '1' ;
         y25 <= '1' ;
         y40 <= '1' ;
         current_codec <= s110;

   when s110 =>
         y21 <= '1' ;
         current_codec <= s111;

   when s111 =>
         y11 <= '1' ;
         current_codec <= s112;

   when s112 =>
         y42 <= '1' ;
         current_codec <= s113;

   when s113 =>
         y19 <= '1' ;
         current_codec <= s114;

   when s114 =>
         y11 <= '1' ;
         current_codec <= s115;

   when s115 =>
         y42 <= '1' ;
         current_codec <= s116;

   when s116 =>
         y17 <= '1' ;
         y18 <= '1' ;
         current_codec <= s117;

   when s117 =>
         y1 <= '1' ;
         y5 <= '1' ;
         y14 <= '1' ;
         y15 <= '1' ;
         y16 <= '1' ;
         current_codec <= s118;

   when s118 =>
         y12 <= '1' ;
         y16 <= '1' ;
         current_codec <= s119;

   when s119 =>
         y11 <= '1' ;
         current_codec <= s120;

   when s120 =>
         y42 <= '1' ;
         current_codec <= s121;

   when s121 =>
         y17 <= '1' ;
         y44 <= '1' ;
         current_codec <= s122;

   when s122 =>
         y51 <= '1' ;
         current_codec <= s123;

   when s123 =>
         y1 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y40 <= '1' ;
         y48 <= '1' ;
         y72 <= '1' ;
         y73 <= '1' ;
         current_codec <= s124;

   when s124 =>
         y59 <= '1' ;
         y61 <= '1' ;
         y62 <= '1' ;
         current_codec <= s125;

   when s125 =>
         y27 <= '1' ;
         y44 <= '1' ;
         current_codec <= s126;

   when s126 =>
         y59 <= '1' ;
         y60 <= '1' ;
         y62 <= '1' ;
         current_codec <= s127;

   when s127 =>
         y52 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         y56 <= '1' ;
         y63 <= '1' ;
         current_codec <= s128;

   when s128 =>
         y4 <= '1' ;
         y40 <= '1' ;
         y66 <= '1' ;
         y70 <= '1' ;
         current_codec <= s129;

   when s129 =>
      if ( x1 ) = '1' then
         y49 <= '1' ;
         y50 <= '1' ;
         current_codec <= s130;

      else
         y52 <= '1' ;
         y53 <= '1' ;
         current_codec <= s131;

      end if;

   when s130 =>
         y2 <= '1' ;
         y66 <= '1' ;
         y73 <= '1' ;
         current_codec <= s132;

   when s131 =>
         y49 <= '1' ;
         y50 <= '1' ;
         current_codec <= s130;

   when s132 =>
      if ( x1 ) = '1' then
         y2 <= '1' ;
         y4 <= '1' ;
         y11 <= '1' ;
         y16 <= '1' ;
         y26 <= '1' ;
         y70 <= '1' ;
         current_codec <= s133;

      else
         y2 <= '1' ;
         y5 <= '1' ;
         y39 <= '1' ;
         y66 <= '1' ;
         current_codec <= s134;

      end if;

   when s133 =>
         y6 <= '1' ;
         y28 <= '1' ;
         current_codec <= s135;

   when s134 =>
      if ( x1 ) = '1' then
         y22 <= '1' ;
         y55 <= '1' ;
         y66 <= '1' ;
         current_codec <= s136;

      else
         y1 <= '1' ;
         y5 <= '1' ;
         y26 <= '1' ;
         y40 <= '1' ;
         y48 <= '1' ;
         y72 <= '1' ;
         y73 <= '1' ;
         current_codec <= s124;

      end if;

   when s135 =>
         y43 <= '1' ;
         current_codec <= s137;

   when s136 =>
      if ( x1 ) = '1' then
         y56 <= '1' ;
         y66 <= '1' ;
         current_codec <= s138;

      else
         y11 <= '1' ;
         current_codec <= s120;

      end if;

   when s137 =>
         y9 <= '1' ;
         y53 <= '1' ;
         y54 <= '1' ;
         y55 <= '1' ;
         y56 <= '1' ;
         current_codec <= s139;

   when s138 =>
      if ( x1 ) = '1' then
         y10 <= '1' ;
         y11 <= '1' ;
         y12 <= '1' ;
         current_codec <= s140;

      else
         y20 <= '1' ;
         current_codec <= s111;

      end if;

   when s139 =>
         y2 <= '1' ;
         y5 <= '1' ;
         y39 <= '1' ;
         y66 <= '1' ;
         current_codec <= s134;

   when s140 =>
         y6 <= '1' ;
         y28 <= '1' ;
         current_codec <= s141;

   when s141 =>
         y43 <= '1' ;
         current_codec <= s142;

   when s142 =>
         y28 <= '1' ;
         y55 <= '1' ;
         y58 <= '1' ;
         y66 <= '1' ;
         current_codec <= s143;

   when s143 =>
      if ( x1 ) = '1' then
         y13 <= '1' ;
         current_codec <= s1;

      else
         y9 <= '1' ;
         current_codec <= s140;

      end if;

   end case;
   end proc_codec;

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
	y73  <= '0' ;	y74  <= '0' ;
	current_codec <= s1;
      elsif (clk'event and clk ='1') then
        proc_codec;
      end if;
   end process;
end ARC;
